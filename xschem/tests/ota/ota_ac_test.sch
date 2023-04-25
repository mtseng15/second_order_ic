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
N 830 -340 840 -340 {
lab=VSS}
N 830 -360 840 -360 {
lab=VDD}
N 450 -220 470 -220 {
lab=Vbias}
N 470 -220 470 -200 {
lab=Vbias}
N 470 -140 470 -120 {
lab=GND}
N 520 -400 530 -400 {
lab=in_p}
N 520 -380 530 -380 {
lab=in_n}
N 830 -380 850 -380 {
lab=out}
N 830 -400 850 -400 {
lab=diff_out}
N 880 -280 900 -280 {
lab=in_p}
N 900 -280 900 -260 {
lab=in_p}
N 900 -200 900 -180 {
lab=Vbias}
N 900 -120 900 -100 {
lab=in_n}
N 890 -190 900 -190 {
lab=Vbias}
N 880 -90 900 -90 {
lab=in_n}
N 900 -100 900 -90 {
lab=in_n}
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
* tran 0.01u 15u 
* plot in_p-in_n
* plot out
ac dec 50 10 1G
plot vdb(out) ylimit 34 40


write op_amp_test.raw
.endc
"}
C {devices/vsource.sym} 280 -170 0 0 {name=V1 value=1.8
}
C {devices/gnd.sym} 280 -120 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 260 -220 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} 380 -170 0 0 {name=V2 value=0
}
C {devices/gnd.sym} 380 -120 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 360 -220 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 840 -360 2 0 {name=p5 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 840 -340 2 0 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 470 -170 0 0 {name=V5 value=0.9
}
C {devices/gnd.sym} 470 -120 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 450 -220 0 0 {name=p7 sig_type=std_logic lab=Vbias
}
C {devices/lab_pin.sym} 520 -400 0 0 {name=p4 sig_type=std_logic lab=in_p
}
C {devices/lab_pin.sym} 520 -380 0 0 {name=p10 sig_type=std_logic lab=in_n
}
C {devices/lab_pin.sym} 850 -380 2 0 {name=p11 sig_type=std_logic lab=out
}
C {devices/noconn.sym} 830 -380 3 0 {name=l5}
C {devices/lab_pin.sym} 850 -400 2 0 {name=p8 sig_type=std_logic lab=diff_out
}
C {devices/noconn.sym} 830 -400 3 0 {name=l6}
C {devices/vsource.sym} 900 -230 0 0 {name=V4 value="ac 1 SIN 0 0.5e-3 10k"
}
C {devices/lab_pin.sym} 880 -280 0 0 {name=p12 sig_type=std_logic lab=in_p
}
C {devices/vsource.sym} 900 -150 0 0 {name=V6 value="ac 1 SIN 0 0.5e-3 10k"
}
C {devices/lab_pin.sym} 890 -190 0 0 {name=p13 sig_type=std_logic lab=Vbias
}
C {devices/lab_pin.sym} 880 -90 0 0 {name=p14 sig_type=std_logic lab=in_n
}
C {src/ota/ota.sym} 680 -370 0 0 {name=x1}
