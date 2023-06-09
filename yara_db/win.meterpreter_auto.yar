rule win_meterpreter_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.meterpreter."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.meterpreter"
        malpedia_rule_date = "20230328"
        malpedia_hash = "9d2d75cef573c1c2d861f5197df8f563b05a305d"
        malpedia_version = "20230407"
        malpedia_license = "CC BY-SA 4.0"
        malpedia_sharing = "TLP:WHITE"

    /* DISCLAIMER
     * The strings used in this rule have been automatically selected from the
     * disassembly of memory dumps and unpacked files, using YARA-Signator.
     * The code and documentation is published here:
     * https://github.com/fxb-cocacoding/yara-signator
     * As Malpedia is used as data source, please note that for a given
     * number of families, only single samples are documented.
     * This likely impacts the degree of generalization these rules will offer.
     * Take the described generation method also into consideration when you
     * apply the rules in your use cases and assign them confidence levels.
     */


    strings:
        $sequence_0 = { 55 8bec dcec 088b55895356 108b3a85ff89 7dfc 750e }
            // n = 7, score = 200
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   dcec                 | fsub                st(4), st(0)
            //   088b55895356         | or                  byte ptr [ebx + 0x56538955], cl
            //   108b3a85ff89         | adc                 byte ptr [ebx - 0x76007ac6], cl
            //   7dfc                 | jge                 0xfffffffe
            //   750e                 | jne                 0x10

        $sequence_1 = { 66833800 7508 6683780200 7406 }
            // n = 4, score = 200
            //   66833800             | cmp                 word ptr [eax], 0
            //   7508                 | jne                 0xa
            //   6683780200           | cmp                 word ptr [eax + 2], 0
            //   7406                 | je                  8

        $sequence_2 = { 56 e8???????? 85d9 f5 }
            // n = 4, score = 200
            //   56                   | push                esi
            //   e8????????           |                     
            //   85d9                 | test                ecx, ebx
            //   f5                   | cmc                 

        $sequence_3 = { e70c 8b4339 b273 1466 83780f00 }
            // n = 5, score = 200
            //   e70c                 | out                 0xc, eax
            //   8b4339               | mov                 eax, dword ptr [ebx + 0x39]
            //   b273                 | mov                 dl, 0x73
            //   1466                 | adc                 al, 0x66
            //   83780f00             | cmp                 dword ptr [eax + 0xf], 0

        $sequence_4 = { 0884c9751c8b4e 50 89487c 8b4672 8b5754 822000 0000 }
            // n = 7, score = 200
            //   0884c9751c8b4e       | or                  byte ptr [ecx + ecx*8 + 0x4e8b1c75], al
            //   50                   | push                eax
            //   89487c               | mov                 dword ptr [eax + 0x7c], ecx
            //   8b4672               | mov                 eax, dword ptr [esi + 0x72]
            //   8b5754               | mov                 edx, dword ptr [edi + 0x54]
            //   822000               | and                 byte ptr [eax], 0
            //   0000                 | add                 byte ptr [eax], al

        $sequence_5 = { 83c4c4 2bf0 8931 5e be9be55dc3 }
            // n = 5, score = 200
            //   83c4c4               | add                 esp, -0x3c
            //   2bf0                 | sub                 esi, eax
            //   8931                 | mov                 dword ptr [ecx], esi
            //   5e                   | pop                 esi
            //   be9be55dc3           | mov                 esi, 0xc35de59b

        $sequence_6 = { 37 f9 40 45 }
            // n = 4, score = 200
            //   37                   | aaa                 
            //   f9                   | stc                 
            //   40                   | inc                 eax
            //   45                   | inc                 ebp

        $sequence_7 = { 624dc9 75c7 85c0 7406 }
            // n = 4, score = 200
            //   624dc9               | bound               ecx, qword ptr [ebp - 0x37]
            //   75c7                 | jne                 0xffffffc9
            //   85c0                 | test                eax, eax
            //   7406                 | je                  8

        $sequence_8 = { 5d c20800 44 e70c 8b4339 b273 }
            // n = 6, score = 200
            //   5d                   | pop                 ebp
            //   c20800               | ret                 8
            //   44                   | inc                 esp
            //   e70c                 | out                 0xc, eax
            //   8b4339               | mov                 eax, dword ptr [ebx + 0x39]
            //   b273                 | mov                 dl, 0x73

        $sequence_9 = { 8bd0 8bfe 83c9ff 338183c408f2 ae f7d1 }
            // n = 6, score = 200
            //   8bd0                 | mov                 edx, eax
            //   8bfe                 | mov                 edi, esi
            //   83c9ff               | or                  ecx, 0xffffffff
            //   338183c408f2         | xor                 eax, dword ptr [ecx - 0xdf73b7d]
            //   ae                   | scasb               al, byte ptr es:[edi]
            //   f7d1                 | not                 ecx

    condition:
        7 of them and filesize < 188416
}