git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
cd UTN-FRA_SO_Examenes/202406
ansible --version
sudo apt install wget gpg
maximoportillo@VMDiscos:~/UTN-FRA_SO_Examenes/202406$
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ls -l
./script_Precondicion.sh 
source ~/.bashrc
sudo apt-get update
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo systemctl status docker
sudo fdisk -l
sudo fdisk /dev/sdc <<EOF
n
p
1

+1G
n
p
2


w
EOF

sudo fdisk /dev/sdd <<EOF
n
p
1


w
EOF

sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1
sudo vgcreate vg_datos /dev/sdc1 /dev/sdd1
sudo vgcreate vg_temp /dev/sdc2
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_datos/lv_swap
sudo mkdir -p /var/lib/docker /work
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_datos/lv_swap
sudo mkswap /dev/vg_datos/lv_swap
echo "/dev/vg_datos/lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_datos/lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/vg_temp/lv_swap none swap sw 0 0" | sudo tee -a /etc/fstab
ls -l 
cd ..
ls -l
cd ..
ls -l
cd RTA_Examen_20251111/
ls -l
nano Punto_A.sh
cat Punto_A.sh
chmod +x Punto_A.sh
ls -l
cd ~
/usr/local/bin/portilloAltaUser-Groups.sh
cd UTN-FRA_SO_Examenes/202406/bash_script/
nano Lista_Usuarios.txt
cat Lista_Usuarios.txt 
cd ~
cd /usr/local/bin
ls -l
nano portilloAltaUser-Groups.sh
ls -l
cd portilloAltaUser-Groups.sh
nano portilloAltaUser-Groups.sh
nano portilloAltaUser_Groups.sh
nano portilloAltaUser_Groups
nano portilloAltaUserGroups.sh
exit
cd /Usr/local/bin
cd /usr/local/bin
sudo nano portilloAltaUser-Groups.sh
cd ~
cd RTA_Examen_20251111/
ls -l
nano Punto_B.sh
chmod +x Punto_B.sh
ls -l
cd ~
cd UTN-FRA_SO_Examenes/202406/docker
ls -l
nano Dockerfile
ls -l
nano index.html 
sudo docker build -t web1-portillo .
docker login
sudo docker tag web1-portillo maxifp21/web1-portillo:latest
sudo docker push maxifp21/web1-portillo:latest
sudo docker images
sudo docker tag web1-portillo:latest maximportillo/web1-portillo:latest
sudo docker images
sudo docker push maximportillo/web1-portillo:latest
sudo docker login
sudo docker images
sudo docker tag web1-portillo:latest maxifp21/web1-portillo:latest
sudo docker images
sudo docker push maxifp21/web1-portillo:latest
sudo docker run -d -p 8080:80 web1-portillo
ls -l
nano run.sh
chmod +x run.sh
docker run -d -p 8080:80 web1-portillo
cd ~
cd RTA_Examen_20251111/
ls -l
nano Punto_C.sh
chmod +x Punto_C.sh
ls -l
cd ~
cd UTN-FRA_SO_Examenes/202406/ansible
ls -l
cd roles/
sudo apt install tree 
mkdir -p role_2do_tp/{tasks,templates,files,vars}
:white_check_mark:
Haz clic para reaccionar
:brain:
Haz clic para reaccionar
:negative_squared_cross_mark:
Haz clic para reaccionar
Añadir reacción
Responder
Reenviar
Más
mkdir -p role_2do_tp/{tasks,templates,files,vars}
:white_check_mark:
Haz clic para reaccionar
:brain:
Haz clic para reaccionar
:negative_squared_cross_mark:
Haz clic para reaccionar
Añadir reacción
Responder
Reenviar
Más
mkdir -p role_2do_tp/{tasks,templates,files,vars}
tree
cd role_2do_tp/tasks/
nano main.yml
cd ..
ls -l
cd templates/
ls -l
nano datos_alumno.txt.j2
nano datos_equipo.txt.j2
ip a
nano datos_equipo.txt.j2
cd ~
cd RTA_Examen_20251111/
ls -l 
nano Punto_D.sh
cdmod +x Punto_D.sh
chmod +x Punto_D.sh
ls -l
cd ~
ssh-keygen -t ed25519
cat $HOME/.ssh/*.pub
git clone git@github.com:MaximoFP21/UTNFRA_SO_2DO_TP_PORTILLO.M.git
ls -l
cd UTNFRA_SO_2DO_TP_PORTILLO.M/
cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_TP_APELLIDO/
cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_TP_portillo/
ls -l
cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_TP_PORTILLO.M/
cp -r ~/RTA TAB) ~/UTNFRA_SO_2do_TP_PORTILLO.M/
cp -r ~/RTA_Examen_20251111/ ~/UTNFRA_SO_2DO_TP_PORTILLO.M
cp ~/.bash_history ~/UTNFRA_SO_2do_TP_portillo/
git init
git add .
git commit -m "Mi TP" 
git config --global user.email "maximofp21@gmail.com"
git config --global user.name "Maximo Portillo"
git commit -m "Mi TP" 
git init
git add .
git commit -m "



EOF
EOF
EOF

git commit -m "Mi TP"
git push
git init
git add .
git commit -m "Mi TP"
git push
git iunit
git init 
cp ~r ~/RTA_Examen_20251111/ ~/UTNFRA_SO_2DO_TP_PORTILLO.M
cp -r ~/RTA_Examen_20251111/ ~/UTNFRA_SO_2DO_TP_PORTILLO.M
