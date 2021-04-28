#Version 0.0.3
FROM openjdk:8

RUN apt-get update && apt-get upgrade -y && apt-get install -y default-jdk

RUN mkdir /minecraft
COPY . /minecraft
CMD java -Xms1024M -Xmx1024M ‑jar /minecraft/server.jar
EXPOSE 25565
