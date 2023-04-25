v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1010 -660 1050 -660 {
lab=#net1}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Micah Tseng"
}
C {src/ota/ota.sym} 390 -660 0 0 {name=x1}
C {src/comparator/comparator.sym} 380 -520 0 0 {name=x2}
C {src/comparator2/comparator2.sym} 860 -640 0 0 {name=x3}
C {sky130_stdcells/clkdlybuf4s50_1.sym} 1090 -660 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ 
}
C {sky130_stdcells/xor2_2.sym} 1740 -680 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
