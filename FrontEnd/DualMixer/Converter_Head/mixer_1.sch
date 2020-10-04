EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L power:GND #PWR?
U 1 1 5B3C2809
P 7075 3925
F 0 "#PWR?" H 7075 3675 50  0001 C CNN
F 1 "GND" H 7075 3775 50  0001 C CNN
F 2 "" H 7075 3925 50  0001 C CNN
F 3 "" H 7075 3925 50  0001 C CNN
	1    7075 3925
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7075 3800 7075 3875
Wire Wire Line
	7025 3800 7025 3875
Wire Wire Line
	6625 3875 6625 3800
Wire Wire Line
	6925 3875 6925 3800
Connection ~ 6925 3875
Wire Wire Line
	6825 3875 6825 3800
Connection ~ 6825 3875
Wire Wire Line
	6725 3875 6725 3800
Connection ~ 6725 3875
$Comp
L RF_Connectors:SMA_PCB J?
U 1 1 5B3C280A
P 8425 3400
F 0 "J?" H 8400 3550 60  0000 C CNN
F 1 "SMA_PCB" H 8425 3600 60  0001 C CNN
F 2 "Connectors_RF:PAD_T_200x110um" H 8425 3400 60  0001 C CNN
F 3 "" H 8425 3400 60  0001 C CNN
	1    8425 3400
	-1   0    0    -1  
$EndComp
$Comp
L passives:CAP_0402 C?
U 1 1 5B3C280C
P 8075 3950
F 0 "C?" H 7975 4000 25  0000 C CNN
F 1 "22pF" H 8075 4050 25  0000 C CNN
F 2 "SM0402" H 8075 4050 60  0001 C CNN
F 3 "" H 8075 3950 60  0000 C CNN
	1    8075 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7825 3950 7900 3950
Wire Wire Line
	7825 3500 7825 3950
Wire Wire Line
	7825 3500 7225 3500
Wire Wire Line
	8250 3950 8175 3950
$Comp
L power:GND #PWR?
U 1 1 5B3C280D
P 8575 3550
F 0 "#PWR?" H 8575 3300 50  0001 C CNN
F 1 "GND" H 8575 3400 50  0001 C CNN
F 2 "" H 8575 3550 50  0001 C CNN
F 3 "" H 8575 3550 50  0001 C CNN
	1    8575 3550
	0    -1   1    0   
$EndComp
Wire Wire Line
	8575 3550 8500 3550
Wire Wire Line
	8500 3550 8500 3475
Wire Wire Line
	7075 3875 7025 3875
Connection ~ 7075 3875
Connection ~ 7025 3875
$Comp
L passives:IND_0603 L?
U 1 1 5B3C2830
P 6875 3050
F 0 "L?" H 6975 3100 25  0000 C CNN
F 1 "IND_0603" H 6825 3100 25  0000 C CNN
F 2 "SM0603" H 6875 3050 60  0001 C CNN
F 3 "" H 6875 3050 60  0000 C CNN
	1    6875 3050
	0    1    -1   0   
$EndComp
Wire Wire Line
	6875 3150 6875 3200
$Comp
L passives:IND_0603 L?
U 1 1 5A02D2F6
P 6775 3050
F 0 "L?" H 6875 3100 25  0000 C CNN
F 1 "IND_0603" H 6725 3100 25  0000 C CNN
F 2 "SM0603" H 6775 3050 60  0001 C CNN
F 3 "" H 6775 3050 60  0000 C CNN
	1    6775 3050
	0    1    -1   0   
$EndComp
$Comp
L passives:IND_0603 L?
U 1 1 5B3C2832
P 6675 3050
F 0 "L?" H 6775 3100 25  0000 C CNN
F 1 "IND_0603" H 6625 3100 25  0000 C CNN
F 2 "SM0603" H 6675 3050 60  0001 C CNN
F 3 "" H 6675 3050 60  0000 C CNN
	1    6675 3050
	0    1    -1   0   
$EndComp
Wire Wire Line
	6775 3150 6775 3250
Wire Wire Line
	6675 3150 6675 3250
$Comp
L passives:CAP_0402 C?
U 1 1 5B3C2811
P 7125 2900
F 0 "C?" H 7125 2800 25  0000 C CNN
F 1 "47pF" H 7125 2975 25  0000 C CNN
F 2 "SM0402" H 7125 3000 60  0001 C CNN
F 3 "" H 7125 2900 60  0000 C CNN
	1    7125 2900
	-1   0    0    -1  
