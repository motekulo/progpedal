EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Input section"
Date "2021-07-09"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+9V #PWR05
U 1 1 60E877F4
P 10250 1100
F 0 "#PWR05" H 10250 950 50  0001 C CNN
F 1 "+9V" H 10265 1273 50  0000 C CNN
F 2 "" H 10250 1100 50  0001 C CNN
F 3 "" H 10250 1100 50  0001 C CNN
	1    10250 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 60E8A447
P 10250 1400
F 0 "BT1" H 10368 1496 50  0000 L CNN
F 1 "Battery_Cell" H 10368 1405 50  0000 L CNN
F 2 "" V 10250 1460 50  0001 C CNN
F 3 "~" V 10250 1460 50  0001 C CNN
	1    10250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1200 10250 1100
Wire Wire Line
	10250 1500 10250 1700
$Comp
L power:GND #PWR06
U 1 1 60E7E219
P 10250 1700
F 0 "#PWR06" H 10250 1450 50  0001 C CNN
F 1 "GND" H 10255 1527 50  0000 C CNN
F 2 "" H 10250 1700 50  0001 C CNN
F 3 "" H 10250 1700 50  0001 C CNN
	1    10250 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60E7CD39
P 2550 3650
F 0 "#PWR03" H 2550 3400 50  0001 C CNN
F 1 "GND" H 2555 3477 50  0000 C CNN
F 2 "" H 2550 3650 50  0001 C CNN
F 3 "" H 2550 3650 50  0001 C CNN
	1    2550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60E79F8B
P 1400 3300
F 0 "R1" H 1470 3346 50  0000 L CNN
F 1 "1M" H 1470 3255 50  0000 L CNN
F 2 "" V 1330 3300 50  0001 C CNN
F 3 "~" H 1400 3300 50  0001 C CNN
	1    1400 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60E7A475
P 2550 2700
F 0 "R3" H 2620 2746 50  0000 L CNN
F 1 "1M" H 2620 2655 50  0000 L CNN
F 2 "" V 2480 2700 50  0001 C CNN
F 3 "~" H 2550 2700 50  0001 C CNN
	1    2550 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60E7A753
P 2550 1300
F 0 "R2" H 2620 1346 50  0000 L CNN
F 1 "1M" H 2620 1255 50  0000 L CNN
F 2 "" V 2480 1300 50  0001 C CNN
F 3 "~" H 2550 1300 50  0001 C CNN
	1    2550 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60E7AA53
P 3700 3250
F 0 "R4" V 3493 3250 50  0000 C CNN
F 1 "100k" V 3584 3250 50  0000 C CNN
F 2 "" V 3630 3250 50  0001 C CNN
F 3 "~" H 3700 3250 50  0001 C CNN
	1    3700 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 60E7B017
P 4450 3250
F 0 "R5" V 4243 3250 50  0000 C CNN
F 1 "220k" V 4334 3250 50  0000 C CNN
F 2 "" V 4380 3250 50  0001 C CNN
F 3 "~" H 4450 3250 50  0001 C CNN
	1    4450 3250
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 60E7B436
P 1950 2150
F 0 "C1" V 1698 2150 50  0000 C CNN
F 1 "100n" V 1789 2150 50  0000 C CNN
F 2 "" H 1988 2000 50  0001 C CNN
F 3 "~" H 1950 2150 50  0001 C CNN
	1    1950 2150
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 60E7BD0A
P 5700 2250
F 0 "C3" V 5448 2250 50  0000 C CNN
F 1 "10u" V 5539 2250 50  0000 C CNN
F 2 "" H 5738 2100 50  0001 C CNN
F 3 "~" H 5700 2250 50  0001 C CNN
	1    5700 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60E7C51A
P 1400 3650
F 0 "#PWR01" H 1400 3400 50  0001 C CNN
F 1 "GND" H 1405 3477 50  0000 C CNN
F 2 "" H 1400 3650 50  0001 C CNN
F 3 "" H 1400 3650 50  0001 C CNN
	1    1400 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60E7D145
