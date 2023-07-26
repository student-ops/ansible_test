wget https://downloads.raspberrypi.org/raspios_arm64/root.tar.xz

docker image import root.tar.xz lakky/raspios_lite
docker run  -d lakky/raspios_lite /bin/bash sleep infinity
