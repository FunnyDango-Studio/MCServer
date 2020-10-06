#!/usr/bin/env bash
rm yatopia.jar
wget -O yatopia.jar https://yatopia.net/downloadStable yatopia.jar

java -Xms6553M -Xmx8G -Dfile.encoding=UTF-8 -XX:+UnlockExperimentalVMOptions -XX:+UseZGC -jar yatopia.jar nogui

./start.sh
