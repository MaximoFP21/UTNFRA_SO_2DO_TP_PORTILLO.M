cd UTN-FRA_SO_Examenes/202406/bash_script
nano Lista_Usuarios.txt
maximoportillo , maximoportillo , /home
cat Lista_Usuarios.txt
cd ~
cd /usr/local/bin/
sudo nano portilloAltaUser-Groups.sh
USUARIO_BASE=$1
ARCHIVO_USUARIOS=$2

CLAVE=$(sudo grep "$USUARIO_BASE" /etc/shadow | cut -d':' -f2)

while read linea; do
    GRUPO=$(echo $linea | cut -d',' -f1)
    USUARIO=$(echo $linea | cut -d',' -f2)

    sudo groupadd $GRUPO 2>/dev/null
    sudo useradd -m -g $GRUPO -p "$CLAVE" $USUARIO
done < $ARCHIVO_USUARIOS 