$EndComp
$Comp
L passives:CAP_0402 C?
U 1 1 5B3C2812
P 7125 3200
F 0 "C?" H 7125 3100 25  0000 C CNN
F 1 "22pF" H 7125 3275 25  0000 C CNN
F 2 "SM0402" H 7125 3300 60  0001 C CNN
F 3 "" H 7125 3200 60  0000 C CNN
	1    7125 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7025 2900 7000 2900
Wire Wire Line
	7025 3200 6875 3200
Connection ~ 6875 3200
$Comp
L power:GND #PWR?
U 1 1 5B3C2813
P 7275 3250
F 0 "#PWR?" H 7275 3000 50  0001 C CNN
F 1 "GND" H 7275 3100 50  0001 C CNN
F 2 "" H 7275 3250 50  0001 C CNN
F 3 "" H 7275 3250 50  0001 C CNN
	1    7275 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7225 2900 7275 2900
Wire Wire Line
	7275 2675 7275 2900
Wire Wire Line
	7225 3200 7275 3200
Connection ~ 7275 3200
Connection ~ 7000 2900
Wire Wire Line
	7025 2675 7000 2675
Wire Wire Line
	7225 2675 7275 2675
Connection ~ 7275 2900
$Comp
L passives:CAP_0402 C?
U 1 1 5A1BAA32
P 7900 4125
F 0 "C?" H 7900 4025 25  0000 C CNN
F 1 "0.15pF" H 7900 4200 25  0000 C CNN
F 2 "SM0402" H 7900 4225 60  0001 C CNN
F 3 "" H 7900 4125 60  0000 C CNN
	1    7900 4125
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B3C2816
P 7900 4300
F 0 "#PWR?" H 7900 4050 50  0001 C CNN
F 1 "GND" H 7900 4150 50  0001 C CNN
F 2 "" H 7900 4300 50  0001 C CNN
F 3 "" H 7900 4300 50  0001 C CNN
	1    7900 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7900 4225 7900 4300
Wire Wire Line
	7900 4025 7900 3950
Connection ~ 7900 3950
$Comp
L passives:CAP_0402 C?
U 1 1 5A02D301
P 7675 3150
F 0 "C?" H 7675 3050 25  0000 C CNN
F 1 "0.15pF" H 7675 3225 25  0000 C CNN
F 2 "SM0402" H 7675 3250 60  0001 C CNN
F 3 "" H 7675 3150 60  0000 C CNN
	1    7675 3150
	0    -1   1    0   
$EndComp
Wire Wire Line
	7675 3250 7675 3400
Connection ~ 7675 3400
$Comp
L power:GND #PWR?
U 1 1 5B3C2818
P 7675 2950
F 0 "#PWR?" H 7675 2700 50  0001 C CNN
F 1 "GND" H 7675 2800 50  0001 C CNN
F 2 "" H 7675 2950 50  0001 C CNN
F 3 "" H 7675 2950 50  0001 C CNN
	1    7675 2950
	1    0    0    1   
$EndComp
Wire Wire Line
	7675 2950 7675 3050
Text HLabel 8250 3950 2    25   Input ~ 0
LO_IN
Wire Wire Line
	7000 2450 7000 2675
Text HLabel 6675 2550 1    25   Input ~ 0
X2
Text HLabel 6775 2550 1    25   Input ~ 0
EN
Wire Wire Line
	6775 2550 6775 2950
Wire Wire Line
	6675 2550 6675 2950
Connection ~ 7000 2675
Wire Wire Line
	6875 2900 6875 2950
Text Label 7000 3200 2    25   ~ 0
mx_d_3v3
Wire Wire Line
	6925 3875 6825 3875
Wire Wire Line
	6825 3875 6725 3875
Wire Wire Line
	6725 3875 6625 3875
Wire Wire Line
	7075 3875 7075 3925
Wire Wire Line
	7025 3875 6925 3875
Wire Wire Line
	6875 3200 6875 3250
Wire Wire Line
	7275 3200 7275 3250
Wire Wire Line
	7000 2900 6875 2900
Wire Wire Line
	7275 2900 7275 3200
Wire Wire Line
	7900 3950 7975 3950
Wire Wire Line
	7675 3400 7225 3400
Wire Wire Line
	7000 2675 7000 2900
$Comp
L power:+3.3VA #PWR?
U 1 1 5C6148D0
P 7000 2450
F 0 "#PWR?" H 7000 2300 50  0001 C CNN
F 1 "+3.3VA" H 7050 2650 50  0000 C CNN
F 2 "" H 7000 2450 50  0001 C CNN
F 3 "" H 7000 2450 50  0001 C CNN
	1    7000 2450
	1    0    0    -1  
