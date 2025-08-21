// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Aug 17 09:48:17 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ip_single_ram_sim_netlist.v
// Design      : ip_single_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_single_ram,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22240)
`pragma protect data_block
+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
wEOVL06uVFxgLg==
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
