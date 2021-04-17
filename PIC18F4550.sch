EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "PIC 18F4550"
Date "2021-03-28"
Rev ""
Comp "CRCL"
Comment1 "Programador para el PIC 18F4550"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 3650 3975 2    50   ~ 0
MCLR
Text Label 3650 3875 2    50   ~ 0
RE2
Text Label 3650 3775 2    50   ~ 0
RE1
Text Label 3650 3675 2    50   ~ 0
RE0
Text Label 3650 3475 2    50   ~ 0
RD7
Text Label 3650 3375 2    50   ~ 0
RD6
Text Label 3650 3275 2    50   ~ 0
RD5
Text Label 3650 3175 2    50   ~ 0
RD4
Text Label 3650 3075 2    50   ~ 0
RD3
Text Label 3650 2975 2    50   ~ 0
RD2
Text Label 3650 2875 2    50   ~ 0
RD1
Text Label 3650 2775 2    50   ~ 0
RD0
Text Label 3650 2375 2    50   ~ 0
RC7
Text Label 3650 2275 2    50   ~ 0
RC6
Text Label 3650 2175 2    50   ~ 0
RC5
Text Label 3650 2075 2    50   ~ 0
RC4
Text Label 3650 1975 2    50   ~ 0
RC2
Text Label 3650 1875 2    50   ~ 0
RC1
Text Label 3650 1775 2    50   ~ 0
RC0
Wire Wire Line
	3450 3975 3650 3975
Wire Wire Line
	3450 3875 3650 3875
Wire Wire Line
	3450 3775 3650 3775
Wire Wire Line
	3450 3675 3650 3675
Wire Wire Line
	3450 3475 3650 3475
Wire Wire Line
	3450 3375 3650 3375
Wire Wire Line
	3450 3175 3650 3175
Wire Wire Line
	3450 3275 3650 3275
Wire Wire Line
	3450 3075 3650 3075
Wire Wire Line
	3450 2975 3650 2975
Wire Wire Line
	3450 2875 3650 2875
Wire Wire Line
	3450 2775 3650 2775
Wire Wire Line
	3450 1875 3650 1875
Wire Wire Line
	3450 1975 3650 1975
Wire Wire Line
	3450 2075 3650 2075
Wire Wire Line
	3450 2175 3650 2175
Wire Wire Line
	3450 2275 3650 2275
Wire Wire Line
	3450 2375 3650 2375
Wire Wire Line
	3450 1775 3650 1775
$Comp
L MCU_Microchip_PIC18:PIC18F4550-IP U1
U 1 1 605FB901
P 2350 2875
F 0 "U1" H 1450 4250 50  0000 C CNN
F 1 "PIC18F4550-IP" H 1700 4175 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 2350 3075 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/39760d.pdf" H 2350 2625 50  0001 C CNN
	1    2350 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1875 1250 1875
Text Label 1050 1875 0    50   ~ 0
RA1
Wire Wire Line
	1050 1775 1250 1775
Text Label 1050 1775 0    50   ~ 0
RA0
Wire Wire Line
	1050 2075 1250 2075
Text Label 1050 2075 0    50   ~ 0
RA3
Wire Wire Line
	1050 1975 1250 1975
Text Label 1050 1975 0    50   ~ 0
RA2
Wire Wire Line
	1050 2275 1250 2275
Text Label 1050 2275 0    50   ~ 0
RA5
Wire Wire Line
	1050 2175 1250 2175
Text Label 1050 2175 0    50   ~ 0
RA4
Wire Wire Line
	1050 2375 1250 2375
Text Label 1050 2375 0    50   ~ 0
OS2
Wire Wire Line
	1050 2575 1250 2575
Text Label 1050 2575 0    50   ~ 0
OS1
Wire Wire Line
	1050 2875 1250 2875
Text Label 1050 2875 0    50   ~ 0
RB1
Wire Wire Line
	1050 2775 1250 2775
Text Label 1050 2775 0    50   ~ 0
RB0
Wire Wire Line
	1050 3075 1250 3075
Text Label 1050 3075 0    50   ~ 0
RB3
Wire Wire Line
	1050 2975 1250 2975
