echo {"experimental": true} > "C:\ProgramData\Docker\config\daemon.json"
net stop docker
net stop com.docker.service
taskkill /IM "dockerd.exe" /F
taskkill /IM "Docker for Windows.exe" /F
choco install docker-desktop -y
set PATH "%PATH%;C:\Program Files\Docker\Docker"
sleep 3
setx /m PATH "%PATH%;C:\Program Files\Docker\Docker"
sleep 3
net start docker
net start com.docker.service

cd "C:\Program Files\"
mkdir "Linux Containers"
cd ".\Linux Containers\"
curl -OutFile release.zip https://github.com/linuxkit/lcow/releases/download/v4.14.35-v0.3.9/release.zip
powershell Expand-Archive -DestinationPath . .\release.zip

docker info
