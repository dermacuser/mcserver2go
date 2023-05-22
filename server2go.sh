#!/bin/bash
apt update -y && apt upgrade -y
apt install vim -y
apt install openjdk-17-jdk openjdk-17-jre -y
apt update -y && apt upgrade -y
mkdir minecraftserver
cd minecraftserver
curl https://api.papermc.io/v2/projects/paper/versions/1.19.4/builds/527/downloads/paper-1.19.4-527.jar --output paper.jar
echo "#!/bin/bash

#Standard Minecraft
exec java -Xmx2048M -Xms512M -jar paper.jar nogui" > start.sh
echo "#eula automatically generated through script^
eula=true" > eula.txt
chmod +x paper.jar
echo -e "\033[0;96mInstall Finished"
echo -e "\033[0;96mYour Minceraft-Server should be up and running in 5 seconds. \nEnjoy!"
sleep 5s
echo -e "\033[0m"
bash start.sh
#Scripted by DerMacUser on GitHub
