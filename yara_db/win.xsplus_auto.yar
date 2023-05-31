rule win_xsplus_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.xsplus."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.xsplus"
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
        $sequence_0 = { 8b760c 8b761c 8b4608 8b7e20 8b36 66394f18 }
            // n = 6, score = 400
            //   8b760c               | mov                 esi, dword ptr [esi + 0xc]
            //   8b761c               | mov                 esi, dword ptr [esi + 0x1c]
            //   8b4608               | mov                 eax, dword ptr [esi + 8]
            //   8b7e20               | mov                 edi, dword ptr [esi + 0x20]
            //   8b36                 | mov                 esi, dword ptr [esi]
            //   66394f18             | cmp                 word ptr [edi + 0x18], cx

        $sequence_1 = { 0fbe11 83fa5c 751c 8b45f4 0345f8 c6400100 8b4df4 }
            // n = 7, score = 300
            //   0fbe11               | movsx               edx, byte ptr [ecx]
            //   83fa5c               | cmp                 edx, 0x5c
            //   751c                 | jne                 0x1e
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   0345f8               | add                 eax, dword ptr [ebp - 8]
            //   c6400100             | mov                 byte ptr [eax + 1], 0
            //   8b4df4               | mov                 ecx, dword ptr [ebp - 0xc]

        $sequence_2 = { 8d8d60faffff 51 8d955cf9ffff 52 }
            // n = 4, score = 300
            //   8d8d60faffff         | lea                 ecx, [ebp - 0x5a0]
            //   51                   | push                ecx
            //   8d955cf9ffff         | lea                 edx, [ebp - 0x6a4]
            //   52                   | push                edx

        $sequence_3 = { 52 ff15???????? 8945fc 837dfc00 7504 33c0 eb05 }
            // n = 7, score = 300
            //   52                   | push                edx
            //   ff15????????         |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   837dfc00             | cmp                 dword ptr [ebp - 4], 0
            //   7504                 | jne                 6
            //   33c0                 | xor                 eax, eax
            //   eb05                 | jmp                 7

        $sequence_4 = { c745d406000000 6a00 6a00 6809100000 8b4508 50 }
            // n = 6, score = 300
            //   c745d406000000       | mov                 dword ptr [ebp - 0x2c], 6
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6809100000           | push                0x1009
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   50                   | push                eax

        $sequence_5 = { c6864b01000043 c74668e0a34000 6a0d e8???????? 59 8365fc00 }
            // n = 6, score = 300
            //   c6864b01000043       | mov                 byte ptr [esi + 0x14b], 0x43
            //   c74668e0a34000       | mov                 dword ptr [esi + 0x68], 0x40a3e0
            //   6a0d                 | push                0xd
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   8365fc00             | and                 dword ptr [ebp - 4], 0

        $sequence_6 = { 8b5510 81e2ffff0000 0fb7c2 8985b4fdffff 8b8db4fdffff 81e9cd860100 }
            // n = 6, score = 300
            //   8b5510               | mov                 edx, dword ptr [ebp + 0x10]
            //   81e2ffff0000         | and                 edx, 0xffff
            //   0fb7c2               | movzx               eax, dx
            //   8985b4fdffff         | mov                 dword ptr [ebp - 0x24c], eax
            //   8b8db4fdffff         | mov                 ecx, dword ptr [ebp - 0x24c]
            //   81e9cd860100         | sub                 ecx, 0x186cd

        $sequence_7 = { 81bdb8fdffff10010000 7434 83bdb8fdffff02 7453 83bdb8fdffff10 }
            // n = 5, score = 300
            //   81bdb8fdffff10010000     | cmp    dword ptr [ebp - 0x248], 0x110
            //   7434                 | je                  0x36
            //   83bdb8fdffff02       | cmp                 dword ptr [ebp - 0x248], 2
            //   7453                 | je                  0x55
            //   83bdb8fdffff10       | cmp                 dword ptr [ebp - 0x248], 0x10

        $sequence_8 = { 50 68d1870100 8b4d08 51 ff15???????? }
            // n = 5, score = 300
            //   50                   | push                eax
            //   68d1870100           | push                0x187d1
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   51                   | push                ecx
            //   ff15????????         |                     

        $sequence_9 = { 8975e4 33c0 39b810a84000 0f8491000000 }
            // n = 4, score = 300
            //   8975e4               | mov                 dword ptr [ebp - 0x1c], esi
            //   33c0                 | xor                 eax, eax
            //   39b810a84000         | cmp                 dword ptr [eax + 0x40a810], edi
            //   0f8491000000         | je                  0x97

        $sequence_10 = { 6804010000 8d8de0feffff 51 6a00 ff15???????? 6804010000 8d9578faffff }
            // n = 7, score = 300
            //   6804010000           | push                0x104
            //   8d8de0feffff         | lea                 ecx, [ebp - 0x120]
            //   51                   | push                ecx
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   6804010000           | push                0x104
            //   8d9578faffff         | lea                 edx, [ebp - 0x588]

        $sequence_11 = { 8dbdc9fbffff f3ab 66ab aa 8a0d???????? }
            // n = 5, score = 300
            //   8dbdc9fbffff         | lea                 edi, [ebp - 0x437]
            //   f3ab                 | rep stosd           dword ptr es:[edi], eax
            //   66ab                 | stosw               word ptr es:[edi], ax
            //   aa                   | stosb               byte ptr es:[edi], al
            //   8a0d????????         |                     

        $sequence_12 = { 50 ff95dcfeffff 837de405 7526 }
            // n = 4, score = 300
            //   50                   | push                eax
            //   ff95dcfeffff         | call                dword ptr [ebp - 0x124]
            //   837de405             | cmp                 dword ptr [ebp - 0x1c], 5
            //   7526                 | jne                 0x28

        $sequence_13 = { 50 6a01 6a00 8b4d08 51 6801000080 }
            // n = 6, score = 300
            //   50                   | push                eax
            //   6a01                 | push                1
            //   6a00                 | push                0
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   51                   | push                ecx
            //   6801000080           | push                0x80000001

        $sequence_14 = { 8b8db4fdffff 81e9cd860100 898db4fdffff 83bdb4fdffff03 }
            // n = 4, score = 300
            //   8b8db4fdffff         | mov                 ecx, dword ptr [ebp - 0x24c]
            //   81e9cd860100         | sub                 ecx, 0x186cd
            //   898db4fdffff         | mov                 dword ptr [ebp - 0x24c], ecx
            //   83bdb4fdffff03       | cmp                 dword ptr [ebp - 0x24c], 3

        $sequence_15 = { 7412 8d55e0 52 8b45dc 50 ff15???????? }
            // n = 6, score = 300
            //   7412                 | je                  0x14
            //   8d55e0               | lea                 edx, [ebp - 0x20]
            //   52                   | push                edx
            //   8b45dc               | mov                 eax, dword ptr [ebp - 0x24]
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_16 = { eb1a 8b4510 83e001 85c0 }
            // n = 4, score = 300
            //   eb1a                 | jmp                 0x1c
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   83e001               | and                 eax, 1
            //   85c0                 | test                eax, eax

    condition:
        7 of them and filesize < 597872
}