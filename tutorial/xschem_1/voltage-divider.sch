v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 230 -140 230 -110 {
lab=out}
N 170 -140 230 -140 {
lab=out}
N 50 -140 110 -140 {
lab=#net1}
N 50 -140 50 -110 {
lab=#net1}
N 50 -50 50 -40 {
lab=GND}
N 50 -40 230 -40 {
lab=GND}
N 230 -50 230 -40 {
lab=GND}
N 140 -40 140 -30 {
lab=GND}
N 230 -140 250 -140 {
lab=out}
C {devices/vsource.sym} 50 -80 0 0 {name=V1 value=1}
C {devices/gnd.sym} 140 -30 0 0 {name=l1 lab=GND}
C {devices/res.sym} 230 -80 0 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 140 -140 1 0 {name=R1
value=100
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 250 -140 0 1 {name=l2 sig_type=std_logic lab=out
}
C {devices/code_shown.sym} 50 -200 0 0 {name=s1 only_toplevel=false value=".dc V1 0 5 0.1"
}
