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


# after creating docker compose file we only need to run one command 
# docker compose up

# and to stop container
# docker compose down

# all the details we need to mention in docker compose file - we can add mutiple service too


# there are 3 different ways to run an image with env

# 1. either define env variables inside Dockerfile (anyone can use it without passing env variable or docker compose)
# 2. define docker-compose file with env and then create an image (env will be expose only at run time , image will not capture env ie build time)
# 3. use env.list file and exeute the command mentioned in runImageWithEnv.sh file (run time expose env thorugh cli)
