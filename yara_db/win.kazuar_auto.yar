rule win_kazuar_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.kazuar."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kazuar"
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
        $sequence_0 = { 4c01db 0fb71403 8b461c 498d1493 }
            // n = 4, score = 300
            //   4c01db               | mov                 ecx, dword ptr [ebx + 0x40]
            //   0fb71403             | dec                 eax
            //   8b461c               | mov                 dword ptr [esp + 0x21], eax
            //   498d1493             | mov                 ebx, ecx

        $sequence_1 = { 7449 4c01de 31db 8b6e20 448b6618 4c01dd }
            // n = 6, score = 300
            //   7449                 | jmp                 0x265
            //   4c01de               | mov                 ebx, dword ptr [ebx]
            //   31db                 | test                ebx, ebx
            //   8b6e20               | cmp                 eax, edi
            //   448b6618             | jne                 0x27d
            //   4c01dd               | mov                 eax, dword ptr [esi + 0x24]

        $sequence_2 = { 8b0402 4c01d8 eb07 48ffc3 ebc8 }
            // n = 5, score = 300
            //   8b0402               | xor                 eax, eax
            //   4c01d8               | inc                 esp
            //   eb07                 | mov                 eax, ecx
            //   48ffc3               | inc                 ecx
            //   ebc8                 | movsx               ecx, byte ptr [edx + eax]

        $sequence_3 = { c70305400080 e8???????? 85c0 7517 c70305400080 }
            // n = 5, score = 300
            //   c70305400080         | test                eax, eax
            //   e8????????           |                     
            //   85c0                 | jne                 0x2b5
            //   7517                 | mov                 dword ptr [ebx], 0x80004005
            //   c70305400080         | mov                 dword ptr [ebx + 4], 0x17f

        $sequence_4 = { 7463 4863493c 4c01d9 8bb188000000 }
            // n = 4, score = 300
            //   7463                 | dec                 eax
            //   4863493c             | lea                 eax, [esp + 0x3c]
            //   4c01d9               | mov                 dword ptr [esp + 0x3c], 0
            //   8bb188000000         | dec                 eax

        $sequence_5 = { 410fbe0c02 84c9 7417 e8???????? 0fbec0 }
            // n = 5, score = 300
            //   410fbe0c02           | jmp                 0x74
            //   84c9                 | xor                 edi, edi
            //   7417                 | add                 esp, 0xc
            //   e8????????           |                     
            //   0fbec0               | jmp                 0xb5

        $sequence_6 = { 39f8 751c 8b4624 4801db }
            // n = 4, score = 300
            //   39f8                 | mov                 ebx, dword ptr [0x30]
            //   751c                 | dec                 eax
            //   8b4624               | mov                 ebx, dword ptr [ebx + 0x60]
            //   4801db               | dec                 eax

        $sequence_7 = { 31c0 4885c9 4989cb 89d7 }
            // n = 4, score = 300
            //   31c0                 | xor                 eax, eax
            //   4885c9               | inc                 ebp
            //   4989cb               | imul                eax, eax, 0x1000197
            //   89d7                 | xor                 eax, eax

        $sequence_8 = { 740a 81ea00204000 01d0 eb02 }
            // n = 4, score = 300
            //   740a                 | je                  0xf0
            //   81ea00204000         | inc                 ebp
            //   01d0                 | xor                 ecx, ecx
            //   eb02                 | inc                 ebp

        $sequence_9 = { 53 4883ec20 31db 65488b1c2530000000 488b5b60 488b5b18 488b5b30 }
            // n = 7, score = 300
            //   53                   | mov                 dword ptr [ebp - 0x1c], 0
            //   4883ec20             | mov                 edx, dword ptr [eax]
            //   31db                 | mov                 dword ptr [ebx + 4], 0x18b
            //   65488b1c2530000000     | mov    eax, 0x80131700
            //   488b5b60             | mov                 eax, 0x4024f4
            //   488b5b18             | mov                 dword ptr [ebp - 0x20], 0
            //   488b5b30             | mov                 dword ptr [ebx + 4], 0x18f

    condition:
        7 of them and filesize < 81920
}