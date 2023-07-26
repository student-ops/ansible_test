wget https://downloads.raspberrypi.org/raspios_arm64/root.tar.xz

docker image import root.tar.xz lakky/raspios_lite
docker run -it --rm lakky/raspios_lite /bin/bash
