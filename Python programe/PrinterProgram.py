import tkinter as tk

# --- 1. FONCTIONS DE CALCUL ---

def convertion_float_hex32(valeur_float):
    try:
        valeur_float = float(valeur_float)
    except ValueError:
        return "Erreur : format invalide"

    size_word = 32
    size_integral = 2
    dead_bit = 0
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
        return "ERROR : trop grand"
        
    for i in range(size_decimal):
        current_bit = 2**-(i+1)
        if decimal >= current_bit:
            decimal -= current_bit
            final_value |= 0x1 << (size_decimal-1 - i)

    final_value |= absolute_integral << (size_word - size_integral - dead_bit - 1)
    return hex(final_value)


def convertion_float_hex64(valeur_float):
    try:
        valeur_float = float(valeur_float)
    except ValueError:
        return "Erreur : format invalide"

    size_word = 64
    size_integral = 4
    dead_bit = 1
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
        return "ERROR : trop grand"
        
    for i in range(size_decimal):
        current_bit = 2**-(i+1)
        if decimal >= current_bit:
            decimal -= current_bit
            final_value |= 0x1 << (size_decimal-1 - i)

    final_value |= absolute_integral << (size_word - size_integral - dead_bit - 1)
    return hex(final_value)

def convertion_hex64_float(valeur_hexa):
    valeur_hexa = int(valeur_hexa,16)

    size_word = 64
    size_integral = 4
    dead_bit = 1
    size_decimal = size_word - size_integral - dead_bit - 1

    integral_mask = 0

    for i in range(size_integral):
        integral_mask |= 1 << i

    signe = (valeur_hexa & (1<<(size_word-1))) >> (size_word-1)

    integral = ((valeur_hexa) >> size_decimal) & integral_mask
    decimal = 0
    for i in range(size_decimal-1):
        bit = (valeur_hexa >> ((size_decimal-1) - i) ) & 0x1
        decimal += bit * (2**-(i+1))
        #print (" val" + str(i) + " = " + str(bit * (2**-(i+1))))

    if (signe):
        res_total = -(decimal + integral)
    else :
        res_total = (decimal + integral)
    return(str(res_total))

def convertion_hex32_float(valeur_hexa):
    valeur_hexa = int(valeur_hexa,16)

    size_word = 32
    size_integral = 2
    dead_bit = 0
    size_decimal = size_word - size_integral - dead_bit - 1
    
    integral_mask = 0

    for i in range(size_integral):
        integral_mask |= 1 << i

    signe = (valeur_hexa & (1<<(size_word-1))) >> (size_word-1)

    integral = ((valeur_hexa) >> size_decimal) & integral_mask
    decimal = 0
    for i in range(size_decimal-1):
        bit = (valeur_hexa >> ((size_decimal-1) - i) ) & 0x1
        decimal += bit * (2**-(i+1))
        #print (" val" + str(i) + " = " + str(bit * (2**-(i+1))))

    if (signe):
        res_total = -(decimal + integral)
    else :
        res_total = (decimal + integral)
    return(str(res_total))

def ajouter_separateur(texte, n=4, sep=" "):
    zero_missing = 4 - (len(texte[2:]) % 4) 
    string_added = ""
    if (zero_missing < 4):
        for i in range(zero_missing):
            string_added += "0"
        print(string_added)

    prefixe = ""
    if texte.startswith("0x"):
        prefixe = "0x "
        texte = string_added+texte[2:]
    
    # On découpe et on rejoint
    # range(0, len(texte), n) crée des indices : 0, 4, 8...
    morceaux = [texte[i:i+n] for i in range(0, len(texte), n)]
    return prefixe + sep.join(morceaux)

# Fonction utilitaire pour modifier une case en lecture seule
def modifier_resultat(widget, texte):
    widget.config(state="normal") # Déverrouille
    widget.delete(0, tk.END)      # Efface
    widget.insert(0, texte)       # Écrit
    widget.config(state="readonly") # Verrouille

# --- FONCTIONS DE MISE À JOUR (Trigger) ---

def maj_ligne_float_to_hex32(*args):
    valeur = var_entree_1.get()
    if valeur:
        res = convertion_float_hex32(valeur)
        modifier_resultat(res_1, ajouter_separateur(res))
    else:
        modifier_resultat(res_1, "")

