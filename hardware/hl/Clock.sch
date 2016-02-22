EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:hermeslite
LIBS:hermeslite-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 6
Title "Clock"
Date "2016-02-14"
Rev "2.0-pre1"
Comp "SofterHardware"
Comment1 "KF7O Steve Haynal"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 5P49V5923 U5
U 1 1 56B0541A
P 5400 5350
F 0 "U5" H 5400 7300 60  0000 C CNN
F 1 "5P49V5923" H 5400 5300 60  0000 C CNN
F 2 "" H 5400 5350 60  0000 C CNN
F 3 "" H 5400 5350 60  0000 C CNN
	1    5400 5350
	1    0    0    -1  
$EndComp
NoConn ~ 4500 4750
NoConn ~ 4500 4850
NoConn ~ 4500 4950
NoConn ~ 4500 5050
NoConn ~ 4500 5150
NoConn ~ 4500 5250
NoConn ~ 4500 4150
NoConn ~ 4500 4250
$Comp
L TEST_1P TP1
U 1 1 56B054D0
P 6800 4650
F 0 "TP1" V 6800 4900 39  0000 C CNN
F 1 "TEST_1P" V 6750 5000 39  0001 C CNN
F 2 "" H 7000 4650 50  0000 C CNN
F 3 "" H 7000 4650 50  0000 C CNN
	1    6800 4650
	0    1    1    0   
$EndComp
$Comp
L C_Small C66
U 1 1 56B05549
P 6450 3700
F 0 "C66" H 6460 3770 39  0000 L CNN
F 1 "0.1uF" H 6460 3620 39  0000 L CNN
F 2 "" H 6450 3700 50  0000 C CNN
F 3 "" H 6450 3700 50  0000 C CNN
	1    6450 3700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C68
U 1 1 56B0557E
P 6650 3700
F 0 "C68" H 6660 3770 39  0000 L CNN
F 1 "0.1uF" H 6660 3620 39  0000 L CNN
F 2 "" H 6650 3700 50  0000 C CNN
F 3 "" H 6650 3700 50  0000 C CNN
	1    6650 3700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C70
U 1 1 56B0559B
P 6850 3700
F 0 "C70" H 6860 3770 39  0000 L CNN
F 1 "0.1uF" H 6860 3620 39  0000 L CNN
F 2 "" H 6850 3700 50  0000 C CNN
F 3 "" H 6850 3700 50  0000 C CNN
	1    6850 3700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C72
U 1 1 56B055BA
P 7050 3700
F 0 "C72" H 7060 3770 39  0000 L CNN
F 1 "0.1uF" H 7060 3620 39  0000 L CNN
F 2 "" H 7050 3700 50  0000 C CNN
F 3 "" H 7050 3700 50  0000 C CNN
	1    7050 3700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C73
U 1 1 56B0563D
P 7250 3700
F 0 "C73" H 7260 3770 39  0000 L CNN
F 1 "10uF" H 7260 3620 39  0000 L CNN
F 2 "" H 7250 3700 50  0000 C CNN
F 3 "" H 7250 3700 50  0000 C CNN
	1    7250 3700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C67
U 1 1 56B05A9B
P 6450 4300
F 0 "C67" H 6460 4370 39  0000 L CNN
F 1 "0.1uF" H 6460 4220 39  0000 L CNN
F 2 "" H 6450 4300 50  0000 C CNN
F 3 "" H 6450 4300 50  0000 C CNN
	1    6450 4300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C69
U 1 1 56B05AC8
P 6650 4300
F 0 "C69" H 6660 4370 39  0000 L CNN
F 1 "0.1uF" H 6660 4220 39  0000 L CNN
F 2 "" H 6650 4300 50  0000 C CNN
F 3 "" H 6650 4300 50  0000 C CNN
	1    6650 4300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C71
U 1 1 56B05AEF
P 6850 4300
F 0 "C71" H 6860 4370 39  0000 L CNN
F 1 "1uF" H 6860 4220 39  0000 L CNN
F 2 "" H 6850 4300 50  0000 C CNN
F 3 "" H 6850 4300 50  0000 C CNN
	1    6850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3550 6300 3850
Connection ~ 6300 3750
Connection ~ 6300 3650
Wire Wire Line
	7250 3550 7250 3600