Text Label 1050 2975 0    50   ~ 0
RB2
Wire Wire Line
	1050 3275 1250 3275
Text Label 1050 3275 0    50   ~ 0
RB5
Wire Wire Line
	1050 3175 1250 3175
Text Label 1050 3175 0    50   ~ 0
RB4
Wire Wire Line
	1050 3375 1250 3375
Text Label 1050 3375 0    50   ~ 0
RB6
Wire Wire Line
	1050 3475 1250 3475
Text Label 1050 3475 0    50   ~ 0
RB7
Wire Wire Line
	2250 1475 2250 1425
Wire Wire Line
	2250 1425 2300 1425
Wire Wire Line
	2350 1425 2350 1475
Wire Wire Line
	2250 4275 2250 4325
Wire Wire Line
	2250 4325 2300 4325
Wire Wire Line
	2350 4325 2350 4275
$Comp
L power:VCC #PWR0101
U 1 1 6062FDFC
P 2300 1400
F 0 "#PWR0101" H 2300 1250 50  0001 C CNN
F 1 "VCC" H 2315 1573 50  0000 C CNN
F 2 "" H 2300 1400 50  0001 C CNN
F 3 "" H 2300 1400 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60630BC7
P 2300 4350
F 0 "#PWR0102" H 2300 4100 50  0001 C CNN
F 1 "GND" H 2305 4177 50  0000 C CNN
F 2 "" H 2300 4350 50  0001 C CNN
F 3 "" H 2300 4350 50  0001 C CNN
	1    2300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4350 2300 4325
Connection ~ 2300 4325
Wire Wire Line
	2300 4325 2350 4325
Wire Wire Line
	2300 1400 2300 1425
Connection ~ 2300 1425
Wire Wire Line
	2300 1425 2350 1425
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 60638B68
P 1600 5350
F 0 "J1" H 1628 5326 50  0000 L CNN
F 1 "PORT_D" H 1628 5235 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1600 5350 50  0001 C CNN
F 3 "~" H 1600 5350 50  0001 C CNN
	1    1600 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Female J2
U 1 1 60639C4D
P 1675 7150
F 0 "J2" H 1703 7176 50  0000 L CNN
F 1 "PORT_A" H 1703 7085 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 1675 7150 50  0001 C CNN
F 3 "~" H 1675 7150 50  0001 C CNN
	1    1675 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J4
U 1 1 6063B867
P 2850 5350
F 0 "J4" H 2878 5326 50  0000 L CNN
F 1 "PORT_B" H 2878 5235 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 2850 5350 50  0001 C CNN
F 3 "~" H 2850 5350 50  0001 C CNN
	1    2850 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 6063D236
P 2225 6275
F 0 "J3" H 2253 6301 50  0000 L CNN
F 1 "PORT_E" H 2253 6210 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2225 6275 50  0001 C CNN
F 3 "~" H 2225 6275 50  0001 C CNN
	1    2225 6275
	1    0    0    -1  
$EndComp
Text Label 1200 5750 0    50   ~ 0
RD7
Text Label 1200 5650 0    50   ~ 0
RD6
Text Label 1200 5550 0    50   ~ 0
RD5
Text Label 1200 5450 0    50   ~ 0
RD4
Text Label 1200 5350 0    50   ~ 0
RD3
Text Label 1200 5250 0    50   ~ 0
RD2
Text Label 1200 5150 0    50   ~ 0
RD1
Wire Wire Line
	1400 5750 1200 5750
Wire Wire Line
	1400 5650 1200 5650
Wire Wire Line
	1400 5450 1200 5450
Wire Wire Line
	1400 5550 1200 5550
Wire Wire Line
	1400 5350 1200 5350
Wire Wire Line
	1400 5250 1200 5250
Wire Wire Line
	1400 5150 1200 5150
Wire Wire Line
	1400 5050 1200 5050
Text Label 1200 5050 0    50   ~ 0
RD0
Wire Wire Line
	2450 5150 2650 5150
Text Label 2450 5150 0    50   ~ 0
RB1
Wire Wire Line
	2450 5050 2650 5050
Text Label 2450 5050 0    50   ~ 0
RB0
Wire Wire Line
	2450 5350 2650 5350
