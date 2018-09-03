@echo off

echo [%DATE% %TIME:~0,8%] 잔디를 심었습니다. >> log.txt

git add . 
git commit -m "Planted grass."
git push -u origin +master

