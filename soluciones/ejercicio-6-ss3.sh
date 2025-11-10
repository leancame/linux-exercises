#Crea un script que nos diga cuántos días quedan hasta el 31 de diciembre.

echo "Faltan $(($(date +%j -d"Dec 31")-$(date +%-j))) días para que acabe el año $(date +%Y)."