Text Label 2450 5350 0    50   ~ 0
RB3
Wire Wire Line
	2450 5250 2650 5250
Text Label 2450 5250 0    50   ~ 0
RB2
Wire Wire Line
	2450 5550 2650 5550
Text Label 2450 5550 0    50   ~ 0
RB5
Wire Wire Line
	2450 5450 2650 5450
Text Label 2450 5450 0    50   ~ 0
RB4
Wire Wire Line
	2450 5650 2650 5650
Text Label 2450 5650 0    50   ~ 0
RB6
Wire Wire Line
	2450 5750 2650 5750
Text Label 2450 5750 0    50   ~ 0
RB7
Text Label 1825 6375 0    50   ~ 0
RE2
Text Label 1825 6275 0    50   ~ 0
RE1
Text Label 1825 6175 0    50   ~ 0
RE0
Wire Wire Line
	2025 6375 1825 6375
Wire Wire Line
	2025 6275 1825 6275
Wire Wire Line
	2025 6175 1825 6175
Wire Wire Line
	2650 6900 2450 6900
Wire Wire Line
	2650 7500 2450 7500
Wire Wire Line
	2650 7400 2450 7400
Wire Wire Line
	2650 7300 2450 7300
Wire Wire Line
	2650 7200 2450 7200
Wire Wire Line
	2650 7100 2450 7100
Wire Wire Line
	2650 7000 2450 7000
Text Label 2450 6900 0    50   ~ 0
RC0
Text Label 2450 7000 0    50   ~ 0
RC1
Text Label 2450 7100 0    50   ~ 0
RC2
Text Label 2450 7200 0    50   ~ 0
RC4
Text Label 2450 7300 0    50   ~ 0
RC5
Text Label 2450 7400 0    50   ~ 0
RC6
Text Label 2450 7500 0    50   ~ 0
RC7
$Comp
L Connector:Conn_01x07_Female J5
U 1 1 6063C1F1
P 2850 7200
F 0 "J5" H 2878 7226 50  0000 L CNN
F 1 "PORT_C" H 2878 7135 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 2850 7200 50  0001 C CNN
F 3 "~" H 2850 7200 50  0001 C CNN
	1    2850 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 6950 1475 6950
Text Label 1275 6950 0    50   ~ 0
RA1
Wire Wire Line
	1275 6850 1475 6850
Text Label 1275 6850 0    50   ~ 0
RA0
Wire Wire Line
	1275 7150 1475 7150
Text Label 1275 7150 0    50   ~ 0
RA3
Wire Wire Line
	1275 7050 1475 7050
Text Label 1275 7050 0    50   ~ 0
RA2
Wire Wire Line
	1275 7350 1475 7350
Text Label 1275 7350 0    50   ~ 0
RA5
Wire Wire Line
	1275 7250 1475 7250
Text Label 1275 7250 0    50   ~ 0
RA4
Wire Wire Line
	1275 7450 1475 7450
Text Label 1275 7450 0    50   ~ 0
OS2
$Comp
L Device:R R1
U 1 1 60697FB1
P 5300 1650
F 0 "R1" H 5370 1696 50  0000 L CNN
F 1 "10k" H 5370 1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5230 1650 50  0001 C CNN
F 3 "~" H 5300 1650 50  0001 C CNN
	1    5300 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 60698CB4
P 4850 3100
F 0 "Y1" H 4850 3368 50  0000 C CNN
F 1 "20MHz" H 4850 3277 50  0000 C CNN
F 2 "Crystal:Crystal_HC50_Vertical" H 4850 3100 50  0001 C CNN
F 3 "~" H 4850 3100 50  0001 C CNN
	1    4850 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J10
U 1 1 60699848
P 7450 4700
F 0 "J10" H 7507 5167 50  0000 C CNN
F 1 "USB_B" H 7507 5076 50  0000 C CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 7600 4650 50  0001 C CNN
F 3 " ~" H 7600 4650 50  0001 C CNN
	1    7450 4700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q1
U 1 1 6069A555
P 8850 2450
F 0 "Q1" H 9040 2496 50  0000 L CNN
F 1 "2N3906" H 9040 2405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9050 2375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 8850 2450 50  0001 L CNN
	1    8850 2450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U2
