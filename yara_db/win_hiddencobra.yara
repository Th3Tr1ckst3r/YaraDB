rule hc_fallchill__hiddencobra__rc4_stack_key : malware windows apt
{
  meta:
    description = "rc4_stack_key"
  strings:
    $stack_key = { 0d 06 09 2a ?? ?? ?? ??  86 48 86 f7 ?? ?? ?? ?? 
                   0d 01 01 01 ?? ?? ?? ??  05 00 03 82 41 8b c9 41
                   8b d1 49 8b 40 08 48 ff  c2 88 4c 02 ff ff c1 81
                   f9 00 01 00 00 7c eb }
  condition:
    (uint16(0) == 0x5A4D and uint16(uint32(0x3c)) == 0x4550) 
    and $stack_key
}



rule hc_fallchill__hiddencobra__success_fail_codes : malware windows apt
{
  meta:
    description = "success_fail_codes"
  strings:
    $s0 = { 68 7a 34 12 00 }
    $s1 = { ba 7a 34 12 00 }
    $f0 = { 68 5c 34 12 00 }
    $f1 = { ba 5c 34 12 00 }
  condition:
    (uint16(0) == 0x5A4D and uint16(uint32(0x3c)) == 0x4550)
    and (($s0 and $f0) or ($s1 and $f1))
}



rule hc_fallchill__hiddencobra__xor_ip : malware windows apt
{
  meta:
    description = "hidden cobra: XOR used for IP"
  strings:
    $s0 = { 53 3a 9c 57 }
    $s1 = { 57 9c 3a 53 }
  condition:
    (uint16(0) == 0x5A4D and uint16(uint32(0x3c)) == 0x4550)
    and any of them
}



rule hc_deltacharlie__hiddencobra_Malware_Updater : malware windows apt
{
   meta:
       Author="US-CERT Code Analysis Team"
       Date="2017/08/02"
       Incident="10132963"
       MD5_1="8F4FC2E10B6EC15A01E0AF24529040DD"
       MD5_2="584AC94142F0B7C0DF3D0ADDE6E661ED"
       Info="Malware may be used to update multiple systems with secondary payloads"
       super_rule=1
   strings:
       $s0 = { 8A4C040480F15D80C171884C04044083F8107CEC } 
       $s1 = { 8A4D0080F19580E97C884D00454B75F0 }
   condition:
       any of them
}



rule hc_volgmer__hiddencobra : malware windows
{
  meta:
    description = "Malformed User Agent"
  strings:
    $s = "Mozillar/"
  condition:
    (uint16(0) == 0x5A4D and uint16(uint32(0x3c)) == 0x4550) 
    and $s
}



rule hc_deltacharlie__hiddencobra_rsa_key: malware windows apt
{
  meta:
	description = "RSA Key"
  strings:
	$rsaKey = {7B 4E 1E A7 E9 3F 36 4C DE F4 F0 99 C4 D9 B7 94
            A1 FF F2 97 D3 91 13 9D C0 12 02 E4 4C BB 6C 77
            48 EE 6F 4B 9B 53 60 98 45 A5 28 65 8A 0B F8 39
            73 D7 1A 44 13 B3 6A BB 61 44 AF 31 47 E7 87 C2
            AE 7A A7 2C 3A D9 5C 2E 42 1A A6 78 FE 2C AD ED
            39 3F FA D0 AD 3D D9 C5 3D 28 EF 3D 67 B1 E0 68
            3F 58 A0 19 27 CC 27 C9 E8 D8 1E 7E EE 91 DD 13
            B3 47 EF 57 1A CA FF 9A 60 E0 64 08 AA E2 92 D0}

  condition:
        any of them
}



rule hc_deltacharlie__hiddencobra_misspellings: malware windows apt
{
  meta:
	description = "DDoS Misspelled Strings"
  strings:
        $STR1 = "Wating" wide ascii
        $STR2 = "Reamin" wide ascii
        $STR3 = "laptos" wide ascii

  condition:
        (uint16(0) == 0x5A4D
         or uint16(0) == 0xCFD0
         or uint16(0) == 0xC3D4
         or uint32(0) == 0x46445025
         or uint32(1) == 0x6674725C)
        and 2 of them
}

rule hc_deltacharlie__ddos_url_builder: malware windows apt
{
  meta:
        description = "DDoS Random URL Builder"
  strings:
        $randomUrlBuilder = { 83 EC 48 53 55 56 57 8B  3D ?? ?? ?? ?? 33 C0 C7
                              44 24 28 B4 6F 41 00 C7  44 24 2C B0 6F 41 00 C7
                              44 24 30 AC 6F 41 00 C7  44 24 34 A8 6F 41 00 C7
                              44 24 38 A4 6F 41 00 C7  44 24 3C A0 6F 41 00 C7
                              44 24 40 9C 6F 41 00 C7  44 24 44 94 6F 41 00 C7
                              44 24 48 8C 6F 41 00 C7  44 24 4C 88 6F 41 00 C7
                              44 24 50 80 6F 41 00 89  44 24 54 C7 44 24 10 7C
                              6F 41 00 C7 44 24 14 78  6F 41 00 C7 44 24 18 74
                              6F 41 00 C7 44 24 1C 70  6F 41 00 C7 44 24 20 6C
                              6F 41 00 89 44 24 24 FF  D7 99 B9 0B 00 00 00 F7
                              F9 8B 74 94 28 BA 9C 6F  41 00 66 8B 06 66 3B 02
                              74 34 8B FE 83 C9 FF 33  C0 8B 54 24 60 F2 AE 8B
                              6C 24 5C A1 ?? ?? ?? ??  F7 D1 49 89 45 00 8B FE
                              33 C0 8D 5C 11 05 83 C9  FF 03 DD F2 AE F7 D1 49
                              8B FE 8B D1 EB 78 FF D7  99 B9 05 00 00 00 8B 6C
                              24 5C F7 F9 83 C9 FF 33  C0 8B 74 94 10 8B 54 24
                              60 8B FE F2 AE F7 D1 49  BF 60 6F 41 00 8B D9 83
                              C9 FF F2 AE F7 D1 8B C2  49 03 C3 8B FE 8D 5C 01
                              05 8B 0D ?? ?? ?? ?? 89  4D 00 83 C9 FF 33 C0 03
                              DD F2 AE F7 D1 49 8D 7C  2A 05 8B D1 C1 E9 02 F3
                              A5 8B CA 83 E1 03 F3 A4  BF 60 6F 41 00 83 C9 FF
                              F2 AE F7 D1 49 BE 60 6F  41 00 8B D1 8B FE 83 C9
                              FF 33 C0 F2 AE F7 D1 49  8B FB 2B F9 8B CA 8B C1
                              C1 E9 02 F3 A5 8B C8 83  E1 03 F3 A4 8B 7C 24 60
                              8D 75 04 57 56 E8 ?? ??  ?? ?? 83 C4 08 C6 04 3E
                              2E 8B C5 C6 03 00 5F 5E  5D 5B 83 C4 48 C3 }
  condition:
        $randomUrlBuilder
}