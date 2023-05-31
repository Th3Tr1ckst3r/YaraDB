rule win_new_ct_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.new_ct."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.new_ct"
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
        $sequence_0 = { e8???????? 89b5bcf6ffff 89b5c0f6ffff 85f6 7410 }
            // n = 5, score = 200
            //   e8????????           |                     
            //   89b5bcf6ffff         | mov                 dword ptr [ebp - 0x944], esi
            //   89b5c0f6ffff         | mov                 dword ptr [ebp - 0x940], esi
            //   85f6                 | test                esi, esi
            //   7410                 | je                  0x12

        $sequence_1 = { 898e84030000 33ff 897c2414 8b8680030000 }
            // n = 4, score = 200
            //   898e84030000         | mov                 dword ptr [esi + 0x384], ecx
            //   33ff                 | xor                 edi, edi
            //   897c2414             | mov                 dword ptr [esp + 0x14], edi
            //   8b8680030000         | mov                 eax, dword ptr [esi + 0x380]

        $sequence_2 = { 85c0 0f846b020000 68???????? 8d85e4feffff 50 ff15???????? 8d8d84faffff }
            // n = 7, score = 200
            //   85c0                 | test                eax, eax
            //   0f846b020000         | je                  0x271
            //   68????????           |                     
            //   8d85e4feffff         | lea                 eax, [ebp - 0x11c]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8d8d84faffff         | lea                 ecx, [ebp - 0x57c]

        $sequence_3 = { 5d b801000000 5b 81c4ac9f0100 c21400 8b8c24d09f0100 5f }
            // n = 7, score = 200
            //   5d                   | pop                 ebp
            //   b801000000           | mov                 eax, 1
            //   5b                   | pop                 ebx
            //   81c4ac9f0100         | add                 esp, 0x19fac
            //   c21400               | ret                 0x14
            //   8b8c24d09f0100       | mov                 ecx, dword ptr [esp + 0x19fd0]
            //   5f                   | pop                 edi

        $sequence_4 = { b801000000 5b 81c4ac9f0100 c21400 8b8c24d09f0100 }
            // n = 5, score = 200
            //   b801000000           | mov                 eax, 1
            //   5b                   | pop                 ebx
            //   81c4ac9f0100         | add                 esp, 0x19fac
            //   c21400               | ret                 0x14
            //   8b8c24d09f0100       | mov                 ecx, dword ptr [esp + 0x19fd0]

        $sequence_5 = { 49 6800000020 51 52 53 ffd5 5f }
            // n = 7, score = 200
            //   49                   | dec                 ecx
            //   6800000020           | push                0x20000000
            //   51                   | push                ecx
            //   52                   | push                edx
            //   53                   | push                ebx
            //   ffd5                 | call                ebp
            //   5f                   | pop                 edi

        $sequence_6 = { 8995c4fbffff 899dc8fbffff 8b470c 8b00 8985c8fbffff }
            // n = 5, score = 200
            //   8995c4fbffff         | mov                 dword ptr [ebp - 0x43c], edx
            //   899dc8fbffff         | mov                 dword ptr [ebp - 0x438], ebx
            //   8b470c               | mov                 eax, dword ptr [edi + 0xc]
            //   8b00                 | mov                 eax, dword ptr [eax]
            //   8985c8fbffff         | mov                 dword ptr [ebp - 0x438], eax

        $sequence_7 = { 8d9424bc0b0000 57 897c2418 52 8bcd }
            // n = 5, score = 200
            //   8d9424bc0b0000       | lea                 edx, [esp + 0xbbc]
            //   57                   | push                edi
            //   897c2418             | mov                 dword ptr [esp + 0x18], edi
            //   52                   | push                edx
            //   8bcd                 | mov                 ecx, ebp

        $sequence_8 = { 56 ffd7 83c408 8bf0 8975e4 }
            // n = 5, score = 200
            //   56                   | push                esi
            //   ffd7                 | call                edi
            //   83c408               | add                 esp, 8
            //   8bf0                 | mov                 esi, eax
            //   8975e4               | mov                 dword ptr [ebp - 0x1c], esi

        $sequence_9 = { 66ab aa 6a03 8d85d0ebffff }
            // n = 4, score = 200
            //   66ab                 | stosw               word ptr es:[edi], ax
            //   aa                   | stosb               byte ptr es:[edi], al
            //   6a03                 | push                3
            //   8d85d0ebffff         | lea                 eax, [ebp - 0x1430]

    condition:
        7 of them and filesize < 122880
}