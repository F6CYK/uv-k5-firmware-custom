FROM --platform=linux/amd64
RUN pacman -Syyu base-devel --noconfirm
RUN pacman -Syyu arm-none-eabi-gcc --noconfirm
RUN pacman -Syyu arm-none-eabi-newlib --noconfirm
RUN pacman -Syyu git --noconfirm
RUN pacman -Syyu python-pip --noconfirm
RUN pacman -Syyu python-crcmod --noconfirm
WORKDIR /app
COPY . .
RUN git submodule update --init --recursive