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
    valeur_hexa = supprimer_espaces(valeur_hexa)
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
    valeur_hexa = supprimer_espaces(valeur_hexa)
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

def supprimer_espaces(texte):
    return texte.replace(" ", "")

# Fonction utilitaire pour modifier une case en lecture seule
def modifier_resultat(widget, texte):
    widget.config(state="normal") # Déverrouille
    widget.delete(0, tk.END)      # Efface
    widget.insert(0, texte)       # Écrit
    widget.config(state="readonly") # Verrouille

# --- FONCTIONS DE MISE À JOUR (Trigger) ---

def maj_ligne_float_to_hex32(*args):
    valeur = var_entree_1.get()
    n_int = var_int_1.get() or "0"
    n_dead = var_dead_1.get() or "0"
    v_dec = 31 - int(n_int) - int(n_dead)
    modifier_resultat(lbl_v_dec_1, v_dec)
    if valeur:
        res = convertion_float_hex32(valeur)
        modifier_resultat(res_1, ajouter_separateur(res))
    else:
        modifier_resultat(res_1, "")

def maj_ligne_float_to_hex64(*args):
    valeur = var_entree_2.get()
    n_int = var_int_2.get() or "0"
    n_dead = var_dead_2.get() or "0"
    v_dec = 63 - int(n_int) - int(n_dead)
    modifier_resultat(lbl_v_dec_2, v_dec)
    res = convertion_float_hex64(valeur)
    modifier_resultat(res_2, ajouter_separateur(res))

def maj_ligne_hex32_to_float(*args):
    valeur = var_entree_3.get()
    n_int = var_int_3.get() or "0"
    n_dead = var_dead_3.get() or "0"
    v_dec = 31 - int(n_int) - int(n_dead)
    modifier_resultat(lbl_v_dec_3, v_dec)
    res = convertion_hex32_float(valeur)
    modifier_resultat(res_3, str(res))

def maj_ligne_hex64_to_float(*args):
    valeur = var_entree_4.get()
    n_int = var_int_4.get() or "0"
    n_dead = var_dead_4.get() or "0"
    v_dec = 63 - int(n_int) - int(n_dead)
    modifier_resultat(lbl_v_dec_4, v_dec)
    res = convertion_hex64_float(valeur)
    modifier_resultat(res_4, res)

# --- 3. INITIALISATION ---
root = tk.Tk()
root.title("Convertisseur Fixed-Point")
root.geometry("800x475")

# On crée deux grandes colonnes principales
root.columnconfigure(0, weight=1)
root.columnconfigure(1, weight=1)
# LIGNE 1

f_g1 = tk.Frame(root, padx=20, pady=10); f_g1.grid(row=0, column=0, sticky="ew")
tk.Label(f_g1, text="VALEUR FLOTTANTE 32 BITS :", font=("Arial", 10, "bold")).pack(anchor="w")
var_entree_1 = tk.StringVar(); var_entree_1.trace_add("write", maj_ligne_float_to_hex32)
tk.Entry(f_g1, textvariable=var_entree_1).pack(fill="x", pady=5)
fb1 = tk.Frame(f_g1); fb1.pack(anchor="w")
tk.Label(fb1, text="Int:").grid(row=0, column=0); var_int_1 = tk.StringVar(value="2"); var_int_1.trace_add("write", maj_ligne_float_to_hex32)
tk.Spinbox(fb1, from_=0, to=31, width=5, textvariable=var_int_1, command=maj_ligne_float_to_hex32).grid(row=1, column=0, padx=2)
tk.Label(fb1, text="Dec:").grid(row=0, column=1); lbl_v_dec_1 = tk.Entry(fb1, width=5, state="readonly", relief="sunken", justify="center"); lbl_v_dec_1.grid(row=1, column=1, padx=2)
tk.Label(fb1, text="Dead:").grid(row=0, column=2); var_dead_1 = tk.StringVar(value="0"); var_dead_1.trace_add("write", maj_ligne_float_to_hex32)
tk.Spinbox(fb1, from_=0, to=31, width=5, textvariable=var_dead_1, command=maj_ligne_float_to_hex32).grid(row=1, column=2, padx=2)
f_d1 = tk.Frame(root, padx=20, pady=10); f_d1.grid(row=0, column=1, sticky="ew")
tk.Label(f_d1, text="Format FP32 (Copiable) :", fg="blue").pack(anchor="w")
res_1 = tk.Entry(f_d1, state="readonly", fg="blue", font=("Consolas", 12), relief="flat"); res_1.pack(fill="x", pady=5)

# --- 4. LIGNE 2 

