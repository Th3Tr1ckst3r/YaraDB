rule win_taidoor_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.taidoor."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.taidoor"
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
        $sequence_0 = { 99 b940420f00 f7f9 8d45f8 }
            // n = 4, score = 300
            //   99                   | cdq                 
            //   b940420f00           | mov                 ecx, 0xf4240
            //   f7f9                 | idiv                ecx
            //   8d45f8               | lea                 eax, [ebp - 8]

        $sequence_1 = { f775fc 8bf2 8d04f6 ffb485f4b7ffff ff15???????? 85c0 }
            // n = 6, score = 300
            //   f775fc               | div                 dword ptr [ebp - 4]
            //   8bf2                 | mov                 esi, edx
            //   8d04f6               | lea                 eax, [esi + esi*8]
            //   ffb485f4b7ffff       | push                dword ptr [ebp + eax*4 - 0x480c]
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax

        $sequence_2 = { 3d00010000 7cf5 c745fcfcffffff 33ff 33db 294dfc }
            // n = 6, score = 300
            //   3d00010000           | cmp                 eax, 0x100
            //   7cf5                 | jl                  0xfffffff7
            //   c745fcfcffffff       | mov                 dword ptr [ebp - 4], 0xfffffffc
            //   33ff                 | xor                 edi, edi
            //   33db                 | xor                 ebx, ebx
            //   294dfc               | sub                 dword ptr [ebp - 4], ecx

        $sequence_3 = { 6880000000 6a02 53 6a02 8d85f4feffff 68000000c0 }
            // n = 6, score = 300
            //   6880000000           | push                0x80
            //   6a02                 | push                2
            //   53                   | push                ebx
            //   6a02                 | push                2
            //   8d85f4feffff         | lea                 eax, [ebp - 0x10c]
            //   68000000c0           | push                0xc0000000

        $sequence_4 = { 33c0 8d7104 880406 40 3d00010000 7cf5 c745fcfcffffff }
            // n = 7, score = 300
            //   33c0                 | xor                 eax, eax
            //   8d7104               | lea                 esi, [ecx + 4]
            //   880406               | mov                 byte ptr [esi + eax], al
            //   40                   | inc                 eax
            //   3d00010000           | cmp                 eax, 0x100
            //   7cf5                 | jl                  0xfffffff7
            //   c745fcfcffffff       | mov                 dword ptr [ebp - 4], 0xfffffffc

        $sequence_5 = { 57 a0???????? c745fc01000000 8ac8 f6d9 1bc9 33db }
            // n = 7, score = 300
            //   57                   | push                edi
            //   a0????????           |                     
            //   c745fc01000000       | mov                 dword ptr [ebp - 4], 1
            //   8ac8                 | mov                 cl, al
            //   f6d9                 | neg                 cl
            //   1bc9                 | sbb                 ecx, ecx
            //   33db                 | xor                 ebx, ebx

        $sequence_6 = { 50 56 e8???????? 8b3d???????? 83f86f }
            // n = 5, score = 300
            //   50                   | push                eax
            //   56                   | push                esi
            //   e8????????           |                     
            //   8b3d????????         |                     
            //   83f86f               | cmp                 eax, 0x6f

        $sequence_7 = { 3bc3 89450c 7505 83cfff eb63 }
            // n = 5, score = 300
            //   3bc3                 | cmp                 eax, ebx
            //   89450c               | mov                 dword ptr [ebp + 0xc], eax
            //   7505                 | jne                 7
            //   83cfff               | or                  edi, 0xffffffff
            //   eb63                 | jmp                 0x65

        $sequence_8 = { 8bec b814130000 e8???????? 53 }
            // n = 4, score = 300
            //   8bec                 | mov                 ebp, esp
            //   b814130000           | mov                 eax, 0x1314
            //   e8????????           |                     
            //   53                   | push                ebx

        $sequence_9 = { b940420f00 f7f9 8d45e0 52 ff35???????? ff35???????? }
            // n = 6, score = 300
            //   b940420f00           | mov                 ecx, 0xf4240
            //   f7f9                 | idiv                ecx
            //   8d45e0               | lea                 eax, [ebp - 0x20]
            //   52                   | push                edx
            //   ff35????????         |                     
            //   ff35????????         |                     

    condition:
        7 of them and filesize < 49152
}