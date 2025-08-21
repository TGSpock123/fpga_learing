// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Aug 15 22:14:40 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ip_rom_256x8_0_sim_netlist.v
// Design      : ip_rom_256x8_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_rom_256x8_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.549983 mW" *) 
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
  (* C_INIT_FILE = "ip_rom_256x8_0.mem" *) 
  (* C_INIT_FILE_NAME = "ip_rom_256x8_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "kintexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21504)
`pragma protect data_block
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
u9O5Mv7yT61nvufUTCG5
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
