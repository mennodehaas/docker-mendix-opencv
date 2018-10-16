sudo apt-get update
sudo apt-get -y install build-essential
sudo apt-get -y install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get -y install ant

export JAVA_HOME=/build/.local/usr/lib/jvm/jdk-8-oracle-x64/

mkdir /opencv
cd /opencv
git clone https://github.com/Itseez/opencv.git ./
git checkout -b 3.4 origin/3.4

mkdir build
cd build
cmake -D BUILD_SHARED_LIBS=ON  \
  -DBUILD_TIFF=ON \
  -DWITH_CUDA=OFF \
  -DWITH_OPENGL=ON \
  -DWITH_OPENCL=ON \
  -DWITH_IPP=ON \
  -DWITH_TBB=ON \
  -DWITH_EIGEN=ON \
  -DWITH_V4L=ON \
  -DBUILD_TESTS=OFF \
  -DBUILD_PERF_TESTS=OFF \
  -DCMAKE_BUILD_TYPE=RELEASE \
..
make -j8