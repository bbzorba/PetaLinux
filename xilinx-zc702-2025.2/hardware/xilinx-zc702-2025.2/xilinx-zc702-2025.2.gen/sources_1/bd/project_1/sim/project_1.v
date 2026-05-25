//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Sat Nov 15 02:32:17 2025
//Host        : xcossw04 running 64-bit Ubuntu 22.04 LTS
//Command     : generate_target project_1.bd
//Design      : project_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "project_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=project_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "project_1.hwdef" *) 
module project_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    leds_4bits_tri_o);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 leds_4bits TRI_O" *) (* X_INTERFACE_MODE = "Master" *) output [3:0]leds_4bits_tri_o;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]leds_4bits_tri_o;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn_smartcon_0_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn_axi_gpio_0_s_axi_aresetn;
  wire [8:0]smartcon_0_M00_AXI_axi_gpio_0_S_AXI_ARADDR;
  wire smartcon_0_M00_AXI_axi_gpio_0_S_AXI_ARREADY;
  wire smartcon_0_M00_AXI_axi_gpio_0_S_AXI_ARVALID;
  wire [8:0]smartcon_0_M00_AXI_axi_gpio_0_S_AXI_AWADDR;
  wire smartcon_0_M00_AXI_axi_gpio_0_S_AXI_AWREADY;
  wire smartcon_0_M00_AXI_axi_gpio_0_S_AXI_AWVALID;
  wire smartcon_0_M00_AXI_axi_gpio_0_S_AXI_BREADY;
  wire [1:0]smartcon_0_M00_AXI_axi_gpio_0_S_AXI_BRESP;
  wire smartcon_0_M00_AXI_axi_gpio_0_S_AXI_BVALID;
  wire [31:0]smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RDATA;
  wire smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RREADY;
  wire [1:0]smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RRESP;
  wire smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RVALID;
  wire [31:0]smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WDATA;
  wire smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WREADY;
  wire [3:0]smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WSTRB;
  wire smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WVALID;
  wire zynq_7000_0_FCLK_CLK0_zynq_7000_0_M_AXI_GP0_ACLK;
  wire zynq_7000_0_FCLK_RESET0_N_proc_sys_reset_0_ext_reset_in;
  wire [31:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARADDR;
  wire [1:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARBURST;
  wire [3:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARCACHE;
  wire [11:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARID;
  wire [3:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARLEN;
  wire [1:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARLOCK;
  wire [2:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARPROT;
  wire [3:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARQOS;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARREADY;
  wire [2:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARSIZE;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARVALID;
  wire [31:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWADDR;
  wire [1:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWBURST;
  wire [3:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWCACHE;
  wire [11:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWID;
  wire [3:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWLEN;
  wire [1:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWLOCK;
  wire [2:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWPROT;
  wire [3:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWQOS;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWREADY;
  wire [2:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWSIZE;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWVALID;
  wire [11:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BID;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BREADY;
  wire [1:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BRESP;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BVALID;
  wire [31:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RDATA;
  wire [11:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RID;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RLAST;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RREADY;
  wire [1:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RRESP;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RVALID;
  wire [31:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WDATA;
  wire [11:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WID;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WLAST;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WREADY;
  wire [3:0]zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WSTRB;
  wire zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WVALID;

  project_1_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(leds_4bits_tri_o),
        .s_axi_aclk(zynq_7000_0_FCLK_CLK0_zynq_7000_0_M_AXI_GP0_ACLK),
        .s_axi_araddr(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn_axi_gpio_0_s_axi_aresetn),
        .s_axi_arready(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_ARREADY),
        .s_axi_arvalid(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_ARVALID),
        .s_axi_awaddr(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_AWADDR),
        .s_axi_awready(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_AWREADY),
        .s_axi_awvalid(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_AWVALID),
        .s_axi_bready(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_BREADY),
        .s_axi_bresp(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_BRESP),
        .s_axi_bvalid(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_BVALID),
        .s_axi_rdata(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RDATA),
        .s_axi_rready(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RREADY),
        .s_axi_rresp(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RRESP),
        .s_axi_rvalid(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RVALID),
        .s_axi_wdata(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WDATA),
        .s_axi_wready(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WREADY),
        .s_axi_wstrb(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WSTRB),
        .s_axi_wvalid(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WVALID));
  project_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_7000_0_FCLK_RESET0_N_proc_sys_reset_0_ext_reset_in),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn_smartcon_0_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn_axi_gpio_0_s_axi_aresetn),
        .slowest_sync_clk(zynq_7000_0_FCLK_CLK0_zynq_7000_0_M_AXI_GP0_ACLK));
  project_1_smartcon_0_0 smartcon_0
       (.M00_AXI_araddr(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_ARADDR),
        .M00_AXI_arready(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_ARREADY),
        .M00_AXI_arvalid(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_ARVALID),
        .M00_AXI_awaddr(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_AWADDR),
        .M00_AXI_awready(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_AWREADY),
        .M00_AXI_awvalid(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_AWVALID),
        .M00_AXI_bready(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_BREADY),
        .M00_AXI_bresp(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_BRESP),
        .M00_AXI_bvalid(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_BVALID),
        .M00_AXI_rdata(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RDATA),
        .M00_AXI_rready(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RREADY),
        .M00_AXI_rresp(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RRESP),
        .M00_AXI_rvalid(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_RVALID),
        .M00_AXI_wdata(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WDATA),
        .M00_AXI_wready(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WREADY),
        .M00_AXI_wstrb(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WSTRB),
        .M00_AXI_wvalid(smartcon_0_M00_AXI_axi_gpio_0_S_AXI_WVALID),
        .S00_AXI_araddr(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARADDR),
        .S00_AXI_arburst(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARBURST),
        .S00_AXI_arcache(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARCACHE),
        .S00_AXI_arid(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARID),
        .S00_AXI_arlen(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARLEN),
        .S00_AXI_arlock(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARLOCK),
        .S00_AXI_arprot(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARPROT),
        .S00_AXI_arqos(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARQOS),
        .S00_AXI_arready(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARREADY),
        .S00_AXI_arsize(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARSIZE),
        .S00_AXI_arvalid(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARVALID),
        .S00_AXI_awaddr(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWADDR),
        .S00_AXI_awburst(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWBURST),
        .S00_AXI_awcache(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWCACHE),
        .S00_AXI_awid(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWID),
        .S00_AXI_awlen(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWLEN),
        .S00_AXI_awlock(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWLOCK),
        .S00_AXI_awprot(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWPROT),
        .S00_AXI_awqos(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWQOS),
        .S00_AXI_awready(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWREADY),
        .S00_AXI_awsize(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWSIZE),
        .S00_AXI_awvalid(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWVALID),
        .S00_AXI_bid(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BID),
        .S00_AXI_bready(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BREADY),
        .S00_AXI_bresp(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BRESP),
        .S00_AXI_bvalid(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BVALID),
        .S00_AXI_rdata(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RDATA),
        .S00_AXI_rid(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RID),
        .S00_AXI_rlast(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RLAST),
        .S00_AXI_rready(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RREADY),
        .S00_AXI_rresp(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RRESP),
        .S00_AXI_rvalid(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RVALID),
        .S00_AXI_wdata(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WDATA),
        .S00_AXI_wid(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WID),
        .S00_AXI_wlast(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WLAST),
        .S00_AXI_wready(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WREADY),
        .S00_AXI_wstrb(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WSTRB),
        .S00_AXI_wvalid(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WVALID),
        .aclk(zynq_7000_0_FCLK_CLK0_zynq_7000_0_M_AXI_GP0_ACLK),
        .aresetn(proc_sys_reset_0_interconnect_aresetn_smartcon_0_aresetn));
  project_1_zynq_7000_0_0 zynq_7000_0
       (.DDR_Addr(DDR_addr),
        .DDR_BankAddr(DDR_ba),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm),
        .DDR_DQ(DDR_dq),
        .DDR_DQS(DDR_dqs_p),
        .DDR_DQS_n(DDR_dqs_n),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(zynq_7000_0_FCLK_CLK0_zynq_7000_0_M_AXI_GP0_ACLK),
        .FCLK_RESET0_N(zynq_7000_0_FCLK_RESET0_N_proc_sys_reset_0_ext_reset_in),
        .MIO(FIXED_IO_mio),
        .M_AXI_GP0_ACLK(zynq_7000_0_FCLK_CLK0_zynq_7000_0_M_AXI_GP0_ACLK),
        .M_AXI_GP0_ARADDR(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARADDR),
        .M_AXI_GP0_ARBURST(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARBURST),
        .M_AXI_GP0_ARCACHE(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARCACHE),
        .M_AXI_GP0_ARID(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARID),
        .M_AXI_GP0_ARLEN(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARLEN),
        .M_AXI_GP0_ARLOCK(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARLOCK),
        .M_AXI_GP0_ARPROT(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARPROT),
        .M_AXI_GP0_ARQOS(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARQOS),
        .M_AXI_GP0_ARREADY(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARREADY),
        .M_AXI_GP0_ARSIZE(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARSIZE),
        .M_AXI_GP0_ARVALID(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_ARVALID),
        .M_AXI_GP0_AWADDR(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWADDR),
        .M_AXI_GP0_AWBURST(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWBURST),
        .M_AXI_GP0_AWCACHE(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWCACHE),
        .M_AXI_GP0_AWID(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWID),
        .M_AXI_GP0_AWLEN(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWLEN),
        .M_AXI_GP0_AWLOCK(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWLOCK),
        .M_AXI_GP0_AWPROT(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWPROT),
        .M_AXI_GP0_AWQOS(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWQOS),
        .M_AXI_GP0_AWREADY(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWREADY),
        .M_AXI_GP0_AWSIZE(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWSIZE),
        .M_AXI_GP0_AWVALID(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_AWVALID),
        .M_AXI_GP0_BID(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BID),
        .M_AXI_GP0_BREADY(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BREADY),
        .M_AXI_GP0_BRESP(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BRESP),
        .M_AXI_GP0_BVALID(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_BVALID),
        .M_AXI_GP0_RDATA(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RDATA),
        .M_AXI_GP0_RID(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RID),
        .M_AXI_GP0_RLAST(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RLAST),
        .M_AXI_GP0_RREADY(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RREADY),
        .M_AXI_GP0_RRESP(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RRESP),
        .M_AXI_GP0_RVALID(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_RVALID),
        .M_AXI_GP0_WDATA(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WDATA),
        .M_AXI_GP0_WID(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WID),
        .M_AXI_GP0_WLAST(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WLAST),
        .M_AXI_GP0_WREADY(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WREADY),
        .M_AXI_GP0_WSTRB(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WSTRB),
        .M_AXI_GP0_WVALID(zynq_7000_0_M_AXI_GP0_smartcon_0_S00_AXI_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .USB0_VBUS_PWRFAULT(1'b0));
endmodule
