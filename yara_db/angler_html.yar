rule angler_html
{
meta:
	author = "Josh Berry"
	date = "2016-06-26"
	description = "Angler Exploit Kit Detection"
	hash0 = "afca949ab09c5583a2ea5b2006236666"
	sample_filetype = "js-html"
	yaragenerator = "https://github.com/Xen0ph0n/YaraGenerator"
strings:
	$string0 = " A9 3E AF D5 9AQ FA 14 BC F2 A0H EA 7FfJ A58 A3 B1 BD 85 DB F3 B4 B6 FB B2 B4 14 82 19 88 28 D0 EA 2"
	$string1 = " 2BS 25 26p 20 3F 81 0E D3 9C 84 C7 EC C3 C41M C48 D3 B5N 09 C2z 98 7B 09. DF 05 5EQ DF A3 B6 EE D5 "
	$string2 = "9 A1Fg A8 837 9A A9 0A 1D 40b02 A5U6 22o 16 DC 5D F5 F5 FA BE FB EDX F0 87 DB C9 7B D6 AC F6D 10 1AJ"
	$string3 = "24 AA 17 FB B0 96d DBN 05 EE F6 0F 24 D4 D0 C0 E4 96 03 A3 03 20/ 04 40 DB 8F 7FI A6 DC F5 09 0FWV 1"
	$string4 = "Fq B3 94 E3 3E EFw E6 AA9 3A 5B 9E2 D2 EC AF6 10c 83 0F DF BB FBx AF B4 1BV 5C DD F8 9BR 97v D0U 9EG"
	$string5 = "29 9B 01E C85 86 B0 09 EC E07 AFCY 19 E5 11 1C 92 E2 DA A9 5D 19P 3A BF AB D6 B3 3FZ B4 92 FF E1 27 "
	$string6 = "B A9 88 B8 F0 EBLd 8E 08 18 11P EE BFk 15 5BM D6 B7 CEh AF 9C 8F 04 89 88 5E F6 ED 13 8EN1p 86Vk BC "
	$string7 = "w F4 C8 16pV 22 0A BB EB 83 7D BC 89 B6 E06 8B 2A DC E6 7D CE. 0Dh 18 0A8 5E 60 0C BF A4 00M 00 E3 3"
	$string8 = "B7 C6 E3 8E DC 3BR 60L 94h D8 AA7k5s 0D 7Fb 8B 80P E0 1BP EBT B5 03zE D0o 2A B97 18 F39 7C 94 99 11 "
	$string9 = "kY 24 8E 3E 94 84 D2 00 1EB 16 A4 9C 28 24 C1B BB 22 7D 97c F5 BA AD C4 5C 23 5D 3D 5C A7d5 0C F6 EA"
	$string10 = "08 01 3A 15 3B E0 1A E2 89 5B A2 F4 ED 87O F9l A99 124 27 BF BB A1c 2BW 12Z 07 AA D9 81 B7 A6-5 E2 E"
	$string11 = " 16 BF A7 0E 00 16 BB 8FB CBn FC D8 9C C7 EA AC C2q 85n A96I D1 9B FC8 BDl B8 3Ajf 7B ADH FD 20 88 F"
	$string12 = "  ML    "
	$string13 = " AEJ 3B C7 BFy EF F07X D3 A0 1E B4q C4 BE 3A 10 E7 A0 FE D1Jhp 89 A0sj 1CW 08 D5 F7 C8 C6 D5I 81 D2 "
	$string14 = "B 24 90 ED CEP C8 C9 9B E5 25 09 C6B- 2B 3B C7 28 C9 C62 EB D3 D5 ED DE A8 7F A9mNs 87 12 82 03 A2 8"
	$string15 = "A 3A A2L DFa 18 11P 00 7F1 BBbY FA 5E 04 C4 5D 89 F3S DAN B5 CAi 8D 0A AC A8 0A ABI E6 1E 89 BB 07 D"
	$string16 = "C B5 FD 0B F9 0Ch CE 01 14 8Dp AF 24 E0 E3 D90 DD FF B0 07 2Ad 0B 7D B0 B2 D8 BD E6 A7 CE E1 E4 3E5 "
	$string17 = "19 0C 85 14r/ 8C F3 84 2B 8C CF 90 93 E2 F6zo C3 D40 A6 94 01 02Q 21G AB B9 CDx 9D FB 21 2C 10 C3 3C"
	$string18 = "FAV D7y A0 C7Ld4 01 22 EE B0 1EY FAB BA E0 01 24 15g C5 DA6 19 EEsl BF C7O 9F 8B E8 AF 93 F52 00 06 "
condition:
	18 of them
}
