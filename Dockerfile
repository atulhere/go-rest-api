# Specify base image 
FROM golang:1.15.0-alpine

# Install some dependencies 
RUN mkdir /app
ADD  . /app
WORKDIR  /app
RUN go build -o main .

# Expose the port on which the application will listen
EXPOSE 80

# Default commands 
CMD ["/app/main"]
