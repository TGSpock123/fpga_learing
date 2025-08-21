// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Aug 15 14:54:18 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ip_rom_256x8_256x16_0_sim_netlist.v
// Design      : ip_rom_256x8_256x16_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_rom_256x8_256x16_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20160)
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
