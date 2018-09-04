@echo off

set update=no
set log=log.txt

:LetsGrowUpGrass
git add . >> logtest.txt
git commit -m "Planted grass" >> logtest.txt
git push -u origin +master >> logtest.txt
echo [%DATE% %TIME:~0,8%] 잔디를 심었습니다. > log.txt
IF EXIST %LOG% (
  exit
) else (
  goto LetsGrowUpgrass
)

GOTO LetGrowUpgrass

pause