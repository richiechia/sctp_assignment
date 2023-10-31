
## Volumes
docker volume ls
# create shared volume
docker volume create demo
# create container
docker run --mount type=volume,src=demo,target=/tmp -d alpine sleep 99999
docker run --mount type=volume,src=demo,target=/tmp -d alpine sleep 99999
docker exec -it <containerID> sh

# Task: Verify that /tmp directory in the containers are empty
# Task: Exec into either container, create a file to the /tmp. Then verify on the other container.
# Task: Stop and remove containers
# Task: Remove volume

## Networks
docker network ls
# create shared network
docker network create demo
# create containers
docker run --network demo -d -p 8080:8080 flask-app
docker run --network demo -d nicolaka/netshoot sleep 99999
docker exec -it <containerID> sh

# Task: Using netshoot, make a curl request to flask app
# Task: View the logs of flask app
# Task: Create netshoot container in detached mode. It should to make a request to flask app (every 1 second)
# Task: Stop and remove containers
# Task: Remove network

## Compose
docker compose up -d
# Task: Exec into netshoot container and make a curl request to http://app:8080. What is happening?
# Task: Update an environment variable in the compose file and rerun `docker compose up -d`. What happened?

docker compose down

## Clean up
docker rm -f $(docker ps -aq) # remove all containers
docker volume prune # remove dangling volumes
docker network prune # remove dangling networks



## Further self learning
docker inspect
docker run -itd --rm -p 80:80 --name jane nginx
 docker run -itd --rm --network asgard --name odin  busybox