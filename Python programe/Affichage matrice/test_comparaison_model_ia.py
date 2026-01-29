import tkinter as tk
from tkinter import messagebox, filedialog
import math
import numpy as np

class DigitDrawer:
    def __init__(self, root):
        self.root = root
        self.root.title("MNIST Predictor - Fix b_bin & Centering")
        
        self.weights = None
        self.bias = None
        
        # Interface
        self.pixel_size = 20
        self.grid_size = 28
        self.pixels = [0.0] * (self.grid_size * self.grid_size)
        
        self.canvas = tk.Canvas(root, width=self.grid_size*self.pixel_size, 
                                height=self.grid_size*self.pixel_size, bg="black")
        self.canvas.pack(pady=10)
        self.canvas.bind("<B1-Motion>", self.paint)
        
        btn_frame = tk.Frame(root)
        btn_frame.pack(fill=tk.X, padx=10)
        
        tk.Button(btn_frame, text="📁 Charger .npz", bg="#6c757d", fg="white", command=self.load_model_dialog).pack(side=tk.LEFT, padx=5)
        tk.Button(btn_frame, text="🔮 DEVINER", bg="#007BFF", fg="white", font=('Arial', 10, 'bold'), command=self.predict_python).pack(side=tk.LEFT, padx=5)
        tk.Button(btn_frame, text="🗑 Effacer", bg="#DC3545", fg="white", command=self.clear_canvas).pack(side=tk.LEFT, padx=5)
        
        self.label_res = tk.Label(root, text="1. Chargez le fichier .npz", font=('Arial', 12), fg="blue")
        self.label_res.pack(pady=10)

    def load_model_dialog(self):
        file_path = filedialog.askopenfilename(title="Sélectionnez vos poids (.npz)", filetypes=[("Fichiers NPZ", "*.npz")])
        if file_path:
            try:
                data = np.load(file_path)
                # Adaptation aux noms des clés
                self.weights = data['W']
                
                if 'b_bin' in data:
                    self.bias = data['b_bin']
                elif 'b' in data:
                    self.bias = data['b']
                else:
                    self.bias = np.zeros(10) # Biais par défaut si absent

                self.label_res.config(text="Modèle prêt ! Dessinez au centre.", fg="green")
                messagebox.showinfo("Succès", f"Modèle chargé !\nPoids : {self.weights.shape}\nBiais : {self.bias.shape}")
            except Exception as e:
                messagebox.showerror("Erreur", f"Fichier invalide : {e}")

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
                        self.canvas.create_rectangle(x*self.pixel_size, y*self.pixel_size, (x+1)*self.pixel_size, (y+1)*self.pixel_size, fill=f"#{v:02x}{v:02x}{v:02x}", outline="")

    def center_digit(self, pixels):
        """ Améliore la reconnaissance en centrant le dessin comme dans MNIST """
        img = np.array(pixels).reshape(28, 28)
        if np.sum(img) == 0: return img.flatten()
        
        # Trouver les bords du dessin
        rows = np.any(img > 0, axis=1)
        cols = np.any(img > 0, axis=0)
        rmin, rmax = np.where(rows)[0][[0, -1]]
        cmin, cmax = np.where(cols)[0][[0, -1]]
        
        # Extraire le chiffre et le recentrer
        digit = img[rmin:rmax+1, cmin:cmax+1]
        h, w = digit.shape
        
        # Créer un nouveau canevas vide
        new_img = np.zeros((28, 28))
        start_row = (28 - h) // 2
        start_col = (28 - w) // 2
        new_img[start_row:start_row+h, start_col:start_col+w] = digit
        return new_img.flatten()

    def predict_python(self):
        if self.weights is None: return
        
        # Étape cruciale : Recentrer le dessin avant de l'envoyer au modèle
        x = self.center_digit(self.pixels)
        
        logits = np.dot(self.weights, x) + self.bias
        prediction = np.argmax(logits)
        
        # Confiance via Softmax
        exp_l = np.exp(logits - np.max(logits))
        probs = exp_l / exp_l.sum()
        
        self.label_res.config(text=f"Résultat : {prediction} (Confiance : {probs[prediction]:.1%})", fg="green")

    def clear_canvas(self):
        self.canvas.delete("all")
        self.pixels = [0.0] * 784
        self.label_res.config(text="Canevas effacé", fg="black")

if __name__ == "__main__":
    root = tk.Tk()
    app = DigitDrawer(root)
    root.mainloop()