Connection ~ 7250 3550
Wire Wire Line
	7050 3550 7050 3600
Connection ~ 7050 3550
Wire Wire Line
	6850 3550 6850 3600
Connection ~ 6850 3550
Wire Wire Line
	6650 3550 6650 3600
Connection ~ 6650 3550
Wire Wire Line
	6450 3550 6450 3600
Connection ~ 6450 3550
Wire Wire Line
	6300 4150 6300 4350
Connection ~ 6300 4250
Wire Wire Line
	6450 4200 6450 4150
Connection ~ 6450 4150
Wire Wire Line
	6650 4200 6650 4150
Connection ~ 6650 4150
Wire Wire Line
	6850 4200 6850 4150
Connection ~ 6850 4150
Connection ~ 6300 3550
Connection ~ 6300 4150
$Comp
L GND #PWR41
U 1 1 56B05C80
P 6850 3850
F 0 "#PWR41" H 6850 3600 39  0001 C CNN
F 1 "GND" H 6850 3700 39  0001 C CNN
F 2 "" H 6850 3850 50  0000 C CNN
F 3 "" H 6850 3850 50  0000 C CNN
	1    6850 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR40
U 1 1 56B05CD0
P 6650 4450
F 0 "#PWR40" H 6650 4200 39  0001 C CNN
F 1 "GND" H 6650 4300 39  0001 C CNN
F 2 "" H 6650 4450 50  0000 C CNN
F 3 "" H 6650 4450 50  0000 C CNN
	1    6650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3800 6450 3850
Wire Wire Line
	6450 3850 7250 3850
Wire Wire Line
	7250 3850 7250 3800
Connection ~ 6850 3850
Wire Wire Line
	7050 3800 7050 3850
Connection ~ 7050 3850
Wire Wire Line
	6650 3800 6650 3850
Connection ~ 6650 3850
Wire Wire Line
	6450 4400 6450 4450
Wire Wire Line
	6450 4450 6850 4450
Wire Wire Line
	6850 4450 6850 4400
Connection ~ 6650 4450
Wire Wire Line
	6650 4400 6650 4450
$Comp
L R R25
U 1 1 56B06059
P 6550 4850
F 0 "R25" V 6630 4850 39  0000 C CNN
F 1 "33" V 6550 4850 39  0000 C CNN
F 2 "" V 6480 4850 50  0000 C CNN
F 3 "" H 6550 4850 50  0000 C CNN
	1    6550 4850
	0    1    1    0   
$EndComp
$Comp
L R R26
U 1 1 56B06092
P 6550 5050
F 0 "R26" V 6630 5050 39  0000 C CNN
F 1 "33" V 6550 5050 39  0000 C CNN
F 2 "" V 6480 5050 50  0000 C CNN
F 3 "" H 6550 5050 50  0000 C CNN
	1    6550 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 4850 6400 4850
Wire Wire Line
	6300 5050 6400 5050
Wire Wire Line
	6700 4850 7650 4850
Wire Wire Line
	6700 5050 8500 5050
$Comp
L FB FB11
U 1 1 56B06270
P 7500 3550
F 0 "FB11" H 7575 3500 39  0000 C CNN
F 1 "FB" H 7500 3650 60  0001 C CNN
F 2 "" H 7500 3550 60  0000 C CNN
F 3 "" H 7500 3550 60  0000 C CNN
	1    7500 3550
	1    0    0    -1  
$EndComp
$Comp
L FB FB12
U 1 1 56B062DD
P 7500 4150
F 0 "FB12" H 7575 4100 39  0000 C CNN
F 1 "FB" H 7500 4250 60  0001 C CNN
F 2 "" H 7500 4150 60  0000 C CNN
F 3 "" H 7500 4150 60  0000 C CNN
	1    7500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3550 7350 3550
Wire Wire Line
	6300 4150 7350 4150
