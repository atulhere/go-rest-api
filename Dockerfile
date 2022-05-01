# Specify base image 
FROM golang:1.15.0-alpine

# Install some dependencies 
RUN mkdir /app
ADD  . /app
WORKDIR  /app
RUN go build -o main .

# Default commands 
CMD ["/app/main"]
