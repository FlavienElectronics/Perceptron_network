import tkinter as tk
from tkinter import messagebox, filedialog
import math
import numpy as np
import os

class DigitDrawer:
    def __init__(self, root):
        self.root = root
        self.root.title("MNIST Tool - Python Predictor & VHDL Generator")
        
        self.weights = None
        self.bias = None
        self.pixel_size = 15
        self.grid_size = 28
        self.pixels = [0.0] * (self.grid_size * self.grid_size)
        
        # --- Interface Graphique ---
        # Canevas de dessin
        self.canvas = tk.Canvas(root, width=self.grid_size*self.pixel_size, 
                                height=self.grid_size*self.pixel_size, bg="black")
        self.canvas.pack(pady=10)
        self.canvas.bind("<B1-Motion>", self.paint)
        self.canvas.bind("<Button-1>", self.paint)
        
        # Zone de boutons
        btn_frame = tk.Frame(root)
        btn_frame.pack(fill=tk.X, padx=10)
        
        tk.Button(btn_frame, text="📁 Charger .npz", bg="#6c757d", fg="white", command=self.load_model_dialog).pack(side=tk.LEFT, padx=5)
        tk.Button(btn_frame, text="🔮 DEVINER & GÉNÉRER", bg="#007BFF", fg="white", font=('Arial', 10, 'bold'), command=self.process_all).pack(side=tk.LEFT, padx=5)
        tk.Button(btn_frame, text="🗑 Effacer", bg="#DC3545", fg="white", command=self.clear_canvas).pack(side=tk.LEFT, padx=5)
        
        # Résultat de la prédiction
        self.label_res = tk.Label(root, text="1. Chargez le fichier de poids", font=('Arial', 12, 'bold'), fg="blue")
        self.label_res.pack(pady=5)
        
        # Sortie VHDL
        tk.Label(root, text="Code VHDL (Sign-Magnitude Q2.29) :").pack(anchor="w", padx=10)
        self.text_out = tk.Text(root, height=10, width=80, font=('Consolas', 8))
        self.text_out.pack(padx=10, pady=5)

    def load_model_dialog(self):
        file_path = filedialog.askopenfilename(title="Sélectionnez les poids (.npz)", filetypes=[("Fichiers NPZ", "*.npz")])
        if file_path:
            try:
                data = np.load(file_path)
                self.weights = data['W']
                self.bias = data['b_bin'] if 'b_bin' in data else (data['b'] if 'b' in data else np.zeros(10))
                self.label_res.config(text="Modèle chargé. Prêt à dessiner.", fg="green")
                messagebox.showinfo("Succès", "Modèle chargé avec succès.")
            except Exception as e:
                messagebox.showerror("Erreur", f"Erreur de lecture : {e}")

    def paint(self, event):
        gx, gy = event.x / self.pixel_size, event.y / self.pixel_size
        radius = 1.4
        strength = 0.35
        for x in range(int(gx - radius), int(gx + radius) + 1):
            for y in range(int(gy - radius), int(gy + radius) + 1):
                if 0 <= x < self.grid_size and 0 <= y < self.grid_size:
                    dist = math.sqrt((x + 0.5 - gx)**2 + (y + 0.5 - gy)**2)
                    if dist < radius:
                        idx = y * self.grid_size + x
                        self.pixels[idx] = min(1.0, self.pixels[idx] + (1.0 - dist/radius) * strength)
                        v = int(self.pixels[idx] * 255)
                        self.canvas.create_rectangle(x*self.pixel_size, y*self.pixel_size, 
                                                     (x+1)*self.pixel_size, (y+1)*self.pixel_size, 
                                                     fill=f"#{v:02x}{v:02x}{v:02x}", outline="")

    def center_digit(self, pixels):
        """ Recentrage type MNIST pour améliorer la prédiction """
        img = np.array(pixels).reshape(28, 28)
        if np.sum(img) < 1.0: return img.flatten()
        rows = np.any(img > 0.1, axis=1)
        cols = np.any(img > 0.1, axis=0)
        rmin, rmax = np.where(rows)[0][[0, -1]]
        cmin, cmax = np.where(cols)[0][[0, -1]]
        digit = img[rmin:rmax+1, cmin:cmax+1]
        new_img = np.zeros((28, 28))
        start_row, start_col = (28 - (rmax-rmin+1))//2, (28 - (cmax-cmin+1))//2
        new_img[start_row:start_row+digit.shape[0], start_col:start_col+digit.shape[1]] = digit
        return new_img.flatten()

    def convertion_float_hex32(self, valeur_float, size_integral=2, dead_bit=0):
        """ TA FONCTION DE CONVERSION (Sign-Magnitude) """
        try: valeur_float = float(valeur_float)
        except: return "00000000"
        size_word = 32
        size_decimal = size_word - size_integral - dead_bit - 1
        if valeur_float < 0:
            integral = int(abs(valeur_float))
            decimal = abs(valeur_float) - integral
            final_value = 1 << (size_word - 1)
            absolute_integral = integral
        else:
            integral = int(valeur_float)
            decimal = valeur_float - integral
            final_value = 0
            absolute_integral = integral
        for i in range(size_decimal):
            current_bit = 2**-(i+1)
            if decimal >= current_bit:
                decimal -= current_bit
                final_value |= 0x1 << (size_decimal-1 - i)
        final_value |= absolute_integral << (size_word - size_integral - dead_bit - 1)
        return f"{final_value:08X}"

    def process_all(self):
        if self.weights is None:
            messagebox.showwarning("Attention", "Chargez d'abord le fichier .npz")
            return

        # 1. Recentrer l'image
        centered_pixels = self.center_digit(self.pixels)

        # 2. Prédiction théorique Python (Float)
        logits = np.dot(self.weights, centered_pixels) + self.bias
        prediction = np.argmax(logits)
        exp_l = np.exp(logits - np.max(logits))
        confiance = (exp_l / exp_l.sum())[prediction]
        self.label_res.config(text=f"Prédiction Python : {prediction} ({confiance:.1%})", fg="green")

        # 3. Génération VHDL (Basée sur l'image recentrée)
        vhdl_code = "constant my_digit : image_array := ("
        on_pixels = []
        for i, intensity in enumerate(centered_pixels):
            if intensity > 0.01:
                hex_val = self.convertion_float_hex32(intensity)
                on_pixels.append(f"{i} => x\"{hex_val}\"")
        
        if on_pixels:
            vhdl_code += ", ".join(on_pixels)
            vhdl_code += ", others => x\"00000000\");"
        else:
            vhdl_code += "others => x\"00000000\");"
            
        self.text_out.delete(1.0, tk.END)
        self.text_out.insert(tk.END, vhdl_code)

    def clear_canvas(self):
        self.canvas.delete("all")
        self.pixels = [0.0] * 784
        self.text_out.delete(1.0, tk.END)
        self.label_res.config(text="Canevas effacé", fg="black")

if __name__ == "__main__":
    root = tk.Tk()
    app = DigitDrawer(root)
    root.mainloop()