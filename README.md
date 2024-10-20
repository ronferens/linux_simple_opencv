# linux_simple_opencv
A simple OpenCV project for Linux and VSCode

# Pre-installation
1. Make sure to install all following fundamental operating system libraries:
```
sudo apt -y remove x264 libx264-dev

sudo apt -y install build-essential checkinstall cmake pkg-config yasm
sudo apt -y install git gfortran
sudo apt -y install libjpeg8-dev libpng-dev

sudo apt -y install software-properties-common
sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt -y update

sudo apt -y install libjasper1
sudo apt -y install libtiff-dev

sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
sudo apt -y install libxine2-dev libv4l-dev
cd /usr/include/linux
sudo ln -s -f ../libv4l1-videodev.h videodev.h
cd "$cwd"

sudo apt -y install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
sudo apt -y install libgtk2.0-dev libtbb-dev qt5-default
sudo apt -y install libatlas-base-dev
sudo apt -y install libfaac-dev libmp3lame-dev libtheora-dev
sudo apt -y install libvorbis-dev libxvidcore-dev
sudo apt -y install libopencore-amrnb-dev libopencore-amrwb-dev
sudo apt -y install libavresample-dev
sudo apt -y install x264 v4l-utils

Optional dependencies
sudo apt -y install libprotobuf-dev protobuf-compiler
sudo apt -y install libgoogle-glog-dev libgflags-dev
sudo apt -y install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen

 sudo apt-get install ubuntu-restricted-extras
```
Reference: https://www.youtube.com/watch?v=fyHbV3XhBoM

2. For CUDA support make sure to unstall both CUDATool Kit and cuDNN
3. Make sure QT is installed on your PC: </br >
```
sudo apt install -y qtcreator qtbase5-dev qt5-qmake cmake
```
Reference: https://askubuntu.com/questions/1404263/how-do-you-install-qt-on-ubuntu22-04


# Installing OpenCV from sources
1. Download OpenCV source: https://opencv.org/releases/
2. OpenCV contrib repo: https://github.com/opencv/opencv_contrib </br >
**Note:** make sure to set the correct brach to match the OpenCV library you have downlaoded in step #1
3. Unzip the two *.zip* file
4. Create a 'build' folder
5. Run cmake-gui from the 'build' folder
6. Load the opencv sources (from the unzipped file)
7. Run *Configure' and update the required field (Refefnce: https://www.youtube.com/watch?v=X6cXBqIz464)
8. Run *Generate*
9. Run 'make -j8' (Use *nproc* to find out the number of available cores)
10. The last command is: 'sudo make install'

To verify your installation was successfully done, run the following command: </br >
```
pkg-config --modversion opencv4
```
The output sould match the OpneCV version you have downlaoded and install.

# Running the code
There are three ways to run the code.

1. Compile the code using the follwing comand in the terminal:
```
g++ -std=c++14 opencvTest.cpp `pkg-config --libs --cflags opencv4` -o output
```
2. Create a *CMakeKists.txt* file with the content from [**Create a CMake file**](https://docs.opencv.org/4.x/db/df5/tutorial_linux_gcc_cmake.html).</br >
Reference: https://www.youtube.com/watch?v=HQJlsmIUXOQ

3. Create a *c_cpp_properties.json* and *Makefile* files.</br >
Reference: https://girish-ajay.medium.com/installing-opencv-in-linux-and-configuration-with-visual-studio-code-9dd668275d5b

The code in this projects is based on method #3.



# References
- https://girish-ajay.medium.com/installing-opencv-in-linux-and-configuration-with-visual-studio-code-9dd668275d5b
- [How to Build and Install OpenCV from Source](https://www.youtube.com/watch?v=_fqpYLM6SCw)
- https://www.youtube.com/watch?v=fyHbV3XhBoM
- https://www.youtube.com/watch?v=X6cXBqIz464&t=0s
