

import sys


#valeur_hexa = sys.args[1]

valeur_hexa = 0x30000000

signe = (valeur_hexa & (1<<31)) >> 31
if (signe):
    print("-")
else :
    print("+")
integral = (valeur_hexa & ((0x3) << 29)) >> 29
print ("Integral : " + str(integral))
decimal = 0
for i in range(28):
    bit = (valeur_hexa >> (28 - i) ) & 0x1
    decimal += bit * (2**-(i+1))
    #print (" val" + str(i) + " = " + str(bit * (2**-(i+1))))
print ("Decimal : " + str(decimal))
print ("Valeur finale : " + str((-1)*signe + integral + decimal))