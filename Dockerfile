# Use a base image, for example, Ubuntu
FROM ubuntu:latest

# Install required packages
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    curl \
    software-properties-common \
    unzip


# Set the working directory
WORKDIR /app

ARG DOWNLOAD_URL="https://ollama.com/install.sh"

RUN wget $DOWNLOAD_URL -O install1.sh && \
    chmod +x install1.sh && \
    ./install1.sh


    
# Command to run when the container starts
CMD [ "echo", "Successfully installed!" ]

########
#> docker build -t meta_ai_image .
#> docker run -it meta_ai_image /bin/bash
#> ollama serve &
###<press enter>
#> ollama list
###<to use Meta AI Llama3>
#> ollama run llama3 --verbose