import tkinter as tk
import math

class DigitDrawer:
    def __init__(self, root):
        self.root = root
        self.root.title("MNIST Drawer - Float Intensity 0 to 1")
        
        self.pixel_size = 20
        self.grid_size = 28
        # self.pixels stocke des intensités brutes de 0.0 à 1.0
        self.pixels = [0.0] * (self.grid_size * self.grid_size)
        
        self.canvas = tk.Canvas(root, width=self.grid_size*self.pixel_size, 
                                height=self.grid_size*self.pixel_size, bg="black")
        self.canvas.pack(pady=10)
        self.canvas.bind("<B1-Motion>", self.paint)
        self.canvas.bind("<Button-1>", self.paint)
        
        btn_frame = tk.Frame(root)
        btn_frame.pack(fill=tk.X, padx=10)
        tk.Button(btn_frame, text="Générer VHDL", bg="green", fg="white", command=self.generate_vhdl).pack(side=tk.LEFT, padx=5)
        tk.Button(btn_frame, text="Effacer", bg="red", fg="white", command=self.clear_canvas).pack(side=tk.LEFT, padx=5)
        
        self.text_out = tk.Text(root, height=15, width=80, font=('Consolas', 9))
        self.text_out.pack(padx=10, pady=5)

    def paint(self, event):
        gx, gy = event.x / self.pixel_size, event.y / self.pixel_size
        radius = 1.6   # Taille du pinceau
        strength = 0.25 # Opacité par passage
        
        for x in range(int(gx - radius), int(gx + radius) + 1):
            for y in range(int(gy - radius), int(gy + radius) + 1):
                if 0 <= x < self.grid_size and 0 <= y < self.grid_size:
                    dist = math.sqrt((x + 0.5 - gx)**2 + (y + 0.5 - gy)**2)
                    if dist < radius:
                        falloff = 1.0 - (dist / radius)
                        idx = y * self.grid_size + x
                        self.pixels[idx] = min(1.0, self.pixels[idx] + falloff * strength)
                        
                        v = int(self.pixels[idx] * 255)
                        color = f"#{v:02x}{v:02x}{v:02x}"
                        self.canvas.create_rectangle(x*self.pixel_size, y*self.pixel_size, 
                                                     (x+1)*self.pixel_size, (y+1)*self.pixel_size, 
                                                     fill=color, outline="")

    def clear_canvas(self):
        self.canvas.delete("all")
        self.pixels = [0.0] * (self.grid_size * self.grid_size)
        self.text_out.delete(1.0, tk.END)

    def custom_conversion(self, intensity):
        valeur_float = (intensity * 1)
        size_integral = 2
        dead_bit = 0
        try:
            valeur_float = float(valeur_float)
        except ValueError:
            return " "

        size_word = 32
        size_integral = int(size_integral)
        dead_bit = int(dead_bit)
        size_decimal = size_word - size_integral - dead_bit - 1
        max_value_integral = 0
        
        # Calcul de la valeur initiale (bit de signe)
        if valeur_float < 0:
            integral = int(valeur_float)
            decimal = - (valeur_float - integral)
            absolute_integral = -integral
            final_value = 1 << (size_word - 1)
        else:
            integral = int(valeur_float)
            decimal = (valeur_float - integral)
            absolute_integral = integral
            final_value = 0

        for i in range(size_integral):
            max_value_integral |= 1 << i

        if absolute_integral > max_value_integral:
            return " "
            
        for i in range(size_decimal):
            current_bit = 2**-(i+1)
            if decimal >= current_bit:
                decimal -= current_bit
                final_value |= 0x1 << (size_decimal-1 - i)

        final_value |= absolute_integral << (size_word - size_integral - dead_bit - 1)
        final_value = f"{final_value:08X}"
        return (final_value)

    def generate_vhdl(self):
        vhdl_code = "constant my_digit : image_array := (\n"
        on_pixels = []
        
        for i, intensity in enumerate(self.pixels):
            if intensity > 0.01: # Seuil pour ignorer le noir pur
                hex_val = self.custom_conversion(intensity)
                on_pixels.append(f"    {i} => x\"{hex_val}\"")
        
        if on_pixels:
            vhdl_code += ",".join(on_pixels)
            vhdl_code += ",\n    others => x\"00000000\"\n);"
        else:
            vhdl_code += "    others => x\"00000000\"\n);"
            
        self.text_out.delete(1.0, tk.END)
        self.text_out.insert(tk.END, vhdl_code)

if __name__ == "__main__":
    root = tk.Tk()
    app = DigitDrawer(root)
    root.mainloop()