v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 470 -450 610 -450 {
lab=#net1}
N 430 -500 430 -480 {
lab=VDD}
N 420 -510 430 -510 {
lab=VDD}
N 430 -510 430 -500 {
lab=VDD}
N 650 -510 650 -480 {
lab=VDD}
N 650 -510 660 -510 {
lab=VDD}
N 410 -450 430 -450 {
lab=VDD}
N 410 -480 410 -450 {
lab=VDD}
N 410 -480 430 -480 {
lab=VDD}
N 650 -450 670 -450 {
lab=VDD}
N 670 -480 670 -450 {
lab=VDD}
N 650 -480 670 -480 {
lab=VDD}
N 430 -420 430 -400 {
lab=#net1}
N 430 -400 500 -400 {
lab=#net1}
N 500 -450 500 -400 {
lab=#net1}
N 650 -420 650 -370 {
lab=#net2}
N 430 -400 430 -370 {
lab=#net1}
N 430 -310 430 -280 {
lab=#net3}
N 430 -280 650 -280 {
lab=#net3}
N 650 -310 650 -280 {
lab=#net3}
N 550 -280 550 -260 {
lab=#net3}
N 350 -230 510 -230 {
lab=VDD}
N 310 -200 310 -180 {
lab=VSS}
N 310 -180 550 -180 {
lab=VSS}
N 550 -200 550 -180 {
lab=VSS}
N 380 -180 380 -160 {
lab=VSS}
N 310 -510 310 -260 {
lab=VDD}
N 300 -510 310 -510 {
lab=VDD}
N 650 -390 710 -390 {
lab=#net2}
N 310 -290 360 -290 {
lab=VDD}
N 360 -290 360 -230 {
lab=VDD}
N 820 -450 820 -420 {
lab=VDD}
N 820 -450 830 -450 {
lab=VDD}
N 820 -390 840 -390 {
lab=VDD}
N 840 -420 840 -390 {
lab=VDD}
N 820 -420 840 -420 {
lab=VDD}
N 820 -280 820 -260 {
lab=out}
N 820 -200 820 -180 {
lab=VSS}
N 490 -240 490 -230 {
lab=VDD}
N 490 -240 760 -240 {
lab=VDD}
N 760 -240 760 -230 {
lab=VDD}
N 760 -230 780 -230 {
lab=VDD}
N 710 -390 780 -390 {
lab=#net2}
N 820 -360 820 -280 {
lab=out}
N 550 -180 820 -180 {
lab=VSS}
N 820 -330 860 -330 {
lab=out}
N 720 -410 720 -390 {
lab=#net2}
N 750 -330 820 -330 {
lab=out}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Micah Tseng"
}
C {sky130_fd_pr/nfet_01v8.sym} 530 -230 0 0 {name=M1
L=0.15
W=1.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 450 -450 0 1 {name=M2
L=0.15
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 60 -60 0 0 {name=p1 lab=VDD
}
C {devices/ipin.sym} 110 -120 0 0 {name=p2 lab=in_p
}
C {devices/opin.sym} 50 -150 0 0 {name=p3 lab=out
}
C {devices/lab_pin.sym} 420 -510 0 0 {name=p5 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/pfet_01v8.sym} 630 -450 0 0 {name=M3
L=0.15
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 660 -510 2 0 {name=p4 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 430 -340 2 0 {name=p6 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 650 -340 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_01v8.sym} 330 -230 2 0 {name=M6
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 550 -230 2 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 310 -230 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 380 -160 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 300 -510 0 0 {name=p11 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 390 -340 0 0 {name=p12 sig_type=std_logic lab=in_p
}
C {devices/lab_pin.sym} 690 -340 2 0 {name=p13 sig_type=std_logic lab=in_n
}
C {devices/lab_pin.sym} 860 -330 2 0 {name=p14 sig_type=std_logic lab=out
}
C {devices/iopin.sym} 60 -40 0 0 {name=p15 lab=VSS
}
C {devices/ipin.sym} 110 -90 0 0 {name=p16 lab=in_n
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 410 -340 0 0 {name=M7
L=0.15
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 670 -340 2 0 {name=M4
L=0.15
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 830 -450 2 0 {name=p17 sig_type=std_logic lab=VDD
}
C {sky130_fd_pr/nfet_01v8.sym} 800 -230 0 0 {name=M8
L=0.365
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 820 -230 2 0 {name=p18 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/pfet_01v8.sym} 800 -390 0 0 {name=M5
L=0.15
W=30
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 750 -360 0 0 {name=C1 model=cap_mim_m3_1 W=2 L=2 MF=1 spiceprefix=X
}
