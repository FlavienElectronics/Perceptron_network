

import sys


# S = signe / I = partie intégrale / D = partie décimale / X = bit inutile
    
# (binary) : 0000 0000 0000 0000 0000 0000 0000 0000
#            SIID DDDD DDDD DDDD DDDD DDDD DDDD DDDD 
# signe (31)
# integral (30-29)
# decimal (28-0)

valeur_hexa = sys.argv[1]

valeur_hexa = int(valeur_hexa,16)

size_word = 32
size_integral = 2
dead_bit = 0
size_decimal = size_word - size_integral - dead_bit - 1


integral_mask = 0

for i in range(size_integral):
    integral_mask |= 1 << i


#print (integral_mask)


#valeur_hexa = 0x30000000

signe = (valeur_hexa & (1<<(size_word-1))) >> (size_word-1)

integral = ((valeur_hexa) >> size_decimal) & integral_mask
decimal = 0
for i in range(size_decimal-1):
    bit = (valeur_hexa >> ((size_decimal-1) - i) ) & 0x1
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