v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -250 50 -230 {
lab=GND}
N 260 -260 260 -240 {
lab=GND}
N 760 -450 770 -450 {
lab=VDD}
N 760 -430 770 -430 {
lab=VSS}
N 360 -100 360 -80 {
lab=GND}
N 760 -410 770 -410 {
lab=Vbias}
N 760 -570 780 -570 {
lab=s}
N 760 -550 780 -550 {
lab=u}
N 760 -530 780 -530 {
lab=du}
N 760 -490 770 -490 {
lab=pulse}
N 760 -470 770 -470 {
lab=u_n}
N 760 -510 790 -510 {
lab=ddu}
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
.options maxord=1
.temp 25
*vvcc VDD 0 dc 1.8
*vvss VSS 0 0
.control
save all
ic v(u)=0.123
tran 0.01u 900u uic
plot u du s pulse u_n
plot u du s 
* write oscilator_test.raw
wrdata oscillator_test2.csv u du s pulse 
.endc
"}
C {devices/title.sym} 160 30 0 0 {name=l13 author="Micah Tseng"
}
C {devices/vsource.sym} 50 -280 0 0 {name=V3 value="PULSE 0 0.9V 1us 1ns 1s 10ns"
}
C {devices/gnd.sym} 50 -230 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 50 -310 0 0 {name=l15 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} 260 -240 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 770 -450 2 0 {name=l3 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 770 -430 2 0 {name=l4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 260 -320 0 0 {name=l20 sig_type=std_logic lab=VSS
}
C {devices/gnd.sym} 360 -80 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} 360 -160 0 0 {name=l22 sig_type=std_logic lab=Vbias
}
C {sky130_fd_pr/corner.sym} 10 -460 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/lab_pin.sym} 780 -570 2 0 {name=l5 sig_type=std_logic lab=s
}
C {devices/noconn.sym} 780 -570 3 0 {name=l1 sig_type=std_logic lab=s
}
C {src/oscilator/oscilator.sym} 610 -490 0 0 {name=x1}
C {devices/lab_pin.sym} 770 -410 2 0 {name=l9 sig_type=std_logic lab=Vbias
}
C {devices/lab_pin.sym} 780 -550 2 0 {name=l2 sig_type=std_logic lab=u
}
C {devices/noconn.sym} 780 -550 3 0 {name=l6 sig_type=std_logic lab=s
}
C {devices/lab_pin.sym} 780 -530 2 0 {name=l7 sig_type=std_logic lab=du
}
C {devices/noconn.sym} 780 -530 3 0 {name=l8 sig_type=std_logic lab=s
}
C {devices/vsource.sym} 360 -130 0 0 {name=V1 value=0
}
C {devices/vsource.sym} 260 -290 0 0 {name=V2 value="PULSE 0 -0.9V 1us 1ns 1s 10ns"
}
C {devices/lab_pin.sym} 770 -490 2 0 {name=l10 sig_type=std_logic lab=pulse
}
C {devices/lab_pin.sym} 770 -470 2 0 {name=l11 sig_type=std_logic lab=u_n
}
C {devices/lab_pin.sym} 780 -510 2 0 {name=l12 sig_type=std_logic lab=ddu
}
