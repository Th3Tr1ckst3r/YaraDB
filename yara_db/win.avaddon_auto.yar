rule win_avaddon_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.avaddon."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.avaddon"
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
        $sequence_0 = { 8975ec 8b450c 8bf8 8b4d10 8b5514 8b5d08 0faff9 }
            // n = 7, score = 200
            //   8975ec               | mov                 dword ptr [ebp - 0x14], esi
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   8bf8                 | mov                 edi, eax
            //   8b4d10               | mov                 ecx, dword ptr [ebp + 0x10]
            //   8b5514               | mov                 edx, dword ptr [ebp + 0x14]
            //   8b5d08               | mov                 ebx, dword ptr [ebp + 8]
            //   0faff9               | imul                edi, ecx

        $sequence_1 = { 56 8d45a4 8bcb 50 e8???????? 46 }
            // n = 6, score = 200
            //   56                   | push                esi
            //   8d45a4               | lea                 eax, [ebp - 0x5c]
            //   8bcb                 | mov                 ecx, ebx
            //   50                   | push                eax
            //   e8????????           |                     
            //   46                   | inc                 esi

        $sequence_2 = { 837e1c08 8d4608 0fb74e20 7202 8b00 6a01 68???????? }
            // n = 7, score = 200
            //   837e1c08             | cmp                 dword ptr [esi + 0x1c], 8
            //   8d4608               | lea                 eax, [esi + 8]
            //   0fb74e20             | movzx               ecx, word ptr [esi + 0x20]
            //   7202                 | jb                  4
            //   8b00                 | mov                 eax, dword ptr [eax]
            //   6a01                 | push                1
            //   68????????           |                     

        $sequence_3 = { e8???????? 46 3b7588 7cd7 8b9decfeffff 83bdbcfeffff00 0f8eae000000 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   46                   | inc                 esi
            //   3b7588               | cmp                 esi, dword ptr [ebp - 0x78]
            //   7cd7                 | jl                  0xffffffd9
            //   8b9decfeffff         | mov                 ebx, dword ptr [ebp - 0x114]
            //   83bdbcfeffff00       | cmp                 dword ptr [ebp - 0x144], 0
            //   0f8eae000000         | jle                 0xb4

        $sequence_4 = { 8bc8 e8???????? e9???????? ff75e8 51 56 57 }
            // n = 7, score = 200
            //   8bc8                 | mov                 ecx, eax
            //   e8????????           |                     
            //   e9????????           |                     
            //   ff75e8               | push                dword ptr [ebp - 0x18]
            //   51                   | push                ecx
            //   56                   | push                esi
            //   57                   | push                edi

        $sequence_5 = { 8d8d04ffffff 50 e8???????? 6a01 6a01 6a01 c645fc38 }
            // n = 7, score = 200
            //   8d8d04ffffff         | lea                 ecx, [ebp - 0xfc]
            //   50                   | push                eax
            //   e8????????           |                     
            //   6a01                 | push                1
            //   6a01                 | push                1
            //   6a01                 | push                1
            //   c645fc38             | mov                 byte ptr [ebp - 4], 0x38

        $sequence_6 = { 8b85e0feffff 83e040 0f8412000000 83a5e0feffffbf 8d8d60feffff e9???????? c3 }
            // n = 7, score = 200
            //   8b85e0feffff         | mov                 eax, dword ptr [ebp - 0x120]
            //   83e040               | and                 eax, 0x40
            //   0f8412000000         | je                  0x18
            //   83a5e0feffffbf       | and                 dword ptr [ebp - 0x120], 0xffffffbf
            //   8d8d60feffff         | lea                 ecx, [ebp - 0x1a0]
            //   e9????????           |                     
            //   c3                   | ret                 

        $sequence_7 = { 5d c3 33d2 8d4a07 e8???????? 8d45b0 68???????? }
            // n = 7, score = 200
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   33d2                 | xor                 edx, edx
            //   8d4a07               | lea                 ecx, [edx + 7]
            //   e8????????           |                     
            //   8d45b0               | lea                 eax, [ebp - 0x50]
            //   68????????           |                     

        $sequence_8 = { 2bd6 8d0476 8d0cc1 8d0452 8d04c5e8ffffff 50 51 }
            // n = 7, score = 200
            //   2bd6                 | sub                 edx, esi
            //   8d0476               | lea                 eax, [esi + esi*2]
            //   8d0cc1               | lea                 ecx, [ecx + eax*8]
            //   8d0452               | lea                 eax, [edx + edx*2]
            //   8d04c5e8ffffff       | lea                 eax, [eax*8 - 0x18]
            //   50                   | push                eax
            //   51                   | push                ecx

        $sequence_9 = { 50 8d45f4 64a300000000 8bd9 8b7330 8b7b34 3bf7 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   64a300000000         | mov                 dword ptr fs:[0], eax
            //   8bd9                 | mov                 ebx, ecx
            //   8b7330               | mov                 esi, dword ptr [ebx + 0x30]
            //   8b7b34               | mov                 edi, dword ptr [ebx + 0x34]
            //   3bf7                 | cmp                 esi, edi

    condition:
        7 of them and filesize < 2343936
}