#!/bin/bash
cd ~/
mkdir pico
cd pico

git clone -b master https://github.com/raspberrypi/pico-sdk.git
cd pico-sdk
git submodule update --init
cd ..
git clone -b master https://github.com/raspberrypi/pico-examples.git
git clone -b master https://github.com/raspberrypi/pico-extras.git
git clone -b master https://github.com/raspberrypi/pico-playground.git

sudo apt update
sudo apt install cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential

cd pico-sdk
git pull
git submodule update

cd ../
git clone -b master https://github.com/raspberrypi/pico-project-generator.git

sudo apt install -y minicom

echo "export PICO_SDK_PATH='/home/pwn/pico/pico-sdk'" >> ~/.profile
export $PATH="$HOME/pico-project-generator:$PATH" >> ~/.bashrc
