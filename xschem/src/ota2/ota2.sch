v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 330 -490 340 -490 {
lab=VDD}
N 330 -520 330 -490 {
lab=VDD}
N 330 -520 340 -520 {
lab=VDD}
N 340 -530 340 -520 {
lab=VDD}
N 340 -530 740 -530 {
lab=VDD}
N 740 -530 740 -520 {
lab=VDD}
N 740 -520 750 -520 {
lab=VDD}
N 750 -520 750 -490 {
lab=VDD}
N 740 -490 750 -490 {
lab=VDD}
N 610 -530 610 -520 {
lab=VDD}
N 460 -530 460 -520 {
lab=VDD}
N 460 -490 470 -490 {
lab=VDD}
N 470 -520 470 -490 {
lab=VDD}
N 460 -520 470 -520 {
lab=VDD}
N 600 -490 610 -490 {
lab=VDD}
N 600 -520 600 -490 {
lab=VDD}
N 600 -520 610 -520 {
lab=VDD}
N 380 -490 420 -490 {
lab=#net1}
N 410 -490 420 -490 {
lab=#net1}
N 410 -490 410 -450 {
lab=#net1}
N 410 -450 460 -450 {
lab=#net1}
N 460 -460 460 -450 {
lab=#net1}
N 610 -460 610 -450 {
lab=#net2}
N 610 -450 660 -450 {
lab=#net2}
N 660 -490 660 -450 {
lab=#net2}
N 650 -490 660 -490 {
lab=#net2}
N 650 -490 660 -490 {
lab=#net2}
N 660 -490 700 -490 {
lab=#net2}
N 460 -450 460 -390 {
lab=#net1}
N 610 -450 610 -390 {
lab=#net2}
N 340 -460 340 -290 {
lab=#net3}
N 340 -320 400 -320 {
lab=#net3}
N 400 -320 400 -260 {
lab=#net3}
N 380 -260 400 -260 {
lab=#net3}
N 460 -330 460 -320 {
lab=#net4}
N 460 -320 610 -320 {
lab=#net4}
N 610 -330 610 -320 {
lab=#net4}
N 470 -280 470 -260 {
lab=#net3}
N 470 -280 660 -280 {
lab=#net3}
N 660 -280 660 -260 {
lab=#net3}
N 660 -260 700 -260 {
lab=#net3}
N 740 -460 740 -290 {
lab=out}
N 340 -230 340 -200 {
lab=VSS}
N 340 -200 740 -200 {
lab=VSS}
N 740 -230 740 -200 {
lab=VSS}
N 530 -230 530 -200 {
lab=VSS}
N 330 -260 340 -260 {
lab=VSS}
N 330 -260 330 -230 {
lab=VSS}
N 330 -230 340 -230 {
lab=VSS}
N 740 -260 750 -260 {
lab=VSS}
N 750 -260 750 -230 {
lab=VSS}
N 740 -230 750 -230 {
lab=VSS}
N 740 -370 770 -370 {
lab=out}
N 540 -560 540 -530 {
lab=VDD}
N 530 -200 530 -170 {
lab=VSS}
N 400 -260 470 -260 {
lab=#net3}
N 530 -320 530 -290 {
lab=#net5}
C {devices/title.sym} 170 30 0 0 {name=l1 author="Micah Tseng"
}
C {sky130_fd_pr/nfet_01v8.sym} 440 -360 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 360 -490 0 1 {name=M2
L=0.15
W=12
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
C {devices/lab_pin.sym} 420 -360 0 0 {name=p1 sig_type=std_logic lab=in_n
}
C {devices/iopin.sym} 80 -70 0 0 {name=p2 lab=VDD
}
C {devices/opin.sym} 80 -150 0 0 {name=p3 lab=out
}
C {devices/ipin.sym} 100 -120 0 0 {name=p4 lab=in_p
}
C {sky130_fd_pr/pfet_01v8.sym} 440 -490 0 0 {name=M3
L=0.15
W=12
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
C {sky130_fd_pr/pfet_01v8.sym} 630 -490 0 1 {name=M4
L=0.15
W=12
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
C {sky130_fd_pr/pfet_01v8.sym} 720 -490 0 0 {name=M5
L=0.15
W=12
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
C {sky130_fd_pr/nfet_01v8.sym} 630 -360 0 1 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 720 -260 0 0 {name=M8
L=0.2
W=1.41
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
C {sky130_fd_pr/nfet_01v8.sym} 360 -260 0 1 {name=M9
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
C {devices/lab_pin.sym} 650 -360 2 0 {name=p5 sig_type=std_logic lab=in_p
}
C {devices/lab_pin.sym} 770 -370 2 0 {name=p6 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} 540 -560 2 0 {name=p7 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 530 -170 2 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/iopin.sym} 80 -50 0 0 {name=p9 lab=VSS
}
C {devices/ipin.sym} 100 -100 0 0 {name=p10 lab=in_n
}
C {devices/lab_pin.sym} 460 -360 2 0 {name=p11 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 610 -360 0 0 {name=p12 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 510 -260 0 0 {name=p13 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/res_high_po_0p35.sym} 530 -260 0 0 {name=R1
L=3.5
model=res_high_po_0p35
spiceprefix=X
mult=2
}
