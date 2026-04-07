# Usuarios y Contraseñas
# cool_cat123,BananaSplit99
# xXx_panda_xXx,unicornu
# spacetraveler42,42isTheAnswer!
# flower_power,RedRoses
# shadow_ninja,!ninjaWarrior22
# _bubblegumqueen,candyLand2024
# the_real_hero,p@ssw0rd!
# pirateKing777,G0ld&Silver$$?
# coffee_addict,latteLover123
# bookworm89,openSesame!
# pepeMaquina,Ave7#0

# Se tiene el archivo contraseñas.csv, el cual almacena las contraseñas de distintos usuarios en una plataforma. La estructura es nombre_usuario,contraseña. Se pide extraer, del archivo:

# 11 Los nombres de usuario que contienen números.
# 12 Los nombres de usuario con al menos un guión bajo (_).
# 13Las contraseñas alfanúmericas.
# 14 Los nombres de usuario alfanuméricos.
# 15 Las contraseñas que comienzen y terminen con el mismo caracter.
# 16 Las contraseñas con exactamente 14 caracteres (de cualquier tipo).
# 17 Las contraseñas seguras; son las que contienen al menos:
#   1 letra minúscula
#   1 letra mayúscula
#   1 número
#   1 caracter especial (@$!%*?&#)

#11

#grep -Eio "^[^,]*[0-9][^,]" contraseñas.csv 

#12

#grep -Eio "^[^,]*[_]+[^,]*" contraseñas.csv 

#13

#grep -Eio ",\w+\s*$" contraseñas.csv | sed 's/,//'

#14

#grep -Eo "^\w+" contraseñas.csv

#15

#grep -Eio ",\w+\s*$" contraseñas.csv | sed 's/,//'

#16

grep -Eio ",.{15}$" contraseñas.csv | sed 's/,//'