f_g2 = tk.Frame(root, padx=20, pady=10); f_g2.grid(row=1, column=0, sticky="ew")
tk.Label(f_g2, text="VALEUR FLOTTANTE 64 bits :", font=("Arial", 10, "bold")).pack(anchor="w")
var_entree_2 = tk.StringVar(); var_entree_2.trace_add("write", maj_ligne_float_to_hex64)
tk.Entry(f_g2, textvariable=var_entree_2).pack(fill="x", pady=5)
fb2 = tk.Frame(f_g2); fb2.pack(anchor="w")
tk.Label(fb2, text="Int:").grid(row=0, column=0); var_int_2 = tk.StringVar(value="2"); var_int_2.trace_add("write", maj_ligne_float_to_hex64)
tk.Spinbox(fb2, from_=0, to=31, width=5, textvariable=var_int_2, command=maj_ligne_float_to_hex64).grid(row=1, column=0, padx=2)
tk.Label(fb2, text="Dec:").grid(row=0, column=1); lbl_v_dec_2 = tk.Entry(fb2, width=5, state="readonly", relief="sunken", justify="center"); lbl_v_dec_2.grid(row=1, column=1, padx=2)
tk.Label(fb2, text="Dead:").grid(row=0, column=2); var_dead_2 = tk.StringVar(value="0"); var_dead_2.trace_add("write", maj_ligne_float_to_hex64)
tk.Spinbox(fb2, from_=0, to=31, width=5, textvariable=var_dead_2, command=maj_ligne_float_to_hex64).grid(row=1, column=2, padx=2)
f_d2 = tk.Frame(root, padx=20, pady=10); f_d2.grid(row=1, column=1, sticky="ew")
tk.Label(f_d2, text="Format FP64 (Copiable) :", fg="blue").pack(anchor="w")
res_2 = tk.Entry(f_d2, state="readonly", fg="blue", font=("Consolas", 12), relief="flat"); res_2.pack(fill="x", pady=5)

# --- 5. LIGNE 3 
f_g3 = tk.Frame(root, padx=20, pady=10); f_g3.grid(row=2, column=0, sticky="ew")
tk.Label(f_g3, text="VALEUR HEXADECIMALE SUR 32 BITS :", font=("Arial", 10, "bold")).pack(anchor="w")
var_entree_3 = tk.StringVar(); var_entree_3.trace_add("write", maj_ligne_hex32_to_float)
tk.Entry(f_g3, textvariable=var_entree_3).pack(fill="x", pady=5)
fb3 = tk.Frame(f_g3); fb3.pack(anchor="w")
tk.Label(fb3, text="Int:").grid(row=0, column=0); var_int_3 = tk.StringVar(value="2"); var_int_3.trace_add("write", maj_ligne_hex32_to_float)
tk.Spinbox(fb3, from_=0, to=31, width=5, textvariable=var_int_3, command=maj_ligne_hex32_to_float).grid(row=1, column=0, padx=2)
tk.Label(fb3, text="Dec:").grid(row=0, column=1); lbl_v_dec_3 = tk.Entry(fb3, width=5, state="readonly", relief="sunken", justify="center"); lbl_v_dec_3.grid(row=1, column=1, padx=2)
tk.Label(fb3, text="Dead:").grid(row=0, column=2); var_dead_3 = tk.StringVar(value="0"); var_dead_3.trace_add("write", maj_ligne_hex32_to_float)
tk.Spinbox(fb3, from_=0, to=31, width=5, textvariable=var_dead_3, command=maj_ligne_hex32_to_float).grid(row=1, column=2, padx=2)
f_d3 = tk.Frame(root, padx=20, pady=10); f_d3.grid(row=2, column=1, sticky="ew")
tk.Label(f_d3, text="Résulat en flottant (Copiable) :", fg="blue").pack(anchor="w")
res_3 = tk.Entry(f_d3, state="readonly", fg="blue", font=("Consolas", 12), relief="flat"); res_3.pack(fill="x", pady=5)

# --- 6. LIGNE 4 
f_g4 = tk.Frame(root, padx=20, pady=10); f_g4.grid(row=3, column=0, sticky="ew")
tk.Label(f_g4, text="VALEUR HEXADECIMALE SUR 64 BITS :", font=("Arial", 10, "bold")).pack(anchor="w")
var_entree_4 = tk.StringVar(); var_entree_4.trace_add("write", maj_ligne_hex64_to_float)
tk.Entry(f_g4, textvariable=var_entree_4).pack(fill="x", pady=5)
fb4 = tk.Frame(f_g4); fb4.pack(anchor="w")
tk.Label(fb4, text="Int:").grid(row=0, column=0); var_int_4 = tk.StringVar(value="2"); var_int_4.trace_add("write", maj_ligne_hex64_to_float)
tk.Spinbox(fb4, from_=0, to=31, width=5, textvariable=var_int_4, command=maj_ligne_hex64_to_float).grid(row=1, column=0, padx=2)
tk.Label(fb4, text="Dec:").grid(row=0, column=1); lbl_v_dec_4 = tk.Entry(fb4, width=5, state="readonly", relief="sunken", justify="center"); lbl_v_dec_4.grid(row=1, column=1, padx=2)
tk.Label(fb4, text="Dead:").grid(row=0, column=2); var_dead_4 = tk.StringVar(value="0"); var_dead_4.trace_add("write", maj_ligne_hex64_to_float)
tk.Spinbox(fb4, from_=0, to=31, width=5, textvariable=var_dead_4, command=maj_ligne_hex64_to_float).grid(row=1, column=2, padx=2)
f_d4 = tk.Frame(root, padx=20, pady=10); f_d4.grid(row=3, column=1, sticky="ew")
tk.Label(f_d4, text="Résulat en flottant : (Copiable) :", fg="blue").pack(anchor="w")
res_4 = tk.Entry(f_d4, state="readonly", fg="blue", font=("Consolas", 12), relief="flat"); res_4.pack(fill="x", pady=5)

# --- CONFIGURATION GRILLE ---
root.columnconfigure(0, weight=1)
root.columnconfigure(1, weight=1)

root.mainloop()