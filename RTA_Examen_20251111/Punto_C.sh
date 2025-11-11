cd ~
cd UTN-FRA_SO_Examenes/202406/docker
nano Dockerfile
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
nano index.html
Maximo Portillo
115

sudo docker login
sudo docker build -t web1-portillo .
sudo docker images
sudo docker tag web1-portillo maxifp21/web1-portillo:latest
sudo docker images
sudo docker push maxifp21/web1-portillo:latest
docker run -d -p 8080:80 maxifp21/web1-portillo:latest