Text GLabel 9600 4850 2    60   Output ~ 0
ETH_XI
Text GLabel 7650 4850 2    60   Output ~ 0
RFFE_CLK
$Comp
L VCC #PWR42
U 1 1 56B080B6
P 7700 3550
F 0 "#PWR42" H 7700 3400 39  0001 C CNN
F 1 "VCC" V 7700 3750 39  0000 C CNN
F 2 "" H 7700 3550 50  0000 C CNN
F 3 "" H 7700 3550 50  0000 C CNN
	1    7700 3550
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR43
U 1 1 56B080E6
P 7700 4150
F 0 "#PWR43" H 7700 4000 39  0001 C CNN
F 1 "VCC" V 7700 4350 39  0000 C CNN
F 2 "" H 7700 4150 50  0000 C CNN
F 3 "" H 7700 4150 50  0000 C CNN
	1    7700 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 3550 7700 3550
Wire Wire Line
	7650 4150 7700 4150
$Comp
L GND #PWR39
U 1 1 56B0826C
P 6400 5350
F 0 "#PWR39" H 6400 5100 39  0001 C CNN
F 1 "GND" H 6400 5200 39  0001 C CNN
F 2 "" H 6400 5350 50  0000 C CNN
F 3 "" H 6400 5350 50  0000 C CNN
	1    6400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5250 6400 5250
Wire Wire Line
	6400 5250 6400 5350
$Comp
L BNC P1
U 1 1 56BF7799
P 2800 3850
F 0 "P1" H 2810 3970 39  0000 C CNN
F 1 "SMA" H 2950 3800 39  0000 C CNN
F 2 "" H 2800 3850 50  0000 C CNN
F 3 "" H 2800 3850 50  0000 C CNN
	1    2800 3850
	-1   0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 56BF7957
P 3800 3850
F 0 "R23" V 3700 3850 39  0000 C CNN
F 1 "130" V 3800 3850 39  0000 C CNN
F 2 "" V 3730 3850 50  0000 C CNN
F 3 "" H 3800 3850 50  0000 C CNN
	1    3800 3850
	0    1    1    0   
$EndComp
$Comp
L R R24
U 1 1 56BF79F4
P 4100 4000
F 0 "R24" H 3950 4000 39  0000 C CNN
F 1 "75" V 4100 4000 39  0000 C CNN
F 2 "" V 4030 4000 50  0000 C CNN
F 3 "" H 4100 4000 50  0000 C CNN
	1    4100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3850 4500 3850
Connection ~ 4100 3850
Wire Wire Line
	3350 3850 3650 3850
$Comp
L GND #PWR35
U 1 1 56BF7B1E
P 4300 4150
F 0 "#PWR35" H 4300 3900 39  0001 C CNN
F 1 "GND" H 4300 4000 39  0001 C CNN
F 2 "" H 4300 4150 50  0000 C CNN
F 3 "" H 4300 4150 50  0000 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3950 4300 3950
Wire Wire Line
	4300 3950 4300 4150
Wire Wire Line
	4300 4150 4100 4150
Connection ~ 4300 4150
$Comp
L GND #PWR29
U 1 1 56BF7BE2
P 2800 4050
F 0 "#PWR29" H 2800 3800 39  0001 C CNN
F 1 "GND" H 2800 3900 39  0001 C CNN
F 2 "" H 2800 4050 50  0000 C CNN
F 3 "" H 2800 4050 50  0000 C CNN
	1    2800 4050
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL_SMD X3
U 1 1 56BF7EA0
P 4000 3350
F 0 "X3" H 4100 3250 39  0000 C CNN
F 1 "38.4MHz" H 3850 3450 39  0000 L CNN
F 2 "" H 4000 3350 50  0000 C CNN
F 3 "" H 4000 3350 50  0000 C CNN
	1    4000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3650 3800 3650
Wire Wire Line
	3800 3650 3800 3350
$Comp
L C_Small C60
U 1 1 56BF8B27
P 3650 3350
F 0 "C60" V 3700 3200 39  0000 L CNN
F 1 "15pF" V 3700 3400 39  0000 L CNN
F 2 "" H 3650 3350 50  0000 C CNN
F 3 "" H 3650 3350 50  0000 C CNN
	1    3650 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3550 4500 3550
Wire Wire Line
	4200 3050 4200 3550
$Comp
L C_Small C61
U 1 1 56BF8D13
P 4350 3350
F 0 "C61" V 4300 3200 39  0000 L CNN
F 1 "15pF" V 4300 3400 39  0000 L CNN
F 2 "" H 4350 3350 50  0000 C CNN
F 3 "" H 4350 3350 50  0000 C CNN
	1    4350 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 3350 4250 3350
