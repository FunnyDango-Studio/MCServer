#!/usr/bin/env bash

echo echo "java 11"
java -Xms6553M -Xmx8G -Dfile.encoding=UTF-8 -XX:+UnlockExperimentalVMOptions -XX:+UseZGC -jar yatopia-1.16.3-paperclip.jar nogui

./start.sh
