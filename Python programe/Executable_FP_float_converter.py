import tkinter as tk

# --- 1. FONCTIONS DE CALCUL ---

def convertion_float_hex32(valeur_float,size_integral,dead_bit):
    try:
        valeur_float = float(valeur_float)
    except ValueError:
        return "Erreur"

    size_word = 32
    size_integral = int(size_integral)
    dead_bit = int(dead_bit)
    size_decimal = size_word - size_integral - dead_bit - 1
    max_value_integral = 0
    
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
        return "TROP GRAND"
        
    for i in range(size_decimal):
        current_bit = 2**-(i+1)
        if decimal >= current_bit:
            decimal -= current_bit
            final_value |= 0x1 << (size_decimal-1 - i)

    final_value |= absolute_integral << (size_word - size_integral - dead_bit - 1)
    return hex(final_value)

def convertion_float_hex64(valeur_float,size_integral,dead_bit):
    try:
        valeur_float = float(valeur_float)
    except ValueError:
        return "Erreur"

    size_word = 64
    size_integral = int(size_integral)
    dead_bit = int(dead_bit)
    size_decimal = size_word - size_integral - dead_bit - 1
    max_value_integral = 0
    
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
        return "TROP GRAND"
        
    for i in range(size_decimal):
        current_bit = 2**-(i+1)
        if decimal >= current_bit:
            decimal -= current_bit
            final_value |= 0x1 << (size_decimal-1 - i)

    final_value |= absolute_integral << (size_word - size_integral - dead_bit - 1)
    return hex(final_value)

def convertion_hex64_float(valeur_hexa,size_integral,dead_bit):
    try:
        valeur_hexa = supprimer_espaces(valeur_hexa)
        valeur_hexa = int(valeur_hexa,16)
    except: return None

    size_word = 64
    size_integral = int(size_integral)
    dead_bit = int(dead_bit)
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

    res_total = -(decimal + integral) if signe else (decimal + integral)
    return res_total

def convertion_hex32_float(valeur_hexa,size_integral,dead_bit):
    try:
        valeur_hexa = supprimer_espaces(valeur_hexa)
        if valeur_hexa.startswith("0x"): valeur_hexa = valeur_hexa[2:]
        valeur_hexa = int(valeur_hexa,16)
    except: return None

    size_word = 32
    size_integral = int(size_integral)
    dead_bit = int(dead_bit)
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

    res_total = -(decimal + integral) if signe else (decimal + integral)
    return res_total

def ajouter_separateur(texte, n=4, sep=" "):
    if not texte.startswith("0x"): return texte
    val = texte[2:]
    zero_missing = (n - (len(val) % n)) % n
    val = ("0" * zero_missing) + val
    morceaux = [val[i:i+n] for i in range(0, len(val), n)]
    return "0x " + sep.join(morceaux)

def supprimer_espaces(texte):
    return texte.replace(" ", "").replace("\n", "").replace("\t", "")

def modifier_resultat(widget, texte, highlight=False):
    widget.config(state="normal")
    widget.delete(0, tk.END)
    if texte is not None:
        widget.insert(0, str(texte))
    
    # Gestion de la mise en évidence SANS toucher à la police (font)
    if highlight:
        widget.config(readonlybackground="#FFFF00", fg="black")
    else:
        # On remet les couleurs par défaut (gris clair et vert foncé selon vos réglages)
        widget.config(readonlybackground="#F0F0F0", fg="darkgreen")
    
    widget.config(state="readonly")

# --- 2. FONCTIONS DE MISE À JOUR ---

def maj_ligne_float_to_hex32(*args):
    valeur = var_entree_1.get()
    n_int = var_int_1.get() or "0"
    n_dead = var_dead_1.get() or "0"
    v_dec = 31 - int(n_int) - int(n_dead)
    modifier_resultat(lbl_v_dec_1, v_dec)
    if valeur:
        res = convertion_float_hex32(valeur,n_int,n_dead)
        modifier_resultat(res_1, ajouter_separateur(res).upper())
    else: modifier_resultat(res_1, "")

def maj_ligne_float_to_hex64(*args):
    valeur = var_entree_2.get()
    n_int = var_int_2.get() or "0"
    n_dead = var_dead_2.get() or "0"
    v_dec = 63 - int(n_int) - int(n_dead)
    modifier_resultat(lbl_v_dec_2, v_dec)
    res = convertion_float_hex64(valeur,n_int,n_dead)
    modifier_resultat(res_2, ajouter_separateur(res).upper())

