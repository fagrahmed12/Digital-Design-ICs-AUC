* SPICE export by:      S-Edit 2022.2.3
* Export time:          Wed Dec 20 14:13:48 2023
* Design path:          /home/vlsi/Desktop/VLSIPROJECT/lib.defs
* Library:              VLSIPROJECT
* Cell:                 ANDOR
* Testbench:            Spice
* View:                 schematic
* Export as:            subcircuit definition
* Export mode:          hierarchical
* Exclude empty:        no
* Exclude .model:       no
* Exclude .hdl:         no
* Exclude .end:         no
* Expand paths:         no
* Wrap lines:           no
* Exclude simulator commands:  no
* Exclude global pins:         no
* Exclude instance locations:  no
* Control property name(s):    LVS SPICE

.SUBCKT NMOS25 D G S B
.ENDS
.SUBCKT PMOS25 D G S B
.ENDS
.SUBCKT NMOS33 D G S B
.ENDS
.SUBCKT PMOS33 D G S B
.ENDS

*************** Subcircuits ***************
.subckt ANDOR A B C D Out Gnd Vdd 
* Library name: VLSIPROJECT
* Cell name: ANDOR
* View name: schematic
* PORT=C TYPE=In
* PORT=Gnd TYPE=Other
* PORT=B TYPE=In
* PORT=A TYPE=In
* PORT=D TYPE=In
* PORT=Out TYPE=InOut
* PORT=Vdd TYPE=Other

MMn1 N_3 C N_1 Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=5500 $y=1500 $w=400 $h=600
MMn2 N_1 D Gnd Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=5500 $y=300 $w=400 $h=600
MMn3 Out A N_3 Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=4600 $y=2600 $w=400 $h=600
MMn4 Out B N_3 Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=6300 $y=2600 $w=400 $h=600
MMp1 N_2 A Vdd Vdd PMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=5300 $y=6700 $w=400 $h=600
MMp2 N_4 B N_2 Vdd PMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=5300 $y=5500 $w=400 $h=600
MMp3 Out D N_4 Vdd PMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=6900 $y=4100 $w=400 $h=600
MMp4 Out C N_4 Vdd PMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=4300 $y=4100 $w=400 $h=600
.ends



