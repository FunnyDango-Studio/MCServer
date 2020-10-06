#!/usr/bin/env bash
rm yatopia.jar
curl -o yatopia.jar https://yatopia.net/downloadStable
java -Xms6553M -Xmx8G -Dfile.encoding=UTF-8 -XX:+UnlockExperimentalVMOptions -XX:+UseZGC -jar yatopia.jar nogui

./start.sh
