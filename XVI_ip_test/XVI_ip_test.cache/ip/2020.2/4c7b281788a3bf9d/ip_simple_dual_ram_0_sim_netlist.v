// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Aug 19 23:26:53 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ip_simple_dual_ram_0_sim_netlist.v
// Design      : ip_simple_dual_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_simple_dual_ram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23008)
`pragma protect data_block
+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
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
