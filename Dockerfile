FROM ros:lunar-ros-base

RUN apt-get update &&\
    apt-get install -y ros-$ROS_DISTRO-turtlesim &&\
    apt-get -y clean &&\
    apt-get -y purge &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["rosrun", "turtlesim", "turtlesim_node"]