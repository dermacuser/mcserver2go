#! /bin/bash
sudo apt update -y && sudo apt upgrade -y
#TEST FOR DEBUG
sudo apt remove openjdk-25-jdk openjdk-25-jre -y
sudo apt remove openjdk-21-jdk openjdk-21-jre -y

sudo apt install openjdk-25-jdk openjdk-25-jre -y
mkdir minecraftserver
cd minecraftserver
curl https://fill-data.papermc.io/v1/objects/0555a0b0468a5198d8fb1a16e1f9e95c81a917a2dc8f2e09867b4044742f6401/paper-26.1.2-72. jar -- output paper. jar
echo "#!/bin/bash

#Standard Minecraft
cd /home/minecraft/server/
exec java -Xmx2048M -Xms512M -jar paper. jar nogui" > start.sh

#DEBUG ONLY !!!
echo "DISABLE THIS OPTION BEFORE RELEASE !!! "
echo "eula=true" > eula.txt
#DEBUG ONLY !!!

#echo "Server Finished now change eula. txt and server.properties"
echo "Server Starting ...
wait 2
bash start. sh
