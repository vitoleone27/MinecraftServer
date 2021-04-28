#Version 0.0.3
FROM openjdk:8

WORKDIR /minecraft

RUN apt-get update && apt-get upgrade -y && apt-get install -y default-jdk

COPY . .

CMD java -Xms1024M -Xmx1024M -jar server.jar  nogui
EXPOSE 25565
