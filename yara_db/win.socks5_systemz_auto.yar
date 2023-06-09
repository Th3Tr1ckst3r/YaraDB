rule win_socks5_systemz_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-29"
        version = "1"
        description = "Detects win.socks5_systemz."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.socks5_systemz"
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
        $sequence_0 = { 894590 c645fc0e e8???????? 83c410 c645fc0a 8d4da8 e8???????? }
            // n = 7, score = 200
            //   894590               | mov                 dword ptr [ebp - 0x70], eax
            //   c645fc0e             | mov                 byte ptr [ebp - 4], 0xe
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10
            //   c645fc0a             | mov                 byte ptr [ebp - 4], 0xa
            //   8d4da8               | lea                 ecx, [ebp - 0x58]
            //   e8????????           |                     

        $sequence_1 = { 8b0e e8???????? 83c608 3bf7 7593 8b7d2c }
            // n = 6, score = 200
            //   8b0e                 | mov                 ecx, dword ptr [esi]
            //   e8????????           |                     
            //   83c608               | add                 esi, 8
            //   3bf7                 | cmp                 esi, edi
            //   7593                 | jne                 0xffffff95
            //   8b7d2c               | mov                 edi, dword ptr [ebp + 0x2c]

        $sequence_2 = { 803801 0f8407010000 8b75f4 56 e8???????? ff30 }
            // n = 6, score = 200
            //   803801               | cmp                 byte ptr [eax], 1
            //   0f8407010000         | je                  0x10d
            //   8b75f4               | mov                 esi, dword ptr [ebp - 0xc]
            //   56                   | push                esi
            //   e8????????           |                     
            //   ff30                 | push                dword ptr [eax]

        $sequence_3 = { e8???????? 8d45c4 50 8b4dec 83c10c e8???????? }
            // n = 6, score = 200
            //   e8????????           |                     
            //   8d45c4               | lea                 eax, [ebp - 0x3c]
            //   50                   | push                eax
            //   8b4dec               | mov                 ecx, dword ptr [ebp - 0x14]
            //   83c10c               | add                 ecx, 0xc
            //   e8????????           |                     

        $sequence_4 = { 6800100000 6a00 ff55d0 50 ff95f4fdffff 8945c0 c745d800000000 }
            // n = 7, score = 200
            //   6800100000           | push                0x1000
            //   6a00                 | push                0
            //   ff55d0               | call                dword ptr [ebp - 0x30]
            //   50                   | push                eax
            //   ff95f4fdffff         | call                dword ptr [ebp - 0x20c]
            //   8945c0               | mov                 dword ptr [ebp - 0x40], eax
            //   c745d800000000       | mov                 dword ptr [ebp - 0x28], 0

        $sequence_5 = { 8b45f0 833801 742c 68???????? 8d4de4 }
            // n = 5, score = 200
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]
            //   833801               | cmp                 dword ptr [eax], 1
            //   742c                 | je                  0x2e
            //   68????????           |                     
            //   8d4de4               | lea                 ecx, [ebp - 0x1c]

        $sequence_6 = { e8???????? 83c410 8d4df8 50 e8???????? 8b45f8 }
            // n = 6, score = 200
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10
            //   8d4df8               | lea                 ecx, [ebp - 8]
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]

        $sequence_7 = { e8???????? 51 51 8d4510 c645fc03 8bcc }
            // n = 6, score = 200
            //   e8????????           |                     
            //   51                   | push                ecx
            //   51                   | push                ecx
            //   8d4510               | lea                 eax, [ebp + 0x10]
            //   c645fc03             | mov                 byte ptr [ebp - 4], 3
            //   8bcc                 | mov                 ecx, esp

    condition:
        7 of them and filesize < 491520
}