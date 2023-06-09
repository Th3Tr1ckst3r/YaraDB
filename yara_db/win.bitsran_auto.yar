rule win_bitsran_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.bitsran."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bitsran"
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
        $sequence_0 = { 8985ecfeffff 898568ffffff 898560ffffff 3b8d5cffffff 0f8f11030000 8bb54cffffff }
            // n = 6, score = 100
            //   8985ecfeffff         | mov                 dword ptr [ebp - 0x114], eax
            //   898568ffffff         | mov                 dword ptr [ebp - 0x98], eax
            //   898560ffffff         | mov                 dword ptr [ebp - 0xa0], eax
            //   3b8d5cffffff         | cmp                 ecx, dword ptr [ebp - 0xa4]
            //   0f8f11030000         | jg                  0x317
            //   8bb54cffffff         | mov                 esi, dword ptr [ebp - 0xb4]

        $sequence_1 = { 5d c3 8bc7 5f 5b 5e 5d }
            // n = 7, score = 100
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   8bc7                 | mov                 eax, edi
            //   5f                   | pop                 edi
            //   5b                   | pop                 ebx
            //   5e                   | pop                 esi
            //   5d                   | pop                 ebp

        $sequence_2 = { 8945f4 8945f8 8d85ecfbffff 50 e8???????? 6800040000 8d8decf3ffff }
            // n = 7, score = 100
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   8d85ecfbffff         | lea                 eax, [ebp - 0x414]
            //   50                   | push                eax
            //   e8????????           |                     
            //   6800040000           | push                0x400
            //   8d8decf3ffff         | lea                 ecx, [ebp - 0xc14]

        $sequence_3 = { 83ffff 0f8460010000 8d85c0f6ffff 50 57 e8???????? }
            // n = 6, score = 100
            //   83ffff               | cmp                 edi, -1
            //   0f8460010000         | je                  0x166
            //   8d85c0f6ffff         | lea                 eax, [ebp - 0x940]
            //   50                   | push                eax
            //   57                   | push                edi
            //   e8????????           |                     

        $sequence_4 = { 33c5 8945fc 8b4508 668bc8 66c1e909 babc070000 6603ca }
            // n = 7, score = 100
            //   33c5                 | xor                 eax, ebp
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   668bc8               | mov                 cx, ax
            //   66c1e909             | shr                 cx, 9
            //   babc070000           | mov                 edx, 0x7bc
            //   6603ca               | add                 cx, dx

        $sequence_5 = { 2bf2 3bf1 737c 33c9 eb7a 3bfa 7553 }
            // n = 7, score = 100
            //   2bf2                 | sub                 esi, edx
            //   3bf1                 | cmp                 esi, ecx
            //   737c                 | jae                 0x7e
            //   33c9                 | xor                 ecx, ecx
            //   eb7a                 | jmp                 0x7c
            //   3bfa                 | cmp                 edi, edx
            //   7553                 | jne                 0x55

        $sequence_6 = { 8bcf 2b0d???????? b8398ee338 c1f902 f7e1 d1ea 8d4301 }
            // n = 7, score = 100
            //   8bcf                 | mov                 ecx, edi
            //   2b0d????????         |                     
            //   b8398ee338           | mov                 eax, 0x38e38e39
            //   c1f902               | sar                 ecx, 2
            //   f7e1                 | mul                 ecx
            //   d1ea                 | shr                 edx, 1
            //   8d4301               | lea                 eax, [ebx + 1]

        $sequence_7 = { d3e8 8b4dec 8b148d20454100 23d0 0155f0 d3e8 }
            // n = 6, score = 100
            //   d3e8                 | shr                 eax, cl
            //   8b4dec               | mov                 ecx, dword ptr [ebp - 0x14]
            //   8b148d20454100       | mov                 edx, dword ptr [ecx*4 + 0x414520]
            //   23d0                 | and                 edx, eax
            //   0155f0               | add                 dword ptr [ebp - 0x10], edx
            //   d3e8                 | shr                 eax, cl

        $sequence_8 = { 8b4df4 d3e8 8b4dec 8b148d20454100 23d0 0155f0 }
            // n = 6, score = 100
            //   8b4df4               | mov                 ecx, dword ptr [ebp - 0xc]
            //   d3e8                 | shr                 eax, cl
            //   8b4dec               | mov                 ecx, dword ptr [ebp - 0x14]
            //   8b148d20454100       | mov                 edx, dword ptr [ecx*4 + 0x414520]
            //   23d0                 | and                 edx, eax
            //   0155f0               | add                 dword ptr [ebp - 0x10], edx

        $sequence_9 = { 807e0100 0f84ba000000 8b4e0c 8b5604 6a00 }
            // n = 5, score = 100
            //   807e0100             | cmp                 byte ptr [esi + 1], 0
            //   0f84ba000000         | je                  0xc0
            //   8b4e0c               | mov                 ecx, dword ptr [esi + 0xc]
            //   8b5604               | mov                 edx, dword ptr [esi + 4]
            //   6a00                 | push                0

    condition:
        7 of them and filesize < 344064
}