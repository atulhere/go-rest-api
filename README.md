# go-rest-api
Practice REST APIs

# steps to set up and run app using docker
pull the repo using 

# Build docker image and tag the same
1- docker build -t go-docker .

# run docker container and start appliction 
2- docker run -it -p 8080:8081 go-docker


# remove docker images fourcefully 
docker rmi -f go-docker