Wire Wire Line
	3800 3350 3750 3350
$Comp
L GND #PWR34
U 1 1 56BFAA9C
P 4000 3500
F 0 "#PWR34" H 4000 3250 39  0001 C CNN
F 1 "GND" H 4000 3350 39  0001 C CNN
F 2 "" H 4000 3500 50  0000 C CNN
F 3 "" H 4000 3500 50  0000 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR36
U 1 1 56BFAAD8
P 4500 3350
F 0 "#PWR36" H 4500 3100 39  0001 C CNN
F 1 "GND" H 4500 3200 39  0001 C CNN
F 2 "" H 4500 3350 50  0000 C CNN
F 3 "" H 4500 3350 50  0000 C CNN
	1    4500 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR32
U 1 1 56BFAB14
P 3500 3350
F 0 "#PWR32" H 3500 3100 39  0001 C CNN
F 1 "GND" H 3500 3200 39  0001 C CNN
F 2 "" H 3500 3350 50  0000 C CNN
F 3 "" H 3500 3350 50  0000 C CNN
	1    3500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3350 4450 3350
Wire Wire Line
	3500 3350 3550 3350
Wire Wire Line
	4000 3450 4000 3500
Connection ~ 4200 3350
Connection ~ 3800 3350
$Comp
L adcosc X2
U 1 1 56BFC48E
P 3750 2300
F 0 "X2" H 3850 2750 60  0000 C CNN
F 1 "38.4MHz" H 3950 1850 60  0000 C CNN
F 2 "" H 3750 2300 60  0000 C CNN
F 3 "" H 3750 2300 60  0000 C CNN
	1    3750 2300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C63
U 1 1 56BFC4F0
P 4200 2950
F 0 "C63" H 4210 3020 39  0000 L CNN
F 1 "0.1uF" H 4210 2870 39  0000 L CNN
F 2 "" H 4200 2950 50  0000 C CNN
F 3 "" H 4200 2950 50  0000 C CNN
	1    4200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2400 4200 2400
Wire Wire Line
	4200 2400 4200 2850
$Comp
L FB FB10
U 1 1 56BFC5FD
P 5050 2200
F 0 "FB10" H 5125 2150 39  0000 C CNN
F 1 "FB" H 5050 2300 60  0001 C CNN
F 2 "" H 5050 2200 60  0000 C CNN
F 3 "" H 5050 2200 60  0000 C CNN
	1    5050 2200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C65
U 1 1 56BFC646
P 4750 2300
F 0 "C65" H 4760 2370 39  0000 L CNN
F 1 "1uF" H 4760 2220 39  0000 L CNN
F 2 "" H 4750 2300 50  0000 C CNN
F 3 "" H 4750 2300 50  0000 C CNN
	1    4750 2300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C62
U 1 1 56BFC693
P 4350 2300
F 0 "C62" H 4360 2370 39  0000 L CNN
F 1 "0.1uF" H 4360 2220 39  0000 L CNN
F 2 "" H 4350 2300 50  0000 C CNN
F 3 "" H 4350 2300 50  0000 C CNN
	1    4350 2300
	1    0    0    -1  
$EndComp
Connection ~ 4550 2200
Connection ~ 4350 2200
$Comp
L VCC #PWR38
U 1 1 56BFC81A
P 5250 2200
F 0 "#PWR38" H 5250 2050 39  0001 C CNN
F 1 "VCC" H 5250 2350 39  0000 C CNN
F 2 "" H 5250 2200 50  0000 C CNN
F 3 "" H 5250 2200 50  0000 C CNN
	1    5250 2200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR37
U 1 1 56BFC8C6
P 4550 2450
F 0 "#PWR37" H 4550 2200 39  0001 C CNN
F 1 "GND" H 4550 2300 39  0001 C CNN
F 2 "" H 4550 2450 50  0000 C CNN
F 3 "" H 4550 2450 50  0000 C CNN
	1    4550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2400 4750 2400
Wire Wire Line
	4550 2400 4550 2450
