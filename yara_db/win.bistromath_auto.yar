rule win_bistromath_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.bistromath."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bistromath"
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
        $sequence_0 = { 8bec 83ec20 8bc2 53 56 8bf1 8945f4 }
            // n = 7, score = 400
            //   8bec                 | mov                 ebp, esp
            //   83ec20               | sub                 esp, 0x20
            //   8bc2                 | mov                 eax, edx
            //   53                   | push                ebx
            //   56                   | push                esi
            //   8bf1                 | mov                 esi, ecx
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax

        $sequence_1 = { f20f1145b4 c745b000000000 c645be00 e8???????? 6a00 68e8030000 ff7598 }
            // n = 7, score = 400
            //   f20f1145b4           | movsd               qword ptr [ebp - 0x4c], xmm0
            //   c745b000000000       | mov                 dword ptr [ebp - 0x50], 0
            //   c645be00             | mov                 byte ptr [ebp - 0x42], 0
            //   e8????????           |                     
            //   6a00                 | push                0
            //   68e8030000           | push                0x3e8
            //   ff7598               | push                dword ptr [ebp - 0x68]

        $sequence_2 = { e9???????? 8b7b1c 897c2420 397b20 7f19 8bcb e8???????? }
            // n = 7, score = 400
            //   e9????????           |                     
            //   8b7b1c               | mov                 edi, dword ptr [ebx + 0x1c]
            //   897c2420             | mov                 dword ptr [esp + 0x20], edi
            //   397b20               | cmp                 dword ptr [ebx + 0x20], edi
            //   7f19                 | jg                  0x1b
            //   8bcb                 | mov                 ecx, ebx
            //   e8????????           |                     

        $sequence_3 = { e9???????? 81bc24a003000032883588 757e c68424d001000047 c68424d101000065 c68424d201000074 c68424d301000054 }
            // n = 7, score = 400
            //   e9????????           |                     
            //   81bc24a003000032883588     | cmp    dword ptr [esp + 0x3a0], 0x88358832
            //   757e                 | jne                 0x80
            //   c68424d001000047     | mov                 byte ptr [esp + 0x1d0], 0x47
            //   c68424d101000065     | mov                 byte ptr [esp + 0x1d1], 0x65
            //   c68424d201000074     | mov                 byte ptr [esp + 0x1d2], 0x74
            //   c68424d301000054     | mov                 byte ptr [esp + 0x1d3], 0x54

        $sequence_4 = { c744245000000000 c744245400000000 e8???????? ff434c 83c404 8b442418 8b4b4c }
            // n = 7, score = 400
            //   c744245000000000     | mov                 dword ptr [esp + 0x50], 0
            //   c744245400000000     | mov                 dword ptr [esp + 0x54], 0
            //   e8????????           |                     
            //   ff434c               | inc                 dword ptr [ebx + 0x4c]
            //   83c404               | add                 esp, 4
            //   8b442418             | mov                 eax, dword ptr [esp + 0x18]
            //   8b4b4c               | mov                 ecx, dword ptr [ebx + 0x4c]

        $sequence_5 = { ff461c 8b5510 89548808 8b55f8 66c704880100 c644880300 c744880401000000 }
            // n = 7, score = 400
            //   ff461c               | inc                 dword ptr [esi + 0x1c]
            //   8b5510               | mov                 edx, dword ptr [ebp + 0x10]
            //   89548808             | mov                 dword ptr [eax + ecx*4 + 8], edx
            //   8b55f8               | mov                 edx, dword ptr [ebp - 8]
            //   66c704880100         | mov                 word ptr [eax + ecx*4], 1
            //   c644880300           | mov                 byte ptr [eax + ecx*4 + 3], 0
            //   c744880401000000     | mov                 dword ptr [eax + ecx*4 + 4], 1

        $sequence_6 = { e8???????? 83c410 85c0 7410 8b4c2458 81480400110000 89480c }
            // n = 7, score = 400
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10
            //   85c0                 | test                eax, eax
            //   7410                 | je                  0x12
            //   8b4c2458             | mov                 ecx, dword ptr [esp + 0x58]
            //   81480400110000       | or                  dword ptr [eax + 4], 0x1100
            //   89480c               | mov                 dword ptr [eax + 0xc], ecx

        $sequence_7 = { 8be5 5d c3 50 6a00 6800000002 ff15???????? }
            // n = 7, score = 400
            //   8be5                 | mov                 esp, ebp
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   50                   | push                eax
            //   6a00                 | push                0
            //   6800000002           | push                0x2000000
            //   ff15????????         |                     

        $sequence_8 = { c744880c00000000 c744881000000000 8bcb e8???????? 8b54245c 8b44245c 8b7214 }
            // n = 7, score = 400
            //   c744880c00000000     | mov                 dword ptr [eax + ecx*4 + 0xc], 0
            //   c744881000000000     | mov                 dword ptr [eax + ecx*4 + 0x10], 0
            //   8bcb                 | mov                 ecx, ebx
            //   e8????????           |                     
            //   8b54245c             | mov                 edx, dword ptr [esp + 0x5c]
            //   8b44245c             | mov                 eax, dword ptr [esp + 0x5c]
            //   8b7214               | mov                 esi, dword ptr [edx + 0x14]

        $sequence_9 = { c3 8b75fc 8d45f8 6a00 50 56 53 }
            // n = 7, score = 400
            //   c3                   | ret                 
            //   8b75fc               | mov                 esi, dword ptr [ebp - 4]
            //   8d45f8               | lea                 eax, [ebp - 8]
            //   6a00                 | push                0
            //   50                   | push                eax
            //   56                   | push                esi
            //   53                   | push                ebx

    condition:
        7 of them and filesize < 33816576
}