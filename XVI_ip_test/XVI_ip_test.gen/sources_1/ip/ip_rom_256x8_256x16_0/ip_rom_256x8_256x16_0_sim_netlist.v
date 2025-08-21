// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Aug 15 14:54:18 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/fpga_learing/XVI_ip_test/XVI_ip_test.gen/sources_1/ip/ip_rom_256x8_256x16_0/ip_rom_256x8_256x16_0_sim_netlist.v
// Design      : ip_rom_256x8_256x16_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_rom_256x8_256x16_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ip_rom_256x8_256x16_0
   (clka,
    addra,
    douta,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [7:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]douta;
  wire [15:0]doutb;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.968677 mW" *) 
  (* C_FAMILY = "kintexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ip_rom_256x8_256x16_0.mem" *) 
  (* C_INIT_FILE_NAME = "ip_rom_256x8_256x16_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "kintexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ip_rom_256x8_256x16_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20224)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
