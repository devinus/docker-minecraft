FROM dockerfile/java:oracle-java8
MAINTAINER Devin Torres <devin@devintorr.es>

WORKDIR /data

RUN wget http://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar

EXPOSE 25577

CMD ["java", "-Xms512M", "-Xmx512M", "-Djline.terminal=jline.UnsupportedTerminal", "-jar", "BungeeCord.jar"]
