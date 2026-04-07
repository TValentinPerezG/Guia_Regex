# Introducción - Básicos
# Tenemos un archivo oraciones.txt, cuyo contenido es:

# El perro corre rápido por el parque.
# María compró manzanas, peras y bananas en el mercado.
# La computadora tiene 16 GB de RAM y 512 GB de almacenamiento.
# ¡Qué día tan bonito para un paseo por la montaña!
# ¿Cuántas palabras puede contener esta oración?
# El gato saltó sobre la mesa para atrapar el ratón.
# Las clases de Intro comienzan a las 7:30 AM.
# Juan y Martina juegan al fútbol todos los viernes.

# Encontrar la expresión regular de Regex que devuelve:

# 1. Las ocurrencias de la letra s.
# 2. Las ocurrencias de un caracter, seguido de la letra o (ej. to).
# 3. Todos los dígitos en el archivo.
# 4. Las ocurrencias del punto (.).
# 5. Las ocurrencias de la letra c al comienzo de la palabra.
# 6. Las palabras que comienzan con la letra p (no es necesario incluir las mayúsculas).
# ¿Qué devuelven las siguientes expresiones regulares?

# 7. ^L
# 8. !$
# 9.  (espacio)
# 20. [A-Z1-3]


#1
grep -Ei "s" oraciones.txt

#2
grep -Ei ".(o)" oraciones.txt

#3
grep -Ei "[0-9]" oraciones.txt

#4
grep -Ei "\." oraciones.txt

#5
grep -Ei "\Wc" oraciones.txt
#o
grep -Ei "[^a-z]c" oraciones.txt

#6
grep -E "\sp" oraciones.txt

#7
#Devuelve las lineas que tienen como primer caracter "L"

#8
#Devuelve las lineas que tienen como ultimo caracter "!"

#9
#devuelve todas las lineas ya que toma todos los espacios

#10
#Devuelve todas las ocaciones en las que encuentra una letra mayusdcula o un numero entre 1 y 3
