@ECHO ON
echo {"experimental": true} > "C:\ProgramData\Docker\config\daemon.json"
net stop docker
choco install docker-desktop -y
set PATH "%PATH%;C:\Program Files\Docker\Docker"
sleep 1
setx /m PATH "%PATH%;C:\Program Files\Docker\Docker"
sleep 1
net start docker
net start com.docker.service
C:
cd "C:\Program Files\"
mkdir "Linux Containers"
cd ".\Linux Containers\"
curl -LO https://github.com/linuxkit/lcow/releases/download/v4.14.35-v0.3.9/release.zip
unzip release.zip
cd
dir "C:\Program Files\Linux Containers\"
docker info
