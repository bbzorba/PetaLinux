SUMMARY = "External mydriver Linux kernel module"
SECTION = "PETALINUX/modules"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

inherit module systemd

SRC_URI = " \
    file://Makefile \
    file://mydriver.c \
    file://COPYING \
    file://myinit.sh \
    file://myinit.service \
"

S = "${WORKDIR}"

INHIBIT_PACKAGE_STRIP = "1"

do_install:append() {
    install -d ${D}${sysconfdir}/modules-load.d
    echo "mydriver" > ${D}${sysconfdir}/modules-load.d/mydriver.conf

    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/myinit.sh ${D}${bindir}/myinit.sh
}

FILES:${PN} += " \
    ${sysconfdir}/modules-load.d/mydriver.conf \
    ${bindir}/myinit.sh \
"

SYSTEMD_SERVICE:${PN} = "myinit.service"
SYSTEMD_AUTO_ENABLE = "enable"