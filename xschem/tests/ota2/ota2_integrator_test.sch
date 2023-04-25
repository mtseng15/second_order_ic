v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -220 280 -220 {
lab=VDD}
N 280 -220 280 -200 {
lab=VDD}
N 280 -140 280 -120 {
lab=GND}
N 360 -220 380 -220 {
lab=VSS}
N 380 -220 380 -200 {
lab=VSS}
N 380 -140 380 -120 {
lab=GND}
N 600 -270 620 -270 {
lab=in_p}
N 620 -270 620 -250 {
lab=in_p}
N 820 -360 830 -360 {
lab=VSS}
N 510 -360 510 -340 {
lab=GND}
N 520 -400 530 -400 {
lab=in_p}
N 520 -380 530 -380 {
lab=GND}
N 820 -380 840 -380 {
lab=VDD}
N 820 -400 840 -400 {
lab=out}
N 930 -240 930 -220 {
lab=GND}
N 840 -400 930 -400 {
lab=out}
N 930 -400 930 -370 {
lab=out}
N 510 -380 510 -360 {
lab=GND}
N 510 -380 520 -380 {
lab=GND}
N 620 -190 620 -170 {
lab=GND}
N 930 -310 930 -300 {
lab=#net1}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Micah Tseng"
}
C {sky130_fd_pr/corner.sym} 60 -200 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code.sym} 60 -380 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/simulator_commands.sym} 200 -370 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
* ngspice commands
.options list act
.options method=gear
.temp 25

.control
save all
tran 1u 300u 
plot out in_p
plot i(v6)

meas tran outptp pp v(out) from=0s to=300us
meas tran outmean avg v(out) from=0s to=300us

let gain = 20*log10($&outptp/0.002)
echo gain = $&gain

write ota2_test.raw
.endc
"}
C {devices/vsource.sym} 280 -170 0 0 {name=V1 value=0.9
}
C {devices/gnd.sym} 280 -120 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 260 -220 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} 380 -170 0 0 {name=V2 value=-0.9
}
C {devices/gnd.sym} 380 -120 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 360 -220 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 620 -220 0 0 {name=V3 value="SIN 0 0.5e-3 10k"
}
C {devices/lab_pin.sym} 600 -270 0 0 {name=p3 sig_type=std_logic lab=in_p
}
C {devices/lab_pin.sym} 840 -380 2 0 {name=p5 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 830 -360 2 0 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/gnd.sym} 510 -340 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 520 -400 0 0 {name=p4 sig_type=std_logic lab=in_p
}
C {devices/lab_pin.sym} 840 -400 2 0 {name=p11 sig_type=std_logic lab=out
}
C {devices/noconn.sym} 820 -380 3 0 {name=l5}
C {devices/noconn.sym} 820 -400 3 0 {name=l6}
C {src/ota2/ota2.sym} 670 -380 0 0 {name=x1}
C {devices/vsource.sym} 930 -270 0 0 {name=V6 value=0
}
C {devices/gnd.sym} 930 -220 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 620 -170 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 930 -340 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"
}