U 1 1 6069AE43
P 7450 2450
F 0 "U2" H 7450 2692 50  0000 C CNN
F 1 "L7805" H 7450 2601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7475 2300 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 7450 2400 50  0001 C CNN
	1    7450 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 6069B963
P 4650 1950
F 0 "D1" V 4689 1832 50  0000 R CNN
F 1 "LED" V 4598 1832 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4650 1950 50  0001 C CNN
F 3 "~" H 4650 1950 50  0001 C CNN
	1    4650 1950
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 6069CAA3
P 7450 2950
F 0 "D2" H 7500 3150 50  0000 R CNN
F 1 "1N4148" H 7600 3050 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7450 2775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7450 2950 50  0001 C CNN
	1    7450 2950
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 6069E3B5
P 5300 2100
F 0 "SW1" V 5346 2052 50  0000 R CNN
F 1 "SW" V 5255 2052 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5300 2300 50  0001 C CNN
F 3 "~" H 5300 2300 50  0001 C CNN
	1    5300 2100
	0    -1   -1   0   
$EndComp
Text Label 5600 1850 2    50   ~ 0
MCLR
$Comp
L power:GND #PWR0103
U 1 1 606AF89D
P 5300 2350
F 0 "#PWR0103" H 5300 2100 50  0001 C CNN
F 1 "GND" H 5305 2177 50  0000 C CNN
F 2 "" H 5300 2350 50  0001 C CNN
F 3 "" H 5300 2350 50  0001 C CNN
	1    5300 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 606B02E9
P 3795 2575
F 0 "C1" V 3543 2575 50  0000 C CNN
F 1 "47u" V 3634 2575 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3833 2425 50  0001 C CNN
F 3 "~" H 3795 2575 50  0001 C CNN
	1    3795 2575
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 606BAB14
P 3995 2575
F 0 "#PWR0104" H 3995 2325 50  0001 C CNN
F 1 "GND" V 4000 2447 50  0000 R CNN
F 2 "" H 3995 2575 50  0001 C CNN
F 3 "" H 3995 2575 50  0001 C CNN
	1    3995 2575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3995 2575 3945 2575
$Comp
L Device:C C2
U 1 1 606D5B1B
P 4600 3350
F 0 "C2" H 4715 3396 50  0000 L CNN
F 1 "15p" H 4715 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 4638 3200 50  0001 C CNN
F 3 "~" H 4600 3350 50  0001 C CNN
	1    4600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 606D62B3
P 5100 3350
F 0 "C3" H 5215 3396 50  0000 L CNN
F 1 "15p" H 5215 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 5138 3200 50  0001 C CNN
F 3 "~" H 5100 3350 50  0001 C CNN
	1    5100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1900 5300 1850
Wire Wire Line
	5300 2300 5300 2350
Wire Wire Line
	5600 1850 5300 1850
Connection ~ 5300 1850
Wire Wire Line
	5300 1850 5300 1800
$Comp
L Device:R R2
U 1 1 606E1366
P 4650 1600
F 0 "R2" H 4720 1646 50  0000 L CNN
F 1 "330" H 4720 1555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4580 1600 50  0001 C CNN
F 3 "~" H 4650 1600 50  0001 C CNN
	1    4650 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 606E6258
P 4650 2150
F 0 "#PWR0105" H 4650 1900 50  0001 C CNN
F 1 "GND" H 4655 1977 50  0000 C CNN
F 2 "" H 4650 2150 50  0001 C CNN
F 3 "" H 4650 2150 50  0001 C CNN
	1    4650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2100 4650 2150
Wire Wire Line
	4650 1750 4650 1800
Wire Wire Line
	7350 5100 7350 5150
Wire Wire Line
	7350 5150 7400 5150
Wire Wire Line
	7450 5150 7450 5100
$Comp
L power:GND #PWR0106
U 1 1 606F0D91
P 7400 5200
F 0 "#PWR0106" H 7400 4950 50  0001 C CNN
F 1 "GND" H 7405 5027 50  0000 C CNN
F 2 "" H 7400 5200 50  0001 C CNN
F 3 "" H 7400 5200 50  0001 C CNN
	1    7400 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5200 7400 5150
