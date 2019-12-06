This repo is a template for how to embed a ROS package ito a Docker container.

xhost +

docker run -it \\\
    --network="host" \\\
    --env="DISPLAY" \\\
    --env="QT_X11_NO_MITSHM=1" \\\
    --env="ROS_IP=$ROS_IP" \\\
    --env="ROS_MASTER_URI=$ROS_MASTER_URI" \\\
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \\\
    frankjoshua/ros-turtlesim
