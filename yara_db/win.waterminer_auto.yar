rule win_waterminer_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.waterminer."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.waterminer"
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
        $sequence_0 = { 03bc24a8000000 488bcd 4c8d0d35cb0300 83e13f }
            // n = 4, score = 100
            //   03bc24a8000000       | lea                 eax, [0x55894]
            //   488bcd               | inc                 ecx
            //   4c8d0d35cb0300       | xor                 edx, ebp
            //   83e13f               | inc                 esp

        $sequence_1 = { 05???????? 8bf4 50 6a00 }
            // n = 4, score = 100
            //   05????????           |                     
            //   8bf4                 | mov                 esi, esp
            //   50                   | push                eax
            //   6a00                 | push                0

        $sequence_2 = { 02c8 41880c18 418a03 240f }
            // n = 4, score = 100
            //   02c8                 | or                  byte ptr [ecx + edi + 0x3d], al
            //   41880c18             | lea                 eax, [edx + edx]
            //   418a03               | dec                 eax
            //   240f                 | mov                 ebx, dword ptr [esp + 0x50]

        $sequence_3 = { 02d0 49ffc3 418d4001 881418 }
            // n = 4, score = 100
            //   02d0                 | cmp                 al, 9
            //   49ffc3               | add                 cl, al
            //   418d4001             | inc                 ecx
            //   881418               | mov                 byte ptr [eax + ebx], cl

        $sequence_4 = { c1e006 8b0c95c02b4b00 0fbe540134 52 }
            // n = 4, score = 100
            //   c1e006               | shl                 eax, 6
            //   8b0c95c02b4b00       | mov                 ecx, dword ptr [edx*4 + 0x4b2bc0]
            //   0fbe540134           | movsx               edx, byte ptr [ecx + eax + 0x34]
            //   52                   | push                edx

        $sequence_5 = { 8b8da0f7ffff 898df4f4ffff 8b95a0f7ffff 83ea01 8995a0f7ffff 83bdf4f4ffff00 7f12 }
            // n = 7, score = 100
            //   8b8da0f7ffff         | mov                 ecx, dword ptr [ebp - 0x860]
            //   898df4f4ffff         | mov                 dword ptr [ebp - 0xb0c], ecx
            //   8b95a0f7ffff         | mov                 edx, dword ptr [ebp - 0x860]
            //   83ea01               | sub                 edx, 1
            //   8995a0f7ffff         | mov                 dword ptr [ebp - 0x860], edx
            //   83bdf4f4ffff00       | cmp                 dword ptr [ebp - 0xb0c], 0
            //   7f12                 | jg                  0x14

        $sequence_6 = { 03442410 4403e8 428b4405e7 418bd5 }
            // n = 4, score = 100
            //   03442410             | mov                 edx, edx
            //   4403e8               | dec                 esp
            //   428b4405e7           | lea                 eax, [0x55894]
            //   418bd5               | add                 eax, dword ptr [esp + 0xc]

        $sequence_7 = { 03c0 2bc8 0f84ec040000 8d41ff 8b848288d20600 }
            // n = 5, score = 100
            //   03c0                 | inc                 esp
            //   2bc8                 | add                 edx, eax
            //   0f84ec040000         | dec                 eax
            //   8d41ff               | lea                 eax, [0x5561a]
            //   8b848288d20600       | inc                 ecx

        $sequence_8 = { 83780400 0f8495000000 8b0d???????? 894de4 c745e0b02b4b00 }
            // n = 5, score = 100
            //   83780400             | cmp                 dword ptr [eax + 4], 0
            //   0f8495000000         | je                  0x9b
            //   8b0d????????         |                     
            //   894de4               | mov                 dword ptr [ebp - 0x1c], ecx
            //   c745e0b02b4b00       | mov                 dword ptr [ebp - 0x20], 0x4b2bb0

        $sequence_9 = { 0344240c 4403d0 428b4405e7 418bd2 }
            // n = 4, score = 100
            //   0344240c             | inc                 ecx
            //   4403d0               | lea                 eax, [eax + 1]
            //   428b4405e7           | mov                 byte ptr [eax + ebx], dl
            //   418bd2               | add                 dl, al

        $sequence_10 = { c745fcffffffff 8b8dc0fdffff 898d98feffff 68???????? 68???????? 8b8598feffff }
            // n = 6, score = 100
            //   c745fcffffffff       | mov                 dword ptr [ebp - 4], 0xffffffff
            //   8b8dc0fdffff         | mov                 ecx, dword ptr [ebp - 0x240]
            //   898d98feffff         | mov                 dword ptr [ebp - 0x168], ecx
            //   68????????           |                     
            //   68????????           |                     
            //   8b8598feffff         | mov                 eax, dword ptr [ebp - 0x168]

        $sequence_11 = { 7418 817df8e9fd0000 740f 0fb74df8 51 ff15???????? }
            // n = 6, score = 100
            //   7418                 | je                  0x1a
            //   817df8e9fd0000       | cmp                 dword ptr [ebp - 8], 0xfde9
            //   740f                 | je                  0x11
            //   0fb74df8             | movzx               ecx, word ptr [ebp - 8]
            //   51                   | push                ecx
            //   ff15????????         |                     

        $sequence_12 = { 02c0 0844393d 8d0412 488b5c2450 }
            // n = 4, score = 100
            //   02c0                 | add                 al, al
            //   0844393d             | or                  byte ptr [ecx + edi + 0x3d], al
            //   8d0412               | lea                 eax, [edx + edx]
            //   488b5c2450           | dec                 eax

        $sequence_13 = { 8b9590fdffff 0fb68230794400 ff24851c794400 8b4d0c }
            // n = 4, score = 100
            //   8b9590fdffff         | mov                 edx, dword ptr [ebp - 0x270]
            //   0fb68230794400       | movzx               eax, byte ptr [edx + 0x447930]
            //   ff24851c794400       | jmp                 dword ptr [eax*4 + 0x44791c]
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]

        $sequence_14 = { 0344240c 4403d0 488d051a560500 418b0400 }
            // n = 4, score = 100
            //   0344240c             | inc                 ebx
            //   4403d0               | inc                 ecx
            //   488d051a560500       | lea                 eax, [eax + 1]
            //   418b0400             | mov                 byte ptr [eax + ebx], dl

        $sequence_15 = { c745f444544a00 eb07 c745f4886f4a00 8b45f4 50 }
            // n = 5, score = 100
            //   c745f444544a00       | mov                 dword ptr [ebp - 0xc], 0x4a5444
            //   eb07                 | jmp                 9
            //   c745f4886f4a00       | mov                 dword ptr [ebp - 0xc], 0x4a6f88
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   50                   | push                eax

    condition:
        7 of them and filesize < 1556480
}