EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Digital 10 GHz Super Keyer"
Date "2020-10-04"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0167
U 1 1 5F7D9BF6
P 7250 4250
F 0 "#PWR0167" H 7250 4000 50  0001 C CNN
F 1 "GND" H 7250 4100 50  0001 C CNN
F 2 "" H 7250 4250 50  0001 C CNN
F 3 "" H 7250 4250 50  0001 C CNN
	1    7250 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 4125 7250 4200
Wire Wire Line
	7200 4125 7200 4200
Wire Wire Line
	6800 4200 6800 4125
Wire Wire Line
	7100 4200 7100 4125
Connection ~ 7100 4200
Wire Wire Line
	7000 4200 7000 4125
Connection ~ 7000 4200
Wire Wire Line
	6900 4200 6900 4125
Connection ~ 6900 4200
$Comp
L RF_Connectors:SMA_PCB J302
U 1 1 5F7D9C05
P 8600 3725
F 0 "J302" H 8575 3875 60  0000 C CNN
F 1 "SMA_PCB" H 8600 3925 60  0001 C CNN
F 2 "Connectors_RF:PAD_T_200x110um" H 8600 3725 60  0001 C CNN
F 3 "" H 8600 3725 60  0001 C CNN
	1    8600 3725
	-1   0    0    -1  
$EndComp
$Comp
L passives:CAP_0402 C309
U 1 1 5F7D9C0B
P 8250 4275
F 0 "C309" H 8150 4325 25  0000 C CNN
F 1 "22pF" H 8250 4375 25  0000 C CNN
F 2 "SM0402" H 8250 4375 60  0001 C CNN
F 3 "" H 8250 4275 60  0000 C CNN
	1    8250 4275
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 4275 8075 4275
Wire Wire Line
	8000 3825 8000 4275
Wire Wire Line
	8000 3825 7400 3825
Wire Wire Line
	8425 4275 8350 4275
$Comp
L power:GND #PWR0168
U 1 1 5F7D9C15
P 8750 3875
F 0 "#PWR0168" H 8750 3625 50  0001 C CNN
F 1 "GND" H 8750 3725 50  0001 C CNN
F 2 "" H 8750 3875 50  0001 C CNN
F 3 "" H 8750 3875 50  0001 C CNN
	1    8750 3875
	0    -1   1    0   
$EndComp
Wire Wire Line
	8750 3875 8675 3875
Wire Wire Line
	8675 3875 8675 3800
Wire Wire Line
	7250 4200 7200 4200
Connection ~ 7250 4200
Connection ~ 7200 4200
$Comp
L passives:IND_0603 L303
U 1 1 5F7D9C20
P 7050 3375
F 0 "L303" H 7150 3425 25  0000 C CNN
F 1 "IND_0603" H 7000 3425 25  0000 C CNN
F 2 "SM0603" H 7050 3375 60  0001 C CNN
F 3 "" H 7050 3375 60  0000 C CNN
	1    7050 3375
	0    1    -1   0   
$EndComp
Wire Wire Line
	7050 3475 7050 3525
$Comp
L passives:IND_0603 L302
U 1 1 5F7D9C27
P 6950 3375
F 0 "L302" H 7050 3425 25  0000 C CNN
F 1 "IND_0603" H 6900 3425 25  0000 C CNN
F 2 "SM0603" H 6950 3375 60  0001 C CNN
F 3 "" H 6950 3375 60  0000 C CNN
	1    6950 3375
	0    1    -1   0   
$EndComp
$Comp
L passives:IND_0603 L301
U 1 1 5F7D9C2D
P 6850 3375
F 0 "L301" H 6950 3425 25  0000 C CNN
F 1 "IND_0603" H 6800 3425 25  0000 C CNN
F 2 "SM0603" H 6850 3375 60  0001 C CNN
F 3 "" H 6850 3375 60  0000 C CNN
	1    6850 3375
	0    1    -1   0   
$EndComp
Wire Wire Line
	6950 3475 6950 3575
Wire Wire Line
	6850 3475 6850 3575
$Comp
L passives:CAP_0402 C304
U 1 1 5F7D9C35
P 7300 3225
F 0 "C304" H 7300 3125 25  0000 C CNN
F 1 "47pF" H 7300 3300 25  0000 C CNN
F 2 "SM0402" H 7300 3325 60  0001 C CNN
F 3 "" H 7300 3225 60  0000 C CNN
	1    7300 3225
	-1   0    0    -1  
