FROM ubuntu:20.04
ENV PROJECT_NAME=""
ENV NPROC=1
ENV PICO_SDK_PATH=/pico-sdk
ARG TINYUSB_PATH=$PICO_SDK_PATH/lib/tinyusb
ARG PICO_SDK_URL=https://github.com/raspberrypi/pico-sdk/archive/refs/tags/1.3.0.tar.gz
ARG TINYUSB_URL=https://github.com/hathach/tinyusb/archive/refs/tags/0.12.0.tar.gz

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y curl cmake gcc-arm-none-eabi libnewlib-arm-none-eabi \
    libstdc++-arm-none-eabi-newlib gcc g++ python3 \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir $PICO_SDK_PATH
RUN curl -L $PICO_SDK_URL | tar zx --strip-components 1 -C $PICO_SDK_PATH
RUN curl -L $TINYUSB_URL  | tar zx --strip-components 1 -C $TINYUSB_PATH

WORKDIR /work
CMD cp /pico-sdk/external/pico_sdk_import.cmake . && mkdir -p build && cd build && cmake .. && make $PROJECT_NAME -j $NPROC