Connection ~ 4550 2400
$Comp
L GND #PWR31
U 1 1 56BFF78A
P 3200 2650
F 0 "#PWR31" H 3200 2400 39  0001 C CNN
F 1 "GND" H 3200 2500 39  0001 C CNN
F 2 "" H 3200 2650 50  0000 C CNN
F 3 "" H 3200 2650 50  0000 C CNN
	1    3200 2650
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 56BFF836
P 3200 2000
F 0 "R21" H 3050 2000 39  0000 C CNN
F 1 "10K" V 3200 2000 39  0000 C CNN
F 2 "" V 3130 2000 50  0000 C CNN
F 3 "" H 3200 2000 50  0000 C CNN
	1    3200 2000
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 56BFF939
P 3200 2400
F 0 "R22" H 3050 2400 39  0000 C CNN
F 1 "10K" V 3200 2400 39  0000 C CNN
F 2 "" V 3130 2400 50  0000 C CNN
F 3 "" H 3200 2400 50  0000 C CNN
	1    3200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2150 3200 2250
Wire Wire Line
	2850 2200 3350 2200
Connection ~ 3200 2200
Wire Wire Line
	3200 2550 3200 2650
Wire Wire Line
	3350 2400 3350 2600
Wire Wire Line
	3350 2600 3200 2600
Connection ~ 3200 2600
Wire Wire Line
	3450 4450 4500 4450
Wire Wire Line
	3450 4550 4500 4550
Text Label 4150 4450 0    60   ~ 0
CLKSDA
Text Label 4150 4550 0    60   ~ 0
CLKSEL
Wire Wire Line
	3750 1750 4100 1750
Text Label 3750 1750 0    60   ~ 0
CLKSDA
Wire Wire Line
	3750 2850 4100 2850
Text Label 3750 2950 0    60   ~ 0
CLKSEL
Wire Wire Line
	3200 1850 3200 1600
Wire Wire Line
	1350 1600 4350 1600
Wire Wire Line
	4350 1600 4350 2200
$Comp
L MCP4716 U4
U 1 1 56C010F3
P 2400 2100
F 0 "U4" H 2400 1850 60  0000 C CNN
F 1 "MCP4716" H 2400 2350 60  0000 C CNN
F 2 "" H 2400 2100 60  0000 C CNN
F 3 "" H 2400 2100 60  0000 C CNN
	1    2400 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 2000 2850 1600
Connection ~ 3200 1600
$Comp
L GND #PWR30
U 1 1 56C0155D
P 2900 2100
F 0 "#PWR30" H 2900 1850 39  0001 C CNN
F 1 "GND" H 2900 1950 39  0001 C CNN
F 2 "" H 2900 2100 50  0000 C CNN
F 3 "" H 2900 2100 50  0000 C CNN
	1    2900 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 2100 2900 2100
Wire Wire Line
	1950 2000 1600 2000
Wire Wire Line
	1950 2100 1600 2100
Text Label 1600 2000 0    60   ~ 0
CLKSDA
Text Label 1600 2100 0    60   ~ 0
CLKSEL
$Comp
L R R19
U 1 1 56C017C3
P 1350 2000
F 0 "R19" H 1200 2000 39  0000 C CNN
F 1 "3.3K" V 1350 2000 39  0000 C CNN
F 2 "" V 1280 2000 50  0000 C CNN
F 3 "" H 1350 2000 50  0000 C CNN
	1    1350 2000
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 56C0188E
P 1350 2400
F 0 "R20" H 1200 2400 39  0000 C CNN
F 1 "10K" V 1350 2400 39  0000 C CNN
F 2 "" V 1280 2400 50  0000 C CNN
F 3 "" H 1350 2400 50  0000 C CNN
	1    1350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1600 1350 1850
Connection ~ 2850 1600
Wire Wire Line
	1950 2200 1350 2200
Wire Wire Line
	1350 2150 1350 2250
Connection ~ 1350 2200
$Comp
L GND #PWR28
U 1 1 56C01AF9
P 1350 2650
F 0 "#PWR28" H 1350 2400 39  0001 C CNN
F 1 "GND" H 1350 2500 39  0001 C CNN
F 2 "" H 1350 2650 50  0000 C CNN
F 3 "" H 1350 2650 50  0000 C CNN
	1    1350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2550 1350 2650
