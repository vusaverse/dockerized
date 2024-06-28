@echo off
set USERNAME=%USERNAME%

docker-compose down
docker-compose up -d
