FROM dockerfile/java:oracle-java8
MAINTAINER Devin Torres <devin@devintorr.es>

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.8.1/minecraft_server.1.8.1.jar /srv/
RUN echo eula=true > /srv/eula.txt

EXPOSE 25565

WORKDIR /srv
ENTRYPOINT ["/usr/bin/java"]
CMD ["-Xms1G", "-Xmx3G", "-jar", "minecraft_server.1.8.1.jar", "nogui"]