$EndComp
$Comp
L passives:CAP_0402 C305
U 1 1 5F7D9C3B
P 7300 3525
F 0 "C305" H 7300 3425 25  0000 C CNN
F 1 "22pF" H 7300 3600 25  0000 C CNN
F 2 "SM0402" H 7300 3625 60  0001 C CNN
F 3 "" H 7300 3525 60  0000 C CNN
	1    7300 3525
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 3225 7175 3225
Wire Wire Line
	7200 3525 7050 3525
Connection ~ 7050 3525
$Comp
L power:GND #PWR0169
U 1 1 5F7D9C44
P 7450 3575
F 0 "#PWR0169" H 7450 3325 50  0001 C CNN
F 1 "GND" H 7450 3425 50  0001 C CNN
F 2 "" H 7450 3575 50  0001 C CNN
F 3 "" H 7450 3575 50  0001 C CNN
	1    7450 3575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 3225 7450 3225
Wire Wire Line
	7450 3000 7450 3225
Wire Wire Line
	7400 3525 7450 3525
Connection ~ 7450 3525
Connection ~ 7175 3225
Wire Wire Line
	7200 3000 7175 3000
Wire Wire Line
	7400 3000 7450 3000
Connection ~ 7450 3225
$Comp
L passives:CAP_0402 C308
U 1 1 5F7D9C52
P 8075 4450
F 0 "C308" H 8075 4350 25  0000 C CNN
F 1 "0.15pF" H 8075 4525 25  0000 C CNN
F 2 "SM0402" H 8075 4550 60  0001 C CNN
F 3 "" H 8075 4450 60  0000 C CNN
	1    8075 4450
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0170
U 1 1 5F7D9C58
P 8075 4625
F 0 "#PWR0170" H 8075 4375 50  0001 C CNN
F 1 "GND" H 8075 4475 50  0001 C CNN
F 2 "" H 8075 4625 50  0001 C CNN
F 3 "" H 8075 4625 50  0001 C CNN
	1    8075 4625
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8075 4550 8075 4625
Wire Wire Line
	8075 4350 8075 4275
Connection ~ 8075 4275
$Comp
L passives:CAP_0402 C306
U 1 1 5F7D9C61
P 7850 3475
F 0 "C306" H 7850 3375 25  0000 C CNN
F 1 "0.15pF" H 7850 3550 25  0000 C CNN
F 2 "SM0402" H 7850 3575 60  0001 C CNN
F 3 "" H 7850 3475 60  0000 C CNN
	1    7850 3475
	0    -1   1    0   
$EndComp
Wire Wire Line
	7850 3575 7850 3725
Connection ~ 7850 3725
$Comp
L power:GND #PWR0171
U 1 1 5F7D9C69
P 7850 3275
F 0 "#PWR0171" H 7850 3025 50  0001 C CNN
F 1 "GND" H 7850 3125 50  0001 C CNN
F 2 "" H 7850 3275 50  0001 C CNN
F 3 "" H 7850 3275 50  0001 C CNN
	1    7850 3275
	1    0    0    1   
$EndComp
Wire Wire Line
	7850 3275 7850 3375
Text HLabel 8425 4275 2    25   Input ~ 0
LO_IN
Wire Wire Line
	7175 2775 7175 3000
Text HLabel 6850 2875 1    25   Input ~ 0
X2
Text HLabel 6950 2875 1    25   Input ~ 0
EN
Wire Wire Line
	6950 2875 6950 3275
Wire Wire Line
	6850 2875 6850 3275
Connection ~ 7175 3000
Wire Wire Line
	7050 3225 7050 3275
Text Label 7175 3525 2    25   ~ 0
mx_d_3v3
Wire Wire Line
	7100 4200 7000 4200
Wire Wire Line
	7000 4200 6900 4200
Wire Wire Line
	6900 4200 6800 4200
Wire Wire Line
	7250 4200 7250 4250
Wire Wire Line
	7200 4200 7100 4200
Wire Wire Line
	7050 3525 7050 3575
Wire Wire Line
	7450 3525 7450 3575
Wire Wire Line
	7175 3225 7050 3225
Wire Wire Line
	7450 3225 7450 3525
Wire Wire Line
	8075 4275 8150 4275
Wire Wire Line
	7850 3725 7400 3725
Wire Wire Line
	7175 3000 7175 3225
Text Label 8225 3725 0    25   ~ 0
R1_0
Text Label 7600 3725 0    25   ~ 0
R1_1
Text Label 7650 3825 0    25   ~ 0
L1_1
Wire Wire Line
	8450 3725 8150 3725
Wire Wire Line
	7950 3725 7850 3725
$Comp
L passives:CAP_0402 C307
U 1 1 5F7D9C90
P 8050 3725
F 0 "C307" H 7950 3775 25  0000 C CNN
F 1 "22pF" H 8050 3825 25  0000 C CNN
F 2 "SM0402" H 8050 3825 60  0001 C CNN
F 3 "" H 8050 3725 60  0000 C CNN
	1    8050 3725
	-1   0    0    -1  
