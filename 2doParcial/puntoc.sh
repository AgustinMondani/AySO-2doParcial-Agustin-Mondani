sudo systemctl stop apache2
sudo mkdir docker2Parcial
sudo touch dockerfile
echo "FROM nginx
COPY appHomeBanking /usr/share/nginx/html" > dockerfile
sudo mkdir appHomeBanking
cd appHomeBanking
sudo touch index.html contacto.html
#agregamos el codigo del index y el contacto
docker login -u amondani
docker build -t amondani/2parcial-ayso:v1.0 .
sudo docker image list
docker push amondani/2parcial-ayso:v1.0
docker run -d -p 8080:80 amondani/2parcial-ayso:v1.0
