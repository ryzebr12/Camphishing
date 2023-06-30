# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/ryzebr12/Camphishing"

# Working directory
WORKDIR /CamHacker/
# Add files 
ADD . /CamHacker

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./ch.sh", "--no-update"]
