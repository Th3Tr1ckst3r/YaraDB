rule win_dadstache_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.dadstache."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dadstache"
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
        $sequence_0 = { c1e008 0bc1 0fb64c13fe c1e008 0bc1 0fb64c13ff }
            // n = 6, score = 500
            //   c1e008               | shl                 eax, 8
            //   0bc1                 | or                  eax, ecx
            //   0fb64c13fe           | movzx               ecx, byte ptr [ebx + edx - 2]
            //   c1e008               | shl                 eax, 8
            //   0bc1                 | or                  eax, ecx
            //   0fb64c13ff           | movzx               ecx, byte ptr [ebx + edx - 1]

        $sequence_1 = { 8bcf 3356fc c1e910 0fb6c9 8910 8b7508 }
            // n = 6, score = 500
            //   8bcf                 | mov                 ecx, edi
            //   3356fc               | xor                 edx, dword ptr [esi - 4]
            //   c1e910               | shr                 ecx, 0x10
            //   0fb6c9               | movzx               ecx, cl
            //   8910                 | mov                 dword ptr [eax], edx
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]

        $sequence_2 = { 85c0 742e 8d45f8 50 ff75f4 8b830c020000 }
            // n = 6, score = 500
            //   85c0                 | test                eax, eax
            //   742e                 | je                  0x30
            //   8d45f8               | lea                 eax, [ebp - 8]
            //   50                   | push                eax
            //   ff75f4               | push                dword ptr [ebp - 0xc]
            //   8b830c020000         | mov                 eax, dword ptr [ebx + 0x20c]

        $sequence_3 = { 83ec0c 8b4d08 53 83c102 c745f804000000 }
            // n = 5, score = 500
            //   83ec0c               | sub                 esp, 0xc
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   53                   | push                ebx
            //   83c102               | add                 ecx, 2
            //   c745f804000000       | mov                 dword ptr [ebp - 8], 4

        $sequence_4 = { 88040e 8bc3 c1e810 88440e01 }
            // n = 4, score = 500
            //   88040e               | mov                 byte ptr [esi + ecx], al
            //   8bc3                 | mov                 eax, ebx
            //   c1e810               | shr                 eax, 0x10
            //   88440e01             | mov                 byte ptr [esi + ecx + 1], al

        $sequence_5 = { 8b8b10020000 e8???????? 83c41c 8bf8 eb02 33ff 8d4701 }
            // n = 7, score = 500
            //   8b8b10020000         | mov                 ecx, dword ptr [ebx + 0x210]
            //   e8????????           |                     
            //   83c41c               | add                 esp, 0x1c
            //   8bf8                 | mov                 edi, eax
            //   eb02                 | jmp                 4
            //   33ff                 | xor                 edi, edi
            //   8d4701               | lea                 eax, [edi + 1]

        $sequence_6 = { 83ec18 56 8b7510 57 56 ff750c }
            // n = 6, score = 500
            //   83ec18               | sub                 esp, 0x18
            //   56                   | push                esi
            //   8b7510               | mov                 esi, dword ptr [ebp + 0x10]
            //   57                   | push                edi
            //   56                   | push                esi
            //   ff750c               | push                dword ptr [ebp + 0xc]

        $sequence_7 = { 7418 8b7d08 8bd3 8b4d10 2bf9 8a040f }
            // n = 6, score = 500
            //   7418                 | je                  0x1a
            //   8b7d08               | mov                 edi, dword ptr [ebp + 8]
            //   8bd3                 | mov                 edx, ebx
            //   8b4d10               | mov                 ecx, dword ptr [ebp + 0x10]
            //   2bf9                 | sub                 edi, ecx
            //   8a040f               | mov                 al, byte ptr [edi + ecx]

        $sequence_8 = { ff7654 8b55e8 8bcf e8???????? 8b4dfc 33d2 }
            // n = 6, score = 200
            //   ff7654               | push                dword ptr [esi + 0x54]
            //   8b55e8               | mov                 edx, dword ptr [ebp - 0x18]
            //   8bcf                 | mov                 ecx, edi
            //   e8????????           |                     
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   33d2                 | xor                 edx, edx

        $sequence_9 = { f7d9 85c9 7418 8b4508 47 8b4d0c }
            // n = 6, score = 200
            //   f7d9                 | neg                 ecx
            //   85c9                 | test                ecx, ecx
            //   7418                 | je                  0x1a
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   47                   | inc                 edi
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]

        $sequence_10 = { 42 83c628 8955f0 3b55e4 0f8c66ffffff 5f }
            // n = 6, score = 200
            //   42                   | inc                 edx
            //   83c628               | add                 esi, 0x28
            //   8955f0               | mov                 dword ptr [ebp - 0x10], edx
            //   3b55e4               | cmp                 edx, dword ptr [ebp - 0x1c]
            //   0f8c66ffffff         | jl                  0xffffff6c
            //   5f                   | pop                 edi

        $sequence_11 = { 85c0 0f84f8000000 8b480c 85c9 0f84ed000000 }
            // n = 5, score = 200
            //   85c0                 | test                eax, eax
            //   0f84f8000000         | je                  0xfe
            //   8b480c               | mov                 ecx, dword ptr [eax + 0xc]
            //   85c9                 | test                ecx, ecx
            //   0f84ed000000         | je                  0xf3

        $sequence_12 = { 8955f0 8939 8b4650 894104 c7411401000000 8b473c 03c7 }
            // n = 7, score = 200
            //   8955f0               | mov                 dword ptr [ebp - 0x10], edx
            //   8939                 | mov                 dword ptr [ecx], edi
            //   8b4650               | mov                 eax, dword ptr [esi + 0x50]
            //   894104               | mov                 dword ptr [ecx + 4], eax
            //   c7411401000000       | mov                 dword ptr [ecx + 0x14], 1
            //   8b473c               | mov                 eax, dword ptr [edi + 0x3c]
            //   03c7                 | add                 eax, edi

        $sequence_13 = { 83ec48 8bc1 8955e8 8945fc 56 }
            // n = 5, score = 200
            //   83ec48               | sub                 esp, 0x48
            //   8bc1                 | mov                 eax, ecx
            //   8955e8               | mov                 dword ptr [ebp - 0x18], edx
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   56                   | push                esi

        $sequence_14 = { 57 8bf9 85ff 743f 8b37 }
            // n = 5, score = 200
            //   57                   | push                edi
            //   8bf9                 | mov                 edi, ecx
            //   85ff                 | test                edi, edi
            //   743f                 | je                  0x41
            //   8b37                 | mov                 esi, dword ptr [edi]

        $sequence_15 = { c645fe00 e8???????? 8bf0 8d45f4 50 }
            // n = 5, score = 200
            //   c645fe00             | mov                 byte ptr [ebp - 2], 0
            //   e8????????           |                     
            //   8bf0                 | mov                 esi, eax
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   50                   | push                eax

    condition:
        7 of them and filesize < 580608
}