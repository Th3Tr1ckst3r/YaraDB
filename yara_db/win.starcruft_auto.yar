rule win_starcruft_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.starcruft."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.starcruft"
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
        $sequence_0 = { 8b8db8fcffff 51 ff15???????? 8985acfbffff 83bdacfbffff00 7438 8b95acfbffff }
            // n = 7, score = 100
            //   8b8db8fcffff         | mov                 ecx, dword ptr [ebp - 0x348]
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   8985acfbffff         | mov                 dword ptr [ebp - 0x454], eax
            //   83bdacfbffff00       | cmp                 dword ptr [ebp - 0x454], 0
            //   7438                 | je                  0x3a
            //   8b95acfbffff         | mov                 edx, dword ptr [ebp - 0x454]

        $sequence_1 = { 52 e8???????? 83c410 8b4508 50 8d8de0fdffff 51 }
            // n = 7, score = 100
            //   52                   | push                edx
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   50                   | push                eax
            //   8d8de0fdffff         | lea                 ecx, [ebp - 0x220]
            //   51                   | push                ecx

        $sequence_2 = { e9???????? 68???????? 8d95c0faffff 52 ff15???????? 68???????? 8d85a0f6ffff }
            // n = 7, score = 100
            //   e9????????           |                     
            //   68????????           |                     
            //   8d95c0faffff         | lea                 edx, [ebp - 0x540]
            //   52                   | push                edx
            //   ff15????????         |                     
            //   68????????           |                     
            //   8d85a0f6ffff         | lea                 eax, [ebp - 0x960]

        $sequence_3 = { 8b4dfc 8d940139a093fc 8955fc 8b45fc c1e015 8b4dfc c1e90b }
            // n = 7, score = 100
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   8d940139a093fc       | lea                 edx, [ecx + eax - 0x36c5fc7]
            //   8955fc               | mov                 dword ptr [ebp - 4], edx
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   c1e015               | shl                 eax, 0x15
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   c1e90b               | shr                 ecx, 0xb

        $sequence_4 = { 8b8d04faffff 51 ff15???????? 898530fbffff 83bd30fbffff00 }
            // n = 5, score = 100
            //   8b8d04faffff         | mov                 ecx, dword ptr [ebp - 0x5fc]
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   898530fbffff         | mov                 dword ptr [ebp - 0x4d0], eax
            //   83bd30fbffff00       | cmp                 dword ptr [ebp - 0x4d0], 0

        $sequence_5 = { 33ff 56 e8???????? 8bc6 c1f805 8b0485e0fa2e00 }
            // n = 6, score = 100
            //   33ff                 | xor                 edi, edi
            //   56                   | push                esi
            //   e8????????           |                     
            //   8bc6                 | mov                 eax, esi
            //   c1f805               | sar                 eax, 5
            //   8b0485e0fa2e00       | mov                 eax, dword ptr [eax*4 + 0x2efae0]

        $sequence_6 = { 83c42c 8b4510 50 8b4d0c 51 68???????? e8???????? }
            // n = 7, score = 100
            //   83c42c               | add                 esp, 0x2c
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   50                   | push                eax
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   51                   | push                ecx
            //   68????????           |                     
            //   e8????????           |                     

        $sequence_7 = { e9???????? 6a00 8d85bcfcffff 50 6a00 6a06 6a00 }
            // n = 7, score = 100
            //   e9????????           |                     
            //   6a00                 | push                0
            //   8d85bcfcffff         | lea                 eax, [ebp - 0x344]
            //   50                   | push                eax
            //   6a00                 | push                0
            //   6a06                 | push                6
            //   6a00                 | push                0

        $sequence_8 = { 8945fc 837dfc10 7d1d 8b4d0c 034dfc 0fb611 8b4508 }
            // n = 7, score = 100
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   837dfc10             | cmp                 dword ptr [ebp - 4], 0x10
            //   7d1d                 | jge                 0x1f
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   034dfc               | add                 ecx, dword ptr [ebp - 4]
            //   0fb611               | movzx               edx, byte ptr [ecx]
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]

        $sequence_9 = { b802000000 e9???????? 6828010000 6a00 8d85c8fdffff 50 }
            // n = 6, score = 100
            //   b802000000           | mov                 eax, 2
            //   e9????????           |                     
            //   6828010000           | push                0x128
            //   6a00                 | push                0
            //   8d85c8fdffff         | lea                 eax, [ebp - 0x238]
            //   50                   | push                eax

    condition:
        7 of them and filesize < 294912
}