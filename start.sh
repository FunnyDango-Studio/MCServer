#!/usr/bin/env bash


java -Xms15G -Xmx15G -Dfile.encoding=UTF-8 -XX:+UseZGC -jar yatopia.jar nogui

./start.sh