$EndComp
Text Label 8050 3400 0    25   ~ 0
R1_0
Text Label 7425 3400 0    25   ~ 0
R1_1
Text Label 7475 3500 0    25   ~ 0
L1_1
Wire Wire Line
	8275 3400 7975 3400
Wire Wire Line
	7775 3400 7675 3400
$Comp
L passives:CAP_0402 C?
U 1 1 5B3C282E
P 7875 3400
F 0 "C?" H 7775 3450 25  0000 C CNN
F 1 "22pF" H 7875 3500 25  0000 C CNN
F 2 "SM0402" H 7875 3500 60  0001 C CNN
F 3 "" H 7875 3400 60  0000 C CNN
	1    7875 3400
	-1   0    0    -1  
$EndComp
Text Notes 7850 3725 0    50   ~ 0
LO: 50R / 3.55mm
Text Notes 7400 2600 0    50   ~ 0
RF: 50R / 1.4mm
Wire Notes Line
	7475 3350 7475 2650
$Comp
L ltc5548:LTC5549 U?
U 1 1 5F7A86DC
P 6825 3400
F 0 "U?" H 6375 3150 60  0000 L CNN
F 1 "LTC5549" H 6725 2825 60  0000 L CNN
F 2 "QFN:QFN12_2x3mm_UDB_LT" H 6825 3400 60  0001 C CNN
F 3 "" H 6825 3400 60  0001 C CNN
	1    6825 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6575 3800 6575 3875
Wire Wire Line
	6575 3875 6625 3875
Connection ~ 6625 3875
$Comp
L passives:CAP_0402 C?
U 1 1 5F7AB513
P 6175 3400
F 0 "C?" H 6075 3450 25  0000 C CNN
F 1 "30pF" H 6250 3500 25  0000 C CNN
F 2 "SM0402" H 6175 3500 60  0001 C CNN
F 3 "" H 6175 3400 60  0000 C CNN
	1    6175 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6275 3400 6425 3400
$Comp
L minic_bfcw:BFCW F?
U 1 1 5F7AC9E3
P 5600 3400
F 0 "F?" H 5600 3650 39  0000 C CNN
F 1 "BFCW-542+" H 5600 3550 39  0000 C CNN
F 2 "" H 5600 3400 50  0001 C CNN
F 3 "" H 5600 3400 50  0001 C CNN
	1    5600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3400 6075 3400
$Comp
L power:GND #PWR?
U 1 1 5F7ADF38
P 5500 3700
F 0 "#PWR?" H 5500 3450 50  0001 C CNN
F 1 "GND" H 5500 3550 50  0001 C CNN
F 2 "" H 5500 3700 50  0001 C CNN
F 3 "" H 5500 3700 50  0001 C CNN
	1    5500 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 3600 5500 3650
Wire Wire Line
	5700 3600 5700 3650
Wire Wire Line
	5700 3650 5500 3650
Connection ~ 5500 3650
Wire Wire Line
	5500 3650 5500 3700
$Comp
L RF_Connectors:SMA_PCB J?
U 1 1 5F7B1843
P 4475 3400
F 0 "J?" H 4450 3550 60  0000 C CNN
F 1 "SMA_PCB" H 4475 3600 60  0001 C CNN
F 2 "Connectors_RF:PAD_T_200x110um" H 4475 3400 60  0001 C CNN
F 3 "" H 4475 3400 60  0001 C CNN
	1    4475 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3400 5150 3400
$Comp
L power:GND #PWR?
U 1 1 5F7B3211
P 4400 3600
F 0 "#PWR?" H 4400 3350 50  0001 C CNN
F 1 "GND" H 4400 3450 50  0001 C CNN
F 2 "" H 4400 3600 50  0001 C CNN
F 3 "" H 4400 3600 50  0001 C CNN
	1    4400 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 3475 4400 3600
$Comp
L passives:CAP_0603 C?
U 1 1 5F7B6AFE
P 7125 2675
F 0 "C?" H 7125 2600 25  0000 C CNN
F 1 "1uF" H 7125 2750 25  0000 C CNN
F 2 "SM0603" H 7125 2775 60  0001 C CNN
F 3 "" H 7125 2675 60  0000 C CNN
	1    7125 2675
	1    0    0    -1  
$EndComp
$Comp
L passives:CAP_0402 C?
U 1 1 5F7C11DF
P 5050 3400
F 0 "C?" H 4950 3450 25  0000 C CNN
F 1 "30pF" H 5125 3500 25  0000 C CNN
F 2 "SM0402" H 5050 3500 60  0001 C CNN
F 3 "" H 5050 3400 60  0000 C CNN
	1    5050 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4625 3400 4950 3400
$EndSCHEMATC
