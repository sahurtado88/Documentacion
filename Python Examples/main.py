print("Hola bienvenido al generador de nombres de bandas")
city=input("Donde naciste?\n")
pet=input("cual es el nombre de tu mascota?\n")
print("un buen nombre para ti banda seria: "+city+" "+pet)

############

print("Hola bienvenido al calculador de cuentas")
bill = input("Cuanto fue la cuenta? ")
cantidad_personas = input("cuantas personas se dividira la cuenta ")
porcentaje_tip = input("Que porcentaje de propina dara? 10,12 ó 15? ")
total = (float(bill)+float(bill)*(int(porcentaje_tip)/100))/int(cantidad_personas)

print("cada persona debe pagar: " +str(round(total)))
