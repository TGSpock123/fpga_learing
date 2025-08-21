// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Aug 15 22:14:42 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/fpga_learing/XVI_ip_test/XVI_ip_test.gen/sources_1/ip/ip_rom_256x8_0/ip_rom_256x8_0_sim_netlist.v
// Design      : ip_rom_256x8_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_rom_256x8_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ip_rom_256x8_0
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
  ip_rom_256x8_0_blk_mem_gen_v8_4_4 U0
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
BmyZ8/BKTZuoZt5CQZmo
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
