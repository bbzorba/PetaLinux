#!/bin/bash

set -e

PETALINUX_PATH=/home/bbzorba/Desktop/Embedded_Systems/PetaLinux/

PROJECT_DIR=${PETALINUX_PATH}/xilinx-zc702-2025.2

echo "================================================="
echo "Sourcing PetaLinux"
echo "================================================="

source ${PETALINUX_PATH}/settings.sh

echo "================================================="
echo "Entering Project"
echo "================================================="

cd ${PROJECT_DIR}

echo "================================================="
echo "Launching QEMU"
echo "================================================="

# petalinux-boot qemu --kernel
# petalinux-boot --qemu --prebuilt 3
petalinux-boot qemu
# petalinux-boot qemu --prebuilt 1

# echo "================================================="
# echo "Booting Image via JTAG"
# echo "================================================="

# petalinux-boot jtag
