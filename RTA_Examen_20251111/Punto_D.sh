cd UTN-FRA_SO_Examenes/202406/ansible/
ls -l
cd roles
mkdir -p role_2do_tp/{tasks,templates,files,vars}
cd role_2do_tp/tasks
nano main.yml
name: Crear estructura de directorios,
file:
  path: "{{ item }}"
  state: directory
with_items:
/tmp/2do_parcial/alumno,
/tmp/2do_parcial/equipo,

name: Generar datos del alumno,
template:
  src: datos_alumno.txt.j2
  dest: /tmp/2do_parcial/alumno/datos_alumno.txt

name: Generar datos del equipo,
template:
  src: datos_equipo.txt.j2
  dest: /tmp/2do_parcial/equipo/datos_equipo.txt

name: Configurar sudoers,
lineinfile:
  dest: /etc/sudoers
  line: "%2PSupervisores ALL=(ALL) NOPASSWD:ALL"
  validate: 'visudo -cf %s'
nano datos_alumno.txt.j2
Nombre: Maximo
Apellido: Portillo
Division: 115
nano datos_equipo.txt.j2
Ip:192.168.56.3 
Distribucion:ubuntu
Cantidad de cores:2
