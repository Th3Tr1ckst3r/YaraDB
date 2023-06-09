rule win_anchor_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.anchor."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.anchor"
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
        $sequence_0 = { 740c 66c740016578 c6400365 eb0a }
            // n = 4, score = 800
            //   740c                 | je                  0xe
            //   66c740016578         | mov                 word ptr [eax + 1], 0x7865
            //   c6400365             | mov                 byte ptr [eax + 3], 0x65
            //   eb0a                 | jmp                 0xc

        $sequence_1 = { c6400365 eb0a 66c74001646c c640036c }
            // n = 4, score = 800
            //   c6400365             | mov                 byte ptr [eax + 3], 0x65
            //   eb0a                 | jmp                 0xc
            //   66c74001646c         | mov                 word ptr [eax + 1], 0x6c64
            //   c640036c             | mov                 byte ptr [eax + 3], 0x6c

        $sequence_2 = { e8???????? 84c0 7407 8bce e8???????? e8???????? 660f6ec0 }
            // n = 7, score = 600
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   7407                 | je                  9
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   e8????????           |                     
            //   660f6ec0             | movd                xmm0, eax

        $sequence_3 = { 8d8dbcfeffff c645fc01 8ad8 e8???????? }
            // n = 4, score = 600
            //   8d8dbcfeffff         | lea                 ecx, [ebp - 0x144]
            //   c645fc01             | mov                 byte ptr [ebp - 4], 1
            //   8ad8                 | mov                 bl, al
            //   e8????????           |                     

        $sequence_4 = { 0bc8 51 e8???????? 8b0d???????? c1e102 }
            // n = 5, score = 600
            //   0bc8                 | lea                 edx, [0x9087]
            //   51                   | mov                 ecx, 0x14
            //   e8????????           |                     
            //   8b0d????????         |                     
            //   c1e102               | dec                 eax

        $sequence_5 = { 8b15???????? 8bc8 2bc2 3bca 7701 48 }
            // n = 6, score = 600
            //   8b15????????         |                     
            //   8bc8                 | mov                 ecx, eax
            //   2bc2                 | sub                 eax, edx
            //   3bca                 | cmp                 ecx, edx
            //   7701                 | ja                  3
            //   48                   | dec                 eax

        $sequence_6 = { b101 e8???????? e8???????? 84c0 }
            // n = 4, score = 600
            //   b101                 | mov                 cl, 1
            //   e8????????           |                     
            //   e8????????           |                     
            //   84c0                 | test                al, al

        $sequence_7 = { 50 8d85d4feffff 50 56 e8???????? 83bde8feffff10 }
            // n = 6, score = 600
            //   50                   | push                eax
            //   8d85d4feffff         | lea                 eax, [ebp - 0x12c]
            //   50                   | push                eax
            //   56                   | push                esi
            //   e8????????           |                     
            //   83bde8feffff10       | cmp                 dword ptr [ebp - 0x118], 0x10

        $sequence_8 = { 8d45f4 50 e8???????? cc ff25???????? 6a08 68???????? }
            // n = 7, score = 600
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   50                   | push                eax
            //   e8????????           |                     
            //   cc                   | int3                
            //   ff25????????         |                     
            //   6a08                 | push                8
            //   68????????           |                     

        $sequence_9 = { 7509 33d2 33c9 e8???????? }
            // n = 4, score = 400
            //   7509                 | jne                 0xb
            //   33d2                 | xor                 edx, edx
            //   33c9                 | xor                 ecx, ecx
            //   e8????????           |                     

        $sequence_10 = { 488d0d50480300 e8???????? 90 488b8500010000 }
            // n = 4, score = 200
            //   488d0d50480300       | dec                 eax
            //   e8????????           |                     
            //   90                   | imul                eax, eax, 6
            //   488b8500010000       | dec                 eax

        $sequence_11 = { 0f847d020000 33d2 498bcf ff15???????? }
            // n = 4, score = 200
            //   0f847d020000         | mov                 eax, dword ptr [ebp + 0xf8]
            //   33d2                 | dec                 eax
            //   498bcf               | lea                 ecx, [0x38a52]
            //   ff15????????         |                     

        $sequence_12 = { 488d0d516d0200 e8???????? 488d8d680e0000 e8???????? }
            // n = 4, score = 200
            //   488d0d516d0200       | test                eax, eax
            //   e8????????           |                     
            //   488d8d680e0000       | dec                 eax
            //   e8????????           |                     

        $sequence_13 = { 8d43ef 48f7e1 48c7c1ffffffff 480f40c1 488bc8 }
            // n = 5, score = 200
            //   8d43ef               | dec                 eax
            //   48f7e1               | mov                 ecx, dword ptr [ebp + 0xe0]
            //   48c7c1ffffffff       | dec                 esp
            //   480f40c1             | mov                 ecx, eax
            //   488bc8               | dec                 eax

        $sequence_14 = { 488d0d50840200 e8???????? 488d0d48840200 e8???????? }
            // n = 4, score = 200
            //   488d0d50840200       | dec                 eax
            //   e8????????           |                     
            //   488d0d48840200       | mov                 eax, dword ptr [ebp + 0x100]
            //   e8????????           |                     

        $sequence_15 = { 488d0d520b0400 e8???????? 488b8500010000 488b8d08010000 }
            // n = 4, score = 200
            //   488d0d520b0400       | lea                 ecx, [0x41b51]
            //   e8????????           |                     
            //   488b8500010000       | nop                 
            //   488b8d08010000       | dec                 eax

        $sequence_16 = { 488d0d528a0300 e8???????? 488b8de0000000 e8???????? }
            // n = 4, score = 200
            //   488d0d528a0300       | dec                 eax
            //   e8????????           |                     
            //   488b8de0000000       | lea                 ecx, [0x26d51]
            //   e8????????           |                     

        $sequence_17 = { 8b45f7 8d1c00 498bcc e8???????? }
            // n = 4, score = 200
            //   8b45f7               | lea                 ecx, [0x38a52]
            //   8d1c00               | dec                 eax
            //   498bcc               | mov                 ecx, dword ptr [ebp + 0xe0]
            //   e8????????           |                     

        $sequence_18 = { 488d0d52b90200 e8???????? e8???????? 48894508 488b4508 48833800 }
            // n = 6, score = 200
            //   488d0d52b90200       | mov                 dword ptr [ebp + 0xeb8], eax
            //   e8????????           |                     
            //   e8????????           |                     
            //   48894508             | dec                 eax
            //   488b4508             | mov                 eax, dword ptr [ebp + 0xeb8]
            //   48833800             | dec                 eax

        $sequence_19 = { 488d0d4fb60300 e8???????? e8???????? 48894508 b808000000 486bc006 488b4d08 }
            // n = 7, score = 200
            //   488d0d4fb60300       | dec                 eax
            //   e8????????           |                     
            //   e8????????           |                     
            //   48894508             | lea                 ecx, [0x3b64f]
            //   b808000000           | dec                 eax
            //   486bc006             | mov                 dword ptr [ebp + 8], eax
            //   488b4d08             | mov                 eax, 8

        $sequence_20 = { 488d1587900000 b914000000 e8???????? 488bf0 }
            // n = 4, score = 200
            //   488d1587900000       | dec                 esp
            //   b914000000           | mov                 ecx, eax
            //   e8????????           |                     
            //   488bf0               | dec                 esp

    condition:
        7 of them and filesize < 778240
}