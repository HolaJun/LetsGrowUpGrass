@echo off

set update=no
set log=log.txt

:LetsGrowUpGrass
git add .
git commit -m "Planted grass"
git push -u origin +master  
echo [%DATE% %TIME:~0,8%] �ܵ� �ɾ����ϴ�. > log2.txt
IF EXIST %LOG% (
  exit
) else (
  goto LetsGrowUpgrass
)

GOTO LetGrowUpgrass

pause