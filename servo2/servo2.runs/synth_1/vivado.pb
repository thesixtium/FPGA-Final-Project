
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:112

00:00:302	
507.7072	
200.977Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {C:/Users/ajrbe/Documents/School/ENEL 453/servo2/servo2/servo2.srcs/utils_1/imports/synth_1/top_level.dcp}Z12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2j
hC:/Users/ajrbe/Documents/School/ENEL 453/servo2/servo2/servo2.srcs/utils_1/imports/synth_1/top_level.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�
Command: %s
53*	vivadotcl2{
ysynth_design -top top_level -part xc7a35tcpg236-1 -flatten_hierarchy none -directive RuntimeOptimized -fsm_extraction offZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
8368Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:16 . Memory (MB): peak = 1369.398 ; gain = 447.816
h px� 
�
synthesizing module '%s'%s4497*oasys2
	top_level2
 2@
<C:/Users/ajrbe/Documents/School/ENEL 453/servo2/top_level.sv2
88@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
fsm2
 2:
6C:/Users/ajrbe/Documents/School/ENEL 453/servo2/fsm.sv2
58@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fsm2
 2
02
12:
6C:/Users/ajrbe/Documents/School/ENEL 453/servo2/fsm.sv2
58@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pwm_measure2
 2B
>C:/Users/ajrbe/Documents/School/ENEL 453/servo2/pwm_measure.sv2
58@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2	
divider2
 2>
:C:/Users/ajrbe/Documents/School/ENEL 453/servo2/divider.sv2
78@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
divider2
 2
02
12>
:C:/Users/ajrbe/Documents/School/ENEL 453/servo2/divider.sv2
78@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
b2	
divider2
d2B
>C:/Users/ajrbe/Documents/School/ENEL 453/servo2/pwm_measure.sv2
218@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
d2	
divider2
62
52B
>C:/Users/ajrbe/Documents/School/ENEL 453/servo2/pwm_measure.sv2
218@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2

averager2
 2?
;C:/Users/ajrbe/Documents/School/ENEL 453/servo2/averager.sv2
58@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

averager2
 2
02
12?
;C:/Users/ajrbe/Documents/School/ENEL 453/servo2/averager.sv2
58@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pwm_measure2
 2
02
12B
>C:/Users/ajrbe/Documents/School/ENEL 453/servo2/pwm_measure.sv2
58@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
keyboardControl2
 2F
BC:/Users/ajrbe/Documents/School/ENEL 453/servo2/keyboardControl.sv2
58@Z8-6157h px� 
H
%s
*synth20
.	Parameter X_MAX bound to: 4 - type: integer 
h p
x
� 
H
%s
*synth20
.	Parameter Y_MAX bound to: 4 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2

receiver2
 2?
;C:/Users/ajrbe/Documents/School/ENEL 453/servo2/receiver.sv2
68@Z8-6157h px� 
�
default block is never used226*oasys2?
;C:/Users/ajrbe/Documents/School/ENEL 453/servo2/receiver.sv2
668@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

receiver2
 2
02
12?
;C:/Users/ajrbe/Documents/School/ENEL 453/servo2/receiver.sv2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

syncFIFO2
 2?
;C:/Users/ajrbe/Documents/School/ENEL 453/servo2/syncFIFO.sv2
98@Z8-6157h px� 
H
%s
*synth20
.	Parameter DEPTH bound to: 2 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter DWIDTH bound to: 8 - type: integer 
h p
x
� 
�
!system %s call '%s' not supported38048*oasys2
task2	
monitor2?
;C:/Users/ajrbe/Documents/School/ENEL 453/servo2/syncFIFO.sv2
448@Z8-11581h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

syncFIFO2
 2
02
12?
;C:/Users/ajrbe/Documents/School/ENEL 453/servo2/syncFIFO.sv2
98@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2F
BC:/Users/ajrbe/Documents/School/ENEL 453/servo2/keyboardControl.sv2
628@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
keyboardControl2
 2
02
12F
BC:/Users/ajrbe/Documents/School/ENEL 453/servo2/keyboardControl.sv2
58@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
analog2
 2=
9C:/Users/ajrbe/Documents/School/ENEL 453/servo2/analog.sv2
58@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

xadc_wiz_02
 2�
~C:/Users/ajrbe/Documents/School/ENEL 453/servo2/servo2/servo2.runs/synth_1/.Xil/Vivado-43328-hiccup/realtime/xadc_wiz_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

xadc_wiz_02
 2
02
12�
~C:/Users/ajrbe/Documents/School/ENEL 453/servo2/servo2/servo2.runs/synth_1/.Xil/Vivado-43328-hiccup/realtime/xadc_wiz_0_stub.v2
68@Z8-6155h px� 
�
5ignoring illegal expression in output port connection2900*oasys2=
9C:/Users/ajrbe/Documents/School/ENEL 453/servo2/analog.sv2
338@Z8-2900h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
analog2
 2
02
12=
9C:/Users/ajrbe/Documents/School/ENEL 453/servo2/analog.sv2
58@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
fsm_controller2
 2E
AC:/Users/ajrbe/Documents/School/ENEL 453/servo2/fsm_controller.sv2
58@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
clk_divider2
 2B
>C:/Users/ajrbe/Documents/School/ENEL 453/servo2/clk_divider.sv2
58@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_divider2
 2
02
12B
>C:/Users/ajrbe/Documents/School/ENEL 453/servo2/clk_divider.sv2
58@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

pwm_enable2
 2A
=C:/Users/ajrbe/Documents/School/ENEL 453/servo2/pwm_enable.sv2
58@Z8-6157h px� 
E
%s
*synth2-
+	Parameter N bound to: 24 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter CLK_CYCLES bound to: 140000000 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

pwm_enable2
 2
02
12A
=C:/Users/ajrbe/Documents/School/ENEL 453/servo2/pwm_enable.sv2
58@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82
data2
242

pwm_enable2E
AC:/Users/ajrbe/Documents/School/ENEL 453/servo2/fsm_controller.sv2
1108@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82
data2
242

pwm_enable2E
AC:/Users/ajrbe/Documents/School/ENEL 453/servo2/fsm_controller.sv2
1168@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
inverse_kinematics2
 2I
EC:/Users/ajrbe/Documents/School/ENEL 453/servo2/inverse_kinematics.sv2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
inverse_kinematics2
 2
02
12I
EC:/Users/ajrbe/Documents/School/ENEL 453/servo2/inverse_kinematics.sv2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pwm2
 2:
6C:/Users/ajrbe/Documents/School/ENEL 453/servo2/pwm.sv2
138@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pwm2
 2
02
12:
6C:/Users/ajrbe/Documents/School/ENEL 453/servo2/pwm.sv2
138@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
transmitter2
 2B
>C:/Users/ajrbe/Documents/School/ENEL 453/servo2/transmitter.sv2
68@Z8-6157h px� 
�
default block is never used226*oasys2B
>C:/Users/ajrbe/Documents/School/ENEL 453/servo2/transmitter.sv2
628@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
transmitter2
 2
02
12B
>C:/Users/ajrbe/Documents/School/ENEL 453/servo2/transmitter.sv2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
display2
 2>
:C:/Users/ajrbe/Documents/School/ENEL 453/servo2/display.sv2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
display2
 2
02
12>
:C:/Users/ajrbe/Documents/School/ENEL 453/servo2/display.sv2
68@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82
x2
42	
display2E
AC:/Users/ajrbe/Documents/School/ENEL 453/servo2/fsm_controller.sv2
1548@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82
y2
42	
display2E
AC:/Users/ajrbe/Documents/School/ENEL 453/servo2/fsm_controller.sv2
1558@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fsm_controller2
 2
02
12E
AC:/Users/ajrbe/Documents/School/ENEL 453/servo2/fsm_controller.sv2
58@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	top_level2
 2
02
12@
<C:/Users/ajrbe/Documents/School/ENEL 453/servo2/top_level.sv2
88@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

s_reg[0]2?
;C:/Users/ajrbe/Documents/School/ENEL 453/servo2/averager.sv2
338@Z8-6014h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2
EN2

averagerZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[14]2
	top_levelZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[13]2
	top_levelZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[12]2
	top_levelZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[11]2
	top_levelZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[10]2
	top_levelZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[9]2
	top_levelZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[8]2
	top_levelZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[7]2
	top_levelZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[6]2
	top_levelZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[5]2
	top_levelZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[4]2
	top_levelZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[3]2
	top_levelZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[2]2
	top_levelZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
switches_inputs[1]2
	top_levelZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:11 ; elapsed = 00:00:21 . Memory (MB): peak = 1485.363 ; gain = 563.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:22 . Memory (MB): peak = 1485.363 ; gain = 563.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:22 . Memory (MB): peak = 1485.363 ; gain = 563.781
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0912

1485.3632
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
~c:/Users/ajrbe/Documents/School/ENEL 453/servo2/servo2/servo2.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0/xadc_wiz_0_in_context.xdc2
a/XADC_INST	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
~c:/Users/ajrbe/Documents/School/ENEL 453/servo2/servo2/servo2.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0/xadc_wiz_0_in_context.xdc2
a/XADC_INST	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2C
?C:/Users/ajrbe/Documents/School/ENEL 453/servo2/constraints.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2C
?C:/Users/ajrbe/Documents/School/ENEL 453/servo2/constraints.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2A
?C:/Users/ajrbe/Documents/School/ENEL 453/servo2/constraints.xdc2
.Xil/top_level_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1585.5202
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0372

1585.5202
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:23 ; elapsed = 00:00:45 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:23 ; elapsed = 00:00:45 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:45 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:24 ; elapsed = 00:00:47 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   4 Input  257 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit       Adders := 2     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     24 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   2 Input      8 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	              257 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 13    
h p
x
� 
H
%s
*synth20
.	               24 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	               18 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 21    
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
U
%s
*synth2=
;	               16 Bit	(2 X 8 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   18 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input   16 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   4 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 28    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 2     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:00:56 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
g
%s*synth2O
M+------------+------------+-----------+----------------------+-------------+
h px� 
h
%s*synth2P
N|Module Name | RTL Object | Inference | Size (Depth x Width) | Primitives  | 
h px� 
g
%s*synth2O
M+------------+------------+-----------+----------------------+-------------+
h px� 
h
%s*synth2P
N|kbc/s       | fifo_reg   | Implied   | 2 x 8                | RAM32M x 2  | 
h px� 
h
%s*synth2P
N+------------+------------+-----------+----------------------+-------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:37 ; elapsed = 00:01:14 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
g
%s
*synth2O
M+------------+------------+-----------+----------------------+-------------+
h p
x
� 
h
%s
*synth2P
N|Module Name | RTL Object | Inference | Size (Depth x Width) | Primitives  | 
h p
x
� 
g
%s
*synth2O
M+------------+------------+-----------+----------------------+-------------+
h p
x
� 
h
%s
*synth2P
N|kbc/s       | fifo_reg   | Implied   | 2 x 8                | RAM32M x 2  | 
h p
x
� 
h
%s
*synth2P
N+------------+------------+-----------+----------------------+-------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:38 ; elapsed = 00:01:16 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:43 ; elapsed = 00:01:30 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:43 ; elapsed = 00:01:30 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:43 ; elapsed = 00:01:30 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2~
|+------------+----------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2
}|Module Name | RTL Name       | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2~
|+------------+----------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2
}|averager    | oldDin_reg[10] | 8      | 11    | YES          | NO                 | YES               | 11     | 0       | 
h p
x
� 
�
%s
*synth2
}+------------+----------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |xadc_wiz_0    |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |xadc_wiz |     1|
h px� 
4
%s*synth2
|2     |BUFG     |     1|
h px� 
4
%s*synth2
|3     |CARRY4   |   257|
h px� 
4
%s*synth2
|4     |LUT1     |    59|
h px� 
4
%s*synth2
|5     |LUT2     |   383|
h px� 
4
%s*synth2
|6     |LUT3     |    87|
h px� 
4
%s*synth2
|7     |LUT4     |    86|
h px� 
4
%s*synth2
|8     |LUT5     |    17|
h px� 
4
%s*synth2
|9     |LUT6     |   106|
h px� 
4
%s*synth2
|10    |RAM32M   |     1|
h px� 
4
%s*synth2
|11    |RAM32X1D |     2|
h px� 
4
%s*synth2
|12    |SRL16E   |    11|
h px� 
4
%s*synth2
|13    |FDRE     |   933|
h px� 
4
%s*synth2
|14    |FDSE     |    24|
h px� 
4
%s*synth2
|15    |IBUF     |     8|
h px� 
4
%s*synth2
|16    |OBUF     |    31|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:43 ; elapsed = 00:01:30 . Memory (MB): peak = 1585.520 ; gain = 663.938
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:28 ; elapsed = 00:01:23 . Memory (MB): peak = 1585.520 ; gain = 563.781
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:43 ; elapsed = 00:01:30 . Memory (MB): peak = 1585.520 ; gain = 663.938
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0642

1585.5202
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
260Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1585.5202
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 3 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 1 instance 
  RAM32X1D => RAM32X1D (RAMD32(x2)): 2 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

e8e0c802Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
592
252
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:532

00:01:482

1585.5202

1065.914Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0212

1585.5202
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2Z
XC:/Users/ajrbe/Documents/School/ENEL 453/servo2/servo2/servo2.runs/synth_1/top_level.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2]
[report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Dec  4 13:20:28 2024Z17-206h px� 


End Record