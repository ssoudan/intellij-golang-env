FROM suckowbiz/intellij

MAINTAINER sebastien.soudan@gmail.com

# Install golang
RUN apt-get update && apt-get install -y golang golang-go.tools

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /var/tmp/*

# Setup directories and envs for go
RUN mkdir /go
ENV GOPATH /go
ENV GOROOT /usr/lib/go
ENV PATH $PATH:$GOROOT/bin


VOLUME ["/go"]