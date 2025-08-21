// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Aug 19 23:48:39 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/fpga_learing/XVI_ip_test/XVI_ip_test.gen/sources_1/ip/ip_true_dual_ram_0/ip_true_dual_ram_0_sim_netlist.v
// Design      : ip_true_dual_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_true_dual_ram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ip_true_dual_ram_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.631669 mW" *) 
  (* C_FAMILY = "kintexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
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
  (* C_INIT_FILE = "ip_true_dual_ram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
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
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "NO_CHANGE" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "kintexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ip_true_dual_ram_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
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
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23184)
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
