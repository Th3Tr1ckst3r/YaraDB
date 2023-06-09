rule win_unidentified_001_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.unidentified_001."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_001"
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
        $sequence_0 = { ff5108 8b45f8 3bc3 0f8435fdffff 8b08 }
            // n = 5, score = 100
            //   ff5108               | call                dword ptr [ecx + 8]
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   3bc3                 | cmp                 eax, ebx
            //   0f8435fdffff         | je                  0xfffffd3b
            //   8b08                 | mov                 ecx, dword ptr [eax]

        $sequence_1 = { 3bc1 0f87c8000000 0f844bfbffff b952555300 3bc1 }
            // n = 5, score = 100
            //   3bc1                 | cmp                 eax, ecx
            //   0f87c8000000         | ja                  0xce
            //   0f844bfbffff         | je                  0xfffffb51
            //   b952555300           | mov                 ecx, 0x535552
            //   3bc1                 | cmp                 eax, ecx

        $sequence_2 = { bf???????? 57 e8???????? 8d45d4 50 6a07 }
            // n = 6, score = 100
            //   bf????????           |                     
            //   57                   | push                edi
            //   e8????????           |                     
            //   8d45d4               | lea                 eax, [ebp - 0x2c]
            //   50                   | push                eax
            //   6a07                 | push                7

        $sequence_3 = { 0f84d8000000 2d06090000 0f84c9feffff 2df0020000 0f84b3000000 }
            // n = 5, score = 100
            //   0f84d8000000         | je                  0xde
            //   2d06090000           | sub                 eax, 0x906
            //   0f84c9feffff         | je                  0xfffffecf
            //   2df0020000           | sub                 eax, 0x2f0
            //   0f84b3000000         | je                  0xb9

        $sequence_4 = { 53 ff5008 8b45f8 85c0 7406 }
            // n = 5, score = 100
            //   53                   | push                ebx
            //   ff5008               | call                dword ptr [eax + 8]
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   85c0                 | test                eax, eax
            //   7406                 | je                  8

        $sequence_5 = { c705????????19000000 e9???????? b9474e5100 3bc1 7762 }
            // n = 5, score = 100
            //   c705????????19000000     |     
            //   e9????????           |                     
            //   b9474e5100           | mov                 ecx, 0x514e47
            //   3bc1                 | cmp                 eax, ecx
            //   7762                 | ja                  0x64

        $sequence_6 = { c705????????1c000000 e9???????? c705????????0a000000 e9???????? }
            // n = 4, score = 100
            //   c705????????1c000000     |     
            //   e9????????           |                     
            //   c705????????0a000000     |     
            //   e9????????           |                     

        $sequence_7 = { 56 ff928c000000 5f 85c0 }
            // n = 4, score = 100
            //   56                   | push                esi
            //   ff928c000000         | call                dword ptr [edx + 0x8c]
            //   5f                   | pop                 edi
            //   85c0                 | test                eax, eax

        $sequence_8 = { 3d434f4c00 0f8653ffffff 3d504f4c00 741a 3d47524c00 0f85ebfcffff c705????????13000000 }
            // n = 7, score = 100
            //   3d434f4c00           | cmp                 eax, 0x4c4f43
            //   0f8653ffffff         | jbe                 0xffffff59
            //   3d504f4c00           | cmp                 eax, 0x4c4f50
            //   741a                 | je                  0x1c
            //   3d47524c00           | cmp                 eax, 0x4c5247
            //   0f85ebfcffff         | jne                 0xfffffcf1
            //   c705????????13000000     |     

        $sequence_9 = { 3bc3 0f8446fdffff 8b08 50 ff5108 8b45f8 }
            // n = 6, score = 100
            //   3bc3                 | cmp                 eax, ebx
            //   0f8446fdffff         | je                  0xfffffd4c
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   50                   | push                eax
            //   ff5108               | call                dword ptr [ecx + 8]
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]

    condition:
        7 of them and filesize < 65536
}