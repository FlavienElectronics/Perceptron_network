

import sys


valeur_hexa = sys.argv[1]

valeur_hexa = int(valeur_hexa,16)
#valeur_hexa = 0x30000000

signe = (valeur_hexa & (1<<63)) >> 63

integral = (valeur_hexa & ((0xF) << 58)) >> 58

decimal = 0
for i in range(28):
    bit = (valeur_hexa >> (57 - i) ) & 0x1
    decimal += bit * (2**-(i+1))
    #print (" val" + str(i) + " = " + str(bit * (2**-(i+1))))
    
if (signe):
    print("-")
    res_total = -(decimal + integral)
else :
    print("+")
    res_total = (decimal + integral)
print ("Integral : " + str(integral))
print ("Decimal : " + str(decimal))

print ("Valeur finale : " + str(res_total))