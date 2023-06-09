rule win_winordll64_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.winordll64."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.winordll64"
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
        $sequence_0 = { 4983e4c0 4c03e7 4c896608 48893e 488b5c2450 488b742460 488b7c2468 }
            // n = 7, score = 100
            //   4983e4c0             | mov                 byte ptr [ebp + eax - 0x70], 0
            //   4c03e7               | jne                 0xc8c
            //   4c896608             | mov                 dword ptr [ebp - 0x70], ecx
            //   48893e               | dec                 eax
            //   488b5c2450           | cmp                 eax, -1
            //   488b742460           | je                  0xb76
            //   488b7c2468           | cmp                 word ptr [ebp - 0x14], 0x2e

        $sequence_1 = { 415c 5f 5e c3 4053 4883ec20 488d5908 }
            // n = 7, score = 100
            //   415c                 | dec                 eax
            //   5f                   | sub                 ecx, edx
            //   5e                   | dec                 eax
            //   c3                   | cmp                 ecx, esi
            //   4053                 | dec                 eax
            //   4883ec20             | cmova               ecx, esi
            //   488d5908             | dec                 eax

        $sequence_2 = { ff5308 85c0 7421 4403ac2498000000 4d8b06 488b8c24a8000000 4b8d0428 }
            // n = 7, score = 100
            //   ff5308               | jne                 0x190
            //   85c0                 | inc                 edi
            //   7421                 | lea                 eax, [ebx + ebx + 2]
            //   4403ac2498000000     | je                  0x1b2
            //   4d8b06               | dec                 eax
            //   488b8c24a8000000     | mov                 eax, ebx
            //   4b8d0428             | dec                 eax

        $sequence_3 = { 4c3bc0 760d 488d0dbc0f0100 e8???????? cc 488b4910 498bc2 }
            // n = 7, score = 100
            //   4c3bc0               | cmp                 ebx, edi
            //   760d                 | jne                 0
            //   488d0dbc0f0100       | dec                 ecx
            //   e8????????           |                     
            //   cc                   | dec                 esi
            //   488b4910             | inc                 edx
            //   498bc2               | mov                 byte ptr [esp + esi + 0x70], 0

        $sequence_4 = { 57 4883ec20 488d1dd6250100 be40000000 488b3b 4885ff 7437 }
            // n = 7, score = 100
            //   57                   | dec                 eax
            //   4883ec20             | lea                 edx, [0xc591]
            //   488d1dd6250100       | inc                 ecx
            //   be40000000           | mov                 eax, 0x40
            //   488b3b               | dec                 eax
            //   4885ff               | lea                 edx, [ebp + 0x10]
            //   7437                 | dec                 eax

        $sequence_5 = { 4503c5 66443938 75f3 ebd7 418bff eb0c ba12000000 }
            // n = 7, score = 100
            //   4503c5               | je                  0xbd
            //   66443938             | dec                 eax
            //   75f3                 | mov                 edi, eax
            //   ebd7                 | dec                 eax
            //   418bff               | cmp                 eax, -1
            //   eb0c                 | je                  0xdc
            //   ba12000000           | mov                 ecx, 0x238

        $sequence_6 = { 483bd0 0f8f95010000 41d1ea 440bd6 45895500 418b03 4d8be8 }
            // n = 7, score = 100
            //   483bd0               | dec                 eax
            //   0f8f95010000         | sub                 eax, edi
            //   41d1ea               | dec                 eax
            //   440bd6               | cmp                 eax, 2
            //   45895500             | jg                  0x167
            //   418b03               | dec                 eax
            //   4d8be8               | lea                 eax, [edi + 1]

        $sequence_7 = { 7865 3b1d???????? 735d 488bfb 488bf3 48c1fe05 4c8d2572c80000 }
            // n = 7, score = 100
            //   7865                 | mov                 dword ptr [esp + 0x20], edi
            //   3b1d????????         |                     
            //   735d                 | test                eax, eax
            //   488bfb               | dec                 eax
            //   488bf3               | lea                 edx, [esp + 0x98]
            //   48c1fe05             | dec                 ecx
            //   4c8d2572c80000       | mov                 ecx, esp

        $sequence_8 = { ffc1 66443928 75f4 8d440902 4863f8 85c0 7505 }
            // n = 7, score = 100
            //   ffc1                 | mov                 edx, edi
            //   66443928             | inc                 ecx
            //   75f4                 | mov                 eax, 0x40
            //   8d440902             | dec                 eax
            //   4863f8               | add                 ebx, 0x40
            //   85c0                 | dec                 eax
            //   7505                 | add                 edi, 0x40

        $sequence_9 = { 488d0d20270100 baa00f0000 488bc5 83e51f 48c1f805 486bed58 48032cc1 }
            // n = 7, score = 100
            //   488d0d20270100       | test                edx, edx
            //   baa00f0000           | je                  0x9e
            //   488bc5               | inc                 ebp
            //   83e51f               | test                esi, esi
            //   48c1f805             | jne                 0x17f
            //   486bed58             | dec                 eax
            //   48032cc1             | mov                 ecx, dword ptr [ebp - 0x68]

    condition:
        7 of them and filesize < 278528
}