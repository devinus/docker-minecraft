#!/bin/sh
exec java -Xms1G -Xmx3G -XX:+UseG1GC -XX:+AggressiveOpts -jar spigot-1.8.jar nogui
