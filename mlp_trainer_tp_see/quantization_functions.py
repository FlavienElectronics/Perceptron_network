import numpy as np

def quantize_to_int8(weights, scale_to_max=False):
    w = np.array(weights, dtype=float)
    if scale_to_max:
        max_abs = np.max(np.abs(w))
        scale = 127 / max_abs if max_abs != 0 else 1.0
    else : 
        scale = 127
    w_q = np.round(w * scale).astype(np.int8)   # true int8
    return w_q, scale


def int8_to_hex(v):
    return f"{(int(v) & 0xFF):02X}"


def int_to_vhdl_hex(v: int, width_bits: int) -> str:
    hex_res = hex(v) if v >= 0 else hex((1<<width_bits)+v)
    # pad 0 to fit width_bits
    if len(hex_res[2:]) < width_bits // 4:
        hex_res = hex_res[:2] + hex_res[2:].rjust(width_bits // 4, '0')
    return hex_res[2:].upper()


a = int(-1)
print(int_to_vhdl_hex(a,32))
