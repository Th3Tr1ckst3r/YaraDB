rule win_scieron_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.scieron."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.scieron"
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
        $sequence_0 = { 8d84249c000000 68???????? 50 ff15???????? 83c40c 33c0 }
            // n = 6, score = 100
            //   8d84249c000000       | lea                 eax, [esp + 0x9c]
            //   68????????           |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   83c40c               | add                 esp, 0xc
            //   33c0                 | xor                 eax, eax

        $sequence_1 = { 898e08400010 8b88dc410010 898e00400010 8b88e0410010 898e04400010 }
            // n = 5, score = 100
            //   898e08400010         | mov                 dword ptr [esi + 0x10004008], ecx
            //   8b88dc410010         | mov                 ecx, dword ptr [eax + 0x100041dc]
            //   898e00400010         | mov                 dword ptr [esi + 0x10004000], ecx
            //   8b88e0410010         | mov                 ecx, dword ptr [eax + 0x100041e0]
            //   898e04400010         | mov                 dword ptr [esi + 0x10004004], ecx

        $sequence_2 = { 741b 68???????? 8d85d8fdffff 50 ffd6 85c0 }
            // n = 6, score = 100
            //   741b                 | je                  0x1d
            //   68????????           |                     
            //   8d85d8fdffff         | lea                 eax, [ebp - 0x228]
            //   50                   | push                eax
            //   ffd6                 | call                esi
            //   85c0                 | test                eax, eax

        $sequence_3 = { 8bf0 8bc6 5e c3 57 68???????? }
            // n = 6, score = 100
            //   8bf0                 | mov                 esi, eax
            //   8bc6                 | mov                 eax, esi
            //   5e                   | pop                 esi
            //   c3                   | ret                 
            //   57                   | push                edi
            //   68????????           |                     

        $sequence_4 = { 50 ffd7 ffd0 ffb424a0020000 ffb424a0020000 6a00 6a00 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   ffd7                 | call                edi
            //   ffd0                 | call                eax
            //   ffb424a0020000       | push                dword ptr [esp + 0x2a0]
            //   ffb424a0020000       | push                dword ptr [esp + 0x2a0]
            //   6a00                 | push                0
            //   6a00                 | push                0

        $sequence_5 = { 6bf61c 8b88c0410010 ff742414 898e08400010 8b88dc410010 898e00400010 }
            // n = 6, score = 100
            //   6bf61c               | imul                esi, esi, 0x1c
            //   8b88c0410010         | mov                 ecx, dword ptr [eax + 0x100041c0]
            //   ff742414             | push                dword ptr [esp + 0x14]
            //   898e08400010         | mov                 dword ptr [esi + 0x10004008], ecx
            //   8b88dc410010         | mov                 ecx, dword ptr [eax + 0x100041dc]
            //   898e00400010         | mov                 dword ptr [esi + 0x10004000], ecx

        $sequence_6 = { 6a02 56 6a01 894df4 8b5804 83c008 6800000040 }
            // n = 7, score = 100
            //   6a02                 | push                2
            //   56                   | push                esi
            //   6a01                 | push                1
            //   894df4               | mov                 dword ptr [ebp - 0xc], ecx
            //   8b5804               | mov                 ebx, dword ptr [eax + 4]
            //   83c008               | add                 eax, 8
            //   6800000040           | push                0x40000000

        $sequence_7 = { 8d6c2488 81ec8c020000 56 6880000000 8d45f4 33f6 50 }
            // n = 7, score = 100
            //   8d6c2488             | lea                 ebp, [esp - 0x78]
            //   81ec8c020000         | sub                 esp, 0x28c
            //   56                   | push                esi
            //   6880000000           | push                0x80
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   33f6                 | xor                 esi, esi
            //   50                   | push                eax

        $sequence_8 = { 50 56 e8???????? eb23 68???????? }
            // n = 5, score = 100
            //   50                   | push                eax
            //   56                   | push                esi
            //   e8????????           |                     
            //   eb23                 | jmp                 0x25
            //   68????????           |                     

        $sequence_9 = { 6a03 e8???????? 8bf8 83c410 85ff 7432 8b450c }
            // n = 7, score = 100
            //   6a03                 | push                3
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax
            //   83c410               | add                 esp, 0x10
            //   85ff                 | test                edi, edi
            //   7432                 | je                  0x34
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]

    condition:
        7 of them and filesize < 100352
}