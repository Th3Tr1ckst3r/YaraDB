rule win_oceansalt_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.oceansalt."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.oceansalt"
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
        $sequence_0 = { 6a00 56 ff15???????? 8bd8 85db 7517 56 }
            // n = 7, score = 300
            //   6a00                 | cmp                 ecx, eax
            //   56                   | test                eax, eax
            //   ff15????????         |                     
            //   8bd8                 | jne                 0xffffff2f
            //   85db                 | dec                 eax
            //   7517                 | lea                 edx, [esp + 0x40]
            //   56                   | push                esi

        $sequence_1 = { 56 8d450c 50 51 8d95fcfbffff 6800020000 52 }
            // n = 7, score = 300
            //   56                   | inc                 ecx
            //   8d450c               | mov                 eax, 0x108
            //   50                   | dec                 eax
            //   51                   | mov                 ecx, ebx
            //   8d95fcfbffff         | inc                 ebp
            //   6800020000           | xor                 ecx, ecx
            //   52                   | inc                 ecx

        $sequence_2 = { 6a02 6a00 6a02 6800000040 8d8df8f9ffff 51 ff15???????? }
            // n = 7, score = 300
            //   6a02                 | push                0
            //   6a00                 | push                0x108
            //   6a02                 | lea                 edx, [ebp - 0x10c]
            //   6800000040           | push                0
            //   8d8df8f9ffff         | push                esi
            //   51                   | mov                 ebx, eax
            //   ff15????????         |                     

        $sequence_3 = { 8b1d???????? 56 8b7508 57 6a00 6804020000 }
            // n = 6, score = 300
            //   8b1d????????         |                     
            //   56                   | xor                 eax, eax
            //   8b7508               | push                eax
            //   57                   | test                eax, eax
            //   6a00                 | jne                 0xffffff89
            //   6804020000           | pop                 ebx

        $sequence_4 = { a1???????? 33c5 8945fc 56 8b7508 33c0 50 }
            // n = 7, score = 300
            //   a1????????           |                     
            //   33c5                 | mov                 eax, 0x200
            //   8945fc               | dec                 eax
            //   56                   | lea                 ecx, [esp + 0x30]
            //   8b7508               | xor                 edx, edx
            //   33c0                 | inc                 ecx
            //   50                   | mov                 eax, 0x104

        $sequence_5 = { 8be5 5d c3 8b480c 8b01 85c0 7428 }
            // n = 7, score = 300
            //   8be5                 | lea                 edx, [ebp - 0x404]
            //   5d                   | push                0x200
            //   c3                   | push                edx
            //   8b480c               | xor                 eax, ebp
            //   8b01                 | mov                 dword ptr [ebp - 4], eax
            //   85c0                 | push                esi
            //   7428                 | mov                 esi, dword ptr [ebp + 8]

        $sequence_6 = { 8d85f8fdffff 50 51 ff15???????? 8b55f8 8b4508 6a00 }
            // n = 7, score = 300
            //   8d85f8fdffff         | test                ebx, ebx
            //   50                   | jne                 0x1e
            //   51                   | push                esi
            //   ff15????????         |                     
            //   8b55f8               | test                ebx, ebx
            //   8b4508               | jne                 0x19
            //   6a00                 | push                esi

        $sequence_7 = { 85c0 7587 5b 6a00 6808010000 8d95f4feffff }
            // n = 6, score = 300
            //   85c0                 | jne                 0x18
            //   7587                 | dec                 eax
            //   5b                   | lea                 eax, [0x8603]
            //   6a00                 | dec                 eax
            //   6808010000           | mov                 ecx, dword ptr [esp + 0x30]
            //   8d95f4feffff         | dec                 eax

        $sequence_8 = { 4c8d0543770000 488bcf 498bd5 e8???????? }
            // n = 4, score = 100
            //   4c8d0543770000       | dec                 esp
            //   488bcf               | lea                 eax, [0x7743]
            //   498bd5               | dec                 eax
            //   e8????????           |                     

        $sequence_9 = { e8???????? 4c8d9c2470030000 498b5b20 498b6b28 498b7330 498be3 }
            // n = 6, score = 100
            //   e8????????           |                     
            //   4c8d9c2470030000     | jne                 0x22
            //   498b5b20             | mov                 ecx, 0x1388
            //   498b6b28             | dec                 eax
            //   498b7330             | lea                 ecx, [0xfa2c]
            //   498be3               | dec                 eax

        $sequence_10 = { 41b808010000 488bcb ff15???????? 4533c9 }
            // n = 4, score = 100
            //   41b808010000         | dec                 ecx
            //   488bcb               | mov                 esi, dword ptr [ebx + 0x30]
            //   ff15????????         |                     
            //   4533c9               | dec                 ecx

        $sequence_11 = { 89442421 6689442425 88442427 ff15???????? 4533c9 488d542420 }
            // n = 6, score = 100
            //   89442421             | test                eax, eax
            //   6689442425           | dec                 esp
            //   88442427             | lea                 ebx, [esp + 0x370]
            //   ff15????????         |                     
            //   4533c9               | dec                 ecx
            //   488d542420           | mov                 ebx, dword ptr [ebx + 0x20]

        $sequence_12 = { 4885c0 751d b988130000 ff15???????? 488d0d2cfa0000 ff15???????? 4885c0 }
            // n = 7, score = 100
            //   4885c0               | mov                 ecx, edi
            //   751d                 | dec                 ecx
            //   b988130000           | mov                 edx, ebp
            //   ff15????????         |                     
            //   488d0d2cfa0000       | dec                 eax
            //   ff15????????         |                     
            //   4885c0               | test                eax, eax

        $sequence_13 = { e9???????? 488b0d???????? e8???????? eb6f 488b0d???????? 488d542434 }
            // n = 6, score = 100
            //   e9????????           |                     
            //   488b0d????????       |                     
            //   e8????????           |                     
            //   eb6f                 | dec                 ecx
            //   488b0d????????       |                     
            //   488d542434           | mov                 ebp, dword ptr [ebx + 0x28]

        $sequence_14 = { 41b800020000 ff15???????? 488d4c2430 33d2 41b804010000 e8???????? 833d????????00 }
            // n = 7, score = 100
            //   41b800020000         | mov                 esp, ebx
            //   ff15????????         |                     
            //   488d4c2430           | mov                 dword ptr [esp + 0x21], eax
            //   33d2                 | mov                 word ptr [esp + 0x25], ax
            //   41b804010000         | mov                 byte ptr [esp + 0x27], al
            //   e8????????           |                     
            //   833d????????00       |                     

        $sequence_15 = { 7516 488d0503860000 488b4c2430 483bc8 }
            // n = 4, score = 100
            //   7516                 | inc                 ebp
            //   488d0503860000       | xor                 ecx, ecx
            //   488b4c2430           | dec                 eax
            //   483bc8               | lea                 edx, [esp + 0x20]

    condition:
        7 of them and filesize < 212992
}