* SPICE export by:      S-Edit 2022.2.3
* Export time:          Wed Dec 20 12:57:54 2023
* Design path:          /home/vlsi/Desktop/VLSIPROJECT/lib.defs
* Library:              VLSIPROJECT
* Cell:                 NAND4
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
.subckt NAND4 A B C D gnd Out Unknown_Pin_vdd Vdd 
* Library name: VLSIPROJECT
* Cell name: NAND4
* View name: schematic
* PORT=D TYPE=In
* PORT=B TYPE=In
* PORT=C TYPE=In
* PORT=Vdd TYPE=Other
* PORT=gnd TYPE=InOut
* PORT=A TYPE=In
* PORT=Out TYPE=Out
* PORT=vdd TYPE=InOut

MCMOS N_1 D gnd Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=4900 $y=1500 $w=400 $h=600
MCMOS_1 N_2 C N_1 Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=4900 $y=2500 $w=400 $h=600
MCMOS_2 N_3 B N_2 Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=4900 $y=3400 $w=400 $h=600
MCMOS_3 Out A N_3 Gnd NMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=4900 $y=4200 $w=400 $h=600
MCMOS_4 Out A Vdd Vdd PMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=2700 $y=5400 $w=400 $h=600
MCMOS_5 Out B Vdd Vdd PMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=4100 $y=5400 $w=400 $h=600
MCMOS_6 Out C Vdd Vdd PMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=5600 $y=5400 $w=400 $h=600
MCMOS_7 Out D Vdd Vdd PMOS25 w=1.5u l=250n m=1 ad=975f pd=4.3u as=975f ps=4.3u nrd=433.33333m nrs=433.33333m mult=1 delvto=0 mulu0=1 $ $x=7000 $y=5400 $w=400 $h=600
.ends



