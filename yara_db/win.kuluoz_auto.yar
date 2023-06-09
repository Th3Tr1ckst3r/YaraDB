rule win_kuluoz_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.kuluoz."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kuluoz"
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
        $sequence_0 = { 6a00 6a00 8b45cc 50 ff55ec 8945c8 837dc800 }
            // n = 7, score = 100
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   8b45cc               | mov                 eax, dword ptr [ebp - 0x34]
            //   50                   | push                eax
            //   ff55ec               | call                dword ptr [ebp - 0x14]
            //   8945c8               | mov                 dword ptr [ebp - 0x38], eax
            //   837dc800             | cmp                 dword ptr [ebp - 0x38], 0

        $sequence_1 = { 32c0 eb7f 8b4d10 51 8b5508 52 e8???????? }
            // n = 7, score = 100
            //   32c0                 | xor                 al, al
            //   eb7f                 | jmp                 0x81
            //   8b4d10               | mov                 ecx, dword ptr [ebp + 0x10]
            //   51                   | push                ecx
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   52                   | push                edx
            //   e8????????           |                     

        $sequence_2 = { eb0a 8b4dec 51 ff15???????? b001 8b4d94 33cd }
            // n = 7, score = 100
            //   eb0a                 | jmp                 0xc
            //   8b4dec               | mov                 ecx, dword ptr [ebp - 0x14]
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   b001                 | mov                 al, 1
            //   8b4d94               | mov                 ecx, dword ptr [ebp - 0x6c]
            //   33cd                 | xor                 ecx, ebp

        $sequence_3 = { 8bec 6805010000 e8???????? a3???????? 6805010000 6a00 }
            // n = 6, score = 100
            //   8bec                 | mov                 ebp, esp
            //   6805010000           | push                0x105
            //   e8????????           |                     
            //   a3????????           |                     
            //   6805010000           | push                0x105
            //   6a00                 | push                0

        $sequence_4 = { 81ec0c040000 a1???????? 33c5 8945fc c785f4fbffff00000000 b801000000 }
            // n = 6, score = 100
            //   81ec0c040000         | sub                 esp, 0x40c
            //   a1????????           |                     
            //   33c5                 | xor                 eax, ebp
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   c785f4fbffff00000000     | mov    dword ptr [ebp - 0x40c], 0
            //   b801000000           | mov                 eax, 1

        $sequence_5 = { 50 e8???????? 83c404 83c001 8b4dfc }
            // n = 5, score = 100
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   83c001               | add                 eax, 1
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]

        $sequence_6 = { c745fc00000000 ba01000000 85d2 0f84ab000000 8b45f8 8b0d???????? }
            // n = 6, score = 100
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   ba01000000           | mov                 edx, 1
            //   85d2                 | test                edx, edx
            //   0f84ab000000         | je                  0xb1
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   8b0d????????         |                     

        $sequence_7 = { 8b4008 898564fbffff 8b8d5cfbffff 898decfbffff 8b9560fbffff 8995f0fbffff 8b8564fbffff }
            // n = 7, score = 100
            //   8b4008               | mov                 eax, dword ptr [eax + 8]
            //   898564fbffff         | mov                 dword ptr [ebp - 0x49c], eax
            //   8b8d5cfbffff         | mov                 ecx, dword ptr [ebp - 0x4a4]
            //   898decfbffff         | mov                 dword ptr [ebp - 0x414], ecx
            //   8b9560fbffff         | mov                 edx, dword ptr [ebp - 0x4a0]
            //   8995f0fbffff         | mov                 dword ptr [ebp - 0x410], edx
            //   8b8564fbffff         | mov                 eax, dword ptr [ebp - 0x49c]

        $sequence_8 = { 8b4d08 c7814a12000005000000 eb7f 8b5508 81c246020000 52 }
            // n = 6, score = 100
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   c7814a12000005000000     | mov    dword ptr [ecx + 0x124a], 5
            //   eb7f                 | jmp                 0x81
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   81c246020000         | add                 edx, 0x246
            //   52                   | push                edx

        $sequence_9 = { f7f1 0fbe9204605009 8b45f8 0345fc 0fbe08 }
            // n = 5, score = 100
            //   f7f1                 | div                 ecx
            //   0fbe9204605009       | movsx               edx, byte ptr [edx + 0x9506004]
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   0345fc               | add                 eax, dword ptr [ebp - 4]
            //   0fbe08               | movsx               ecx, byte ptr [eax]

    condition:
        7 of them and filesize < 65536
}