
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
C
.Phase 1 Build RT Design | Checksum: 19fad668d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:15 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 1000029 ; free virtual = 10221082default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
B
-Phase 2.1 Create Timer | Checksum: 19fad668d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:15 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 1000025 ; free virtual = 10221052default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 19fad668d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:15 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999996 ; free virtual = 10220762default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 19fad668d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:15 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999985 ; free virtual = 10220652default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.4 Update Timing | Checksum: 1ebb10f4a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:26 ; elapsed = 00:00:17 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999952 ; free virtual = 10220312default:defaulth px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=-11.614| TNS=-240.166| WHS=-0.138 | THS=-6.623 |
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 1db476a55
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:29 ; elapsed = 00:00:18 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999968 ; free virtual = 10220472default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px� 
D
/Phase 3.1 Global Routing | Checksum: 1db476a55
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:30 ; elapsed = 00:00:18 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999957 ; free virtual = 10220362default:defaulth px� 
C
.Phase 3 Initial Routing | Checksum: 16ff8625a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:36 ; elapsed = 00:00:20 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999962 ; free virtual = 10220412default:defaulth px� 
�
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
12default:default2�
�The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|              sys_clk_pin |       clk_out1_clk_wiz_0 |                                                                                            enemy_en_reg/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=-11.872| TNS=-243.195| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1d7a49a4b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:42 ; elapsed = 00:00:23 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999943 ; free virtual = 10220222default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=-11.832| TNS=-243.299| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 184d8850f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:43 ; elapsed = 00:00:24 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999925 ; free virtual = 10220042default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 184d8850f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:43 ; elapsed = 00:00:24 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999943 ; free virtual = 10220222default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 118269ddf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:44 ; elapsed = 00:00:24 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999929 ; free virtual = 10220092default:defaulth px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=-11.832| TNS=-243.299| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
B
-Phase 5.1 Delay CleanUp | Checksum: ecf5932a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:45 ; elapsed = 00:00:24 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999938 ; free virtual = 10220182default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
L
7Phase 5.2 Clock Skew Optimization | Checksum: ecf5932a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:45 ; elapsed = 00:00:24 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999941 ; free virtual = 10220202default:defaulth px� 
N
9Phase 5 Delay and Skew Optimization | Checksum: ecf5932a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:45 ; elapsed = 00:00:24 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999929 ; free virtual = 10220092default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 6.1.1 Update Timing | Checksum: a0525c26
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:46 ; elapsed = 00:00:25 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999931 ; free virtual = 10220112default:defaulth px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=-11.821| TNS=-243.238| WHS=0.046  | THS=0.000  |
2default:defaultZ35-416h px� 
B
-Phase 6.1 Hold Fix Iter | Checksum: ca6dbcc2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:46 ; elapsed = 00:00:25 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999940 ; free virtual = 10220202default:defaulth px� 
@
+Phase 6 Post Hold Fix | Checksum: ca6dbcc2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:46 ; elapsed = 00:00:25 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999941 ; free virtual = 10220202default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
A
,Phase 7 Route finalize | Checksum: d78f651d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:46 ; elapsed = 00:00:25 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999934 ; free virtual = 10220132default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
H
3Phase 8 Verifying routed nets | Checksum: d78f651d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:46 ; elapsed = 00:00:25 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999928 ; free virtual = 10220072default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
D
/Phase 9 Depositing Routes | Checksum: da45d14f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:47 ; elapsed = 00:00:26 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999927 ; free virtual = 10220062default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2K
7| WNS=-11.821| TNS=-243.238| WHS=0.046  | THS=0.000  |
2default:defaultZ35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
F
1Phase 10 Post Router Timing | Checksum: da45d14f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:47 ; elapsed = 00:00:26 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999931 ; free virtual = 10220112default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:47 ; elapsed = 00:00:26 . Memory (MB): peak = 3524.133 ; gain = 0.000 ; free physical = 999965 ; free virtual = 10220442default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2432default:default2
332default:default2
82default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:532default:default2
00:00:292default:default2
3524.1332default:default2
0.0002default:default2
9999632default:default2
10220432default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2
00:00:00.442default:default2
3524.1332default:default2
0.0002default:default2
9999572default:default2
10220482default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2g
S/home/menao/Project_Test/fpga/cs256_project.runs/impl_1/project_toplevel_routed.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_drc -file project_toplevel_drc_routed.rpt -pb project_toplevel_drc_routed.pb -rpx project_toplevel_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
xreport_drc -file project_toplevel_drc_routed.rpt -pb project_toplevel_drc_routed.pb -rpx project_toplevel_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
W/home/menao/Project_Test/fpga/cs256_project.runs/impl_1/project_toplevel_drc_routed.rptW/home/menao/Project_Test/fpga/cs256_project.runs/impl_1/project_toplevel_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file project_toplevel_methodology_drc_routed.rpt -pb project_toplevel_methodology_drc_routed.pb -rpx project_toplevel_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file project_toplevel_methodology_drc_routed.rpt -pb project_toplevel_methodology_drc_routed.pb -rpx project_toplevel_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
c/home/menao/Project_Test/fpga/cs256_project.runs/impl_1/project_toplevel_methodology_drc_routed.rptc/home/menao/Project_Test/fpga/cs256_project.runs/impl_1/project_toplevel_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_power -file project_toplevel_power_routed.rpt -pb project_toplevel_power_summary_routed.pb -rpx project_toplevel_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file project_toplevel_power_routed.rpt -pb project_toplevel_power_summary_routed.pb -rpx project_toplevel_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2552default:default2
332default:default2
82default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
%s4*runtcl2�
mExecuting : report_route_status -file project_toplevel_route_status.rpt -pb project_toplevel_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file project_toplevel_timing_summary_routed.rpt -pb project_toplevel_timing_summary_routed.pb -rpx project_toplevel_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px� 
�
%s4*runtcl2m
YExecuting : report_incremental_reuse -file project_toplevel_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
%s4*runtcl2m
YExecuting : report_clock_utilization -file project_toplevel_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file project_toplevel_bus_skew_routed.rpt -pb project_toplevel_bus_skew_routed.pb -rpx project_toplevel_bus_skew_routed.rpx
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 


End Record