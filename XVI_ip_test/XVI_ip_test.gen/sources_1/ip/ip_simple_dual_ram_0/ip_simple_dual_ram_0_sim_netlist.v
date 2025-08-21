// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Aug 19 23:26:53 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/GitHub/fpga_learing/XVI_ip_test/XVI_ip_test.gen/sources_1/ip/ip_simple_dual_ram_0/ip_simple_dual_ram_0_sim_netlist.v
// Design      : ip_simple_dual_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_simple_dual_ram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ip_simple_dual_ram_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     0.343777 mW" *) 
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
  (* C_INIT_FILE = "ip_simple_dual_ram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
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
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "kintexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ip_simple_dual_ram_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23072)
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
