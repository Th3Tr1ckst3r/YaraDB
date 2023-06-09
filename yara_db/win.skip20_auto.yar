rule win_skip20_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.skip20."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.skip20"
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
        $sequence_0 = { 4c8bdf 488bcf 48c1f905 4183e31f 488d1587d30400 488b0cca 4d6bdb58 }
            // n = 7, score = 200
            //   4c8bdf               | mov                 dword ptr [ebp - 0x38], 0x49000000
            //   488bcf               | mov                 dword ptr [ebp - 0x34], 0x49105b8b
            //   48c1f905             | mov                 dword ptr [ebp - 0x30], 0x49186b8b
            //   4183e31f             | mov                 dword ptr [ebp - 0x2c], 0x4920738b
            //   488d1587d30400       | mov                 dword ptr [ebp - 0x28], 0x49287b8b
            //   488b0cca             | mov                 dword ptr [ebp - 0x38], 0x49000000
            //   4d6bdb58             | mov                 dword ptr [ebp - 0x34], 0x49105b8b

        $sequence_1 = { 4585e4 754a 83f805 7545 c6463620 }
            // n = 5, score = 200
            //   4585e4               | inc                 esp
            //   754a                 | mov                 ecx, dword ptr [ebp - 0x4d]
            //   83f805               | test                eax, eax
            //   7545                 | jne                 0x1593
            //   c6463620             | dec                 eax

        $sequence_2 = { 418b8c8450470000 4903cc ffe1 0fb645ff 488d0c40 498d948cd02a0100 }
            // n = 6, score = 200
            //   418b8c8450470000     | inc                 ecx
            //   4903cc               | test                bl, 4
            //   ffe1                 | je                  0xd5
            //   0fb645ff             | or                  dword ptr [esi + 4], 0x2000000
            //   488d0c40             | add                 edx, 8
            //   498d948cd02a0100     | jmp                 0xe9

        $sequence_3 = { 33f6 488d6f24 4c8d253dbcffff 807dfe00 0f843a030000 }
            // n = 5, score = 200
            //   33f6                 | mov                 dword ptr [esp + 0x30], ecx
            //   488d6f24             | movzx               edx, word ptr [esp + 0x78]
            //   4c8d253dbcffff       | mov                 dword ptr [esp + 0x28], edx
            //   807dfe00             | dec                 eax
            //   0f843a030000         | lea                 edx, [0x12f65]

        $sequence_4 = { b244 488bce e8???????? e9???????? b257 488bce e8???????? }
            // n = 7, score = 200
            //   b244                 | bt                  esi, 0x1a
            //   488bce               | jae                 0x3c9
            //   e8????????           |                     
            //   e9????????           |                     
            //   b257                 | test                byte ptr [esp + 0xb8], 8
            //   488bce               | je                  0x3c9
            //   e8????????           |                     

        $sequence_5 = { 488b6c2438 488b7c2420 33c0 4883c428 c3 0fb7c8 48895c2430 }
            // n = 7, score = 200
            //   488b6c2438           | dec                 esp
            //   488b7c2420           | lea                 eax, [0xffffff98]
            //   33c0                 | dec                 esp
            //   4883c428             | cmp                 dword ptr [ecx], eax
            //   c3                   | test                edx, edx
            //   0fb7c8               | je                  0xcd2
            //   48895c2430           | dec                 edx

        $sequence_6 = { 488d150cc40000 41b806000000 498bc9 4883c428 e9???????? 488d15ebc30000 41b806000000 }
            // n = 7, score = 200
            //   488d150cc40000       | mov                 eax, dword ptr [ebp - 0x31]
            //   41b806000000         | mov                 eax, dword ptr [esp + 0x24]
            //   498bc9               | mov                 eax, dword ptr [ecx + 0x18]
            //   4883c428             | dec                 esp
            //   e9????????           |                     
            //   488d15ebc30000       | mov                 eax, ecx
            //   41b806000000         | cmp                 eax, 1

        $sequence_7 = { 4157 4883ec60 448ba424c0000000 488bb424c8000000 }
            // n = 4, score = 200
            //   4157                 | inc                 ecx
            //   4883ec60             | mov                 eax, 0x1ffe
            //   448ba424c0000000     | dec                 eax
            //   488bb424c8000000     | mov                 dword ptr [esp + 0x58], eax

        $sequence_8 = { 488b1c24 4883c408 c3 4885d2 754f 430fb78441a0b10100 }
            // n = 6, score = 200
            //   488b1c24             | or                  dword ptr [esi + 4], 0x4000
            //   4883c408             | mov                 byte ptr [ebx + edi*4 + 0x22], 1
            //   c3                   | mov                 byte ptr [ebx + edi*4 + 0x23], dl
            //   4885d2               | movzx               eax, byte ptr [ebx + edi*4 + 0x23]
            //   754f                 | inc                 ecx
            //   430fb78441a0b10100     | mov    eax, dword ptr [edx + eax*4 + 0x18830]

        $sequence_9 = { 668944bb24 66837cbb2400 c644bb2205 7530 8b8c24d0000000 85c9 741b }
            // n = 7, score = 200
            //   668944bb24           | movzx               ecx, word ptr [esp + 0x7a]
            //   66837cbb2400         | movzx               edx, word ptr [esp + 0x78]
            //   c644bb2205           | mov                 dword ptr [esp + 0x38], eax
            //   7530                 | xor                 esi, esi
            //   8b8c24d0000000       | dec                 eax
            //   85c9                 | lea                 ebp, [edi + 0x24]
            //   741b                 | dec                 esp

    condition:
        7 of them and filesize < 794624
}