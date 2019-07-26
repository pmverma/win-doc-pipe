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

docker info
