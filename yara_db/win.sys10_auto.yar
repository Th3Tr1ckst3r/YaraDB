rule win_sys10_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.sys10."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sys10"
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
        $sequence_0 = { 56 e8???????? 57 8d542438 53 52 e8???????? }
            // n = 7, score = 200
            //   56                   | push                esi
            //   e8????????           |                     
            //   57                   | push                edi
            //   8d542438             | lea                 edx, [esp + 0x38]
            //   53                   | push                ebx
            //   52                   | push                edx
            //   e8????????           |                     

        $sequence_1 = { 6a03 68???????? 68???????? 51 }
            // n = 4, score = 200
            //   6a03                 | push                3
            //   68????????           |                     
            //   68????????           |                     
            //   51                   | push                ecx

        $sequence_2 = { 53 33db ff15???????? 33c9 }
            // n = 4, score = 200
            //   53                   | push                ebx
            //   33db                 | xor                 ebx, ebx
            //   ff15????????         |                     
            //   33c9                 | xor                 ecx, ecx

        $sequence_3 = { 6a03 68???????? 68???????? 51 52 50 ff15???????? }
            // n = 7, score = 200
            //   6a03                 | push                3
            //   68????????           |                     
            //   68????????           |                     
            //   51                   | push                ecx
            //   52                   | push                edx
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_4 = { 3df4010000 7305 b8f4010000 8b0d???????? 8b15???????? }
            // n = 5, score = 200
            //   3df4010000           | cmp                 eax, 0x1f4
            //   7305                 | jae                 7
            //   b8f4010000           | mov                 eax, 0x1f4
            //   8b0d????????         |                     
            //   8b15????????         |                     

        $sequence_5 = { 8bf8 ffd3 894610 89442418 8d4608 }
            // n = 5, score = 200
            //   8bf8                 | mov                 edi, eax
            //   ffd3                 | call                ebx
            //   894610               | mov                 dword ptr [esi + 0x10], eax
            //   89442418             | mov                 dword ptr [esp + 0x18], eax
            //   8d4608               | lea                 eax, [esi + 8]

        $sequence_6 = { 8b06 8d4c2413 51 6800400000 }
            // n = 4, score = 200
            //   8b06                 | mov                 eax, dword ptr [esi]
            //   8d4c2413             | lea                 ecx, [esp + 0x13]
            //   51                   | push                ecx
            //   6800400000           | push                0x4000

        $sequence_7 = { e8???????? 83c404 85c0 74c6 8b4c2410 }
            // n = 5, score = 200
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   85c0                 | test                eax, eax
            //   74c6                 | je                  0xffffffc8
            //   8b4c2410             | mov                 ecx, dword ptr [esp + 0x10]

        $sequence_8 = { 55 8b2d???????? 56 8b742418 57 8b3d???????? a801 }
            // n = 7, score = 200
            //   55                   | push                ebp
            //   8b2d????????         |                     
            //   56                   | push                esi
            //   8b742418             | mov                 esi, dword ptr [esp + 0x18]
            //   57                   | push                edi
            //   8b3d????????         |                     
            //   a801                 | test                al, 1

        $sequence_9 = { 8b9640020000 8b06 8d4c2413 51 6800400000 52 50 }
            // n = 7, score = 200
            //   8b9640020000         | mov                 edx, dword ptr [esi + 0x240]
            //   8b06                 | mov                 eax, dword ptr [esi]
            //   8d4c2413             | lea                 ecx, [esp + 0x13]
            //   51                   | push                ecx
            //   6800400000           | push                0x4000
            //   52                   | push                edx
            //   50                   | push                eax

    condition:
        7 of them and filesize < 286720
}