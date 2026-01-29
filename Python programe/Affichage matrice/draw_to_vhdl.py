import tkinter as tk

class DigitDrawer:
    def __init__(self, root):
        self.root = root
        self.root.title("Dessinateur MNIST pour VHDL (Q2.29)")
        
        self.pixel_size = 20
        self.grid_size = 28
        self.pixels = [0] * (self.grid_size * self.grid_size)
        
        # Interface de dessin
        self.canvas = tk.Canvas(root, width=self.grid_size*self.pixel_size, 
                                height=self.grid_size*self.pixel_size, bg="black")
        self.canvas.pack()
        
        # Liaison des événements souris
        self.canvas.bind("<B1-Motion>", self.paint)
        self.canvas.bind("<Button-1>", self.paint)
        
        # Boutons
        btn_frame = tk.Frame(root)
        btn_frame.pack(fill=tk.X)
        
        tk.Button(btn_frame, text="Générer VHDL", command=self.generate_vhdl).pack(side=tk.LEFT, padx=10)
        tk.Button(btn_frame, text="Effacer", command=self.clear_canvas).pack(side=tk.LEFT)
        
        # Zone de texte pour le résultat
        self.text_out = tk.Text(root, height=10, width=50)
        self.text_out.pack()

    def paint(self, event):
        x, y = event.x // self.pixel_size, event.y // self.pixel_size
        if 0 <= x < self.grid_size and 0 <= y < self.grid_size:
            idx = y * self.grid_size + x
            self.pixels[idx] = 1
            self.canvas.create_rectangle(x*self.pixel_size, y*self.pixel_size, 
                                         (x+1)*self.pixel_size, (y+1)*self.pixel_size, 
                                         fill="white", outline="gray")

    def clear_canvas(self):
        self.canvas.delete("all")
        self.pixels = [0] * (self.grid_size * self.grid_size)
        self.text_out.delete(1.0, tk.END)

    def generate_vhdl(self):
        vhdl_code = "constant MY_DRAWN_DIGIT : image_array := (\n"
        on_pixels = []
        
        # On utilise une forme condensée pour le VHDL (sparse array)
        for i, val in enumerate(self.pixels):
            if val == 1:
                on_pixels.append(f"    {i} => x\"20000000\"")
        
        vhdl_code += ",\n".join(on_pixels)
        vhdl_code += ",\n    others => x\"00000000\"\n);"
        
        self.text_out.delete(1.0, tk.END)
        self.text_out.insert(tk.END, vhdl_code)
        print("\n--- CODE VHDL À COPIER ---")
        print(vhdl_code)

if __name__ == "__main__":
    root = tk.Tk()
    app = DigitDrawer(root)
    root.mainloop()