P 6800 3350
F 0 "#PWR04" H 6800 3100 50  0001 C CNN
F 1 "GND" H 6805 3177 50  0000 C CNN
F 2 "" H 6800 3350 50  0001 C CNN
F 3 "" H 6800 3350 50  0001 C CNN
	1    6800 3350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 60E80D02
P 4600 2250
F 0 "U1" H 4600 2617 50  0000 C CNN
F 1 "TL072" H 4600 2526 50  0000 C CNN
F 2 "" H 4600 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4600 2250 50  0001 C CNN
	1    4600 2250
	1    0    0    -1  
$EndComp
Text GLabel 7300 2650 2    50   Input ~ 0
out
Text GLabel 800  2150 0    50   Input ~ 0
in
$Comp
L power:+9V #PWR02
U 1 1 60E8AF06
P 2550 850
F 0 "#PWR02" H 2550 700 50  0001 C CNN
F 1 "+9V" H 2565 1023 50  0000 C CNN
F 2 "" H 2550 850 50  0001 C CNN
F 3 "" H 2550 850 50  0001 C CNN
	1    2550 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 60E9A0F7
P 6800 2650
F 0 "RV1" H 6731 2696 50  0000 R CNN
F 1 "10k b" H 6731 2605 50  0000 R CNN
F 2 "" H 6800 2650 50  0001 C CNN
F 3 "~" H 6800 2650 50  0001 C CNN
	1    6800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2150 1400 2150
Wire Wire Line
	1400 3150 1400 2150
Connection ~ 1400 2150
Wire Wire Line
	1400 2150 1800 2150
Wire Wire Line
	2100 2150 2550 2150
Wire Wire Line
	2550 2550 2550 2150
Connection ~ 2550 2150
Wire Wire Line
	2550 2150 4300 2150
Wire Wire Line
	2550 1450 2550 2150
$Comp
L Device:C C2
U 1 1 60EA276E
P 3050 3250
F 0 "C2" V 2798 3250 50  0000 C CNN
F 1 "C" V 2889 3250 50  0000 C CNN
F 2 "" H 3088 3100 50  0001 C CNN
F 3 "~" H 3050 3250 50  0001 C CNN
	1    3050 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 2850 2550 3250
Wire Wire Line
	2900 3250 2550 3250
Wire Wire Line
	3200 3250 3550 3250
Wire Wire Line
	3850 3250 4150 3250
Wire Wire Line
	4300 2350 4150 2350
Wire Wire Line
	4150 2350 4150 3250
Connection ~ 4150 3250
Wire Wire Line
	4150 3250 4300 3250
Wire Wire Line
	4900 2250 5000 2250
Wire Wire Line
	4600 3250 5000 3250
Wire Wire Line
	5000 3250 5000 2250
Connection ~ 5000 2250
Wire Wire Line
	5000 2250 5550 2250
Wire Wire Line
	5850 2250 6800 2250
Wire Wire Line
	6800 2250 6800 2500
Wire Wire Line
	7300 2650 6950 2650
Wire Wire Line
	6800 3350 6800 2800
Wire Wire Line
	2550 1150 2550 850 
Wire Wire Line
	1400 3650 1400 3450
Wire Wire Line
	2550 3650 2550 3250
Connection ~ 2550 3250
Text GLabel 1300 4900 0    50   Input ~ 0
line_in
$Comp
L Device:R R6
U 1 1 60EC8CED
P 2050 4550
F 0 "R6" H 2120 4596 50  0000 L CNN
F 1 "100k" H 2120 4505 50  0000 L CNN
F 2 "" V 1980 4550 50  0001 C CNN
F 3 "~" H 2050 4550 50  0001 C CNN
	1    2050 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 60EC94F1
P 2050 5500
F 0 "R7" H 2120 5546 50  0000 L CNN
F 1 "100k" H 2120 5455 50  0000 L CNN
F 2 "" V 1980 5500 50  0001 C CNN
F 3 "~" H 2050 5500 50  0001 C CNN
	1    2050 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 60EC9C1D
