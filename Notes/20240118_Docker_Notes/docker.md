docker ps /// docker container ls
docker images
docker build . -t <image_name>

docker run -dp 8080:80 httpd

# Get into the container
docker exec -it <container_id> sh 

docker image pull <image_name>:<image_tag>
docker run -dp 9090:80 httpd:2.4-alpine