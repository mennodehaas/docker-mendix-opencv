# Docker Mendix OpenCV
Build the OpenCV library with Java bindings on the mendix/rootfs Docker image.

## Usage
To build image:
```
docker build .
```

When using the docker-mendix-buildpack, use this image as the base image for your project build (modify the Docker file and used the tagged image). Ensure to have the following environment variable set when starting your Mendix Application:
```
LD_LIBRARY_PATH: /opencv/build/lib
```