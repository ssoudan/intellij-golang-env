intellij-golang-env

sebastien.soudan@gmail.com

# Description

Docker image with Intellij IDEA 14.0.3 (from suckowbiz/intellij - Thanks for it!) and golang 1.2.1 (from Ubuntu 14.04.2).

# Build it

 $ docker build -t ssoudan/intellij-golang-env .

In case go plugin is not installed in your .idea dir, install it through IDEA plugin manager.

# Run it

 $ xhost + && docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/workspace:/workspace -v ~/go:/go -v ~/.idea:/idea ssoudan/intellij-golang-env
