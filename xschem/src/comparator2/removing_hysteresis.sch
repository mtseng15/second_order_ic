v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 800 -420 900 -420 {
lab=VDD}
N 900 -420 910 -420 {
lab=VDD}
N 910 -420 910 -350 {
lab=VDD}
N 910 -320 920 -320 {
lab=VDD}
N 920 -350 920 -320 {
lab=VDD}
N 910 -350 920 -350 {
lab=VDD}
N 390 -220 390 -200 {
lab=#net1}
N 390 -200 600 -200 {
lab=#net1}
N 600 -220 600 -200 {
lab=#net1}
N 500 -200 500 -180 {
lab=#net1}
N 280 -120 280 -100 {
lab=VSS}
N 280 -100 500 -100 {
lab=VSS}
N 500 -120 500 -100 {
lab=VSS}
N 320 -150 460 -150 {
lab=#net2}
N 440 -170 440 -150 {
lab=#net2}
N 440 -170 870 -170 {
lab=#net2}
N 910 -290 910 -200 {
lab=#net3}
N 500 -100 910 -100 {
lab=VSS}
N 910 -140 910 -100 {
lab=VSS}
N 910 -170 920 -170 {
lab=VSS}
N 920 -170 920 -140 {
lab=VSS}
N 910 -140 920 -140 {
lab=VSS}
N 500 -150 510 -150 {
lab=VSS}
N 510 -150 510 -130 {
lab=VSS}
N 510 -130 510 -120 {
lab=VSS}
N 500 -120 510 -120 {
lab=VSS}
N 270 -150 280 -150 {
lab=VSS}
N 270 -150 270 -120 {
lab=VSS}
N 270 -120 280 -120 {
lab=VSS}
N 970 -270 980 -270 {
lab=#net3}
N 970 -270 970 -190 {
lab=#net3}
N 970 -190 980 -190 {
lab=#net3}
N 910 -230 970 -230 {
lab=#net3}
N 1020 -240 1020 -220 {
lab=out}
N 1020 -160 1020 -100 {
lab=VSS}
N 910 -100 1020 -100 {
lab=VSS}
N 910 -420 1020 -420 {
lab=VDD}
N 1020 -420 1020 -300 {
lab=VDD}
N 310 -420 800 -420 {
lab=VDD}
N 270 -280 280 -280 {
lab=VDD}
N 280 -280 280 -270 {
lab=VDD}
N 280 -270 280 -260 {
lab=VDD}
N 280 -200 280 -180 {
lab=#net2}
N 340 -250 350 -250 {
lab=in}
N 1020 -230 1030 -230 {
lab=out}
N 280 -190 330 -190 {
lab=#net2}
N 330 -190 330 -150 {
lab=#net2}
N 1020 -190 1030 -190 {
lab=VSS}
N 1030 -190 1030 -160 {
lab=VSS}
N 1020 -160 1030 -160 {
lab=VSS}
N 1020 -300 1030 -300 {
lab=VDD}
N 1030 -300 1030 -270 {
lab=VDD}
N 1020 -270 1030 -270 {
lab=VDD}
N 600 -320 840 -320 {
lab=#net4}
N 280 -420 310 -420 {
lab=VDD}
N 270 -100 280 -100 {
lab=VSS}
N 840 -320 870 -320 {
lab=#net4}
N 640 -250 650 -250 {
lab=ref}
N 600 -350 600 -280 {
lab=#net4}
N 390 -350 390 -310 {
lab=#net5}
N 390 -310 390 -280 {
lab=#net5}
N 430 -380 560 -380 {
lab=#net5}
N 390 -420 390 -410 {
lab=VDD}
N 600 -420 600 -410 {
lab=VDD}
N 390 -330 460 -330 {
lab=#net5}
N 460 -380 460 -330 {
lab=#net5}
N 370 -380 390 -380 {
lab=VDD}
N 370 -410 370 -380 {
lab=VDD}
N 370 -410 390 -410 {
lab=VDD}
N 600 -380 610 -380 {
lab=VDD}
N 610 -410 610 -380 {
lab=VDD}
N 600 -410 610 -410 {
lab=VDD}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Micah Tseng"
}
C {devices/iopin.sym} 70 -160 0 0 {name=p1 lab=VDD
}
C {devices/ipin.sym} 100 -110 0 0 {name=p2 lab=in
}
C {devices/opin.sym} 80 -200 0 0 {name=p3 lab=out
}
C {devices/lab_pin.sym} 340 -250 0 0 {name=p4 sig_type=std_logic lab=in
}
C {sky130_fd_pr/pfet_01v8.sym} 410 -380 0 1 {name=M5
L=0.25
W=20
nf=4
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
C {sky130_fd_pr/pfet_01v8.sym} 580 -380 0 0 {name=M6
L=0.25
W=20
nf=4
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
C {devices/lab_pin.sym} 390 -250 2 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 600 -250 0 0 {name=p6 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/nfet_01v8.sym} 480 -150 0 0 {name=M10
L=0.25
W=15
nf=4 
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
C {sky130_fd_pr/nfet_01v8.sym} 300 -150 2 0 {name=M11
L=2
W=20
nf=4 
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
C {sky130_fd_pr/nfet_01v8.sym} 890 -170 0 0 {name=M12
L=1.05
W=3
nf=4 
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
C {sky130_fd_pr/pfet_01v8.sym} 1000 -270 0 0 {name=M13
L=0.5
W=2
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
C {sky130_fd_pr/nfet_01v8.sym} 1000 -190 0 0 {name=M14
L=0.5
W=2
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
C {devices/isource.sym} 280 -230 0 0 {name=I0 value=20u
}
C {devices/lab_pin.sym} 280 -420 0 0 {name=p8 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 270 -280 0 0 {name=p9 sig_type=std_logic lab=VDD
}
C {devices/iopin.sym} 70 -140 0 0 {name=p10 lab=VSS
}
C {devices/ipin.sym} 100 -90 0 0 {name=p11 lab=ref
}
C {devices/lab_pin.sym} 650 -250 2 0 {name=p12 sig_type=std_logic lab=ref
}
C {devices/lab_pin.sym} 1030 -230 2 0 {name=p13 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} 270 -100 0 0 {name=p14 sig_type=std_logic lab=VSS
}
C {sky130_fd_pr/pfet_01v8.sym} 890 -320 0 0 {name=M2
L=0.3
W=19
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
C {sky130_fd_pr/nfet_01v8.sym} 370 -250 0 0 {name=M1
L=1
W=20
nf=4 
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
C {sky130_fd_pr/nfet_01v8.sym} 620 -250 0 1 {name=M3
L=1
W=20
nf=4 
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