Connection ~ 7400 5150
Wire Wire Line
	7400 5150 7450 5150
Text Label 7950 4700 2    50   ~ 0
RC5
Text Label 7950 4800 2    50   ~ 0
RC4
Wire Wire Line
	7750 4700 7950 4700
Wire Wire Line
	7750 4800 7950 4800
$Comp
L Device:R R3
U 1 1 606FC66E
P 8100 4300
F 0 "R3" H 8170 4346 50  0000 L CNN
F 1 "10k" H 8170 4255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8030 4300 50  0001 C CNN
F 3 "~" H 8100 4300 50  0001 C CNN
	1    8100 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 6070131D
P 8100 4100
F 0 "#PWR0107" H 8100 3850 50  0001 C CNN
F 1 "GND" H 8105 3927 50  0000 C CNN
F 2 "" H 8100 4100 50  0001 C CNN
F 3 "" H 8100 4100 50  0001 C CNN
	1    8100 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8100 4100 8100 4150
Text Label 3900 6950 0    50   ~ 0
MCLR
Wire Wire Line
	3900 6950 4150 6950
Wire Wire Line
	4150 7050 3900 7050
$Comp
L power:GND #PWR0108
U 1 1 607335A7
P 3875 7150
F 0 "#PWR0108" H 3875 6900 50  0001 C CNN
F 1 "GND" V 3880 7022 50  0000 R CNN
F 2 "" H 3875 7150 50  0001 C CNN
F 3 "" H 3875 7150 50  0001 C CNN
	1    3875 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	3875 7150 4150 7150
$Comp
L power:GND #PWR0109
U 1 1 6073E8E5
P 4600 3550
F 0 "#PWR0109" H 4600 3300 50  0001 C CNN
F 1 "GND" V 4605 3422 50  0000 R CNN
F 2 "" H 4600 3550 50  0001 C CNN
F 3 "" H 4600 3550 50  0001 C CNN
	1    4600 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 60740C70
P 5100 3550
F 0 "#PWR0110" H 5100 3300 50  0001 C CNN
F 1 "GND" V 5105 3422 50  0000 R CNN
F 2 "" H 5100 3550 50  0001 C CNN
F 3 "" H 5100 3550 50  0001 C CNN
	1    5100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3500 4600 3550
Wire Wire Line
	5100 3500 5100 3550
Wire Wire Line
	4600 3200 4600 3100
Wire Wire Line
	4600 3100 4700 3100
Wire Wire Line
	5000 3100 5100 3100
Wire Wire Line
	5100 3100 5100 3200
Text Label 4600 2850 1    50   ~ 0
OS1
Text Label 5100 2850 1    50   ~ 0
OS2
Wire Wire Line
	4600 2850 4600 3100
Connection ~ 4600 3100
Wire Wire Line
	5100 2850 5100 3100
Connection ~ 5100 3100
Wire Wire Line
	3450 2575 3645 2575
$Comp
L power:GND #PWR0111
U 1 1 6079343F
P 7450 3150
F 0 "#PWR0111" H 7450 2900 50  0001 C CNN
F 1 "GND" V 7455 3022 50  0000 R CNN
F 2 "" H 7450 3150 50  0001 C CNN
F 3 "" H 7450 3150 50  0001 C CNN
	1    7450 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60793BE8
P 7800 2950
F 0 "C4" H 7915 2996 50  0000 L CNN
F 1 "100n" H 7915 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7838 2800 50  0001 C CNN
F 3 "~" H 7800 2950 50  0001 C CNN
	1    7800 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60794BC7
P 8200 2950
F 0 "R4" H 8270 2996 50  0000 L CNN
F 1 "5.6k" H 8270 2905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8130 2950 50  0001 C CNN
F 3 "~" H 8200 2950 50  0001 C CNN
	1    8200 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60795268
P 8400 2450
F 0 "R5" V 8193 2450 50  0000 C CNN
F 1 "5.6k" V 8284 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8330 2450 50  0001 C CNN
F 3 "~" H 8400 2450 50  0001 C CNN
	1    8400 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60796291
