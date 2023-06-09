rule win_havoc_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.havoc."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.havoc"
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
        $sequence_0 = { 4c634114 488b09 e8???????? 488b03 48894308 }
            // n = 5, score = 800
            //   4c634114             | inc                 ecx
            //   488b09               | pop                 edi
            //   e8????????           |                     
            //   488b03               | dec                 esp
            //   48894308             | mov                 ecx, ebp

        $sequence_1 = { 8b5204 8b400c 486bc012 4801d0 }
            // n = 4, score = 800
            //   8b5204               | dec                 eax
            //   8b400c               | lea                 ecx, [ebx + 0x10]
            //   486bc012             | dec                 ebp
            //   4801d0               | mov                 ecx, ebp

        $sequence_2 = { 486bc628 488b13 4889f7 4531ed 48c1e704 }
            // n = 5, score = 800
            //   486bc628             | test                esi, esi
            //   488b13               | jne                 0x17a0
            //   4889f7               | mov                 esi, 2
            //   4531ed               | jmp                 0x17a0
            //   48c1e704             | test                esi, esi

        $sequence_3 = { 31f6 53 4889cb 4883ec28 488b4308 }
            // n = 5, score = 800
            //   31f6                 | push                esi
            //   53                   | dec                 eax
            //   4889cb               | mov                 esi, ecx
            //   4883ec28             | mov                 ecx, 0xf
            //   488b4308             | push                ebx

        $sequence_4 = { 488b01 ff5018 85c0 75e2 488b0b }
            // n = 5, score = 800
            //   488b01               | dec                 eax
            //   ff5018               | mov                 ecx, esi
            //   85c0                 | inc                 ecx
            //   75e2                 | mov                 eax, 0x5003c058
            //   488b0b               | mov                 edx, eax

        $sequence_5 = { 448a0401 443a0402 750b 48ffc0 4584c0 75ee }
            // n = 6, score = 800
            //   448a0401             | dec                 eax
            //   443a0402             | mov                 eax, dword ptr [esp + 0x190]
            //   750b                 | inc                 esp
            //   48ffc0               | mov                 dword ptr [esp + 0x28], esp
            //   4584c0               | dec                 eax
            //   75ee                 | mov                 dword ptr [esp + 0x40], 0

        $sequence_6 = { e8???????? 31c0 eb67 488b4500 488d542478 }
            // n = 5, score = 800
            //   e8????????           |                     
            //   31c0                 | mov                 dword ptr [esp + 0x80], 0
            //   eb67                 | dec                 eax
            //   488b4500             | mov                 dword ptr [esp + 0x88], 0
            //   488d542478           | dec                 eax

        $sequence_7 = { 488b4b20 486bd212 4801ca 803a00 0f84a5000000 }
            // n = 5, score = 800
            //   488b4b20             | mov                 dword ptr [esp + 0x30], eax
            //   486bd212             | call                dword ptr [eax + 0x154]
            //   4801ca               | dec                 eax
            //   803a00               | mov                 ebp, eax
            //   0f84a5000000         | dec                 eax

        $sequence_8 = { 57 56 4889d6 4489c2 }
            // n = 4, score = 800
            //   57                   | dec                 eax
            //   56                   | mov                 ecx, dword ptr [esp + 0x78]
            //   4889d6               | call                dword ptr [eax + 0x3cc]
            //   4489c2               | dec                 eax

        $sequence_9 = { 4883c004 83791c00 895114 48894108 4489c0 }
            // n = 5, score = 800
            //   4883c004             | dec                 eax
            //   83791c00             | add                 esp, 0x78
            //   895114               | pop                 ebx
            //   48894108             | pop                 esi
            //   4489c0               | mov                 dword ptr [eax + 4], edx

    condition:
        7 of them and filesize < 164864
}