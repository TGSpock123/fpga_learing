// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Aug 15 14:40:33 2025
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
PrGiGO4kjLtnzKLyJ/EV
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
