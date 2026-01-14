

import sys


valeur_hexa = sys.argv[1]

valeur_hexa = int(valeur_hexa,16)
#valeur_hexa = 0x30000000

signe = (valeur_hexa & (1<<31)) >> 31

integral = (valeur_hexa & ((0x3) << 29)) >> 29
decimal = 0
for i in range(28):
    bit = (valeur_hexa >> (28 - i) ) & 0x1
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