P 8950 2950
F 0 "R6" H 9020 2996 50  0000 L CNN
F 1 "10k" H 9020 2905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8880 2950 50  0001 C CNN
F 3 "~" H 8950 2950 50  0001 C CNN
	1    8950 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 60796913
P 8200 3150
F 0 "#PWR0112" H 8200 2900 50  0001 C CNN
F 1 "GND" V 8205 3022 50  0000 R CNN
F 2 "" H 8200 3150 50  0001 C CNN
F 3 "" H 8200 3150 50  0001 C CNN
	1    8200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2750 7450 2800
Wire Wire Line
	7450 3100 7450 3150
$Comp
L power:GND #PWR0113
U 1 1 607A0FED
P 7800 3150
F 0 "#PWR0113" H 7800 2900 50  0001 C CNN
F 1 "GND" V 7805 3022 50  0000 R CNN
F 2 "" H 7800 3150 50  0001 C CNN
F 3 "" H 7800 3150 50  0001 C CNN
	1    7800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2450 7800 2450
Wire Wire Line
	7800 2450 7800 2800
Wire Wire Line
	7800 3100 7800 3150
$Comp
L Diode:1N4148 D3
U 1 1 607AB7D5
P 8200 2200
F 0 "D3" V 8150 2100 50  0000 R CNN
F 1 "1N4148" V 8250 2100 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8200 2025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 8200 2200 50  0001 C CNN
	1    8200 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 2450 8200 2450
Wire Wire Line
	8200 2450 8200 2800
Connection ~ 7800 2450
Wire Wire Line
	8200 2350 8200 2450
Connection ~ 8200 2450
Wire Wire Line
	8250 2450 8200 2450
Wire Wire Line
	8550 2450 8650 2450
$Comp
L power:GND #PWR0114
U 1 1 607C3AD1
P 8950 3150
F 0 "#PWR0114" H 8950 2900 50  0001 C CNN
F 1 "GND" V 8955 3022 50  0000 R CNN
F 2 "" H 8950 3150 50  0001 C CNN
F 3 "" H 8950 3150 50  0001 C CNN
	1    8950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2650 8950 2750
Wire Wire Line
	8950 3100 8950 3150
Wire Wire Line
	8200 3100 8200 3150
Wire Wire Line
	8200 2050 8200 2000
Wire Wire Line
	8200 2000 8600 2000
Wire Wire Line
	8950 2000 8950 2150
$Comp
L Device:C C5
U 1 1 607D796D
P 8600 1800
F 0 "C5" H 8715 1846 50  0000 L CNN
F 1 "220u" H 8715 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 8638 1650 50  0001 C CNN
F 3 "~" H 8600 1800 50  0001 C CNN
	1    8600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1950 8600 2000
Connection ~ 8600 2000
Wire Wire Line
	8600 2000 8950 2000
$Comp
L power:GND #PWR0115
U 1 1 607DD12D
P 8600 1600
F 0 "#PWR0115" H 8600 1350 50  0001 C CNN
F 1 "GND" V 8605 1472 50  0000 R CNN
F 2 "" H 8600 1600 50  0001 C CNN
F 3 "" H 8600 1600 50  0001 C CNN
	1    8600 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 1600 8600 1650
$Comp
L Device:R R7
U 1 1 607E3140
P 9200 2000
F 0 "R7" V 8993 2000 50  0000 C CNN
F 1 "470" V 9084 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9130 2000 50  0001 C CNN
F 3 "~" H 9200 2000 50  0001 C CNN
	1    9200 2000
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 607E3D58
P 9550 2000
F 0 "D4" H 9543 1745 50  0000 C CNN
F 1 "LED" H 9543 1836 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 9550 2000 50  0001 C CNN
F 3 "~" H 9550 2000 50  0001 C CNN
	1    9550 2000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 607E53F9
P 9750 2000
F 0 "#PWR0116" H 9750 1750 50  0001 C CNN
F 1 "GND" V 9755 1872 50  0000 R CNN
F 2 "" H 9750 2000 50  0001 C CNN
F 3 "" H 9750 2000 50  0001 C CNN
	1    9750 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 2000 9700 2000
