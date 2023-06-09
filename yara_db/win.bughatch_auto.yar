rule win_bughatch_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.bughatch."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bughatch"
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
        $sequence_0 = { 8908 68???????? ff15???????? 8b15???????? }
            // n = 4, score = 100
            //   8908                 | mov                 dword ptr [eax], ecx
            //   68????????           |                     
            //   ff15????????         |                     
            //   8b15????????         |                     

        $sequence_1 = { 83c40c 8945e0 8b45e4 50 }
            // n = 4, score = 100
            //   83c40c               | add                 esp, 0xc
            //   8945e0               | mov                 dword ptr [ebp - 0x20], eax
            //   8b45e4               | mov                 eax, dword ptr [ebp - 0x1c]
            //   50                   | push                eax

        $sequence_2 = { 8b55fc 52 ff15???????? b801000000 eb17 }
            // n = 5, score = 100
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]
            //   52                   | push                edx
            //   ff15????????         |                     
            //   b801000000           | mov                 eax, 1
            //   eb17                 | jmp                 0x19

        $sequence_3 = { 8d55e4 52 6a00 6a01 8b4514 }
            // n = 5, score = 100
            //   8d55e4               | lea                 edx, [ebp - 0x1c]
            //   52                   | push                edx
            //   6a00                 | push                0
            //   6a01                 | push                1
            //   8b4514               | mov                 eax, dword ptr [ebp + 0x14]

        $sequence_4 = { 8b45fc 8b4df0 0fb71441 8b45f8 c1e810 25ffff0000 }
            // n = 6, score = 100
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   8b4df0               | mov                 ecx, dword ptr [ebp - 0x10]
            //   0fb71441             | movzx               edx, word ptr [ecx + eax*2]
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   c1e810               | shr                 eax, 0x10
            //   25ffff0000           | and                 eax, 0xffff

        $sequence_5 = { 837d0804 740c 837d0802 7406 837d0806 7529 }
            // n = 6, score = 100
            //   837d0804             | cmp                 dword ptr [ebp + 8], 4
            //   740c                 | je                  0xe
            //   837d0802             | cmp                 dword ptr [ebp + 8], 2
            //   7406                 | je                  8
            //   837d0806             | cmp                 dword ptr [ebp + 8], 6
            //   7529                 | jne                 0x2b

        $sequence_6 = { 6800010000 8b4d08 8b5104 52 e8???????? 83c408 85c0 }
            // n = 7, score = 100
            //   6800010000           | push                0x100
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   8b5104               | mov                 edx, dword ptr [ecx + 4]
            //   52                   | push                edx
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   85c0                 | test                eax, eax

        $sequence_7 = { ff15???????? 85c0 7414 8b45f0 50 ff15???????? 8b4df4 }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7414                 | je                  0x16
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b4df4               | mov                 ecx, dword ptr [ebp - 0xc]

        $sequence_8 = { 68???????? 6a00 6a00 ff15???????? b904000000 6bd103 }
            // n = 6, score = 100
            //   68????????           |                     
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   b904000000           | mov                 ecx, 4
            //   6bd103               | imul                edx, ecx, 3

        $sequence_9 = { 83c408 8945ec 837dec00 741f 8b45ec }
            // n = 5, score = 100
            //   83c408               | add                 esp, 8
            //   8945ec               | mov                 dword ptr [ebp - 0x14], eax
            //   837dec00             | cmp                 dword ptr [ebp - 0x14], 0
            //   741f                 | je                  0x21
            //   8b45ec               | mov                 eax, dword ptr [ebp - 0x14]

    condition:
        7 of them and filesize < 75776
}