$Comp
L C_Small C64
U 1 1 56C01E82
P 4550 2300
F 0 "C64" H 4560 2370 39  0000 L CNN
F 1 "0.1uF" H 4560 2220 39  0000 L CNN
F 2 "" H 4550 2300 50  0000 C CNN
F 3 "" H 4550 2300 50  0000 C CNN
	1    4550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2200 4900 2200
Wire Wire Line
	5200 2200 5250 2200
Connection ~ 4750 2200
Text GLabel 7650 4650 2    60   Output ~ 0
RFFE_XTAL
Wire Wire Line
	6300 4650 6800 4650
$Comp
L TEST_1P WJ2
U 1 1 56C0580F
P 7550 4650
F 0 "WJ2" V 7550 4900 39  0000 C CNN
F 1 "TEST_1P" H 7550 4850 39  0001 C CNN
F 2 "" H 7750 4650 50  0000 C CNN
F 3 "" H 7750 4650 50  0000 C CNN
	1    7550 4650
	0    -1   -1   0   
$EndComp
$Comp
L FPGA U3
U 3 1 56C0AFA1
P 3300 4250
F 0 "U3" H 3600 4200 60  0000 C CNN
F 1 "FPGA" H 3600 4800 60  0000 C CNN
F 2 "" H 3300 4250 60  0000 C CNN
F 3 "" H 3300 4250 60  0000 C CNN
	3    3300 4250
	-1   0    0    1   
$EndComp
$Comp
L R R27
U 1 1 56C0BBAA
P 3500 4900
F 0 "R27" H 3400 4900 39  0000 C CNN
F 1 "4.7K" V 3500 4900 39  0000 C CNN
F 2 "" V 3430 4900 50  0000 C CNN
F 3 "" H 3500 4900 50  0000 C CNN
	1    3500 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR33
U 1 1 56C0BD52
P 3500 5100
F 0 "#PWR33" H 3500 4850 39  0001 C CNN
F 1 "GND" H 3500 4950 39  0001 C CNN
F 2 "" H 3500 5100 50  0000 C CNN
F 3 "" H 3500 5100 50  0000 C CNN
	1    3500 5100
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP2
U 1 1 56C1456C
P 3600 4000
F 0 "JP2" V 3600 4100 39  0000 C CNN
F 1 "Jumper_NO_Small" H 3610 3940 50  0001 C CNN
F 2 "" H 3600 4000 50  0000 C CNN
F 3 "" H 3600 4000 50  0000 C CNN
	1    3600 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 3850 3600 3900
Connection ~ 3600 3850
Wire Wire Line
	3600 4100 3600 4350
Wire Wire Line
	3600 4350 3450 4350
Text Notes 3650 3500 0    39   ~ 0
WJ3
Text Notes 4200 3500 0    39   ~ 0
WJ4
Text Notes 3450 3950 0    39   ~ 0
WJ5
Text Notes 7250 4850 0    39   ~ 0
WJ1
Wire Wire Line
	9100 5150 9100 5350
$Comp
L GND #PWR44
U 1 1 56C160AC
P 9100 5350
F 0 "#PWR44" H 9100 5100 39  0001 C CNN
F 1 "GND" H 9100 5200 39  0001 C CNN
F 2 "" H 9100 5350 50  0000 C CNN
F 3 "" H 9100 5350 50  0000 C CNN
	1    9100 5350
	1    0    0    -1  
$EndComp
Connection ~ 8850 5050
Connection ~ 9350 5050
Wire Wire Line
	8700 5050 8900 5050
Wire Wire Line
	9300 5050 9600 5050
Wire Wire Line
	8850 4850 8850 5100
$Comp
L C_Small C74
U 1 1 56C160B7
P 8850 5200
F 0 "C74" H 8860 5270 39  0000 L CNN
F 1 "15pF" H 8860 5120 39  0000 L CNN
F 2 "" H 8850 5200 50  0000 C CNN
F 3 "" H 8850 5200 50  0000 C CNN
	1    8850 5200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C75
