rule win_yanluowang_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.yanluowang."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.yanluowang"
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
        $sequence_0 = { 8b11 2bc5 50 ff5214 2bee 896f28 5f }
            // n = 7, score = 100
            //   8b11                 | mov                 edx, dword ptr [ecx]
            //   2bc5                 | sub                 eax, ebp
            //   50                   | push                eax
            //   ff5214               | call                dword ptr [edx + 0x14]
            //   2bee                 | sub                 ebp, esi
            //   896f28               | mov                 dword ptr [edi + 0x28], ebp
            //   5f                   | pop                 edi

        $sequence_1 = { 334dd8 03ce 8945d0 8b750c 8bd6 3375e0 23d7 }
            // n = 7, score = 100
            //   334dd8               | xor                 ecx, dword ptr [ebp - 0x28]
            //   03ce                 | add                 ecx, esi
            //   8945d0               | mov                 dword ptr [ebp - 0x30], eax
            //   8b750c               | mov                 esi, dword ptr [ebp + 0xc]
            //   8bd6                 | mov                 edx, esi
            //   3375e0               | xor                 esi, dword ptr [ebp - 0x20]
            //   23d7                 | and                 edx, edi

        $sequence_2 = { 52 e8???????? 83c404 c645fc00 807dbf00 8d4601 8b4db0 }
            // n = 7, score = 100
            //   52                   | push                edx
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   c645fc00             | mov                 byte ptr [ebp - 4], 0
            //   807dbf00             | cmp                 byte ptr [ebp - 0x41], 0
            //   8d4601               | lea                 eax, [esi + 1]
            //   8b4db0               | mov                 ecx, dword ptr [ebp - 0x50]

        $sequence_3 = { 51 57 e8???????? 01742440 03fe 8bc3 }
            // n = 6, score = 100
            //   51                   | push                ecx
            //   57                   | push                edi
            //   e8????????           |                     
            //   01742440             | add                 dword ptr [esp + 0x40], esi
            //   03fe                 | add                 edi, esi
            //   8bc3                 | mov                 eax, ebx

        $sequence_4 = { c785e0eeffff00000000 660fd685d8eeffff c68557ecffff00 c785d8eeffff00000000 c785dceeffff00000000 c785e0eeffff00000000 8d0cb7 }
            // n = 7, score = 100
            //   c785e0eeffff00000000     | mov    dword ptr [ebp - 0x1120], 0
            //   660fd685d8eeffff     | movq                qword ptr [ebp - 0x1128], xmm0
            //   c68557ecffff00       | mov                 byte ptr [ebp - 0x13a9], 0
            //   c785d8eeffff00000000     | mov    dword ptr [ebp - 0x1128], 0
            //   c785dceeffff00000000     | mov    dword ptr [ebp - 0x1124], 0
            //   c785e0eeffff00000000     | mov    dword ptr [ebp - 0x1120], 0
            //   8d0cb7               | lea                 ecx, [edi + esi*4]

        $sequence_5 = { 895584 eb7c 8b451c 8b7d08 83f810 8d4d08 }
            // n = 6, score = 100
            //   895584               | mov                 dword ptr [ebp - 0x7c], edx
            //   eb7c                 | jmp                 0x7e
            //   8b451c               | mov                 eax, dword ptr [ebp + 0x1c]
            //   8b7d08               | mov                 edi, dword ptr [ebp + 8]
            //   83f810               | cmp                 eax, 0x10
            //   8d4d08               | lea                 ecx, [ebp + 8]

        $sequence_6 = { ffb5c4fcffff 0f42c1 8b8dc8fcffff 8985d0fcffff e8???????? 8b45ec 83c408 }
            // n = 7, score = 100
            //   ffb5c4fcffff         | push                dword ptr [ebp - 0x33c]
            //   0f42c1               | cmovb               eax, ecx
            //   8b8dc8fcffff         | mov                 ecx, dword ptr [ebp - 0x338]
            //   8985d0fcffff         | mov                 dword ptr [ebp - 0x330], eax
            //   e8????????           |                     
            //   8b45ec               | mov                 eax, dword ptr [ebp - 0x14]
            //   83c408               | add                 esp, 8

        $sequence_7 = { 51 50 51 8d4dbc e8???????? befeffff7f c645fc05 }
            // n = 7, score = 100
            //   51                   | push                ecx
            //   50                   | push                eax
            //   51                   | push                ecx
            //   8d4dbc               | lea                 ecx, [ebp - 0x44]
            //   e8????????           |                     
            //   befeffff7f           | mov                 esi, 0x7ffffffe
            //   c645fc05             | mov                 byte ptr [ebp - 4], 5

        $sequence_8 = { b8abaaaa2a 0f8613020000 2b4dbc f7e9 b8aaaaaa0a }
            // n = 5, score = 100
            //   b8abaaaa2a           | mov                 eax, 0x2aaaaaab
            //   0f8613020000         | jbe                 0x219
            //   2b4dbc               | sub                 ecx, dword ptr [ebp - 0x44]
            //   f7e9                 | imul                ecx
            //   b8aaaaaa0a           | mov                 eax, 0xaaaaaaa

        $sequence_9 = { 8b5310 57 8b7c240c 8b4210 85c0 7411 }
            // n = 6, score = 100
            //   8b5310               | mov                 edx, dword ptr [ebx + 0x10]
            //   57                   | push                edi
            //   8b7c240c             | mov                 edi, dword ptr [esp + 0xc]
            //   8b4210               | mov                 eax, dword ptr [edx + 0x10]
            //   85c0                 | test                eax, eax
            //   7411                 | je                  0x13

    condition:
        7 of them and filesize < 834560
}