Wire Wire Line
	9400 2000 9350 2000
Wire Wire Line
	9050 2000 8950 2000
Connection ~ 8950 2000
Text Label 9250 2750 2    50   ~ 0
VUSB
Wire Wire Line
	9250 2750 8950 2750
Connection ~ 8950 2750
Wire Wire Line
	8950 2750 8950 2800
$Comp
L Connector:Conn_01x03_Female J6
U 1 1 60837904
P 4200 5150
F 0 "J6" H 4228 5176 50  0000 L CNN
F 1 "GND" H 4228 5085 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4200 5150 50  0001 C CNN
F 3 "~" H 4200 5150 50  0001 C CNN
	1    4200 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J7
U 1 1 6083824C
P 4200 6050
F 0 "J7" H 4228 6076 50  0000 L CNN
F 1 "VOL" H 4228 5985 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4200 6050 50  0001 C CNN
F 3 "~" H 4200 6050 50  0001 C CNN
	1    4200 6050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0117
U 1 1 6083905C
P 3950 5900
F 0 "#PWR0117" H 3950 5750 50  0001 C CNN
F 1 "VCC" H 3965 6073 50  0000 C CNN
F 2 "" H 3950 5900 50  0001 C CNN
F 3 "" H 3950 5900 50  0001 C CNN
	1    3950 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 608399FA
P 3950 5300
F 0 "#PWR0118" H 3950 5050 50  0001 C CNN
F 1 "GND" V 3955 5172 50  0000 R CNN
F 2 "" H 3950 5300 50  0001 C CNN
F 3 "" H 3950 5300 50  0001 C CNN
	1    3950 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5050 3950 5050
Wire Wire Line
	3950 5050 3950 5150
Wire Wire Line
	4000 5250 3950 5250
Connection ~ 3950 5250
Wire Wire Line
	3950 5250 3950 5300
Wire Wire Line
	4000 5150 3950 5150
Connection ~ 3950 5150
Wire Wire Line
	3950 5150 3950 5250
Wire Wire Line
	3950 5900 3950 5950
Wire Wire Line
	3950 6150 4000 6150
Wire Wire Line
	4000 6050 3950 6050
Connection ~ 3950 6050
Wire Wire Line
	3950 6050 3950 6150
Wire Wire Line
	4000 5950 3950 5950
Connection ~ 3950 5950
Wire Wire Line
	3950 5950 3950 6050
$Comp
L power:VCC #PWR0119
U 1 1 6086CB39
P 3950 6450
F 0 "#PWR0119" H 3950 6300 50  0001 C CNN
F 1 "VCC" H 3965 6623 50  0000 C CNN
F 2 "" H 3950 6450 50  0001 C CNN
F 3 "" H 3950 6450 50  0001 C CNN
	1    3950 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 6086BAE9
P 4350 6600
F 0 "J8" H 4450 6900 50  0000 C CNN
F 1 "VOLT" H 4450 6800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4350 6600 50  0001 C CNN
F 3 "~" H 4350 6600 50  0001 C CNN
	1    4350 6600
	-1   0    0    -1  
$EndComp
Text Label 4000 6500 0    50   ~ 0
VC
Text Label 4000 6700 0    50   ~ 0
V+
Wire Wire Line
	4000 6500 4150 6500
Wire Wire Line
	4000 6700 4150 6700
Wire Wire Line
	4150 6600 3950 6600
Wire Wire Line
	3950 6600 3950 6450
Text Label 3900 7050 0    50   ~ 0
V+
$Comp
L power:VCC #PWR0120
U 1 1 6089FCF3
P 5300 1450
F 0 "#PWR0120" H 5300 1300 50  0001 C CNN
F 1 "VCC" H 5315 1623 50  0000 C CNN
F 2 "" H 5300 1450 50  0001 C CNN
F 3 "" H 5300 1450 50  0001 C CNN
	1    5300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1450 5300 1500
Text Label 4650 1250 3    50   ~ 0
RD0
Wire Wire Line
	4650 1250 4650 1450
Text Label 9250 2150 2    50   ~ 0
VC
Wire Wire Line
	9250 2150 8950 2150
Connection ~ 8950 2150
Wire Wire Line
	8950 2150 8950 2250
