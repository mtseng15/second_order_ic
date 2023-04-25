v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -250 50 -230 {
lab=GND}
N 50 -550 50 -530 {
lab=GND}
N 350 -100 350 -80 {
lab=GND}
N 500 -360 500 -300 {
lab=du}
N 500 -300 620 -300 {
lab=du}
N 620 -360 620 -300 {
lab=du}
N 500 -720 500 -660 {
lab=u}
N 500 -720 600 -720 {
lab=u}
N 600 -720 600 -660 {
lab=u}
N 620 -300 900 -300 {
lab=du}
N 900 -300 920 -300 {
lab=du}
N 920 -360 920 -300 {
lab=du}
N 780 -360 780 -300 {
lab=du}
N 480 -360 480 -340 {
lab=GND}
N 780 -720 920 -720 {
lab=#net1}
N 920 -720 920 -660 {
lab=#net1}
N 850 -740 850 -720 {
lab=#net1}
N 900 -360 900 -340 {
lab=GND}
N 850 -810 850 -800 {
lab=GND}
N 850 -820 850 -810 {
lab=GND}
N 550 -740 550 -720 {
lab=u}
N 550 -810 550 -800 {
lab=GND}
N 550 -820 550 -810 {
lab=GND}
N 850 -300 850 -280 {
lab=du}
N 850 -220 850 -210 {
lab=GND}
N 850 -210 850 -200 {
lab=GND}
N 620 -690 640 -690 {
lab=s}
N 620 -690 620 -660 {
lab=s}
N 430 -720 500 -720 {
lab=u}
N 920 -300 950 -300 {
lab=du}
N 760 -670 760 -660 {
lab=GND}
N 760 -680 760 -670 {
lab=GND}
N 780 -720 780 -660 {
lab=#net1}
C {devices/code.sym} 0 -160 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code.sym} 150 -160 0 0 {name=SPICE 
only_toplevel=true
value="
* Here's a comment
.options acct list
.options method=gear
.temp 25
*vvcc VDD 0 dc 1.8
*vvss VSS 0 0
.control
save all
ic v(u)=0.01 v(s)=0.3
tran 0.001u 50u uic
plot u du s
write unstable_oscilator_test.raw
.endc
"}
C {devices/title.sym} 160 30 0 0 {name=l13 author="Dr. Aubrey Beal, Dr. Phillip Bailey, Micah Tseng"
}
C {devices/vsource.sym} 50 -280 0 0 {name=V3 value="PULSE 0 0.9V 1us 1ns 1s 10ns"
}
C {devices/gnd.sym} 50 -230 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 50 -310 0 0 {name=l15 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} 50 -580 0 0 {name=V4 value="PULSE 0 -0.9V 1us 1ns 1s 10ns"
}
C {devices/gnd.sym} 50 -530 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 50 -610 0 0 {name=l20 sig_type=std_logic lab=VSS
}
C {devices/gnd.sym} 350 -80 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} 350 -160 0 0 {name=l22 sig_type=std_logic lab=s
}
C {sky130_fd_pr/corner.sym} 10 -460 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} 350 -130 0 0 {name=V1 value="PULSE 0 0.025V 2us 1ns 1s 10ns"
}
C {src/ota2/ota2.sym} 480 -510 1 1 {name=x2}
C {src/ota2/ota2.sym} 600 -510 1 0 {name=x1}
C {devices/lab_pin.sym} 600 -360 3 0 {name=l1 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 580 -360 3 0 {name=l2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 480 -660 1 0 {name=l3 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 460 -660 1 0 {name=l4 sig_type=std_logic lab=VSS
}
C {src/ota2/ota2.sym} 760 -510 1 0 {name=x3}
C {src/ota2/ota2.sym} 900 -510 1 1 {name=x4}
C {devices/lab_pin.sym} 900 -660 1 0 {name=l5 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 880 -660 1 0 {name=l6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 760 -360 3 0 {name=l7 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 740 -360 3 0 {name=l8 sig_type=std_logic lab=VSS
}
C {devices/gnd.sym} 480 -340 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 900 -340 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 850 -820 2 0 {name=l12 lab=GND}
C {devices/gnd.sym} 550 -820 2 0 {name=l17 lab=GND}
C {devices/gnd.sym} 850 -200 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 640 -690 2 0 {name=l23 sig_type=std_logic lab=s
}
C {devices/lab_pin.sym} 430 -720 0 0 {name=l24 sig_type=std_logic lab=u
}
C {devices/lab_pin.sym} 950 -300 2 0 {name=l25 sig_type=std_logic lab=du
}
C {devices/gnd.sym} 760 -680 2 0 {name=l19 lab=GND}
C {sky130_fd_pr/res_high_po_0p35.sym} 850 -770 0 0 {name=R4
L=2
model=res_high_po_0p35
spiceprefix=X
mult=1
}
C {devices/lab_pin.sym} 830 -770 0 0 {name=l36 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 550 -770 0 0 {name=C2 model=cap_mim_m3_1 W=300 L=100 MF=10 spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 850 -250 0 0 {name=C3 model=cap_mim_m3_1 W=85 L=100 MF=10 spiceprefix=X
}
