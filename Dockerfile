FROM openjdk:8

WORKDIR /minecraft

RUN apt-get update && apt-get upgrade -y && apt-get install -y default-jdk

COPY . .

CMD java -Xms512m -Xmx1024m -jar spigot-1.16.5.jar nogui
EXPOSE 25565
