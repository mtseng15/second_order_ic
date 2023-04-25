v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -250 50 -230 {
lab=GND}
N 150 -250 150 -230 {
lab=GND}
N 800 -370 810 -370 {
lab=VDD}
N 800 -350 810 -350 {
lab=VSS}
N 490 -390 500 -390 {
lab=Vin_p}
N 490 -370 500 -370 {
lab=ref}
N 240 -250 240 -230 {
lab=GND}
N 550 -120 550 -100 {
lab=GND}
N 450 -220 450 -210 {
lab=GND}
N 800 -390 810 -390 {
lab=Out}
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
tran 0.001u 2u
plot Vin_p 0.0002*out ref
write comparator_no_hysteresis_test.raw
.endc
"}
C {devices/title.sym} 160 30 0 0 {name=l13 author="Dr. Aubrey Beal, Dr. Phillip Bailey, Micah Tseng"
}
C {devices/vsource.sym} 50 -280 0 0 {name=V3 value="0.9"
}
C {devices/gnd.sym} 50 -230 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 50 -310 0 0 {name=l15 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} 150 -280 0 0 {name=V4 value=-0.9V
}
C {devices/gnd.sym} 150 -230 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} 450 -250 0 0 {name=V1 value="PULSE -0.0002V 0.0002V 0 1us 1us 1ns 200us"
}
C {devices/lab_pin.sym} 450 -280 0 0 {name=l2 sig_type=std_logic lab=Vin_p
}
C {devices/lab_pin.sym} 550 -180 0 0 {name=l1 sig_type=std_logic lab=ref
}
C {devices/lab_pin.sym} 810 -370 2 0 {name=l3 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 810 -350 2 0 {name=l4 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 490 -390 0 0 {name=l7 sig_type=std_logic lab=Vin_p
}
C {devices/lab_pin.sym} 490 -370 0 0 {name=l8 sig_type=std_logic lab=ref
}
C {devices/lab_pin.sym} 150 -310 0 0 {name=l20 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 240 -280 0 0 {name=V6 value=0
}
C {devices/gnd.sym} 240 -230 0 0 {name=l21 lab=GND}
C {devices/lab_pin.sym} 240 -310 0 0 {name=l22 sig_type=std_logic lab=Vbias
}
C {sky130_fd_pr/corner.sym} 10 -460 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/vsource.sym} 550 -150 0 0 {name=V5 value=0
}
C {devices/gnd.sym} 550 -100 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 450 -210 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 810 -390 2 0 {name=l5 sig_type=std_logic lab=Out
}
C {devices/noconn.sym} 810 -390 3 0 {name=l6 sig_type=std_logic lab=Out_p
}
C {src/comparator2/removing_hysteresis.sym} 650 -370 0 0 {name=x1}
