This repository contains a Dockerized Vue.js application. Follow the instructions below to run the application using Docker.

## Prerequisites
Docker: Make sure you have Docker installed on your system. You can get it from the Docker website.
## Clone & run dockerized vue app
Clone this repository to your local machine:

> `git clone https://github.com/sebastiancoronel/docker-vue.git`

Navigate to the application directory:

> `cd docker-vue`

Build the Docker image using the following command:

> `docker build -t vue-image .`

Once the image is successfully built, you can run the container using the following command:
> `docker run -it -p 8080:80 --rm --name vue-container vue-image`

This command will run the container based on the dvue image and map the local port 8080 to port 80 inside the container.

Open your web browser and enter the following URL:
> `http://localhost:8080`
    
