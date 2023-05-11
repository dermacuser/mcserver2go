#!/bin/bash
apt update -y && apt upgrade -y
apt install openjdk-17-jdk openjdk-17-jre -y
mkdir minecraftserver
cd minecraftserver
curl https://api.papermc.io/v2/projects/paper/versions/1.19.4/builds/527/downloads/paper-1.19.4-527.jar --output paper.jar
echo "#!/bin/bash

#Standard Minecraft
cd /home/minecraft/server/
exec java -Xmx2048M -Xms512M -jar server.jar nogui" > start.sh

echo "Server Finished now change eula.txt and server.properties"