U 1 1 56C160BE
P 9350 5200
F 0 "C75" H 9360 5270 39  0000 L CNN
F 1 "15pF" H 9360 5120 39  0000 L CNN
F 2 "" H 9350 5200 50  0000 C CNN
F 3 "" H 9350 5200 50  0000 C CNN
	1    9350 5200
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL_SMD X1
U 1 1 56C160C5
P 9100 5050
F 0 "X1" H 9000 5150 39  0000 C CNN
F 1 "25MHz" H 9100 5150 39  0000 L CNN
F 2 "" H 9100 5050 50  0000 C CNN
F 3 "" H 9100 5050 50  0000 C CNN
	1    9100 5050
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NC_Small JP1
U 1 1 56C160CC
P 8600 5050
F 0 "JP1" H 8600 5150 39  0000 C CNN
F 1 "Jumper_NC_Small" H 8610 4990 39  0001 C CNN
F 2 "" H 8600 5050 50  0000 C CNN
F 3 "" H 8600 5050 50  0000 C CNN
	1    8600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4650 7550 4650
Text GLabel 9600 5050 2    60   Output ~ 0
ETH_XO
Wire Wire Line
	8850 5300 8850 5350
Wire Wire Line
	8850 5350 9350 5350
Wire Wire Line
	9350 5350 9350 5300
Connection ~ 9100 5350
Wire Wire Line
	8850 4850 9600 4850
Wire Wire Line
	9350 5050 9350 5100
Text Notes 8550 5700 0    60   ~ 0
These components placed\nnear ethernet PHY
Text Notes 6350 3200 0    60   ~ 0
To facilitate build options, there are 5 slightly enlarged SMT pads prefixed \nWJ (wire jumper) to ease soldering a small wire jumper to:\n\nWJ1 R25 pad\nWJ2 Test point pad\nWJ3 C60 pad\nWJ4 C63 pad\nWJ5 JP2 pad\n\nSee BOM "Clock Build Options" sheet for build details
Text Notes 8800 4650 0    60   ~ 0
X1 to support 2.5x2.0 or\n3.2x2.5 mm standard\n4-lead SMD packages
Text Notes 2200 3500 0    60   ~ 0
X3 to support 2.5x2.0 or\n3.2x2.5 mm standard\n4-lead SMD packages
Text Notes 4550 1950 0    60   ~ 0
X2 to support 2.5x2.0 or \n3.2x2.5 or 7.0x5.0 mm\nstandard 4-lead SMD\npackages\n\nSi570 is option for X2\nwith special I2C support
$Comp
L C_Small C33
U 1 1 56C1777C
P 3250 3850
F 0 "C33" V 3200 3700 39  0000 L CNN
F 1 "0.1uF" V 3200 3900 39  0000 L CNN
F 2 "" H 3250 3850 50  0000 C CNN
F 3 "" H 3250 3850 50  0000 C CNN
	1    3250 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 3850 2950 3850
$Comp
L R R28
U 1 1 56C17F7A
P 3800 4900
F 0 "R28" H 3700 4900 39  0000 C CNN
F 1 "4.7K" V 3800 4900 39  0000 C CNN
F 2 "" V 3730 4900 50  0000 C CNN
F 3 "" H 3800 4900 50  0000 C CNN
	1    3800 4900
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 56C17FED
P 4050 4900
F 0 "R29" H 3950 4900 39  0000 C CNN
F 1 "4.7K" V 4050 4900 39  0000 C CNN
F 2 "" V 3980 4900 50  0000 C CNN
F 3 "" H 4050 4900 50  0000 C CNN
	1    4050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4650 3500 4650
Wire Wire Line
	3500 4650 3500 4750
Wire Wire Line
	3500 5050 3500 5100
Wire Wire Line
	3800 4450 3800 4750
Connection ~ 3800 4450
Wire Wire Line
	4050 4550 4050 4750
Connection ~ 4050 4550
$Comp
L VCC #PWR?
U 1 1 56C18A63
P 4050 5100
F 0 "#PWR?" H 4050 4950 50  0001 C CNN
F 1 "VCC" H 4050 5250 39  0000 C CNN
F 2 "" H 4050 5100 50  0000 C CNN
F 3 "" H 4050 5100 50  0000 C CNN
	1    4050 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 5050 4050 5050
Wire Wire Line
	4050 5050 4050 5100
Connection ~ 4050 5050
$EndSCHEMATC
