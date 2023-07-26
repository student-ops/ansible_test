wget https://downloads.raspberrypi.org/raspios_lite_armhf/root.tar.xz
docker image import root.tar.xz lakky/raspios_lite_armhf:2021-03-04_buster

docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker run -it --rm \
    -v `pwd`:/workspace \
    pinto0309/raspios_lite_armhf:2021-03-04_buster bash