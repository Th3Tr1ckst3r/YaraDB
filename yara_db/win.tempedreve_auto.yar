rule win_tempedreve_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.tempedreve."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.tempedreve"
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
        $sequence_0 = { 011e 015e10 015e0c 0fb75706 }
            // n = 4, score = 300
            //   011e                 | add                 dword ptr [esi], ebx
            //   015e10               | add                 dword ptr [esi + 0x10], ebx
            //   015e0c               | add                 dword ptr [esi + 0xc], ebx
            //   0fb75706             | movzx               edx, word ptr [edi + 6]

        $sequence_1 = { 7549 8bb288000000 8930 85f6 743d 398a8c000000 }
            // n = 6, score = 300
            //   7549                 | jne                 0x4b
            //   8bb288000000         | mov                 esi, dword ptr [edx + 0x88]
            //   8930                 | mov                 dword ptr [eax], esi
            //   85f6                 | test                esi, esi
            //   743d                 | je                  0x3f
            //   398a8c000000         | cmp                 dword ptr [edx + 0x8c], ecx

        $sequence_2 = { 011a 8b87dc000000 83c204 03c6 }
            // n = 4, score = 300
            //   011a                 | add                 dword ptr [edx], ebx
            //   8b87dc000000         | mov                 eax, dword ptr [edi + 0xdc]
            //   83c204               | add                 edx, 4
            //   03c6                 | add                 eax, esi

        $sequence_3 = { 011a 45 8d14a9 8b02 }
            // n = 4, score = 300
            //   011a                 | add                 dword ptr [edx], ebx
            //   45                   | inc                 ebp
            //   8d14a9               | lea                 edx, [ecx + ebp*4]
            //   8b02                 | mov                 eax, dword ptr [edx]

        $sequence_4 = { 010f 8b07 83c704 3bc1 }
            // n = 4, score = 300
            //   010f                 | add                 dword ptr [edi], ecx
            //   8b07                 | mov                 eax, dword ptr [edi]
            //   83c704               | add                 edi, 4
            //   3bc1                 | cmp                 eax, ecx

        $sequence_5 = { 0104b7 8b8424a8000000 83c704 4d }
            // n = 4, score = 300
            //   0104b7               | add                 dword ptr [edi + esi*4], eax
            //   8b8424a8000000       | mov                 eax, dword ptr [esp + 0xa8]
            //   83c704               | add                 edi, 4
            //   4d                   | dec                 ebp

        $sequence_6 = { 01042f 034c2ff8 8d45ec 894c2ff8 }
            // n = 4, score = 300
            //   01042f               | add                 dword ptr [edi + ebp], eax
            //   034c2ff8             | add                 ecx, dword ptr [edi + ebp - 8]
            //   8d45ec               | lea                 eax, [ebp - 0x14]
            //   894c2ff8             | mov                 dword ptr [edi + ebp - 8], ecx

        $sequence_7 = { 0103 a1???????? 83c004 50 ff15???????? }
            // n = 5, score = 300
            //   0103                 | add                 dword ptr [ebx], eax
            //   a1????????           |                     
            //   83c004               | add                 eax, 4
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_8 = { 51 ffd0 85c0 0f8470070000 3b5c241c 7512 }
            // n = 6, score = 200
            //   51                   | push                ecx
            //   ffd0                 | call                eax
            //   85c0                 | test                eax, eax
            //   0f8470070000         | je                  0x776
            //   3b5c241c             | cmp                 ebx, dword ptr [esp + 0x1c]
            //   7512                 | jne                 0x14

        $sequence_9 = { 836c241c01 7412 85ff 0f85c0feffff eb08 894c2418 895c2410 }
            // n = 7, score = 200
            //   836c241c01           | sub                 dword ptr [esp + 0x1c], 1
            //   7412                 | je                  0x14
            //   85ff                 | test                edi, edi
            //   0f85c0feffff         | jne                 0xfffffec6
            //   eb08                 | jmp                 0xa
            //   894c2418             | mov                 dword ptr [esp + 0x18], ecx
            //   895c2410             | mov                 dword ptr [esp + 0x10], ebx

        $sequence_10 = { eb1b 8b6c2410 8bd3 2bd7 }
            // n = 4, score = 200
            //   eb1b                 | jmp                 0x1d
            //   8b6c2410             | mov                 ebp, dword ptr [esp + 0x10]
            //   8bd3                 | mov                 edx, ebx
            //   2bd7                 | sub                 edx, edi

        $sequence_11 = { 8bc8 c1e903 8d440140 c20400 8b44240c 81ec2c040000 }
            // n = 6, score = 200
            //   8bc8                 | mov                 ecx, eax
            //   c1e903               | shr                 ecx, 3
            //   8d440140             | lea                 eax, [ecx + eax + 0x40]
            //   c20400               | ret                 4
            //   8b44240c             | mov                 eax, dword ptr [esp + 0xc]
            //   81ec2c040000         | sub                 esp, 0x42c

        $sequence_12 = { 51 57 ffd0 85c0 750c 5d }
            // n = 6, score = 200
            //   51                   | push                ecx
            //   57                   | push                edi
            //   ffd0                 | call                eax
            //   85c0                 | test                eax, eax
            //   750c                 | jne                 0xe
            //   5d                   | pop                 ebp

        $sequence_13 = { 8a0429 3a01 7506 43 41 3bda 72f3 }
            // n = 7, score = 200
            //   8a0429               | mov                 al, byte ptr [ecx + ebp]
            //   3a01                 | cmp                 al, byte ptr [ecx]
            //   7506                 | jne                 8
            //   43                   | inc                 ebx
            //   41                   | inc                 ecx
            //   3bda                 | cmp                 ebx, edx
            //   72f3                 | jb                  0xfffffff5

        $sequence_14 = { 2bcd d220 8b44245c 85c0 742e 8b4c2460 8b9610040000 }
            // n = 7, score = 200
            //   2bcd                 | sub                 ecx, ebp
            //   d220                 | shl                 byte ptr [eax], cl
            //   8b44245c             | mov                 eax, dword ptr [esp + 0x5c]
            //   85c0                 | test                eax, eax
            //   742e                 | je                  0x30
            //   8b4c2460             | mov                 ecx, dword ptr [esp + 0x60]
            //   8b9610040000         | mov                 edx, dword ptr [esi + 0x410]

        $sequence_15 = { c20400 8b44240c 81ec2c040000 85c0 7509 81c42c040000 c21800 }
            // n = 7, score = 200
            //   c20400               | ret                 4
            //   8b44240c             | mov                 eax, dword ptr [esp + 0xc]
            //   81ec2c040000         | sub                 esp, 0x42c
            //   85c0                 | test                eax, eax
            //   7509                 | jne                 0xb
            //   81c42c040000         | add                 esp, 0x42c
            //   c21800               | ret                 0x18

    condition:
        7 of them and filesize < 155648
}