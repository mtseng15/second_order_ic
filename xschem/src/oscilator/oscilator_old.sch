v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1140 -460 1180 -460 {
lab=#net1}
N 1660 -460 1670 -460 {
lab=#net2}
N 1170 -500 1670 -500 {
lab=#net1}
N 1170 -500 1170 -460 {
lab=#net1}
N 210 -550 220 -550 {
lab=VDD}
N 210 -570 220 -570 {
lab=VSS}
N 210 -140 220 -140 {
lab=VSS}
N 210 -160 220 -160 {
lab=VDD}
N 520 -430 530 -430 {
lab=VDD}
N 520 -450 530 -450 {
lab=VSS}
N 520 -320 530 -320 {
lab=VDD}
N 520 -340 530 -340 {
lab=VSS}
N 190 -530 220 -530 {
lab=v}
N 190 -530 190 -410 {
lab=v}
N 190 -410 220 -410 {
lab=v}
N 150 -280 220 -280 {
lab=#net3}
N 150 -280 150 -180 {
lab=#net3}
N 150 -180 220 -180 {
lab=#net3}
N 210 -390 220 -390 {
lab=s}
N 520 -510 620 -510 {
lab=dv}
N 520 -200 620 -200 {
lab=dv}
N 620 -510 620 -200 {
lab=dv}
N 520 -300 620 -300 {
lab=dv}
N 520 -410 620 -410 {
lab=dv}
N 210 -300 220 -300 {
lab=VRef}
N 520 -180 530 -180 {
lab=VRef}
N 520 -530 530 -530 {
lab=VRef}
N 80 -490 80 -480 {
lab=v}
N 80 -490 190 -490 {
lab=v}
N 70 -410 80 -410 {
lab=VRef}
N 80 -420 80 -410 {
lab=VRef}
N 90 -270 90 -260 {
lab=#net3}
N 90 -270 150 -270 {
lab=#net3}
N 80 -190 90 -190 {
lab=VRef}
N 90 -200 90 -190 {
lab=VRef}
N 820 -460 840 -460 {
lab=dv}
N 820 -440 840 -440 {
lab=VRef}
N 1140 -440 1150 -440 {
lab=VDD}
N 1140 -420 1150 -420 {
lab=VSS}
N 1790 -480 1800 -480 {
lab=#net4}
N 1880 -480 1900 -480 {
lab=clk_pls}
N 1130 -800 1140 -800 {
lab=VDD}
N 1130 -780 1140 -780 {
lab=VSS}
N 1130 -740 1140 -740 {
lab=#net5}
N 820 -760 830 -760 {
lab=clk_pls}
N 820 -780 830 -780 {
lab=VRef}
N 820 -800 830 -800 {
lab=v}
N 1140 -740 1200 -740 {
lab=#net5}
N 1230 -720 1230 -700 {
lab=VSS}
N 1220 -700 1230 -700 {
lab=VSS}
N 1290 -650 1290 -630 {
lab=VRef}
N 1260 -740 1290 -740 {
lab=s}
N 1290 -740 1290 -710 {
lab=s}
N 710 -300 710 -290 {
lab=dv}
N 700 -220 710 -220 {
lab=VRef}
N 710 -230 710 -220 {
lab=VRef}
N 620 -300 710 -300 {
lab=dv}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Micah Tseng"
}
C {src/ota/ota.sym} 370 -540 2 0 {name=x1}
C {src/comparator/comparator.sym} 980 -770 0 0 {name=x2}
C {src/comparator2/comparator2.sym} 990 -440 0 0 {name=x3}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1220 -460 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/xor2_2.sym} 1730 -480 0 0 {name=x5 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1300 -460 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1380 -460 0 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1460 -460 0 0 {name=x8 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1540 -460 0 0 {name=x9 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1620 -460 0 0 {name=x10 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {src/ota/ota.sym} 370 -420 2 1 {name=x11}
C {src/ota/ota.sym} 370 -310 2 1 {name=x12}
C {src/ota/ota.sym} 370 -170 0 1 {name=x13}
C {devices/iopin.sym} 40 -60 0 0 {name=p1 lab=VDD
}
C {devices/opin.sym} 40 -130 0 0 {name=p2 lab=s
}
C {devices/lab_pin.sym} 210 -550 2 1 {name=p5 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 210 -570 2 1 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 210 -160 0 0 {name=p7 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 210 -140 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 530 -430 2 0 {name=p9 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 530 -450 2 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 530 -320 2 0 {name=p11 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 530 -340 2 0 {name=p12 sig_type=std_logic lab=VSS
}
C {devices/noconn.sym} 220 -510 2 1 {name=l2}
C {devices/noconn.sym} 520 -390 0 1 {name=l3}
C {devices/noconn.sym} 520 -280 0 1 {name=l4}
C {devices/noconn.sym} 220 -200 0 0 {name=l5}
C {devices/lab_pin.sym} 210 -390 2 1 {name=p13 sig_type=std_logic lab=s
}
C {devices/lab_pin.sym} 210 -300 2 1 {name=p14 sig_type=std_logic lab=VRef
}
C {devices/lab_pin.sym} 530 -180 0 1 {name=p15 sig_type=std_logic lab=VRef
}
C {devices/lab_pin.sym} 530 -530 0 1 {name=p16 sig_type=std_logic lab=VRef
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 80 -450 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=200 spiceprefix=X
}
C {devices/lab_pin.sym} 70 -410 2 1 {name=p17 sig_type=std_logic lab=VRef
}
C {sky130_fd_pr/res_high_po_0p35.sym} 90 -230 0 1 {name=R1
L=0.35
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 80 -190 2 1 {name=p18 sig_type=std_logic lab=VRef
}
C {devices/lab_pin.sym} 110 -230 0 1 {name=p19 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 620 -510 0 1 {name=p4 sig_type=std_logic lab=dv
}
C {devices/lab_pin.sym} 80 -490 2 1 {name=p20 sig_type=std_logic lab=v
}
C {devices/lab_pin.sym} 820 -460 2 1 {name=p21 sig_type=std_logic lab=dv
}
C {devices/lab_pin.sym} 820 -440 2 1 {name=p22 sig_type=std_logic lab=VRef
}
C {devices/lab_pin.sym} 1150 -440 2 0 {name=p23 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1150 -420 2 0 {name=p24 sig_type=std_logic lab=VSS
}
C {sky130_stdcells/inv_2.sym} 1840 -480 0 0 {name=x14 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {devices/lab_pin.sym} 1900 -480 2 0 {name=p25 sig_type=std_logic lab=clk_pls
}
C {devices/lab_pin.sym} 1140 -800 2 0 {name=p26 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 1140 -780 2 0 {name=p27 sig_type=std_logic lab=VSS
}
C {devices/noconn.sym} 1130 -760 0 1 {name=l6}
C {devices/lab_pin.sym} 1290 -740 0 1 {name=p28 sig_type=std_logic lab=s
}
C {devices/lab_pin.sym} 820 -760 0 0 {name=p29 sig_type=std_logic lab=clk_pls
}
C {devices/lab_pin.sym} 820 -780 2 1 {name=p30 sig_type=std_logic lab=VRef
}
C {devices/lab_pin.sym} 820 -800 2 1 {name=p31 sig_type=std_logic lab=v
}
C {devices/iopin.sym} 40 -40 0 0 {name=p32 lab=VSS
}
C {devices/iopin.sym} 40 -20 0 0 {name=p33 lab=VRef
}
C {devices/opin.sym} 40 -110 0 0 {name=p3 lab=v
}
C {devices/opin.sym} 40 -90 0 0 {name=p34 lab=dv
}
C {sky130_fd_pr/res_high_po_0p35.sym} 1230 -740 1 1 {name=R2
L=0.35
model=res_high_po_0p35
spiceprefix=X
mult=3
}
C {sky130_fd_pr/res_high_po_0p35.sym} 1290 -680 2 1 {name=R3
L=0.35
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1290 -630 2 0 {name=p35 sig_type=std_logic lab=VRef
}
C {devices/lab_pin.sym} 1220 -700 0 0 {name=p36 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1270 -680 0 0 {name=p37 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 710 -260 0 0 {name=C2 model=cap_mim_m3_1 W=10 L=10 MF=200 spiceprefix=X
}
C {devices/lab_pin.sym} 700 -220 2 1 {name=p38 sig_type=std_logic lab=VRef
}
