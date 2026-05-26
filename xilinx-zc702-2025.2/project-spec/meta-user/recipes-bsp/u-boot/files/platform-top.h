#if defined(CONFIG_MICROBLAZE)
#include <configs/microblaze-generic.h>
#define CONFIG_SYS_BOOTM_LEN 0xF000000
#endif
#if defined(CONFIG_ARCH_ZYNQ)
#include <configs/zynq-common.h>
#endif
#if defined(CONFIG_ARCH_ZYNQMP)
#include <configs/xilinx_zynqmp.h>
#endif
#if defined(CONFIG_ARCH_VERSAL)
#include <configs/xilinx_versal.h>
#endif
#if defined(CONFIG_ARCH_VERSAL_NET)
#include <configs/xilinx_versal_net.h>
#endif

#undef CONFIG_BOOTCOMMAND

#define CONFIG_BOOTCOMMAND \
    "setenv autoload no; " \
    "dhcp; " \
    "tftpboot 0x2000000 Image; " \
    "tftpboot 0x1f00000 system.dtb; " \
    "bootm 0x2000000 - 0x1f00000"