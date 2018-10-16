# Docker Mendix OpenCV
Build the OpenCV (Open Source Computer Vision) library with Java bindings on the mendix/rootfs Docker image.

## Usage
To build image:
```
docker build -t mennodehaas/mendix-opencv .
```

When using the docker-mendix-buildpack, use this image as the base image for your Docker build (modify the Dockerfile and use the image as a base image). Ensure to have the following environment variable set when starting your Mendix Application:
```
LD_LIBRARY_PATH: /opencv/build/lib
```

## OpenCV build
Build uses OpenCV version 3.4. Modify the build_opencv.sh file to adjust the build according to your needs. Documentation about the build options can be found in the [CMakeLists.txt](https://github.com/opencv/opencv/blob/3.4/CMakeLists.txt).