# pico-builder

Build environment image for Raspberry Pi Pico

- English README here:<br>
[README.md](https://github.com/Futafi/pico-builder/blob/main/README.md)
- 日本語版READMEはこちら:<br>
[README.ja.md](https://github.com/Futafi/pico-builder/blob/main/README.ja.md)

## Quick reference

* Where to file issues:<br>
[the Issues page on Github](https://github.com/Futafi/pico-builder/issues)

* Where to see the Dockerfile:<br>
[The Dockerfile on Github](https://github.com/Futafi/pico-builder/blob/main/Dockerfile)

## Image content

* [pico-sdk](https://github.com/raspberrypi/pico-sdk)
* [tinyusb](https://github.com/hathach/tinyusb/tree/4bfab30c02279a0530e1a56f4a7c539f2d35a293)
* Various things needed for build (cmake, gcc-arm-none-eabi, etc.)

## Usage

1. in the project directory
```bash
$ docker run -v $PWD:/work -e NPROC=$(nproc) pico-builder
```

2. You now have *PROJECTNAME.elf* to load via a debugger, or *PROJECTNAME.uf2* that can be installed and run on your Raspberry Pi Pico via drag and drop.

## Options
- `NPROC`
    - Number of Threads for make
- `PROJECT_NAME`
    - The name of the project you want to make