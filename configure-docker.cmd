@ECHO ON

C:
cd "C:\Program Files\"
mkdir "Linux Containers"
cd ".\Linux Containers\"
curl -LO https://github.com/linuxkit/lcow/releases/download/v4.14.35-v0.3.9/release.zip
unzip release.zip

echo PPPpppppppppppppppppppp
cd

dir "C:\Program Files\Linux Containers\"

docker info
