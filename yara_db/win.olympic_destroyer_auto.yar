rule win_olympic_destroyer_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.olympic_destroyer."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.olympic_destroyer"
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
        $sequence_0 = { 56 33c0 89542414 57 }
            // n = 4, score = 200
            //   56                   | push                esi
            //   33c0                 | xor                 eax, eax
            //   89542414             | mov                 dword ptr [esp + 0x14], edx
            //   57                   | push                edi

        $sequence_1 = { eb5f 33c9 51 6880000000 6a03 }
            // n = 5, score = 100
            //   eb5f                 | jmp                 0x61
            //   33c9                 | xor                 ecx, ecx
            //   51                   | push                ecx
            //   6880000000           | push                0x80
            //   6a03                 | push                3

        $sequence_2 = { 50 6819000200 6a00 8d85fccfffff }
            // n = 4, score = 100
            //   50                   | push                eax
            //   6819000200           | push                0x20019
            //   6a00                 | push                0
            //   8d85fccfffff         | lea                 eax, [ebp - 0x3004]

        $sequence_3 = { 8975e4 3975f4 0f86a8000000 8b45d8 8b1d???????? }
            // n = 5, score = 100
            //   8975e4               | mov                 dword ptr [ebp - 0x1c], esi
            //   3975f4               | cmp                 dword ptr [ebp - 0xc], esi
            //   0f86a8000000         | jbe                 0xae
            //   8b45d8               | mov                 eax, dword ptr [ebp - 0x28]
            //   8b1d????????         |                     

        $sequence_4 = { 83ec24 53 55 8b6c2430 8bc1 }
            // n = 5, score = 100
            //   83ec24               | sub                 esp, 0x24
            //   53                   | push                ebx
            //   55                   | push                ebp
            //   8b6c2430             | mov                 ebp, dword ptr [esp + 0x30]
            //   8bc1                 | mov                 eax, ecx

        $sequence_5 = { ff15???????? 57 ff15???????? 81bd7cf9ffff40420f00 760e ffb590f9ffff e8???????? }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   57                   | push                edi
            //   ff15????????         |                     
            //   81bd7cf9ffff40420f00     | cmp    dword ptr [ebp - 0x684], 0xf4240
            //   760e                 | jbe                 0x10
            //   ffb590f9ffff         | push                dword ptr [ebp - 0x670]
            //   e8????????           |                     

        $sequence_6 = { ffd6 ffb5c8f7ffff ffd6 c785d8f7ffff01000000 8b4dfc 8b85d8f7ffff }
            // n = 6, score = 100
            //   ffd6                 | call                esi
            //   ffb5c8f7ffff         | push                dword ptr [ebp - 0x838]
            //   ffd6                 | call                esi
            //   c785d8f7ffff01000000     | mov    dword ptr [ebp - 0x828], 1
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   8b85d8f7ffff         | mov                 eax, dword ptr [ebp - 0x828]

        $sequence_7 = { 7506 53 e8???????? ff442414 }
            // n = 4, score = 100
            //   7506                 | jne                 8
            //   53                   | push                ebx
            //   e8????????           |                     
            //   ff442414             | inc                 dword ptr [esp + 0x14]

        $sequence_8 = { ffb5c4f7ffff 8b35???????? ffd6 ffb5c8f7ffff }
            // n = 4, score = 100
            //   ffb5c4f7ffff         | push                dword ptr [ebp - 0x83c]
            //   8b35????????         |                     
            //   ffd6                 | call                esi
            //   ffb5c8f7ffff         | push                dword ptr [ebp - 0x838]

        $sequence_9 = { 50 6805010000 ff15???????? 8d442430 }
            // n = 4, score = 100
            //   50                   | push                eax
            //   6805010000           | push                0x105
            //   ff15????????         |                     
            //   8d442430             | lea                 eax, [esp + 0x30]

        $sequence_10 = { 83c008 5d c3 8b04c5f4655500 5d c3 }
            // n = 6, score = 100
            //   83c008               | add                 eax, 8
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   8b04c5f4655500       | mov                 eax, dword ptr [eax*8 + 0x5565f4]
            //   5d                   | pop                 ebp
            //   c3                   | ret                 

        $sequence_11 = { 50 ff15???????? ffb588f9ffff 898590f9ffff }
            // n = 4, score = 100
            //   50                   | push                eax
            //   ff15????????         |                     
            //   ffb588f9ffff         | push                dword ptr [ebp - 0x678]
            //   898590f9ffff         | mov                 dword ptr [ebp - 0x670], eax

        $sequence_12 = { 83c03c 3bca 72f2 85f6 0f8481000000 8b4608 }
            // n = 6, score = 100
            //   83c03c               | add                 eax, 0x3c
            //   3bca                 | cmp                 ecx, edx
            //   72f2                 | jb                  0xfffffff4
            //   85f6                 | test                esi, esi
            //   0f8481000000         | je                  0x87
            //   8b4608               | mov                 eax, dword ptr [esi + 8]

        $sequence_13 = { 6800010000 8b12 e8???????? 33c9 83c404 }
            // n = 5, score = 100
            //   6800010000           | push                0x100
            //   8b12                 | mov                 edx, dword ptr [edx]
            //   e8????????           |                     
            //   33c9                 | xor                 ecx, ecx
            //   83c404               | add                 esp, 4

        $sequence_14 = { 8b4504 894c2420 89442424 3b4d00 }
            // n = 4, score = 100
            //   8b4504               | mov                 eax, dword ptr [ebp + 4]
            //   894c2420             | mov                 dword ptr [esp + 0x20], ecx
            //   89442424             | mov                 dword ptr [esp + 0x24], eax
            //   3b4d00               | cmp                 ecx, dword ptr [ebp]

        $sequence_15 = { 50 68???????? 53 e8???????? 83c40c 8b45a8 }
            // n = 6, score = 100
            //   50                   | push                eax
            //   68????????           |                     
            //   53                   | push                ebx
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   8b45a8               | mov                 eax, dword ptr [ebp - 0x58]

        $sequence_16 = { 50 6805010000 8d85ecfdffff 50 68???????? }
            // n = 5, score = 100
            //   50                   | push                eax
            //   6805010000           | push                0x105
            //   8d85ecfdffff         | lea                 eax, [ebp - 0x214]
            //   50                   | push                eax
            //   68????????           |                     

        $sequence_17 = { 50 6800080000 53 8bcf 660f134580 }
            // n = 5, score = 100
            //   50                   | push                eax
            //   6800080000           | push                0x800
            //   53                   | push                ebx
            //   8bcf                 | mov                 ecx, edi
            //   660f134580           | movlpd              qword ptr [ebp - 0x80], xmm0

        $sequence_18 = { 50 6801010000 6a00 68???????? 6801000080 83ceff }
            // n = 6, score = 100
            //   50                   | push                eax
            //   6801010000           | push                0x101
            //   6a00                 | push                0
            //   68????????           |                     
            //   6801000080           | push                0x80000001
            //   83ceff               | or                  esi, 0xffffffff

        $sequence_19 = { 3bc6 746f 8d4df8 51 }
            // n = 4, score = 100
            //   3bc6                 | cmp                 eax, esi
            //   746f                 | je                  0x71
            //   8d4df8               | lea                 ecx, [ebp - 8]
            //   51                   | push                ecx

        $sequence_20 = { 33f6 813d????????ce0e0000 8944242c 8b442440 89442430 8b442444 }
            // n = 6, score = 100
            //   33f6                 | xor                 esi, esi
            //   813d????????ce0e0000     |     
            //   8944242c             | mov                 dword ptr [esp + 0x2c], eax
            //   8b442440             | mov                 eax, dword ptr [esp + 0x40]
            //   89442430             | mov                 dword ptr [esp + 0x30], eax
            //   8b442444             | mov                 eax, dword ptr [esp + 0x44]

        $sequence_21 = { 50 6800010000 e8???????? 83c408 85c0 }
            // n = 5, score = 100
            //   50                   | push                eax
            //   6800010000           | push                0x100
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   85c0                 | test                eax, eax

        $sequence_22 = { 785a 6a00 6a20 68???????? 68???????? ff35???????? ff15???????? }
            // n = 7, score = 100
            //   785a                 | js                  0x5c
            //   6a00                 | push                0
            //   6a20                 | push                0x20
            //   68????????           |                     
            //   68????????           |                     
            //   ff35????????         |                     
            //   ff15????????         |                     

    condition:
        7 of them and filesize < 1392640
}