P 2950 5600
F 0 "R8" H 3020 5646 50  0000 L CNN
F 1 "10k" H 3020 5555 50  0000 L CNN
F 2 "" V 2880 5600 50  0001 C CNN
F 3 "~" H 2950 5600 50  0001 C CNN
	1    2950 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60ECA3C1
P 2950 6100
F 0 "C4" H 3065 6146 50  0000 L CNN
F 1 "10uF" H 3065 6055 50  0000 L CNN
F 2 "" H 2988 5950 50  0001 C CNN
F 3 "~" H 2950 6100 50  0001 C CNN
	1    2950 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60ECAC09
P 4050 5000
F 0 "C5" V 3798 5000 50  0000 C CNN
F 1 "10uF" V 3889 5000 50  0000 C CNN
F 2 "" H 4088 4850 50  0001 C CNN
F 3 "~" H 4050 5000 50  0001 C CNN
	1    4050 5000
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:LM358 U2
U 1 1 60ECB6F1
P 3300 5000
F 0 "U2" H 3300 5367 50  0000 C CNN
F 1 "LM358" H 3300 5276 50  0000 C CNN
F 2 "" H 3300 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3300 5000 50  0001 C CNN
	1    3300 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 60ED839A
P 4400 5550
F 0 "RV2" H 4331 5596 50  0000 R CNN
F 1 "10k b" H 4331 5505 50  0000 R CNN
F 2 "" H 4400 5550 50  0001 C CNN
F 3 "~" H 4400 5550 50  0001 C CNN
	1    4400 5550
	1    0    0    -1  
$EndComp
Text GLabel 4900 5550 2    50   Output ~ 0
to_amp
Wire Wire Line
	1300 4900 2050 4900
Wire Wire Line
	2050 5350 2050 4900
Connection ~ 2050 4900
Wire Wire Line
	2050 4900 3000 4900
Wire Wire Line
	2050 4700 2050 4900
Wire Wire Line
	3900 5000 3700 5000
Wire Wire Line
	3700 5000 3700 5300
Wire Wire Line
	3700 5300 2950 5300
Wire Wire Line
	2950 5300 2950 5100
Wire Wire Line
	2950 5100 3000 5100
Connection ~ 3700 5000
Wire Wire Line
	3700 5000 3600 5000
Wire Wire Line
	2950 5450 2950 5300
Connection ~ 2950 5300
Wire Wire Line
	2950 5750 2950 5950
Wire Wire Line
	4200 5000 4400 5000
Wire Wire Line
	4400 5000 4400 5400
Wire Wire Line
	4550 5550 4900 5550
$Comp
L power:GND #PWR09
U 1 1 60EEC114
P 4400 6000
F 0 "#PWR09" H 4400 5750 50  0001 C CNN
F 1 "GND" H 4405 5827 50  0000 C CNN
F 2 "" H 4400 6000 50  0001 C CNN
F 3 "" H 4400 6000 50  0001 C CNN
	1    4400 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60EEC79E
P 2950 6350
F 0 "#PWR08" H 2950 6100 50  0001 C CNN
F 1 "GND" H 2955 6177 50  0000 C CNN
F 2 "" H 2950 6350 50  0001 C CNN
F 3 "" H 2950 6350 50  0001 C CNN
	1    2950 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 60EECCC6
P 2050 6350
F 0 "#PWR07" H 2050 6100 50  0001 C CNN
F 1 "GND" H 2055 6177 50  0000 C CNN
F 2 "" H 2050 6350 50  0001 C CNN
F 3 "" H 2050 6350 50  0001 C CNN
	1    2050 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6350 2050 5650
Wire Wire Line
	2950 6250 2950 6350
Wire Wire Line
	4400 5700 4400 6000
