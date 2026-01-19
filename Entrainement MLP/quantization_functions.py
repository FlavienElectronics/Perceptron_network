def int_to_vhdl_hex(v, width_bits) -> str:
    hex_res = hex(v) if v >= 0 else hex((1<<width_bits)+v)
    # pad 0 to fit width_bits
    if len(hex_res[2:]) < width_bits // 4:
        hex_res = hex_res[:2] + hex_res[2:].rjust(width_bits // 4, '0')
    return hex_res[2:].upper()

#print(int_to_vhdl_hex(-6393170, 32))

def convertion_float_hex32(valeur_float,size_integral,dead_bit=0):
    try:
        valeur_float = float(valeur_float)
    except ValueError:
        return "Erreur : format invalide"

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
        
    for i in range(size_decimal):
        current_bit = 2**-(i+1)
        if decimal >= current_bit:
            decimal -= current_bit
            final_value |= 0x1 << (size_decimal-1 - i)

    final_value |= absolute_integral << (size_word - size_integral - dead_bit - 1)
    return hex(final_value)[2:].upper().rjust(8,'0')

print(convertion_float_hex32(-0.006904, 2))

# ========== SAVE ==========

# import numpy as np

# def quantize_to_int8(weights, scale_to_max=False):
#     w = np.array(weights, dtype=float)
#     if scale_to_max:
#         max_abs = np.max(np.abs(w))
#         scale = 127 / max_abs if max_abs != 0 else 1.0
#     else : 
#         scale = 127
#     w_q = np.round(w * scale).astype(np.int8)   # true int8
#     return w_q, scale


# def int8_to_hex(v):
#     return f"{(int(v) & 0xFF):02X}"


# def int_to_vhdl_hex(v: int, width_bits: int) -> str:
#     hex_res = hex(v) if v >= 0 else hex((1<<width_bits)+v)
#     # pad 0 to fit width_bits
#     if len(hex_res[2:]) < width_bits // 4:
#         hex_res = hex_res[:2] + hex_res[2:].rjust(width_bits // 4, '0')
#     return hex_res[2:].upper()