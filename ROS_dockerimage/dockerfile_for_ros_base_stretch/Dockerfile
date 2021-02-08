# This is an auto generated Dockerfile for ros:ros-base
# generated from docker_images/create_ros_image.Dockerfile.em 

#This is from the ROS Docker Hub https://hub.docker.com/_/ros
FROM ros:melodic-robot

# install ros packages from osrf https://github.com/osrf/docker_images
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-robot=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

# Taken form Dr. Vaughan. https://github.com/CRAWlab/CRAWLAB-Docker/blob/master/Raspberry%20Pi%20ROS%20Tutorials/Dockerfile SEts up tutorial packages
# and added some more dependencies from different pacage.xml files for the packages I wanted to run 
RUN sudo apt-get update && sudo apt-get install -y \
    ros-melodic-ros-tutorials \
    ros-melodic-common-tutorials \
    ros-melodic-usb-cam \
    ros-melodic-roscpp \
    ros-melodic-catkin \
    ros-melodic-compressed-image-transport \
    ros-melodic-roscpp \
    ros-melodic-std-msgs \
    ros-melodic-std-srvs \
    ros-melodic-sensor-msgs \
    ros-melodic-camera-info-manager \
    ros-melodic-dynamic-reconfigure \
    ros-melodic-diagnostic-updater \
#    ros-melodic-libraspberrypi-dev \
    ros-melodic-message-generation \
    ros-melodic-message-runtime 

# install necessary build tools.  I am not sure if all of these are needed. I don't think they are
RUN apt-get -y install build-essential \
    wget \
    cmake \
    pkg-config \
    apt-transport-https \
    dirmngr \
    gnupg2 \
    lsb-release \
    automake \
    autopoint \ 
    libboost-all-dev \
    libtool \ 
    libzip-dev \
    libavformat-dev \ 
    libavutil-dev \
    libswscale-dev \ 
    libavdevice-dev \ 
    libwebp-dev \
    libraspberrypi-bin \
    libraspberrypi-dev \
    gettext \ 
    libmicrohttpd-dev \
    motion \
    && rm -rf /var/lib/apt/lists/*



# Makes catkin_ws in root direcory. Not sure why. tried ~/home/catkin_ws/src, but didn't make it in home directory. 
#RUN mkdir -p ~/catkin_ws/src

# Don't necessarily need these next lines because usb_cam node is used instead of raspicam_node becase of issues with 
# proccessing differences. 

# Installing the raspocam_node 
#RUN cd ~/catkin_ws/src &&\
#        git clone https://github.com/UbiquityRobotics/raspicam_node.git &&\
#        cd / &&\
#        cd etc/ros/rosdep/sources.list.d && \
#        touch 30-ubiquity.list && \
#        echo 'yaml https://raw.githubusercontent.com/UbiquityRobotics/rosdep/master/raspberry-pi.yaml' >> 30-ubiquity.list

# Set up the workspace
#RUN /bin/bash -c "source /opt/ros/melodic/setup.bash && \
#                  cd ~/catkin_ws/ && \
    #I can't get it to catkin_make because of mmal libraaries are missing. 
#                  catkin_make &&\  
#                  echo 'source ~/catkin_ws/devel/setup.bash' >> ~/.bashrc"