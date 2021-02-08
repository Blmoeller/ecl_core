#!/bin/bash
# Taken from https://github.com/CRAWlab/CRAWLAB-Docker/blob/master/Raspberry%20Pi%20ROS%20OpenCV/entrypoint.sh
set -e

# setup ROS environment
source "/home/pi/catkin_ws/devel/setup.bash"
exec "$@"
