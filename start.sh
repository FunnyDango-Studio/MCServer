#!/usr/bin/env bash
rm yatopia.jar
curl -o yatopia.jar https://api.yatopia.net/v2/build/104/download?branch=ver/1.16.3
java -Xms6553M -Xmx8G -Dfile.encoding=UTF-8 -XX:+UnlockExperimentalVMOptions -XX:+UseZGC -jar yatopia.jar nogui

./start.sh
