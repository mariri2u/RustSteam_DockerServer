# vi ./docker/Dockerfile
FROM centos:7
#MAINTAINER "mariri"

# prepare
#ADD ./server /app
#WORKDIR /app

# install dependencies
RUN yum install -y wget
RUN yum install -y ld-linux.so.2
RUN yum install -y screen

# install steam
#RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
#RUN tar xvzf steamcmd_linux.tar.gz
#RUN ./steamcmd.sh +quit

# install rust
#RUN ./steamcmd.sh +runscript ../update_script.txt

# exec.
CMD [ "/sbin/init" ]
ENTRYPOINT [ "/app/init.sh" ]
