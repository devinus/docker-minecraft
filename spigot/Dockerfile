FROM dockerfile/java:oracle-java8
MAINTAINER Devin Torres <devin@devintorr.es>

WORKDIR /data

RUN git config --global user.name BuildTools
RUN git config --global user.email unconfigured@null.spigotmc.org
RUN wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
RUN java -jar BuildTools.jar
RUN echo eula=true > eula.txt
ADD server.properties /data/
ADD start.sh /data/

EXPOSE 25565

CMD ["./start.sh"]
