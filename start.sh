#!/usr/bin/env bash

as_user "wget -q -O $MCPATH/1.16.3.jar.update https://api.yatopia.net/v2/latestBuild/download?branch=ver/1.16.3"
        if [ -r "$MCPATH/1.16.3.jar.update" ]
        then
                if ! diff $MCPATH/$CB_JAR $MCPATH/1.16.3.jar.update >/dev/null
                then
                        echo "update"
                        as_user "mv $MCPATH/1.16.3.jar.update $MCPATH/$CB_JAR"
                else
                        echo "not update"
                        as_user "rm $MCPATH/1.16.3.jar.update"
                fi
        fi
java -Xms6553M -Xmx8G -Dfile.encoding=UTF-8 -XX:+UnlockExperimentalVMOptions -XX:+UseZGC -jar 1.16.3.jar nogui

./start.sh
