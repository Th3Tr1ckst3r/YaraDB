rule win_korlia_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-29"
        version = "1"
        description = "Detects win.korlia."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.korlia"
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
        $sequence_0 = { 6a32 50 ff15???????? 85c0 }
            // n = 4, score = 2400
            //   6a32                 | push                0x32
            //   50                   | push                eax
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax

        $sequence_1 = { b980ee3600 99 f7f9 b873b2e745 }
            // n = 4, score = 2200
            //   b980ee3600           | mov                 ecx, 0x36ee80
            //   99                   | cdq                 
            //   f7f9                 | idiv                ecx
            //   b873b2e745           | mov                 eax, 0x45e7b273

        $sequence_2 = { c1fa14 8bc2 c1e81f 03d0 52 68???????? 51 }
            // n = 7, score = 2200
            //   c1fa14               | sar                 edx, 0x14
            //   8bc2                 | mov                 eax, edx
            //   c1e81f               | shr                 eax, 0x1f
            //   03d0                 | add                 edx, eax
            //   52                   | push                edx
            //   68????????           |                     
            //   51                   | push                ecx

        $sequence_3 = { 7410 6a28 68???????? 6aff 53 6a00 6a00 }
            // n = 7, score = 2200
            //   7410                 | je                  0x12
            //   6a28                 | push                0x28
            //   68????????           |                     
            //   6aff                 | push                -1
            //   53                   | push                ebx
            //   6a00                 | push                0
            //   6a00                 | push                0

        $sequence_4 = { 0f9445e4 5b 59 5a c745fcffffffff }
            // n = 5, score = 2200
            //   0f9445e4             | sete                byte ptr [ebp - 0x1c]
            //   5b                   | pop                 ebx
            //   59                   | pop                 ecx
            //   5a                   | pop                 edx
            //   c745fcffffffff       | mov                 dword ptr [ebp - 4], 0xffffffff

        $sequence_5 = { c645e401 c745fc00000000 52 51 53 b868584d56 }
            // n = 6, score = 2200
            //   c645e401             | mov                 byte ptr [ebp - 0x1c], 1
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   52                   | push                edx
            //   51                   | push                ecx
            //   53                   | push                ebx
            //   b868584d56           | mov                 eax, 0x564d5868

        $sequence_6 = { 68???????? 51 ffd6 8bc7 }
            // n = 4, score = 2200
            //   68????????           |                     
            //   51                   | push                ecx
            //   ffd6                 | call                esi
            //   8bc7                 | mov                 eax, edi

        $sequence_7 = { 8bc7 b9005c2605 99 f7f9 b859be904a }
            // n = 5, score = 2200
            //   8bc7                 | mov                 eax, edi
            //   b9005c2605           | mov                 ecx, 0x5265c00
            //   99                   | cdq                 
            //   f7f9                 | idiv                ecx
            //   b859be904a           | mov                 eax, 0x4a90be59

        $sequence_8 = { 53 6a01 53 53 53 51 }
            // n = 6, score = 1900
            //   53                   | push                ebx
            //   6a01                 | push                1
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   51                   | push                ecx

        $sequence_9 = { e8???????? 83c410 85c0 7f14 }
            // n = 4, score = 1500
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10
            //   85c0                 | test                eax, eax
            //   7f14                 | jg                  0x16

        $sequence_10 = { 6a01 6a00 6a00 6800000040 50 ff15???????? 8bf0 }
            // n = 7, score = 700
            //   6a01                 | push                1
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6800000040           | push                0x40000000
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax

        $sequence_11 = { 8b442404 56 6a00 6a00 6a01 6a00 6a00 }
            // n = 7, score = 700
            //   8b442404             | mov                 eax, dword ptr [esp + 4]
            //   56                   | push                esi
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a01                 | push                1
            //   6a00                 | push                0
            //   6a00                 | push                0

        $sequence_12 = { 50 56 ff15???????? 56 ff15???????? b001 }
            // n = 6, score = 600
            //   50                   | push                eax
            //   56                   | push                esi
            //   ff15????????         |                     
            //   56                   | push                esi
            //   ff15????????         |                     
            //   b001                 | mov                 al, 1

        $sequence_13 = { f2ae f7d1 2bf9 6810270000 }
            // n = 4, score = 600
            //   f2ae                 | repne scasb         al, byte ptr es:[edi]
            //   f7d1                 | not                 ecx
            //   2bf9                 | sub                 edi, ecx
            //   6810270000           | push                0x2710

        $sequence_14 = { 7423 8b542410 8b44240c 8d4c2408 }
            // n = 4, score = 600
            //   7423                 | je                  0x25
            //   8b542410             | mov                 edx, dword ptr [esp + 0x10]
            //   8b44240c             | mov                 eax, dword ptr [esp + 0xc]
            //   8d4c2408             | lea                 ecx, [esp + 8]

        $sequence_15 = { ff15???????? 8bf0 83feff 7423 8b542410 }
            // n = 5, score = 600
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   83feff               | cmp                 esi, -1
            //   7423                 | je                  0x25
            //   8b542410             | mov                 edx, dword ptr [esp + 0x10]

        $sequence_16 = { 8bf9 81e7ff000000 03f2 03f7 }
            // n = 4, score = 500
            //   8bf9                 | mov                 edi, ecx
            //   81e7ff000000         | and                 edi, 0xff
            //   03f2                 | add                 esi, edx
            //   03f7                 | add                 esi, edi

        $sequence_17 = { 8b4c240c 898840200000 58 c20800 e9???????? 6800060000 }
            // n = 6, score = 500
            //   8b4c240c             | mov                 ecx, dword ptr [esp + 0xc]
            //   898840200000         | mov                 dword ptr [eax + 0x2040], ecx
            //   58                   | pop                 eax
            //   c20800               | ret                 8
            //   e9????????           |                     
            //   6800060000           | push                0x600

        $sequence_18 = { e8???????? 8a4c2404 6a01 884814 8b4c240c 898840200000 }
            // n = 6, score = 500
            //   e8????????           |                     
            //   8a4c2404             | mov                 cl, byte ptr [esp + 4]
            //   6a01                 | push                1
            //   884814               | mov                 byte ptr [eax + 0x14], cl
            //   8b4c240c             | mov                 ecx, dword ptr [esp + 0xc]
            //   898840200000         | mov                 dword ptr [eax + 0x2040], ecx

        $sequence_19 = { 8b65e8 ff7588 ff15???????? 833d????????ff }
            // n = 4, score = 500
            //   8b65e8               | mov                 esp, dword ptr [ebp - 0x18]
            //   ff7588               | push                dword ptr [ebp - 0x78]
            //   ff15????????         |                     
            //   833d????????ff       |                     

        $sequence_20 = { 894d00 8b542438 83c504 50 895500 }
            // n = 5, score = 500
            //   894d00               | mov                 dword ptr [ebp], ecx
            //   8b542438             | mov                 edx, dword ptr [esp + 0x38]
            //   83c504               | add                 ebp, 4
            //   50                   | push                eax
            //   895500               | mov                 dword ptr [ebp], edx

        $sequence_21 = { ff742410 ff742410 e8???????? c21000 e8???????? 8a4c2404 6a01 }
            // n = 7, score = 500
            //   ff742410             | push                dword ptr [esp + 0x10]
            //   ff742410             | push                dword ptr [esp + 0x10]
            //   e8????????           |                     
            //   c21000               | ret                 0x10
            //   e8????????           |                     
            //   8a4c2404             | mov                 cl, byte ptr [esp + 4]
            //   6a01                 | push                1

        $sequence_22 = { 680030c800 6a00 6a00 68???????? }
            // n = 4, score = 500
            //   680030c800           | push                0xc83000
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   68????????           |                     

        $sequence_23 = { b8447c0000 e8???????? 53 56 57 }
            // n = 5, score = 500
            //   b8447c0000           | mov                 eax, 0x7c44
            //   e8????????           |                     
            //   53                   | push                ebx
            //   56                   | push                esi
            //   57                   | push                edi

        $sequence_24 = { ff15???????? 833d????????ff 750c ff742404 ff15???????? 59 }
            // n = 6, score = 500
            //   ff15????????         |                     
            //   833d????????ff       |                     
            //   750c                 | jne                 0xe
            //   ff742404             | push                dword ptr [esp + 4]
            //   ff15????????         |                     
            //   59                   | pop                 ecx

        $sequence_25 = { ffd6 8d44240c 6804010000 50 }
            // n = 4, score = 400
            //   ffd6                 | call                esi
            //   8d44240c             | lea                 eax, [esp + 0xc]
            //   6804010000           | push                0x104
            //   50                   | push                eax

        $sequence_26 = { 51 ff15???????? a1???????? b981000000 }
            // n = 4, score = 400
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   a1????????           |                     
            //   b981000000           | mov                 ecx, 0x81

        $sequence_27 = { 750c ff15???????? 53 e9???????? }
            // n = 4, score = 400
            //   750c                 | jne                 0xe
            //   ff15????????         |                     
            //   53                   | push                ebx
            //   e9????????           |                     

        $sequence_28 = { 6880000000 6800000400 8bce e8???????? }
            // n = 4, score = 400
            //   6880000000           | push                0x80
            //   6800000400           | push                0x40000
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     

        $sequence_29 = { 33c0 8dbc245e020000 66899c245c020000 f3ab }
            // n = 4, score = 300
            //   33c0                 | xor                 eax, eax
            //   8dbc245e020000       | lea                 edi, [esp + 0x25e]
            //   66899c245c020000     | mov                 word ptr [esp + 0x25c], bx
            //   f3ab                 | rep stosd           dword ptr es:[edi], eax

        $sequence_30 = { 81ec08010000 8d442400 50 6806000200 6a00 68???????? 6801000080 }
            // n = 7, score = 300
            //   81ec08010000         | sub                 esp, 0x108
            //   8d442400             | lea                 eax, [esp]
            //   50                   | push                eax
            //   6806000200           | push                0x20006
            //   6a00                 | push                0
            //   68????????           |                     
            //   6801000080           | push                0x80000001

        $sequence_31 = { ff15???????? 85c0 0f8599000000 53 56 }
            // n = 5, score = 300
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f8599000000         | jne                 0x9f
            //   53                   | push                ebx
            //   56                   | push                esi

        $sequence_32 = { 6a00 8d542414 6a00 52 68???????? 6a00 ff15???????? }
            // n = 7, score = 300
            //   6a00                 | push                0
            //   8d542414             | lea                 edx, [esp + 0x14]
            //   6a00                 | push                0
            //   52                   | push                edx
            //   68????????           |                     
            //   6a00                 | push                0
            //   ff15????????         |                     

        $sequence_33 = { 8d4c2410 6804010000 51 aa ff15???????? }
            // n = 5, score = 300
            //   8d4c2410             | lea                 ecx, [esp + 0x10]
            //   6804010000           | push                0x104
            //   51                   | push                ecx
            //   aa                   | stosb               byte ptr es:[edi], al
            //   ff15????????         |                     

        $sequence_34 = { ff15???????? 50 ff15???????? 68d0070000 ff15???????? }
            // n = 5, score = 300
            //   ff15????????         |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   68d0070000           | push                0x7d0
            //   ff15????????         |                     

        $sequence_35 = { 740b 8b35???????? 50 ffd6 eb06 8b35???????? a1???????? }
            // n = 7, score = 300
            //   740b                 | je                  0xd
            //   8b35????????         |                     
            //   50                   | push                eax
            //   ffd6                 | call                esi
            //   eb06                 | jmp                 8
            //   8b35????????         |                     
            //   a1????????           |                     

        $sequence_36 = { 1bc0 5e 24fe 5b 40 81c408010000 c3 }
            // n = 7, score = 300
            //   1bc0                 | sbb                 eax, eax
            //   5e                   | pop                 esi
            //   24fe                 | and                 al, 0xfe
            //   5b                   | pop                 ebx
            //   40                   | inc                 eax
            //   81c408010000         | add                 esp, 0x108
            //   c3                   | ret                 

        $sequence_37 = { 68???????? 51 ff15???????? 8b54240c 8bf0 52 ff15???????? }
            // n = 7, score = 300
            //   68????????           |                     
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   8b54240c             | mov                 edx, dword ptr [esp + 0xc]
            //   8bf0                 | mov                 esi, eax
            //   52                   | push                edx
            //   ff15????????         |                     

        $sequence_38 = { 8b35???????? a1???????? 3bc3 7403 }
            // n = 4, score = 300
            //   8b35????????         |                     
            //   a1????????           |                     
            //   3bc3                 | cmp                 eax, ebx
            //   7403                 | je                  5

        $sequence_39 = { 7403 50 ffd6 b912010000 }
            // n = 4, score = 300
            //   7403                 | je                  5
            //   50                   | push                eax
            //   ffd6                 | call                esi
            //   b912010000           | mov                 ecx, 0x112

        $sequence_40 = { e8???????? 6880000000 8d857cffffff 6a00 50 e8???????? 8b750c }
            // n = 7, score = 100
            //   e8????????           |                     
            //   6880000000           | push                0x80
            //   8d857cffffff         | lea                 eax, [ebp - 0x84]
            //   6a00                 | push                0
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b750c               | mov                 esi, dword ptr [ebp + 0xc]

        $sequence_41 = { ff15???????? e9???????? 6a00 6a00 8d85d4f2ffff 50 68???????? }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   e9????????           |                     
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   8d85d4f2ffff         | lea                 eax, [ebp - 0xd2c]
            //   50                   | push                eax
            //   68????????           |                     

        $sequence_42 = { 83c40c 8d85c883ffff 83c310 03fe 03de }
            // n = 5, score = 100
            //   83c40c               | add                 esp, 0xc
            //   8d85c883ffff         | lea                 eax, [ebp - 0x7c38]
            //   83c310               | add                 ebx, 0x10
            //   03fe                 | add                 edi, esi
            //   03de                 | add                 ebx, esi

        $sequence_43 = { c745d4686e4000 e8???????? bf???????? 83c9ff 33c0 }
            // n = 5, score = 100
            //   c745d4686e4000       | mov                 dword ptr [ebp - 0x2c], 0x406e68
            //   e8????????           |                     
            //   bf????????           |                     
            //   83c9ff               | or                  ecx, 0xffffffff
            //   33c0                 | xor                 eax, eax

        $sequence_44 = { 83f806 0f87eb020000 ff248558174000 8b442430 85c0 }
            // n = 5, score = 100
            //   83f806               | cmp                 eax, 6
            //   0f87eb020000         | ja                  0x2f1
            //   ff248558174000       | jmp                 dword ptr [eax*4 + 0x401758]
            //   8b442430             | mov                 eax, dword ptr [esp + 0x30]
            //   85c0                 | test                eax, eax

        $sequence_45 = { 6a40 6a00 50 e8???????? 6800080000 8d85bcf7ffff }
            // n = 6, score = 100
            //   6a40                 | push                0x40
            //   6a00                 | push                0
            //   50                   | push                eax
            //   e8????????           |                     
            //   6800080000           | push                0x800
            //   8d85bcf7ffff         | lea                 eax, [ebp - 0x844]

        $sequence_46 = { ffd0 8b4614 6a00 6a00 6aff ff7508 }
            // n = 6, score = 100
            //   ffd0                 | call                eax
            //   8b4614               | mov                 eax, dword ptr [esi + 0x14]
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6aff                 | push                -1
            //   ff7508               | push                dword ptr [ebp + 8]

        $sequence_47 = { 8bc8 53 83e103 53 f3a4 89542419 }
            // n = 6, score = 100
            //   8bc8                 | mov                 ecx, eax
            //   53                   | push                ebx
            //   83e103               | and                 ecx, 3
            //   53                   | push                ebx
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   89542419             | mov                 dword ptr [esp + 0x19], edx

        $sequence_48 = { 6a00 b8???????? 83e103 6a00 50 }
            // n = 5, score = 100
            //   6a00                 | push                0
            //   b8????????           |                     
            //   83e103               | and                 ecx, 3
            //   6a00                 | push                0
            //   50                   | push                eax

        $sequence_49 = { 50 e8???????? 83c40c 8d85e4f4ffff }
            // n = 4, score = 100
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   8d85e4f4ffff         | lea                 eax, [ebp - 0xb1c]

        $sequence_50 = { 53 aa 8d442414 8d8c2494020000 50 }
            // n = 5, score = 100
            //   53                   | push                ebx
            //   aa                   | stosb               byte ptr es:[edi], al
            //   8d442414             | lea                 eax, [esp + 0x14]
            //   8d8c2494020000       | lea                 ecx, [esp + 0x294]
            //   50                   | push                eax

    condition:
        7 of them and filesize < 263168
}