def maj_ligne_hex32_to_float(*args):
    valeur = var_entree_3.get()
    n_int = var_int_3.get() or "0"
    n_dead = var_dead_3.get() or "0"
    v_dec = 31 - int(n_int) - int(n_dead)
    modifier_resultat(lbl_v_dec_3, v_dec)
    res = convertion_hex32_float(valeur,n_int,n_dead)
    modifier_resultat(res_3, str(res).upper() if res is not None else "N/A")

def maj_ligne_hex64_to_float(*args):
    valeur = var_entree_4.get()
    n_int = var_int_4.get() or "0"
    n_dead = var_dead_4.get() or "0"
    v_dec = 63 - int(n_int) - int(n_dead)
    modifier_resultat(lbl_v_dec_4, v_dec)
    res = convertion_hex64_float(valeur,n_int,n_dead)
    modifier_resultat(res_4, str(res).upper() if res is not None else "N/A")

def maj_bloc_10(*args):
    entree = var_entree_bloc.get().replace(" ", "")
    n_int = var_int_bloc.get() or "0"
    n_dead = var_dead_bloc.get() or "0"
    
    valeurs_hexa = entree.split(",")
    floats_calcules = []

    for i in range(10):
        if i < len(valeurs_hexa) and valeurs_hexa[i]:
            val = convertion_hex32_float(valeurs_hexa[i], n_int, n_dead)
            floats_calcules.append(val)
        else:
            floats_calcules.append(None)

    # Recherche de la valeur positive la plus élevée
    max_val = -float('inf')
    max_idx = -1
    for i, v in enumerate(floats_calcules):
        if v is not None and v > max_val:
            max_val = v
            max_idx = i

    # Mise à jour des cases avec coloration
    for i in range(10):
        is_max = (i == max_idx and max_idx != -1)
        modifier_resultat(res_bloc_list[i], floats_calcules[i], highlight=is_max)

# --- 3. INITIALISATION ---
root = tk.Tk()
root.title("Convertisseur Fixed-Point")
root.geometry("850x750")

for i in range(2): root.columnconfigure(i, weight=1)

# UI Ligne 1
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

# UI Ligne 2
f_g2 = tk.Frame(root, padx=20, pady=10); f_g2.grid(row=1, column=0, sticky="ew")
tk.Label(f_g2, text="VALEUR FLOTTANTE 64 bits :", font=("Arial", 10, "bold")).pack(anchor="w")
var_entree_2 = tk.StringVar(); var_entree_2.trace_add("write", maj_ligne_float_to_hex64)
tk.Entry(f_g2, textvariable=var_entree_2).pack(fill="x", pady=5)
fb2 = tk.Frame(f_g2); fb2.pack(anchor="w")
tk.Label(fb2, text="Int:").grid(row=0, column=0); var_int_2 = tk.StringVar(value="4"); var_int_2.trace_add("write", maj_ligne_float_to_hex64)
tk.Spinbox(fb2, from_=0, to=31, width=5, textvariable=var_int_2, command=maj_ligne_float_to_hex64).grid(row=1, column=0, padx=2)
tk.Label(fb2, text="Dec:").grid(row=0, column=1); lbl_v_dec_2 = tk.Entry(fb2, width=5, state="readonly", relief="sunken", justify="center"); lbl_v_dec_2.grid(row=1, column=1, padx=2)
tk.Label(fb2, text="Dead:").grid(row=0, column=2); var_dead_2 = tk.StringVar(value="1"); var_dead_2.trace_add("write", maj_ligne_float_to_hex64)
tk.Spinbox(fb2, from_=0, to=31, width=5, textvariable=var_dead_2, command=maj_ligne_float_to_hex64).grid(row=1, column=2, padx=2)
f_d2 = tk.Frame(root, padx=20, pady=10); f_d2.grid(row=1, column=1, sticky="ew")
tk.Label(f_d2, text="Format FP64 (Copiable) :", fg="blue").pack(anchor="w")
res_2 = tk.Entry(f_d2, state="readonly", fg="blue", font=("Consolas", 12), relief="flat"); res_2.pack(fill="x", pady=5)

