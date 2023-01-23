#/usr/bin/python3

cadena = input("Escribe aquí tu cadena: ")
converter = cadena.replace("\\x00", "")

print(converter)

char = input("Quieres mirar otra cadena en texto plano? Si <s> No <n>: ")
while char == 's':
    cadena2 = input("Escribe otra cadena: ")
    converter2 = cadena2.replace("\\x00", "")

    print(converter2)

    char = input("Quieres mirar otra cadena en texto plano? Si <s> No <n>: ")
