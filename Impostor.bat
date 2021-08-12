@echo off
title Set custom Imposter Server.

set /p IP=IP address:
IF NOT DEFINED IP SET "IP=162.55.3.169"
echo   IP address was set to %IP%
echo.

set /p PORT=Port:
IF NOT DEFINED PORT SET "PORT=22023"
echo   Port was set to %PORT%
echo.

set /p NAME=Name:
IF NOT DEFINED NAME SET "NAME=ImpostorServer"
echo   Name was set to %NAME%
echo.

cd %APPDATA%\..\LocalLow\Innersloth\Among Us
echo {"CurrentRegionIdx":3,"Regions":[{"$type":"DnsRegionInfo, Assembly-CSharp","Fqdn":"na.mm.among.us","DefaultIp":"50.116.1.42","Port":22023,"Name":"North America","TranslateName":289},{"$type":"DnsRegionInfo, Assembly-CSharp","Fqdn":"eu.mm.among.us","DefaultIp":"172.105.251.170","Port":22023,"Name":"Europe","TranslateName":290},{"$type":"DnsRegionInfo, Assembly-CSharp","Fqdn":"as.mm.among.us","DefaultIp":"139.162.111.196","Port":22023,"Name":"Asia","TranslateName":291},{"$type":"DnsRegionInfo, Assembly-CSharp","Fqdn":"%IP%","DefaultIp":"%IP%","Port":"%PORT%","Name":"%NAME%","TranslateName":1003}]} > regionInfo.json

msg * "Custom Impostor server was set!"