$Comp
L Device:Battery_Cell BT2
U 1 1 60F02889
P 9550 1400
F 0 "BT2" H 9668 1496 50  0000 L CNN
F 1 "Battery_Cell" H 9668 1405 50  0000 L CNN
F 2 "" V 9550 1460 50  0001 C CNN
F 3 "~" V 9550 1460 50  0001 C CNN
	1    9550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1500 9550 1700
$Comp
L power:GND #PWR010
U 1 1 60F02891
P 9550 1700
F 0 "#PWR010" H 9550 1450 50  0001 C CNN
F 1 "GND" H 9555 1527 50  0000 C CNN
F 2 "" H 9550 1700 50  0001 C CNN
F 3 "" H 9550 1700 50  0001 C CNN
	1    9550 1700
	1    0    0    -1  
$EndComp
Text GLabel 9550 1000 1    50   Output ~ 0
VAUX
Wire Wire Line
	9550 1200 9550 1000
Text GLabel 2050 4250 1    50   Output ~ 0
VAUX
Wire Wire Line
	2050 4400 2050 4250
$Comp
L Regulator_Linear:L7805 U3
U 1 1 60EAE80D
P 8750 4450
F 0 "U3" H 8750 4692 50  0000 C CNN
F 1 "L7805" H 8750 4601 50  0000 C CNN
F 2 "" H 8775 4300 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 8750 4400 50  0001 C CNN
	1    8750 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60EAEE6A
P 7950 5100
F 0 "C6" H 7650 5100 50  0000 C CNN
F 1 "10u" H 7789 5100 50  0000 C CNN
F 2 "" H 7988 4950 50  0001 C CNN
F 3 "~" H 7950 5100 50  0001 C CNN
	1    7950 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 60EB03F6
P 9400 5100
F 0 "C7" H 9100 5100 50  0000 C CNN
F 1 "10u" H 9239 5100 50  0000 C CNN
F 2 "" H 9438 4950 50  0001 C CNN
F 3 "~" H 9400 5100 50  0001 C CNN
	1    9400 5100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60EB2BDF
P 7950 5500
F 0 "#PWR012" H 7950 5250 50  0001 C CNN
F 1 "GND" H 7955 5327 50  0000 C CNN
F 2 "" H 7950 5500 50  0001 C CNN
F 3 "" H 7950 5500 50  0001 C CNN
	1    7950 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60EB32EC
P 8750 5500
F 0 "#PWR013" H 8750 5250 50  0001 C CNN
F 1 "GND" H 8755 5327 50  0000 C CNN
F 2 "" H 8750 5500 50  0001 C CNN
F 3 "" H 8750 5500 50  0001 C CNN
	1    8750 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60EB3A0C
P 9400 5500
F 0 "#PWR014" H 9400 5250 50  0001 C CNN
F 1 "GND" H 9405 5327 50  0000 C CNN
F 2 "" H 9400 5500 50  0001 C CNN
F 3 "" H 9400 5500 50  0001 C CNN
	1    9400 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR011
U 1 1 60EB42A7
P 7950 4200
F 0 "#PWR011" H 7950 4050 50  0001 C CNN
F 1 "+9V" H 7965 4373 50  0000 C CNN
F 2 "" H 7950 4200 50  0001 C CNN
F 3 "" H 7950 4200 50  0001 C CNN
	1    7950 4200
	1    0    0    -1  
$EndComp
Text GLabel 9400 4200 1    50   Output ~ 0
VAUX
Wire Wire Line
	7950 4950 7950 4450
Wire Wire Line
	7950 5500 7950 5250
Wire Wire Line
	8750 5500 8750 4750
Wire Wire Line
	9400 5500 9400 5250
Wire Wire Line
	9400 4950 9400 4450
Wire Wire Line
	9050 4450 9400 4450
Connection ~ 9400 4450
Wire Wire Line
	9400 4450 9400 4200
Wire Wire Line
	8450 4450 7950 4450
Connection ~ 7950 4450
Wire Wire Line
	7950 4450 7950 4200
$EndSCHEMATC
