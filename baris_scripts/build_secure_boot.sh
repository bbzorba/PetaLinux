#!/bin/bash

set -e

#################################################
# Paths
#################################################

PETALINUX_PATH=/home/bbzorba/Desktop/Embedded_Systems/PetaLinux
PROJECT_DIR=${PETALINUX_PATH}/xilinx-zc702-2025.2

KEY_DIR=${PROJECT_DIR}/project-spec/meta-user/keys
BOOT_DIR=${PROJECT_DIR}/project-spec/meta-user/boot
OUTPUT_DIR=${PROJECT_DIR}/images/linux/secure_boot

#################################################
# Source PetaLinux
#################################################

echo "================================================="
echo "Sourcing PetaLinux"
echo "================================================="

source ${PETALINUX_PATH}/settings.sh

#################################################
# Ubuntu fix (optional)
#################################################

echo "================================================="
echo "Applying Ubuntu 24.04 AppArmor Fix"
echo "================================================="

sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0

#################################################
# Enter Project
#################################################

cd ${PROJECT_DIR}

#################################################
# Build PetaLinux
#################################################

echo "================================================="
echo "Building PetaLinux"
echo "================================================="

petalinux-build

#################################################
# Create directories
#################################################

mkdir -p ${KEY_DIR}
mkdir -p ${BOOT_DIR}
mkdir -p ${OUTPUT_DIR}

#################################################
# Generate PKI keys (Zynq Secure Boot)
#################################################

echo "================================================="
echo "Generating Secure Boot Keys (PPK/SPK)"
echo "================================================="

if [ ! -f ${KEY_DIR}/primary.pem ]; then
    openssl genrsa -out ${KEY_DIR}/primary.pem 2048
fi

if [ ! -f ${KEY_DIR}/secondary.pem ]; then
    openssl genrsa -out ${KEY_DIR}/secondary.pem 2048
fi

openssl rsa -in ${KEY_DIR}/primary.pem -pubout -out ${KEY_DIR}/primary_pub.pem
openssl rsa -in ${KEY_DIR}/secondary.pem -pubout -out ${KEY_DIR}/secondary_pub.pem

#################################################
# Check required artifacts
#################################################

FSBL=${PROJECT_DIR}/images/linux/zynq_fsbl.elf
UBOOT=${PROJECT_DIR}/images/linux/u-boot.elf
BITSTREAM=${PROJECT_DIR}/images/linux/system.bit

if [ ! -f ${FSBL} ]; then
    echo "[ERROR] Missing FSBL: ${FSBL}"
    exit 1
fi

if [ ! -f ${UBOOT} ]; then
    echo "[ERROR] Missing U-Boot: ${UBOOT}"
    exit 1
fi

if [ ! -f ${BITSTREAM} ]; then
    echo "[ERROR] Missing Bitstream: ${BITSTREAM}"
    exit 1
fi

#################################################
# Generate BIF (CORRECT PKI FORMAT)
#################################################

echo "================================================="
echo "Generating boot.bif (PKI Secure Boot format)"
echo "================================================="

cat > ${BOOT_DIR}/boot.bif << EOF
the_ROM_image:
{
    [pskfile] ${KEY_DIR}/primary.pem
    [sskfile] ${KEY_DIR}/secondary.pem

    [bootloader, authentication=rsa] ${FSBL}
    [authentication=rsa] ${BITSTREAM}
    [authentication=rsa] ${UBOOT}
}
EOF

#################################################
# Generate BOOT.BIN
#################################################

echo "================================================="
echo "Generating Secure BOOT.BIN"
echo "================================================="

bootgen \
    -arch zynq \
    -image ${BOOT_DIR}/boot.bif \
    -w on \
    -process_bitstream bin \
    -o ${OUTPUT_DIR}/BOOT.BIN

#################################################
# Copy Linux artifacts
#################################################

cp -f ${PROJECT_DIR}/images/linux/image.ub ${OUTPUT_DIR}/
cp -f ${PROJECT_DIR}/images/linux/boot.scr ${OUTPUT_DIR}/

#################################################
# Done
#################################################

echo "================================================="
echo "SECURE BOOT BUILD COMPLETE"
echo "================================================="

echo "Output:"
ls -lh ${OUTPUT_DIR}