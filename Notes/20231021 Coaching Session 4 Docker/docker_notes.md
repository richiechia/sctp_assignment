# Docker commands
docker --version

# Listing your built images
docker 

# Build the docker image
docker build . -t flask-app (name of app)

# First -p mapping is localhost:8080, 2nd mapping is the docker host 8080
docker run -p 8080:8080 flask-app #-p is referring to port mapping. Mapping host port to docker port

# -d is detached, so can continue using the terminal
docker run -d -p 8080:8080 flask-app

# List all your containers(Running and stopped)
sudo docker ps -a

# To stop and remove container
sudo docker stop <container_ID>
sudo docker rm <container ID>