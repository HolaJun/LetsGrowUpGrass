@echo off

echo [%DATE% %TIME:~0,8%] �ܵ� �ɾ����ϴ�. >> log.txt

git init
git remote add origin https://github.com/HolaJun/LetsGrowUpGrass.git
git add . 
git commit -m "Planted grass."
git push -u origin +master

pause