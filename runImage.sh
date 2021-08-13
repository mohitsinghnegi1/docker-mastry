# following docker run command  will just run a container but it does not allow any outside environment to access processes running inside the constainer
# docker run express-server 

# docker run & docker start command is almost same except the fact that docker run also creates and immediatly run the images while docker start command restarts a stopped container

# docker ps       # all running containers
# docker ps -a    # all process/containers running/exited

# stop running ciontainer
# docker stop <container id or name>
# docker rm <container id or name>  # you cannot remove container without stoping it

# docker run -p 8080:9000 express-server:1.0.0  # this will map my local host syterm port with container image port ie 8080 is my ie host port , 9000 is the image port where server is listining

# see container log 
# docker logs modest_agnesi
# docker logs -f <container name or id>


# push images to docker hub - first create a docker image repo where you want to push your image
# docker tag express-server:1.0.0 11615192/express-server:latest   # create a image tag from local image that is to be push to docker


# remove images form local system
# docker rmi 11615192/express-server 

# pull image from docker hub 
# docker pull 11615192/express-server:latest  # after this try to run this image again it will work