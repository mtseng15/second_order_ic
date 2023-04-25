v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 520 -230 520 -170 {
lab=du}
N 520 -170 620 -170 {
lab=du}
N 620 -230 620 -170 {
lab=du}
N 520 -590 520 -530 {
lab=u}
N 520 -590 600 -590 {
lab=u}
N 600 -590 600 -530 {
lab=u}
N 620 -170 810 -170 {
lab=du}
N 810 -170 830 -170 {
lab=du}
N 830 -230 830 -170 {
lab=du}
N 730 -230 730 -170 {
lab=du}
N 500 -230 500 -210 {
lab=GND}
N 730 -590 830 -590 {
lab=ddu}
N 830 -590 830 -530 {
lab=ddu}
N 760 -610 760 -590 {
lab=ddu}
N 810 -230 810 -210 {
lab=GND}
N 760 -680 760 -670 {
lab=GND}
N 760 -690 760 -680 {
lab=GND}
N 550 -610 550 -590 {
lab=u}
N 550 -680 550 -670 {
lab=GND}
N 550 -690 550 -680 {
lab=GND}
N 760 -170 760 -150 {
lab=du}
N 760 -90 760 -80 {
lab=GND}
N 760 -80 760 -70 {
lab=GND}
N 620 -560 640 -560 {
lab=s}
N 620 -560 620 -530 {
lab=s}
N 450 -590 520 -590 {
lab=u}
N 830 -170 860 -170 {
lab=du}
N 710 -540 710 -530 {
lab=GND}
N 710 -550 710 -540 {
lab=GND}
N 730 -590 730 -530 {
lab=ddu}
N 40 -260 40 -240 {
lab=GND}
N 1030 -390 1040 -390 {
lab=#net1}
N 1120 -390 1130 -390 {
lab=#net2}
N 920 -430 1250 -430 {
lab=#net3}
N 920 -430 920 -390 {
lab=#net3}
N 1700 -410 1710 -410 {
lab=pulse}
N 940 -280 960 -280 {
lab=pulse}
N 1040 -280 1060 -280 {
lab=#net4}
N 1360 -260 1380 -260 {
lab=u_n}
N 1470 -110 1470 -80 {
lab=VRef}
N 1470 -190 1470 -170 {
lab=s}
N 1470 -260 1470 -250 {
lab=u_n}
N 1380 -260 1470 -260 {
lab=u_n}
N 1470 -180 1490 -180 {
lab=s}
N 840 -590 850 -590 {
lab=ddu}
N 830 -590 840 -590 {
lab=ddu}
N 1210 -390 1220 -390 {
lab=#net5}
N 1300 -390 1310 -390 {
lab=#net6}
N 1390 -390 1400 -390 {
lab=#net7}
N 1480 -390 1490 -390 {
lab=#net8}
N 1570 -390 1580 -390 {
lab=#net9}
N 1250 -430 1580 -430 {
lab=#net3}
N 920 -390 950 -390 {
lab=#net3}
N 1260 -530 1340 -530 {
lab=#net3}
N 1340 -530 1340 -430 {
lab=#net3}
N 950 -530 960 -530 {
lab=du}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Micah Tseng"
}
C {devices/iopin.sym} 40 -60 0 0 {name=p1 lab=VDD
}
C {devices/opin.sym} 40 -200 0 0 {name=p2 lab=s
}
C {devices/iopin.sym} 40 -40 0 0 {name=p32 lab=VSS
}
C {devices/iopin.sym} 40 -20 0 0 {name=p33 lab=VRef
}
C {devices/opin.sym} 40 -180 0 0 {name=p3 lab=u
}
C {devices/opin.sym} 40 -160 0 0 {name=p34 lab=du
}
C {src/ota2/ota2.sym} 500 -380 1 1 {name=x2}
C {src/ota2/ota2.sym} 600 -380 1 0 {name=x1}
C {devices/lab_pin.sym} 600 -230 3 0 {name=l2 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 580 -230 3 0 {name=l3 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 500 -530 1 0 {name=l4 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 480 -530 1 0 {name=l5 sig_type=std_logic lab=VSS
}
C {src/ota2/ota2.sym} 710 -380 1 0 {name=x3}
C {src/ota2/ota2.sym} 810 -380 1 1 {name=x4}
C {devices/lab_pin.sym} 810 -530 1 0 {name=l6 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 790 -530 1 0 {name=l7 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 710 -230 3 0 {name=l8 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 690 -230 3 0 {name=l9 sig_type=std_logic lab=VSS
}
C {devices/gnd.sym} 500 -210 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 810 -210 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 760 -690 2 0 {name=l12 lab=GND}
C {devices/gnd.sym} 550 -690 2 0 {name=l17 lab=GND}
C {devices/gnd.sym} 760 -70 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 640 -560 2 0 {name=l23 sig_type=std_logic lab=s
}
C {devices/lab_pin.sym} 450 -590 0 0 {name=l24 sig_type=std_logic lab=u
}
C {devices/lab_pin.sym} 860 -170 2 0 {name=l25 sig_type=std_logic lab=du
}
C {devices/gnd.sym} 710 -550 2 0 {name=l19 lab=GND}
C {devices/gnd.sym} 40 -240 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} 40 -320 0 0 {name=l22 sig_type=std_logic lab=sa
}
C {devices/vsource.sym} 40 -290 0 0 {name=V1 value="PULSE 0 0.2V 2us 1ns 1s 10ns"
}
C {src/comparator2/comparator2.sym} 1110 -510 0 0 {name=x5}
C {devices/lab_pin.sym} 1260 -490 2 0 {name=l13 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1260 -510 2 0 {name=l14 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 960 -510 0 0 {name=l15 sig_type=std_logic lab=VRef
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 990 -390 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/xor2_2.sym} 1640 -410 0 0 {name=x7 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1080 -390 0 0 {name=x8 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1170 -390 0 0 {name=x9 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {devices/lab_pin.sym} 950 -530 0 0 {name=l16 sig_type=std_logic lab=du
}
C {devices/opin.sym} 40 -100 0 0 {name=p4 lab=pulse
}
C {devices/lab_pin.sym} 1710 -410 2 0 {name=l20 sig_type=std_logic lab=pulse
}
C {src/comparator/comparator.sym} 1210 -290 0 0 {name=x10}
C {devices/lab_pin.sym} 1360 -300 2 0 {name=l26 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 1360 -320 2 0 {name=l27 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 940 -280 0 0 {name=l28 sig_type=std_logic lab=pulse
}
C {sky130_stdcells/inv_1.sym} 1000 -280 0 0 {name=x11 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {devices/lab_pin.sym} 1060 -320 0 0 {name=l29 sig_type=std_logic lab=u
}
C {devices/lab_pin.sym} 1060 -300 0 0 {name=l30 sig_type=std_logic lab=VRef
}
C {devices/opin.sym} 40 -80 0 0 {name=p5 lab=u_n
}
C {devices/lab_pin.sym} 1380 -260 2 0 {name=l31 sig_type=std_logic lab=u_n
}
C {devices/noconn.sym} 1360 -280 2 0 {name=l32}
C {devices/res.sym} 1470 -220 0 0 {name=R1
value=8k
footprint=1206
device=resistor
m=1
}
C {devices/res.sym} 1470 -140 0 0 {name=R3
value=250
footprint=1206
device=resistor
m=1
}
C {devices/lab_pin.sym} 1470 -80 0 0 {name=l33 sig_type=std_logic lab=VRef
}
C {devices/lab_pin.sym} 1490 -180 2 0 {name=l34 sig_type=std_logic lab=s
}
C {devices/opin.sym} 40 -140 0 0 {name=p6 lab=ddu
}
C {devices/lab_pin.sym} 850 -590 2 0 {name=l35 sig_type=std_logic lab=ddu
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1260 -390 0 0 {name=x12 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1350 -390 0 0 {name=x13 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1440 -390 0 0 {name=x14 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1530 -390 0 0 {name=x15 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_fd_pr/res_high_po_0p35.sym} 760 -640 0 0 {name=R4
L=1.8
model=res_high_po_0p35
spiceprefix=X
mult=1
}
C {devices/lab_pin.sym} 740 -640 0 0 {name=l36 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 550 -640 0 0 {name=C2 model=cap_mim_m3_1 W=300 L=100 MF=10 spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 760 -120 0 0 {name=C3 model=cap_mim_m3_1 W=85 L=100 MF=10 spiceprefix=X
}
