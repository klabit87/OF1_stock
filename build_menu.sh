#!/bin/bash

#variables
INPUT=input_variable

export ARCH=arm
export CROSS_COMPILE=~/AndroidKernels/toolchains/arm-eabi-4.7/bin/arm-eabi-

echo "Making default configs..."
make jf_defconfig VARIANT_DEFCONFIG=jf_vzw_defconfig

echo "Opening menuconfig..."
make menuconfig
make -j3
./zip.sh
