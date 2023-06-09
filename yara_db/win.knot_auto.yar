rule win_knot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.knot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.knot"
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
        $sequence_0 = { 8d95c8fdffff 52 8b45f0 50 }
            // n = 4, score = 200
            //   8d95c8fdffff         | lea                 edx, [ebp - 0x238]
            //   52                   | push                edx
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]
            //   50                   | push                eax

        $sequence_1 = { 52 68???????? ff15???????? e8???????? 99 b9e8030000 f7f9 }
            // n = 7, score = 200
            //   52                   | push                edx
            //   68????????           |                     
            //   ff15????????         |                     
            //   e8????????           |                     
            //   99                   | cdq                 
            //   b9e8030000           | mov                 ecx, 0x3e8
            //   f7f9                 | idiv                ecx

        $sequence_2 = { 52 8b45fc 50 e8???????? 83c40c 8985e8fdffff 8b8de8fdffff }
            // n = 7, score = 200
            //   52                   | push                edx
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   8985e8fdffff         | mov                 dword ptr [ebp - 0x218], eax
            //   8b8de8fdffff         | mov                 ecx, dword ptr [ebp - 0x218]

        $sequence_3 = { 837df400 7454 6a00 6a00 6a00 6a04 8b55f4 }
            // n = 7, score = 200
            //   837df400             | cmp                 dword ptr [ebp - 0xc], 0
            //   7454                 | je                  0x56
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a04                 | push                4
            //   8b55f4               | mov                 edx, dword ptr [ebp - 0xc]

        $sequence_4 = { 52 ff15???????? 8945ec 837dec00 7507 32c0 }
            // n = 6, score = 200
            //   52                   | push                edx
            //   ff15????????         |                     
            //   8945ec               | mov                 dword ptr [ebp - 0x14], eax
            //   837dec00             | cmp                 dword ptr [ebp - 0x14], 0
            //   7507                 | jne                 9
            //   32c0                 | xor                 al, al

        $sequence_5 = { 85c0 753c 8b95e0feffff 52 6a00 6a01 }
            // n = 6, score = 200
            //   85c0                 | test                eax, eax
            //   753c                 | jne                 0x3e
            //   8b95e0feffff         | mov                 edx, dword ptr [ebp - 0x120]
            //   52                   | push                edx
            //   6a00                 | push                0
            //   6a01                 | push                1

        $sequence_6 = { 732a 8b8d78f7ffff 8b148d58504000 52 8b8598fbffff 50 e8???????? }
            // n = 7, score = 200
            //   732a                 | jae                 0x2c
            //   8b8d78f7ffff         | mov                 ecx, dword ptr [ebp - 0x888]
            //   8b148d58504000       | mov                 edx, dword ptr [ecx*4 + 0x405058]
            //   52                   | push                edx
            //   8b8598fbffff         | mov                 eax, dword ptr [ebp - 0x468]
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_7 = { 83c408 85c0 7407 c685f3fdffff00 ebbe 0fb68df3fdffff 83f901 }
            // n = 7, score = 200
            //   83c408               | add                 esp, 8
            //   85c0                 | test                eax, eax
            //   7407                 | je                  9
            //   c685f3fdffff00       | mov                 byte ptr [ebp - 0x20d], 0
            //   ebbe                 | jmp                 0xffffffc0
            //   0fb68df3fdffff       | movzx               ecx, byte ptr [ebp - 0x20d]
            //   83f901               | cmp                 ecx, 1

        $sequence_8 = { 83c404 8d85a0fbffff 50 8b8d8cf9ffff 51 ff15???????? 85c0 }
            // n = 7, score = 200
            //   83c404               | add                 esp, 4
            //   8d85a0fbffff         | lea                 eax, [ebp - 0x460]
            //   50                   | push                eax
            //   8b8d8cf9ffff         | mov                 ecx, dword ptr [ebp - 0x674]
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax

        $sequence_9 = { 6a09 8b85ccfeffff 50 ff15???????? 8b8dccfeffff }
            // n = 5, score = 200
            //   6a09                 | push                9
            //   8b85ccfeffff         | mov                 eax, dword ptr [ebp - 0x134]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b8dccfeffff         | mov                 ecx, dword ptr [ebp - 0x134]

    condition:
        7 of them and filesize < 59392
}