$Comp
L Connector:Barrel_Jack_Switch J9
U 1 1 608B59D9
P 6250 2550
F 0 "J9" H 6307 2867 50  0000 C CNN
F 1 "JACK" H 6307 2776 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 6300 2510 50  0001 C CNN
F 3 "~" H 6300 2510 50  0001 C CNN
	1    6250 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 608DFBCA
P 6600 3150
F 0 "#PWR0121" H 6600 2900 50  0001 C CNN
F 1 "GND" V 6605 3022 50  0000 R CNN
F 2 "" H 6600 3150 50  0001 C CNN
F 3 "" H 6600 3150 50  0001 C CNN
	1    6600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2550 6600 2550
Wire Wire Line
	6600 2550 6600 2650
Wire Wire Line
	6550 2650 6600 2650
Connection ~ 6600 2650
Wire Wire Line
	6600 2650 6600 3150
Text Label 8000 4500 2    50   ~ 0
VUSB
Wire Wire Line
	8100 4450 8100 4500
Wire Wire Line
	7750 4500 8100 4500
Wire Wire Line
	5050 6300 5050 6400
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 609A658B
P 5050 6400
F 0 "#FLG0101" H 5050 6475 50  0001 C CNN
F 1 "PWR_FLAG" H 5050 6573 50  0000 C CNN
F 2 "" H 5050 6400 50  0001 C CNN
F 3 "~" H 5050 6400 50  0001 C CNN
	1    5050 6400
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0122
U 1 1 609A4F05
P 5050 6300
F 0 "#PWR0122" H 5050 6150 50  0001 C CNN
F 1 "VCC" H 5065 6473 50  0000 C CNN
F 2 "" H 5050 6300 50  0001 C CNN
F 3 "" H 5050 6300 50  0001 C CNN
	1    5050 6300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J11
U 1 1 60609573
P 4350 7150
F 0 "J11" H 4322 7124 50  0000 R CNN
F 1 "PICKIT" H 4322 7033 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4350 7150 50  0001 C CNN
F 3 "~" H 4350 7150 50  0001 C CNN
	1    4350 7150
	-1   0    0    -1  
$EndComp
Text Label 3900 7250 0    50   ~ 0
RB7
Wire Wire Line
	3900 7250 4150 7250
Text Label 3900 7350 0    50   ~ 0
RB6
Wire Wire Line
	3900 7350 4150 7350
Text Label 3900 7450 0    50   ~ 0
RB5
Wire Wire Line
	3900 7450 4150 7450
$Comp
L Device:C C6
U 1 1 6065BD34
P 6850 2950
F 0 "C6" H 6965 2996 50  0000 L CNN
F 1 "330n" H 6965 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 6888 2800 50  0001 C CNN
F 3 "~" H 6850 2950 50  0001 C CNN
	1    6850 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 6065C26E
P 6850 3150
F 0 "#PWR0123" H 6850 2900 50  0001 C CNN
F 1 "GND" V 6855 3022 50  0000 R CNN
F 2 "" H 6850 3150 50  0001 C CNN
F 3 "" H 6850 3150 50  0001 C CNN
	1    6850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2450 6850 2800
Wire Wire Line
	6850 3100 6850 3150
Wire Wire Line
	6550 2450 6850 2450
Connection ~ 6850 2450
Wire Wire Line
	6850 2450 7150 2450
Text Notes 1350 1000 0    118  ~ 24
PIC18F4550
Text Notes 1200 4750 0    118  ~ 24
PINES
Wire Notes Line
	1150 4650 950  4650
Wire Notes Line
	950  900  1300 900 
Wire Notes Line
	950  900  950  7600
Text Notes 6450 1000 0    118  ~ 24
ALIMENTACIÓN
Wire Notes Line
	1800 4650 5750 4650
Wire Notes Line
	950  7600 5750 7600
Wire Notes Line
	5750 900  5750 7600
Wire Notes Line
	2500 900  6400 900 
Wire Notes Line
	7750 900  10150 900 
Wire Notes Line
	10150 5650 5750 5650
Wire Notes Line
	10150 900  10150 5650
$EndSCHEMATC
