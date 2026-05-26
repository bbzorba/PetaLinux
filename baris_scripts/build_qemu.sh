#!/bin/bash

set -e

PETALINUX_PATH=/home/bbzorba/Desktop/Embedded_Systems/PetaLinux/

PROJECT_DIR=${PETALINUX_PATH}/xilinx-zc702-2025.2

echo "================================================="
echo "Sourcing PetaLinux"
echo "================================================="

source ${PETALINUX_PATH}/settings.sh

echo "================================================="
echo "Applying Ubuntu 24.04 AppArmor Fix"
echo "================================================="

sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0

echo "================================================="
echo "Entering Project"
echo "================================================="

cd ${PROJECT_DIR}

echo "================================================="
echo "Cleaning the Build"
echo "================================================="

petalinux-build -x mrproper

echo "================================================="
echo "Building PetaLinux"
echo "================================================="

petalinux-build

echo "================================================="
echo "Launching QEMU"
echo "================================================="

petalinux-boot qemu --kernel