$EndComp
Text Notes 8025 4050 0    50   ~ 0
LO: 50R / 3.55mm
Text Notes 7575 2925 0    50   ~ 0
RF: 50R / 1.4mm
Wire Notes Line
	7650 3675 7650 2975
$Comp
L ltc5548:LTC5549 U301
U 1 1 5F7D9C99
P 7000 3725
F 0 "U301" H 6550 3475 60  0000 L CNN
F 1 "LTC5549" H 6900 3150 60  0000 L CNN
F 2 "QFN:QFN12_2x3mm_UDB_LT" H 7000 3725 60  0001 C CNN
F 3 "" H 7000 3725 60  0001 C CNN
	1    7000 3725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 4125 6750 4200
Wire Wire Line
	6750 4200 6800 4200
Connection ~ 6800 4200
$Comp
L passives:CAP_0402 C302
U 1 1 5F7D9CA2
P 6350 3725
F 0 "C302" H 6250 3775 25  0000 C CNN
F 1 "30pF" H 6425 3825 25  0000 C CNN
F 2 "SM0402" H 6350 3825 60  0001 C CNN
F 3 "" H 6350 3725 60  0000 C CNN
	1    6350 3725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 3725 6600 3725
$Comp
L minic_bfcw:BFCW F301
U 1 1 5F7D9CA9
P 5775 3725
F 0 "F301" H 5775 3975 39  0000 C CNN
F 1 "BFCW-542+" H 5775 3875 39  0000 C CNN
F 2 "" H 5775 3725 50  0001 C CNN
F 3 "" H 5775 3725 50  0001 C CNN
	1    5775 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	6075 3725 6250 3725
$Comp
L power:GND #PWR0172
U 1 1 5F7D9CB0
P 5675 4025
F 0 "#PWR0172" H 5675 3775 50  0001 C CNN
F 1 "GND" H 5675 3875 50  0001 C CNN
F 2 "" H 5675 4025 50  0001 C CNN
F 3 "" H 5675 4025 50  0001 C CNN
	1    5675 4025
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5675 3925 5675 3975
Wire Wire Line
	5875 3925 5875 3975
Wire Wire Line
	5875 3975 5675 3975
Connection ~ 5675 3975
Wire Wire Line
	5675 3975 5675 4025
$Comp
L RF_Connectors:SMA_PCB J301
U 1 1 5F7D9CBB
P 4650 3725
F 0 "J301" H 4625 3875 60  0000 C CNN
F 1 "SMA_PCB" H 4650 3925 60  0001 C CNN
F 2 "Connectors_RF:PAD_T_200x110um" H 4650 3725 60  0001 C CNN
F 3 "" H 4650 3725 60  0001 C CNN
	1    4650 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 3725 5325 3725
$Comp
L power:GND #PWR0173
U 1 1 5F7D9CC2
P 4575 3925
F 0 "#PWR0173" H 4575 3675 50  0001 C CNN
F 1 "GND" H 4575 3775 50  0001 C CNN
F 2 "" H 4575 3925 50  0001 C CNN
F 3 "" H 4575 3925 50  0001 C CNN
	1    4575 3925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4575 3800 4575 3925
$Comp
L passives:CAP_0603 C303
U 1 1 5F7D9CC9
P 7300 3000
F 0 "C303" H 7300 2925 25  0000 C CNN
F 1 "1uF" H 7300 3075 25  0000 C CNN
F 2 "SM0603" H 7300 3100 60  0001 C CNN
F 3 "" H 7300 3000 60  0000 C CNN
	1    7300 3000
	1    0    0    -1  
$EndComp
$Comp
L passives:CAP_0402 C301
U 1 1 5F7D9CCF
P 5225 3725
F 0 "C301" H 5125 3775 25  0000 C CNN
F 1 "30pF" H 5300 3825 25  0000 C CNN
F 2 "SM0402" H 5225 3825 60  0001 C CNN
F 3 "" H 5225 3725 60  0000 C CNN
	1    5225 3725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 3725 5125 3725
$Comp
L power_symbols:+3.3VM2 #PWR0174
U 1 1 5FA04537
P 7175 2775
F 0 "#PWR0174" H 7175 2735 30  0001 C CNN
F 1 "+3.3VM2" H 7200 2925 30  0000 C CNN
F 2 "" H 7175 2775 60  0000 C CNN
F 3 "" H 7175 2775 60  0000 C CNN
	1    7175 2775
	1    0    0    -1  
$EndComp
$EndSCHEMATC
