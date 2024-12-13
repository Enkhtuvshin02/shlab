FROM ubuntu:20.04

# Set non-interactive mode
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get install -y \
    build-essential \
    gdb \
    perl \
    wget \
    && apt-get clean

# Set working directory
WORKDIR /usr/src/shlab

# Copy current directory contents into the container
COPY . /usr/src/shlab

# Expose the folder to persist changes on host system
VOLUME /usr/src/shlab

# Default command to open bash
CMD ["/bin/bash"]
