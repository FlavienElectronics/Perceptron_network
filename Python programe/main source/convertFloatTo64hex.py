import sys

valeur_float = sys.argv[1]

valeur_float = float(valeur_float)

size_word = 64
size_integral = 4
dead_bit = 1
size_decimal = size_word - size_integral - dead_bit - 1
max_value_integral = 0
final_value = 1 << (size_word - 1)

integral = int(valeur_float)
if (integral < 0):
    decimal = - (valeur_float - integral)
    absolute_integral = -integral
    final_value = 1 << (size_word - 1)
else :
    decimal = (valeur_float - integral)
    absolute_integral = integral
    final_value = 0

for i in range(size_integral):
    max_value_integral |= 1 << i

if (absolute_integral > max_value_integral):
    print ("ERROR : valeur trop grande")
else :  
    print (valeur_float)
    print (integral)
    print (decimal)
    
for i in range(size_decimal):
    current_bit = 2**-(i+1)
    #print ("current : " + str(current_bit))
    if (decimal >= current_bit):
        decimal -= current_bit
        final_value |= 0x1 << (size_decimal-1 - i)
        #print (decimal)

final_value |= absolute_integral << (size_word - size_integral - dead_bit - 1)

print (hex(final_value))