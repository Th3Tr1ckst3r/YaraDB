rule win_sepsys_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.sepsys."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sepsys"
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
        $sequence_0 = { e8???????? 488b8424e0000000 48c7405000000000 488b8424e0000000 83b88800000001 751e 488b8424e0000000 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   488b8424e0000000     | dec                 esp
            //   48c7405000000000     | mov                 ecx, dword ptr [esp + 0x28]
            //   488b8424e0000000     | dec                 esp
            //   83b88800000001       | mov                 eax, dword ptr [esp + 0x60]
            //   751e                 | dec                 eax
            //   488b8424e0000000     | lea                 edx, [0x23da]

        $sequence_1 = { e8???????? 8845ee eb00 8a45ee 2401 8885ef000000 0fb68def000000 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   8845ee               | add                 ecx, eax
            //   eb00                 | dec                 eax
            //   8a45ee               | mov                 dword ptr [esp + 0x40], eax
            //   2401                 | dec                 eax
            //   8885ef000000         | mov                 eax, dword ptr [esp + 0x60]
            //   0fb68def000000       | movzx               eax, byte ptr [eax + 0x65c]

        $sequence_2 = { e8???????? eb00 c6854e04000000 c6854d04000000 488b4de0 e8???????? ebc9 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   eb00                 | lea                 eax, [ebp + 0x78]
            //   c6854e04000000       | dec                 eax
            //   c6854d04000000       | mov                 dword ptr [ebp - 0x48], ecx
            //   488b4de0             | dec                 eax
            //   e8????????           |                     
            //   ebc9                 | mov                 ecx, edx

        $sequence_3 = { 88542424 41b801000000 e9???????? 89d0 81fa00080000 731d c1e806 }
            // n = 7, score = 400
            //   88542424             | cmp                 dword ptr [esp + 0x48], 0
            //   41b801000000         | je                  0x1c8
            //   e9????????           |                     
            //   89d0                 | dec                 eax
            //   81fa00080000         | arpl                word ptr [esp + 0x20], ax
            //   731d                 | dec                 eax
            //   c1e806               | lea                 ecx, [0x8ac09]

        $sequence_4 = { c644242f01 488b0424 4885c0 7404 eb00 eb12 c644242f00 }
            // n = 7, score = 400
            //   c644242f01           | cmp                 edx, 1
            //   488b0424             | je                  0xf1a
            //   4885c0               | dec                 eax
            //   7404                 | mov                 eax, dword ptr [ebp + 0x60]
            //   eb00                 | dec                 eax
            //   eb12                 | cmp                 dword ptr [ebp + 0x620], 0
            //   c644242f00           | je                  0xf40

        $sequence_5 = { ebda f645f701 750a 48c745d000000000 eb33 488b45c0 488b4dc0 }
            // n = 7, score = 400
            //   ebda                 | inc                 esp
            //   f645f701             | mov                 eax, dword ptr [esp + 0x1138]
            //   750a                 | inc                 esp
            //   48c745d000000000     | and                 eax, dword ptr [esp + 0x1158]
            //   eb33                 | dec                 eax
            //   488b45c0             | mov                 dword ptr [esp + 0x1258], eax
            //   488b4dc0             | dec                 eax

        $sequence_6 = { e8???????? 488b842408010000 48898424a0000000 4883bc24a000000000 750a b81b000000 e9???????? }
            // n = 7, score = 400
            //   e8????????           |                     
            //   488b842408010000     | dec                 eax
            //   48898424a0000000     | mov                 dword ptr [esp + 0x28], eax
            //   4883bc24a000000000     | dec    eax
            //   750a                 | mov                 eax, dword ptr [esp + 0x40]
            //   b81b000000           | cmp                 dword ptr [eax + 0x180], 0
            //   e9????????           |                     

        $sequence_7 = { ebe8 8a442437 2401 0fb6c0 4883c438 c3 488b442420 }
            // n = 7, score = 400
            //   ebe8                 | cmp                 dword ptr [esp + 0xf0], 0
            //   8a442437             | je                  0x1fec
            //   2401                 | dec                 eax
            //   0fb6c0               | mov                 eax, dword ptr [esp + 0x80]
            //   4883c438             | dec                 eax
            //   c3                   | mov                 ecx, dword ptr [esp + 0xf0]
            //   488b442420           | dec                 eax

        $sequence_8 = { e8???????? 4889442430 e8???????? 4889442428 488b442430 4889442438 488b4c2428 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   4889442430           | imul                eax, eax, 0
            //   e8????????           |                     
            //   4889442428           | dec                 eax
            //   488b442430           | lea                 ecx, [0x4ff7e]
            //   4889442438           | mov                 eax, 8
            //   488b4c2428           | dec                 eax

        $sequence_9 = { eb00 488b45b0 480508000000 488d4de0 48894da0 4889c1 488b55a0 }
            // n = 7, score = 400
            //   eb00                 | dec                 eax
            //   488b45b0             | mov                 dword ptr [esp + 0x48], ecx
            //   480508000000         | dec                 eax
            //   488d4de0             | mov                 ecx, dword ptr [esp + 0x48]
            //   48894da0             | dec                 eax
            //   4889c1               | mov                 dword ptr [esp + 0x50], eax
            //   488b55a0             | dec                 eax

    condition:
        7 of them and filesize < 4538368
}