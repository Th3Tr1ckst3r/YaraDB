rule win_emotet_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.emotet."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.emotet"
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
        $sequence_0 = { 3c7a 7e0b 3c41 7c04 }
            // n = 4, score = 2900
            //   3c7a                 | mov                 byte ptr [ecx], 0x58
            //   7e0b                 | inc                 ecx
            //   3c41                 | jle                 0xd
            //   7c04                 | cmp                 al, 0x41

        $sequence_1 = { 3c41 7c04 3c5a 7e03 c60158 41 }
            // n = 6, score = 2900
            //   3c41                 | mov                 byte ptr [eax - 2], cl
            //   7c04                 | shr                 cx, 8
            //   3c5a                 | inc                 ecx
            //   7e03                 | mov                 byte ptr [eax - 1], cl
            //   c60158               | dec                 ebp
            //   41                   | cmp                 ebx, ecx

        $sequence_2 = { 8a01 3c30 7c04 3c39 7e13 3c61 }
            // n = 6, score = 2900
            //   8a01                 | lea                 eax, [eax + 4]
            //   3c30                 | inc                 ecx
            //   7c04                 | mov                 byte ptr [eax - 3], al
            //   3c39                 | inc                 ecx
            //   7e13                 | mov                 byte ptr [eax - 2], cl
            //   3c61                 | shr                 cx, 8

        $sequence_3 = { 3c39 7e13 3c61 7c04 3c7a 7e0b }
            // n = 6, score = 2900
            //   3c39                 | dec                 ebp
            //   7e13                 | lea                 eax, [eax + 4]
            //   3c61                 | inc                 ecx
            //   7c04                 | mov                 byte ptr [eax], cl
            //   3c7a                 | movzx               eax, cx
            //   7e0b                 | shr                 ecx, 0x10

        $sequence_4 = { 33c0 3903 5f 5e 0f95c0 5b 8be5 }
            // n = 7, score = 2400
            //   33c0                 | cmp                 al, 0x39
            //   3903                 | jle                 0x1f
            //   5f                   | cmp                 al, 0x61
            //   5e                   | jl                  0x14
            //   0f95c0               | cmp                 al, 0x7a
            //   5b                   | jle                 0x1f
            //   8be5                 | cmp                 al, 0x41

        $sequence_5 = { c60158 41 803900 75dd }
            // n = 4, score = 2400
            //   c60158               | cmp                 al, 0x5a
            //   41                   | jle                 0xd
            //   803900               | mov                 byte ptr [ecx], 0x58
            //   75dd                 | cmp                 al, 0x7a

        $sequence_6 = { 7708 0fb7c0 83c020 eb03 0fb7c0 69d23f000100 }
            // n = 6, score = 2300
            //   7708                 | jle                 0xd
            //   0fb7c0               | cmp                 al, 0x41
            //   83c020               | jl                  0xa
            //   eb03                 | cmp                 al, 0x5a
            //   0fb7c0               | cmp                 al, 0x39
            //   69d23f000100         | jle                 0x15

        $sequence_7 = { c1e910 8842fd 884afe c1e908 }
            // n = 4, score = 2100
            //   c1e910               | mov                 al, byte ptr [ecx]
            //   8842fd               | cmp                 al, 0x30
            //   884afe               | jl                  8
            //   c1e908               | cmp                 al, 0x39

        $sequence_8 = { 75f2 eb06 33c9 66894802 }
            // n = 4, score = 2100
            //   75f2                 | jl                  8
            //   eb06                 | cmp                 al, 0x5a
            //   33c9                 | jle                 0xb
            //   66894802             | mov                 byte ptr [ecx], 0x58

        $sequence_9 = { 8d5801 f6c30f 7406 83e3f0 83c310 }
            // n = 5, score = 2000
            //   8d5801               | cmp                 al, 0x7a
            //   f6c30f               | jle                 0x11
            //   7406                 | cmp                 al, 0x41
            //   83e3f0               | jl                  0xe
            //   83c310               | cmp                 al, 0x5a

        $sequence_10 = { 8945c8 8975d4 8955d8 e8???????? }
            // n = 4, score = 1900
            //   8945c8               | cmp                 eax, 0x7f
            //   8975d4               | jbe                 0xb
            //   8955d8               | shr                 eax, 7
            //   e8????????           |                     

        $sequence_11 = { 8b16 8945fc 8d45f8 6a04 }
            // n = 4, score = 1900
            //   8b16                 | shr                 eax, 7
            //   8945fc               | inc                 ecx
            //   8d45f8               | cmp                 eax, 0x7f
            //   6a04                 | ja                  0

        $sequence_12 = { 56 50 8b4774 03878c000000 50 ff15???????? 017758 }
            // n = 7, score = 1900
            //   56                   | mov                 ecx, dword ptr [ebp + 0xc]
            //   50                   | mov                 eax, edx
            //   8b4774               | mov                 edx, dword ptr [esi]
            //   03878c000000         | mov                 dword ptr [ebp - 4], eax
            //   50                   | lea                 eax, [ebp - 8]
            //   ff15????????         |                     
            //   017758               | push                4

        $sequence_13 = { ff15???????? 8b17 83c40c 8b4d0c 8bc2 }
            // n = 5, score = 1900
            //   ff15????????         |                     
            //   8b17                 | inc                 ecx
            //   83c40c               | cmp                 eax, 0x7f
            //   8b4d0c               | ja                  2
            //   8bc2                 | jbe                 0xb

        $sequence_14 = { 0faf4510 50 6a08 ff15???????? 50 }
            // n = 5, score = 1900
            //   0faf4510             | add                 ebx, 0x10
            //   50                   | lea                 ebx, [eax + 1]
            //   6a08                 | test                bl, 0xf
            //   ff15????????         |                     
            //   50                   | je                  0xb

        $sequence_15 = { 8b4508 894dcc 8d4dc8 8945c8 }
            // n = 4, score = 1900
            //   8b4508               | push                0
            //   894dcc               | push                -1
            //   8d4dc8               | push                eax
            //   8945c8               | push                ecx

        $sequence_16 = { c745fc04000000 50 8d45f8 81ca00000020 50 52 }
            // n = 6, score = 1800
            //   c745fc04000000       | cmp                 al, 0x7a
            //   50                   | jle                 0x11
            //   8d45f8               | cmp                 al, 0x41
            //   81ca00000020         | jl                  0xe
            //   50                   | jl                  6
            //   52                   | cmp                 al, 0x5a

        $sequence_17 = { 0fb7c1 c1e910 66c1e808 4d8d4004 418840fd 418848fe 66c1e908 }
            // n = 7, score = 1700
            //   0fb7c1               | shr                 ecx, 6
            //   c1e910               | mov                 dword ptr [ebp + 0x6f], ecx
            //   66c1e808             | dec                 eax
            //   4d8d4004             | add                 ecx, eax
            //   418840fd             | jmp                 0xa
            //   418848fe             | cmp                 byte ptr [ecx], 0
            //   66c1e908             | je                  0xf

        $sequence_18 = { 4c8bdc 49895b08 49896b10 49897318 49897b20 4156 4883ec70 }
            // n = 7, score = 1700
            //   4c8bdc               | dec                 eax
            //   49895b08             | dec                 ecx
            //   49896b10             | dec                 eax
            //   49897318             | cmp                 ecx, eax
            //   49897b20             | movzx               eax, cx
            //   4156                 | shr                 ecx, 0x10
            //   4883ec70             | shr                 ax, 8

        $sequence_19 = { d3e7 83f841 7208 83f85a }
            // n = 4, score = 1700
            //   d3e7                 | cmp                 al, 0x7a
            //   83f841               | jle                 0x13
            //   7208                 | cmp                 al, 0x41
            //   83f85a               | cmp                 al, 0x30

        $sequence_20 = { 418848fe 66c1e908 418848ff 4d3bd9 72cf }
            // n = 5, score = 1700
            //   418848fe             | inc                 ecx
            //   66c1e908             | mov                 byte ptr [eax - 2], cl
            //   418848ff             | shr                 cx, 8
            //   4d3bd9               | inc                 ecx
            //   72cf                 | mov                 byte ptr [eax - 1], cl

        $sequence_21 = { 483bd8 730b 488bcb e8???????? 488bd8 }
            // n = 5, score = 1700
            //   483bd8               | push                esi
            //   730b                 | dec                 eax
            //   488bcb               | sub                 esp, 0x70
            //   e8????????           |                     
            //   488bd8               | sub                 ecx, edx

        $sequence_22 = { 2bca d1e9 03ca c1e906 894d18 }
            // n = 5, score = 1700
            //   2bca                 | sub                 ecx, edx
            //   d1e9                 | shr                 ecx, 1
            //   03ca                 | add                 ecx, edx
            //   c1e906               | shr                 ecx, 6
            //   894d18               | mov                 dword ptr [ebp + 0x18], ecx

        $sequence_23 = { 418bd0 d3e2 418bcb d3e0 }
            // n = 4, score = 1700
            //   418bd0               | dec                 eax
            //   d3e2                 | mov                 dword ptr [eax + 8], ecx
            //   418bcb               | dec                 eax
            //   d3e0                 | mov                 dword ptr [eax + 0x10], edx

        $sequence_24 = { 48895010 4c894018 4c894820 c3 }
            // n = 4, score = 1700
            //   48895010             | shr                 ecx, 1
            //   4c894018             | add                 ecx, edx
            //   4c894820             | shr                 ecx, 6
            //   c3                   | mov                 dword ptr [esp + 0x30], ecx

        $sequence_25 = { 4803c8 eb08 803900 7408 48ffc9 483bc8 }
            // n = 6, score = 1700
            //   4803c8               | add                 ecx, edx
            //   eb08                 | shr                 ecx, 6
            //   803900               | mov                 dword ptr [ebp + 0x20], ecx
            //   7408                 | sub                 ecx, edx
            //   48ffc9               | shr                 ecx, 1
            //   483bc8               | add                 ecx, edx

        $sequence_26 = { c1e807 41 83f87f 77f7 }
            // n = 4, score = 1600
            //   c1e807               | mov                 dword ptr [ebx + 0x18], esi
            //   41                   | dec                 ecx
            //   83f87f               | mov                 dword ptr [ebx + 0x20], edi
            //   77f7                 | inc                 ecx

        $sequence_27 = { f7e1 b84fecc44e 2bca d1e9 }
            // n = 4, score = 1500
            //   f7e1                 | jl                  8
            //   b84fecc44e           | cmp                 al, 0x5a
            //   2bca                 | jle                 0xb
            //   d1e9                 | mov                 byte ptr [ecx], 0x58

        $sequence_28 = { 84c0 75f2 eb03 c60100 }
            // n = 4, score = 1500
            //   84c0                 | shr                 ecx, 1
            //   75f2                 | add                 ecx, edx
            //   eb03                 | shr                 ecx, 6
            //   c60100               | mov                 dword ptr [esp + 0x30], ecx

        $sequence_29 = { 7907 83c107 3bf7 72e8 }
            // n = 4, score = 1200
            //   7907                 | dec                 ecx
            //   83c107               | mov                 dword ptr [ebx + 0x18], esi
            //   3bf7                 | dec                 ecx
            //   72e8                 | mov                 dword ptr [ebx + 0x20], edi

        $sequence_30 = { 83c104 894e04 8b00 85c0 75f4 }
            // n = 5, score = 1200
            //   83c104               | jl                  0xc
            //   894e04               | cmp                 al, 0x5a
            //   8b00                 | jl                  6
            //   85c0                 | cmp                 al, 0x7a
            //   75f4                 | jle                 0xf

        $sequence_31 = { 52 52 52 68???????? 52 }
            // n = 5, score = 1100
            //   52                   | inc                 ecx
            //   52                   | push                esi
            //   52                   | dec                 eax
            //   68????????           |                     
            //   52                   | sub                 esp, 0x70

        $sequence_32 = { 56 57 6a1e 8d45e0 }
            // n = 4, score = 1100
            //   56                   | push                ebx
            //   57                   | push                0
            //   6a1e                 | lea                 eax, [ebp - 4]
            //   8d45e0               | push                ebx

        $sequence_33 = { 8d4dfc 51 6a00 6a01 8d55f8 }
            // n = 5, score = 1100
            //   8d4dfc               | push                esi
            //   51                   | mov                 esi, ecx
            //   6a00                 | mov                 ebx, 0x844cc300
            //   6a01                 | push                edi
            //   8d55f8               | push                0

        $sequence_34 = { 83ec48 53 56 57 6a44 }
            // n = 5, score = 1100
            //   83ec48               | cmp                 eax, 0x7f
            //   53                   | ja                  0
            //   56                   | push                0
            //   57                   | push                -1
            //   6a44                 | push                eax

        $sequence_35 = { 83f87f 760d 8d642400 c1e807 }
            // n = 4, score = 1000
            //   83f87f               | inc                 ecx
            //   760d                 | mov                 byte ptr [eax - 2], cl
            //   8d642400             | shr                 cx, 8
            //   c1e807               | inc                 ecx

        $sequence_36 = { b901000000 83f87f 7609 c1e807 41 }
            // n = 5, score = 900
            //   b901000000           | dec                 eax
            //   83f87f               | mov                 ebx, eax
            //   7609                 | dec                 eax
            //   c1e807               | mov                 dword ptr [eax + 0x10], edx
            //   41                   | dec                 esp

        $sequence_37 = { 6a00 6aff 50 51 ff15???????? }
            // n = 5, score = 800
            //   6a00                 | mov                 dword ptr [ebx + 0x20], edi
            //   6aff                 | inc                 ecx
            //   50                   | push                esi
            //   51                   | dec                 eax
            //   ff15????????         |                     

        $sequence_38 = { 50 6a00 6a01 6a00 ff15???????? a3???????? }
            // n = 6, score = 800
            //   50                   | mov                 dword ptr [ebx + 0x10], ebp
            //   6a00                 | dec                 ecx
            //   6a01                 | mov                 dword ptr [ebx + 0x18], esi
            //   6a00                 | dec                 ecx
            //   ff15????????         |                     
            //   a3????????           |                     

        $sequence_39 = { 50 6a00 ff75fc 6800040000 }
            // n = 4, score = 600
            //   50                   | add                 eax, 0x20
            //   6a00                 | jmp                 0x11
            //   ff75fc               | movzx               eax, ax
            //   6800040000           | imul                edx, edx, 0x1003f

        $sequence_40 = { 56 68400000f0 6a18 33f6 56 }
            // n = 5, score = 600
            //   56                   | push                ebx
            //   68400000f0           | push                0
            //   6a18                 | push                0
            //   33f6                 | push                dword ptr [ebp + 8]
            //   56                   | push                ebx

        $sequence_41 = { ff75fc 6800040000 6a00 6a00 6a00 }
            // n = 5, score = 600
            //   ff75fc               | mov                 dword ptr [ebp - 0x14], ecx
            //   6800040000           | mov                 dword ptr [ebp - 0x18], edx
            //   6a00                 | mov                 dword ptr [ebp - 0x1c], esi
            //   6a00                 | mov                 ebp, esp
            //   6a00                 | push                esi

        $sequence_42 = { 53 56 8bf1 bb00c34c84 }
            // n = 4, score = 600
            //   53                   | push                ecx
            //   56                   | push                eax
            //   8bf1                 | push                0
            //   bb00c34c84           | push                1

        $sequence_43 = { 50 56 6800800000 6a6a }
            // n = 4, score = 600
            //   50                   | push                eax
            //   56                   | mov                 edi, dword ptr [ebp + 8]
            //   6800800000           | cmp                 esi, 0
            //   6a6a                 | mov                 dword ptr [ebp - 0x10], eax

        $sequence_44 = { 008b45fc33d2 00b871800780 00558b ec 8b450c 00558b ec }
            // n = 7, score = 500
            //   008b45fc33d2         | jle                 0xb
            //   00b871800780         | mov                 byte ptr [ecx], 0x58
            //   00558b               | jle                 0x15
            //   ec                   | cmp                 al, 0x61
            //   8b450c               | jl                  0xa
            //   00558b               | cmp                 al, 0x7a
            //   ec                   | jle                 0x15

        $sequence_45 = { 6a03 6a00 6a00 ff7508 53 50 }
            // n = 6, score = 500
            //   6a03                 | xor                 ecx, ecx
            //   6a00                 | mov                 edx, esp
            //   6a00                 | xor                 esi, esi
            //   ff7508               | mov                 dword ptr [edx + 0xc], esi
            //   53                   | mov                 edx, esp
            //   50                   | xor                 esi, esi

        $sequence_46 = { 83ec10 53 6a00 8d45fc }
            // n = 4, score = 500
            //   83ec10               | mov                 eax, dword ptr [esp + 0x44]
            //   53                   | cmp                 ecx, 0xfc0
            //   6a00                 | mov                 ecx, dword ptr [esp + 0x7c]
            //   8d45fc               | mov                 dword ptr [esp + 0x78], ebp

        $sequence_47 = { 51 ff75f8 50 6a03 6a30 }
            // n = 5, score = 500
            //   51                   | jmp                 0xd
            //   ff75f8               | movzx               eax, ax
            //   50                   | imul                edx, edx, 0x1003f
            //   6a03                 | lea                 ebx, [eax + 1]
            //   6a30                 | test                bl, 0xf

        $sequence_48 = { 01ca 89d6 83c60c 8b7df4 8b4c0f0c }
            // n = 5, score = 500
            //   01ca                 | cmp                 al, 0x41
            //   89d6                 | jl                  0x12
            //   83c60c               | cmp                 al, 0x30
            //   8b7df4               | jl                  8
            //   8b4c0f0c             | cmp                 al, 0x39

        $sequence_49 = { 01f1 8b7db4 11fa 8908 }
            // n = 4, score = 500
            //   01f1                 | cmp                 al, 0x61
            //   8b7db4               | jl                  0xc
            //   11fa                 | cmp                 al, 0x7a
            //   8908                 | jle                 0xd

        $sequence_50 = { 55 89e5 648b0d18000000 8b4130 83b8a400000006 0f92c2 80e201 }
            // n = 7, score = 500
            //   55                   | cmp                 al, 0x41
            //   89e5                 | jl                  0xa
            //   648b0d18000000       | cmp                 al, 0x5a
            //   8b4130               | jle                 0xd
            //   83b8a400000006       | mov                 byte ptr [ecx], 0x58
            //   0f92c2               | inc                 ecx
            //   80e201               | jl                  6

        $sequence_51 = { 8b7d08 83fe00 8945f0 894dec 8955e8 8975e4 }
            // n = 6, score = 500
            //   8b7d08               | cmp                 dword ptr [ebx], eax
            //   83fe00               | pop                 edi
            //   8945f0               | pop                 esi
            //   894dec               | setne               al
            //   8955e8               | pop                 ebx
            //   8975e4               | mov                 esp, ebp

        $sequence_52 = { 55 8bec 83ec08 56 57 8bf1 33ff }
            // n = 7, score = 500
            //   55                   | mov                 ebx, eax
            //   8bec                 | add                 ebx, 0x3c
            //   83ec08               | mov                 edx, esp
            //   56                   | xor                 esi, esi
            //   57                   | mov                 dword ptr [edx + 0xc], esi
            //   8bf1                 | mov                 dword ptr [edx + 8], esi
            //   33ff                 | xor                 ecx, ecx

        $sequence_53 = { 8bf1 bb00c34c84 57 33ff }
            // n = 4, score = 500
            //   8bf1                 | mov                 dword ptr [edx + 0xc], esi
            //   bb00c34c84           | mov                 dword ptr [edx + 8], esi
            //   57                   | mov                 dword ptr [edx + 4], esi
            //   33ff                 | xor                 esi, esi

        $sequence_54 = { 8b466c 5f 5e 5b 8be5 5d }
            // n = 6, score = 500
            //   8b466c               | push                0
            //   5f                   | push                0x104
            //   5e                   | push                edi
            //   5b                   | add                 esp, 0x14
            //   8be5                 | mov                 esi, dword ptr [eax + 0x20]
            //   5d                   | mov                 edi, dword ptr [eax + 0x40]

        $sequence_55 = { 56 8b4510 8b4d0c 8b5508 befbffffff c600e8 }
            // n = 6, score = 500
            //   56                   | cmp                 al, 0x5a
            //   8b4510               | jle                 0xd
            //   8b4d0c               | mov                 byte ptr [ecx], 0x58
            //   8b5508               | jl                  6
            //   befbffffff           | cmp                 al, 0x39
            //   c600e8               | jle                 0x17

        $sequence_56 = { 8b7020 8b7840 89c3 83c33c }
            // n = 4, score = 300
            //   8b7020               | cmp                 eax, 0x7f
            //   8b7840               | mov                 ecx, 1
            //   89c3                 | cmp                 eax, 0x7f
            //   83c33c               | jbe                 0x1c

        $sequence_57 = { 33d2 c605????????00 0fb6d8 e8???????? 0fb6c3 }
            // n = 5, score = 200
            //   33d2                 | cmp                 al, 0x41
            //   c605????????00       |                     
            //   0fb6d8               | jl                  0xe
            //   e8????????           |                     
            //   0fb6c3               | jl                  6

        $sequence_58 = { 89e2 31f6 89720c 897208 }
            // n = 4, score = 200
            //   89e2                 | shr                 eax, 7
            //   31f6                 | mov                 ecx, 1
            //   89720c               | cmp                 eax, 0x7f
            //   897208               | jbe                 0x29

        $sequence_59 = { 8bf8 e8???????? eb04 8b7c2430 }
            // n = 4, score = 200
            //   8bf8                 | cmp                 al, 0x41
            //   e8????????           |                     
            //   eb04                 | jl                  0xc
            //   8b7c2430             | cmp                 al, 0x5a

        $sequence_60 = { ff15???????? 83f803 7405 83f802 751e }
            // n = 5, score = 200
            //   ff15????????         |                     
            //   83f803               | jl                  6
            //   7405                 | cmp                 al, 0x7a
            //   83f802               | jle                 0xf
            //   751e                 | cmp                 al, 0x41

        $sequence_61 = { 743e 8b5c2430 85db 741d }
            // n = 4, score = 200
            //   743e                 | pop                 esi
            //   8b5c2430             | setne               al
            //   85db                 | pop                 ebx
            //   741d                 | mov                 esp, ebp

        $sequence_62 = { 84c0 7519 33c9 0f1f4000 }
            // n = 4, score = 200
            //   84c0                 | cmp                 al, 0x61
            //   7519                 | jl                  6
            //   33c9                 | cmp                 al, 0x7a
            //   0f1f4000             | jle                 0x11

        $sequence_63 = { 8bfe e8???????? 8bd8 85db 746f 8b45f8 }
            // n = 6, score = 100
            //   8bfe                 | mov                 byte ptr [ecx], 0x58
            //   e8????????           |                     
            //   8bd8                 | inc                 ecx
            //   85db                 | cmp                 byte ptr [ecx], 0
            //   746f                 | jne                 0xffffffe8
            //   8b45f8               | jl                  6

        $sequence_64 = { 89e5 56 83e4f8 81ecc8000000 8b4508 f20f1005???????? }
            // n = 6, score = 100
            //   89e5                 | push                0
            //   56                   | push                -1
            //   83e4f8               | push                eax
            //   81ecc8000000         | push                ecx
            //   8b4508               | push                esi
            //   f20f1005????????     |                     

        $sequence_65 = { 740a ff15???????? 89442408 8b442444 890424 e8???????? 8b442444 }
            // n = 7, score = 100
            //   740a                 | test                al, al
            //   ff15????????         |                     
            //   89442408             | jne                 0xfffffff4
            //   8b442444             | jmp                 7
            //   890424               | mov                 byte ptr [ecx], 0
            //   e8????????           |                     
            //   8b442444             | shr                 eax, 7

        $sequence_66 = { ff15???????? 48 8d1585330000 48 8d4c2420 ff15???????? 48 }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   48                   | cmp                 al, 0x5a
            //   8d1585330000         | jle                 7
            //   48                   | mov                 byte ptr [ecx], 0x58
            //   8d4c2420             | inc                 ecx
            //   ff15????????         |                     
            //   48                   | cmp                 byte ptr [ecx], 0

        $sequence_67 = { 890c24 c744240400000000 8954241c e8???????? 8d0dda30d800 }
            // n = 5, score = 100
            //   890c24               | cmp                 esi, edi
            //   c744240400000000     | jb                  0xffffffef
            //   8954241c             | push                edx
            //   e8????????           |                     
            //   8d0dda30d800         | push                edx

        $sequence_68 = { 48 8bc8 48 8bd8 e8???????? 48 8d154d1f0000 }
            // n = 7, score = 100
            //   48                   | jle                 5
            //   8bc8                 | mov                 byte ptr [ecx], 0x58
            //   48                   | inc                 ecx
            //   8bd8                 | cmp                 byte ptr [ecx], 0
            //   e8????????           |                     
            //   48                   | cmp                 al, 0x5a
            //   8d154d1f0000         | jle                 5

        $sequence_69 = { 498bca 4d8bc1 e8???????? 0fb6d8 4885ff }
            // n = 5, score = 100
            //   498bca               | test                eax, eax
            //   4d8bc1               | je                  0x51
            //   e8????????           |                     
            //   0fb6d8               | test                al, al
            //   4885ff               | jne                 0x1b

        $sequence_70 = { 488bf9 48894810 4c8d4008 488d4810 488d15e70f0000 }
            // n = 5, score = 100
            //   488bf9               | xor                 ecx, ecx
            //   48894810             | nop                 dword ptr [eax]
            //   4c8d4008             | xor                 edx, edx
            //   488d4810             | movzx               ebx, al
            //   488d15e70f0000       | movzx               eax, bl

        $sequence_71 = { 81f9c00f0000 8b4c247c 896c2478 89442474 89542470 }
            // n = 5, score = 100
            //   81f9c00f0000         | inc                 edx
            //   8b4c247c             | cmp                 eax, 0x7f
            //   896c2478             | ja                  0xfffffffd
            //   89442474             | jns                 9
            //   89542470             | add                 ecx, 7

        $sequence_72 = { 890424 c744240400040000 c744240802000000 8954240c 8b54246c }
            // n = 5, score = 100
            //   890424               | ja                  0xfffffffd
            //   c744240400040000     | shr                 eax, 7
            //   c744240802000000     | inc                 esi
            //   8954240c             | cmp                 eax, 0x7f
            //   8b54246c             | ja                  0xfffffffd

        $sequence_73 = { f20f10442450 8b442444 8b4838 8b5034 891424 894c2404 }
            // n = 6, score = 100
            //   f20f10442450         | mov                 edi, eax
            //   8b442444             | test                edi, edi
            //   8b4838               | je                  0x40
            //   8b5034               | shr                 eax, 7
            //   891424               | inc                 ecx
            //   894c2404             | cmp                 eax, 0x7f

        $sequence_74 = { e8???????? 4c8bf0 e8???????? 488d1547380000 }
            // n = 4, score = 100
            //   e8????????           |                     
            //   4c8bf0               | cmp                 eax, 2
            //   e8????????           |                     
            //   488d1547380000       | jne                 0x28

    condition:
        7 of them and filesize < 733184
}