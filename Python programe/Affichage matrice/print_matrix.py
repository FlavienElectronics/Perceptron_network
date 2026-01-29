import numpy as np
import matplotlib.pyplot as plt

def visualize_mnist_8():
    # Création d'une matrice 28x28 vide
    data = np.zeros((28, 28))

    # Indices correspondant au "8" (identiques à ceux du VHDL)
    # On calcule l'index 1D : row * 28 + col
    indices_8 = [
        # Boucle haut
        152, 153, 154, 155, 156, 179, 185, 207, 213, 235, 241, 264, 265, 266, 267, 268,
        # Boucle bas
        291, 297, 319, 325, 347, 353, 375, 381, 403, 404, 405, 406, 407
    ]

    # Remplissage de la matrice
    for idx in indices_8:
        row = idx // 28
        col = idx % 28
        data[row, col] = 1.0

    # --- Affichage ASCII (dans la console) ---
    print("Rendu ASCII du chiffre envoyé au FPGA :")
    for row in data:
        line = "".join(["##" if pixel > 0 else "  " for pixel in row])
        if line.strip(): # On n'affiche que les lignes non vides
            print(line)

    # --- Affichage Graphique ---
    plt.figure(figsize=(6,6))
    plt.imshow(data, cmap='gray')
    plt.title("Visualisation du 8 (Input FPGA)")
    plt.grid(True, which='both', color='gray', linestyle='-', linewidth=0.5)
    plt.show()

def visualize_mnist_1():
    # Création d'une matrice 28x28 vide
    data = np.zeros((28, 28))

    indices_1 = [
        154,
238,
322,
406,
490,
574
    ]

    # Remplissage de la matrice
    for idx in indices_1:
        row = idx // 28
        col = idx % 28
        data[row, col] = 1.0

    # --- Affichage ASCII (dans la console) ---
    print("Rendu ASCII du chiffre envoyé au FPGA :")
    for row in data:
        line = "".join(["##" if pixel > 0 else "  " for pixel in row])
        if line.strip(): # On n'affiche que les lignes non vides
            print(line)

    # --- Affichage Graphique ---
    plt.figure(figsize=(6,6))
    plt.imshow(data, cmap='gray')
    plt.title("Visualisation du 1 (Input FPGA)")
    plt.grid(True, which='both', color='gray', linestyle='-', linewidth=0.5)
    plt.show()

if __name__ == "__main__":
    visualize_mnist_1()