# UI Ligne 3
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

# UI Ligne 4
f_g4 = tk.Frame(root, padx=20, pady=10); f_g4.grid(row=3, column=0, sticky="ew")
tk.Label(f_g4, text="VALEUR HEXADECIMALE SUR 64 BITS :", font=("Arial", 10, "bold")).pack(anchor="w")
var_entree_4 = tk.StringVar(); var_entree_4.trace_add("write", maj_ligne_hex64_to_float)
tk.Entry(f_g4, textvariable=var_entree_4).pack(fill="x", pady=5)
fb4 = tk.Frame(f_g4); fb4.pack(anchor="w")
tk.Label(fb4, text="Int:").grid(row=0, column=0); var_int_4 = tk.StringVar(value="4"); var_int_4.trace_add("write", maj_ligne_hex64_to_float)
tk.Spinbox(fb4, from_=0, to=31, width=5, textvariable=var_int_4, command=maj_ligne_hex64_to_float).grid(row=1, column=0, padx=2)
tk.Label(fb4, text="Dec:").grid(row=0, column=1); lbl_v_dec_4 = tk.Entry(fb4, width=5, state="readonly", relief="sunken", justify="center"); lbl_v_dec_4.grid(row=1, column=1, padx=2)
tk.Label(fb4, text="Dead:").grid(row=0, column=2); var_dead_4 = tk.StringVar(value="1"); var_dead_4.trace_add("write", maj_ligne_hex64_to_float)
tk.Spinbox(fb4, from_=0, to=31, width=5, textvariable=var_dead_4, command=maj_ligne_hex64_to_float).grid(row=1, column=2, padx=2)
f_d4 = tk.Frame(root, padx=20, pady=10); f_d4.grid(row=3, column=1, sticky="ew")
tk.Label(f_d4, text="Résulat en flottant : (Copiable) :", fg="blue").pack(anchor="w")
res_4 = tk.Entry(f_d4, state="readonly", fg="blue", font=("Consolas", 12), relief="flat"); res_4.pack(fill="x", pady=5)

# BLOC DE 10 VALEURS
f_sep = tk.Frame(root, height=2, bd=1, relief="sunken"); f_sep.grid(row=4, column=0, columnspan=2, sticky="ew", pady=20)
f_bloc = tk.Frame(root, padx=20, pady=10); f_bloc.grid(row=5, column=0, columnspan=2, sticky="ew")
tk.Label(f_bloc, text="BLOC DE 10 VALEURS HEXA (32 BITS) SEPARÉES PAR VIRGULES :", font=("Arial", 10, "bold"), fg="darkgreen").pack(anchor="w")
var_entree_bloc = tk.StringVar(); var_entree_bloc.trace_add("write", maj_bloc_10)
tk.Entry(f_bloc, textvariable=var_entree_bloc, font=("Consolas", 10)).pack(fill="x", pady=5)
fb_settings = tk.Frame(f_bloc); fb_settings.pack(anchor="w", pady=5)
tk.Label(fb_settings, text="Int:").grid(row=0, column=0)
var_int_bloc = tk.StringVar(value="2"); var_int_bloc.trace_add("write", maj_bloc_10)
tk.Spinbox(fb_settings, from_=0, to=31, width=5, textvariable=var_int_bloc, command=maj_bloc_10).grid(row=0, column=1, padx=5)
tk.Label(fb_settings, text="Dead:").grid(row=0, column=2)
var_dead_bloc = tk.StringVar(value="0"); var_dead_bloc.trace_add("write", maj_bloc_10)
tk.Spinbox(fb_settings, from_=0, to=31, width=5, textvariable=var_dead_bloc, command=maj_bloc_10).grid(row=0, column=3, padx=5)

f_grid = tk.Frame(f_bloc); f_grid.pack(fill="x", pady=10)
res_bloc_list = []
for i in range(10):
    row = i // 5
    col = i % 5
    cell = tk.Frame(f_grid, padx=5, pady=5)
    cell.grid(row=row, column=col, sticky="nsew")
    tk.Label(cell, text=f"{i} =").pack(side="left")
    e = tk.Entry(cell, width=15, state="readonly", font=("Consolas", 10), fg="darkgreen")
    e.pack(side="left")
    res_bloc_list.append(e)

root.mainloop()