def maj_ligne_float_to_hex64(*args):
    valeur = var_entree_2.get()
    res = convertion_float_hex64(valeur)
    modifier_resultat(res_2, ajouter_separateur(res))

def maj_ligne_hex32_to_float(*args):
    valeur = var_entree_3.get()
    res = convertion_hex32_float(valeur)
    modifier_resultat(res_3, str(res))

def maj_ligne_hex64_to_float(*args):
    valeur = var_entree_4.get()
    res = convertion_hex64_float(valeur)
    modifier_resultat(res_4, res)

# --- 2. INITIALISATION DE LA FENÊTRE ---

root = tk.Tk()
root.title("Convertisseur Hex32 & Outils")
root.geometry("700x450")

# --- 3. LIGNE 1 
tk.Label(root, text="VALEUR FLOTTANTE 32 bits :", font=("Arial", 10, "bold")).grid(row=0, column=0, padx=20, pady=(15, 0), sticky="w")
var_entree_1 = tk.StringVar()
var_entree_1.trace_add("write", maj_ligne_float_to_hex32)
tk.Entry(root, textvariable=var_entree_1).grid(row=1, column=0, padx=20, pady=(0, 20), sticky="ew")

tk.Label(root, text="Format FP32 (Copiable) :", fg="blue").grid(row=0, column=1, padx=20, pady=(15, 0), sticky="w")
res_1 = tk.Entry(root, state="readonly", fg="blue", font=("Consolas", 12), relief="flat")
res_1.grid(row=1, column=1, padx=20, pady=(0, 20), sticky="ew")

# --- 4. LIGNE 2 
tk.Label(root, text="VALEUR FLOTTANTE 64 bits :", font=("Arial", 10, "bold")).grid(row=2, column=0, padx=20, pady=(10, 0), sticky="w")
var_entree_2 = tk.StringVar()
var_entree_2.trace_add("write", maj_ligne_float_to_hex64)
tk.Entry(root, textvariable=var_entree_2).grid(row=3, column=0, padx=20, pady=(0, 20), sticky="ew")

tk.Label(root, text="Format FP64 + 1 dead bit (Copiable) :", fg="blue").grid(row=2, column=1, padx=20, pady=(10, 0), sticky="w")
res_2 = tk.Entry(root, state="readonly", fg="blue", font=("Consolas", 12), relief="flat")
res_2.grid(row=3, column=1, padx=20, pady=(0, 20), sticky="ew")

# --- 5. LIGNE 3 
tk.Label(root, text="VALEUR HEXADECIMALE SUR 32 BITS :", font=("Arial", 10, "bold")).grid(row=4, column=0, padx=20, pady=(10, 0), sticky="w")
var_entree_3 = tk.StringVar()
var_entree_3.trace_add("write", maj_ligne_hex32_to_float)
tk.Entry(root, textvariable=var_entree_3).grid(row=5, column=0, padx=20, pady=(0, 20), sticky="ew")

tk.Label(root, text="Résulat en flottant :", fg="blue").grid(row=4, column=1, padx=20, pady=(10, 0), sticky="w")
res_3 = tk.Entry(root, state="readonly", fg="blue", font=("Consolas", 12), relief="flat")
res_3.grid(row=5, column=1, padx=20, pady=(0, 20), sticky="ew")

# --- 6. LIGNE 4 
tk.Label(root, text="VALEUR HEXADECIMALE SUR 64 BITS :", font=("Arial", 10, "bold")).grid(row=6, column=0, padx=20, pady=(10, 0), sticky="w")
var_entree_4 = tk.StringVar()
var_entree_4.trace_add("write", maj_ligne_hex64_to_float)
tk.Entry(root, textvariable=var_entree_4).grid(row=7, column=0, padx=20, pady=(0, 20), sticky="ew")

tk.Label(root, text="Résulat en flottant :", fg="blue").grid(row=6, column=1, padx=20, pady=(10, 0), sticky="w")
res_4 = tk.Entry(root, state="readonly", fg="blue", font=("Consolas", 12), relief="flat")
res_4.grid(row=7, column=1, padx=20, pady=(0, 20), sticky="ew")

# --- CONFIGURATION GRILLE ---
root.columnconfigure(0, weight=1)
root.columnconfigure(1, weight=1)

root.mainloop()