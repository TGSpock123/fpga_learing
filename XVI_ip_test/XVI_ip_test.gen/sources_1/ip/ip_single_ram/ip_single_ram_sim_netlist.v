// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Aug 17 09:48:17 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ip_single_ram -prefix
//               ip_single_ram_ ip_single_ram_sim_netlist.v
// Design      : ip_single_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_single_ram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ip_single_ram
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.625153 mW" *) 
  (* C_FAMILY = "kintexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
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
  (* C_INIT_FILE = "ip_single_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "kintexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ip_single_ram_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21936)
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
