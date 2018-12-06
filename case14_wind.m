function mpc = case14_wind
%CASE14    Power flow data for IEEE 14 bus test case.
%   Please see CASEFORMAT for details on the case file format.
%   This data was converted from IEEE Common Data Format
%   (ieee14cdf.txt) on 15-Oct-2014 by cdf2matp, rev. 2393
%   See end of file for warnings generated during conversion.
%
%   Converted from IEEE CDF file from:
%       http://www.ee.washington.edu/research/pstca/
% 
%  08/19/93 UW ARCHIVE           100.0  1962 W IEEE 14 Bus Test Case

%   MATPOWER

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0       0       0	0	1	1.06	0       0	1	1.1	0.9;
	2	2	21.7	12.7	0	0	1	1.045	-4.98	0	1	1.1	0.9;
	3	2	94.2	19      0	0	1	1.01	-12.72	0	1	1.1	0.9;
	4	1	47.8	-3.9	0	0	1	1.019	-10.33	0	1	1.1	0.9;
	5	1	7.6     1.6     0	0	1	1.02	-8.78	0	1	1.1	0.9;
	6	2	11.2	7.5     0	0	1	1.07	-14.22	0	1	1.1	0.9;
	7	1	0       0       0   0	1	1.062	-13.37	0	1	1.1	0.9;
	8	2	0   	0   	0	0	1	1.09	-13.36	0	1	1.1	0.9;
	9	1	29.5	16.6	0	0	1	1.056	-14.94	0	1	1.1	0.9;
	10	1	9   	5.8 	0	0	1	1.051	-15.1	0	1	1.1	0.9;
	11	1	3.5 	1.8 	0	0	1	1.057	-14.79	0	1	1.1	0.9;
	12	1	6.1 	1.6 	0	0	1	1.055	-15.07	0	1	1.1	0.9;
	13	1	13.5	5.8     0	0	1	1.05	-15.16	0	1	1.1	0.9;
	14	1	14.9	5       0	0	1	1.036	-16.04	0	1	1.1	0.9;
];

mpc.bus(:,3) = 1*mpc.bus(:,3); 
mpc.bus(:,4) = 1*mpc.bus(:,4);

mpc.bus(:,12) = 1.06*ones(size(mpc.bus,1),1);
mpc.bus(:,13) = 0.94*ones(size(mpc.bus,1),1); 

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf

mpc.gen = [
	1	164.639    -9.24     990     -990   1.06	615    1	615	0	0	0	0	0	0	0	0	0	0	0	0;
	2	60          50       50      -40    1.045	60     1	60	0	0	0	0	0	0	0	0	0	0	0	0;
	3	46.769      30.99	 40      0   	1.01	60     1	60	0	0	0	0	0	0	0	0	0	0	0	0;
	6	0           17.8     24      -6  	1.02	25     1	25	0	0	0	0	0	0	0	0	0	0	0	0;
	8   0           16.69	 24      -6  	1.01	25     1	25	0	0	0	0	0	0	0	0	0	0	0	0;
];


%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.01938	0.05917	0.0528	0	0	0	0       0	1	-360	360;
	1	5	0.05403	0.22304	0.0492	0	0	0	0       0	1	-360	360;
	2	3	0.04699	0.19797	0.0438	0	0	0	0       0	1	-360	360;
	2	4	0.05811	0.17632	0.034	0	0	0	0       0	1	-360	360;
	2	5	0.05695	0.17388	0.0346	0	0	0	0       0	1	-360	360;
	3	4	0.06701	0.17103	0.0128	0	0	0	0       0	1	-360	360;
	4	5	0.01335	0.04211	0       0	0	0	0       0	1	-360	360;
	4	7	0       0.20912	0       0	0	0	0.978	0	1	-360	360;
	4	9	0       0.55618	0       0	0	0	0.969	0	1	-360	360;
	5	6	0       0.25202	0       0	0	0	0.932	0	1	-360	360;
	6	11	0.09498	0.1989	0       0	0	0	0       0	1	-360	360;
	6	12	0.12291	0.25581	0       0	0	0	0       0	1	-360	360;
	6	13	0.06615	0.13027	0       0	0	0	0       0	1	-360	360;
	7	8	0       0.17615	0       0	0	0	0       0	1	-360	360;
	7	9	0       0.11001	0       0	0	0	0       0	1	-360	360;
	9	10	0.03181	0.0845	0       0	0	0	0       0	1	-360	360;
	9	14	0.12711	0.27038	0       0	0	0	0       0	1	-360	360;
	10	11	0.08205	0.19207	0       0	0	0	0       0	1	-360	360;
	12	13	0.22092	0.19988	0       0	0	0	0       0	1	-360	360;
	13	14	0.17093	0.34802	0       0	0	0	0       0	1	-360	360;
];

mpc.branch(:,6) = 110*ones(size(mpc.branch,1),1); 

%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0	10	    0;
	2	0	0	3	0	12.5	0;
    2	0	0	3	0	15   	0;
	2	0	0	3	0	17.5	0;
	2	0	0	3	0	0	    0;
];

%% bus names
mpc.bus_name = {
	'Bus 1     HV';
	'Bus 2     HV';
	'Bus 3     HV';
	'Bus 4     HV';
	'Bus 5     HV';
	'Bus 6     LV';
	'Bus 7     ZV';
	'Bus 8     TV';
	'Bus 9     LV';
	'Bus 10    LV';
	'Bus 11    LV';
	'Bus 12    LV';
	'Bus 13    LV';
	'Bus 14    LV';
};