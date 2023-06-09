rule win_sinowal_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.sinowal."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sinowal"
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
        $sequence_0 = { 83c40c 8b4df8 51 8b5508 52 8b4594 83c00c }
            // n = 7, score = 200
            //   83c40c               | add                 esp, 0xc
            //   8b4df8               | mov                 ecx, dword ptr [ebp - 8]
            //   51                   | push                ecx
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   52                   | push                edx
            //   8b4594               | mov                 eax, dword ptr [ebp - 0x6c]
            //   83c00c               | add                 eax, 0xc

        $sequence_1 = { b801000000 85c0 0f84d4010000 833d????????03 720a c705????????00000000 }
            // n = 6, score = 200
            //   b801000000           | mov                 eax, 1
            //   85c0                 | test                eax, eax
            //   0f84d4010000         | je                  0x1da
            //   833d????????03       |                     
            //   720a                 | jb                  0xc
            //   c705????????00000000     |     

        $sequence_2 = { c785c4feffff00000000 c745fc00000000 c745f800000000 c685f0feffff00 68ff000000 6a00 }
            // n = 6, score = 200
            //   c785c4feffff00000000     | mov    dword ptr [ebp - 0x13c], 0
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   c745f800000000       | mov                 dword ptr [ebp - 8], 0
            //   c685f0feffff00       | mov                 byte ptr [ebp - 0x110], 0
            //   68ff000000           | push                0xff
            //   6a00                 | push                0

        $sequence_3 = { 7405 e9???????? 6830020000 6a00 8d85b8fdffff 50 e8???????? }
            // n = 7, score = 200
            //   7405                 | je                  7
            //   e9????????           |                     
            //   6830020000           | push                0x230
            //   6a00                 | push                0
            //   8d85b8fdffff         | lea                 eax, [ebp - 0x248]
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_4 = { 8b4dfc 8b7508 8a4c4e01 880c50 8b55fc }
            // n = 5, score = 200
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   8a4c4e01             | mov                 cl, byte ptr [esi + ecx*2 + 1]
            //   880c50               | mov                 byte ptr [eax + edx*2], cl
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]

        $sequence_5 = { 837d0800 7406 837d0c00 7502 eb64 }
            // n = 5, score = 200
            //   837d0800             | cmp                 dword ptr [ebp + 8], 0
            //   7406                 | je                  8
            //   837d0c00             | cmp                 dword ptr [ebp + 0xc], 0
            //   7502                 | jne                 4
            //   eb64                 | jmp                 0x66

        $sequence_6 = { a1???????? 33c5 8945c4 c745f800000000 }
            // n = 4, score = 200
            //   a1????????           |                     
            //   33c5                 | xor                 eax, ebp
            //   8945c4               | mov                 dword ptr [ebp - 0x3c], eax
            //   c745f800000000       | mov                 dword ptr [ebp - 8], 0

        $sequence_7 = { 52 ff15???????? c745f400000000 eb09 8b45f4 83c001 8945f4 }
            // n = 7, score = 200
            //   52                   | push                edx
            //   ff15????????         |                     
            //   c745f400000000       | mov                 dword ptr [ebp - 0xc], 0
            //   eb09                 | jmp                 0xb
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   83c001               | add                 eax, 1
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax

        $sequence_8 = { c745f400000000 817d0c70020000 7d09 c745f070020000 eb06 8b450c 8945f0 }
            // n = 7, score = 200
            //   c745f400000000       | mov                 dword ptr [ebp - 0xc], 0
            //   817d0c70020000       | cmp                 dword ptr [ebp + 0xc], 0x270
            //   7d09                 | jge                 0xb
            //   c745f070020000       | mov                 dword ptr [ebp - 0x10], 0x270
            //   eb06                 | jmp                 8
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   8945f0               | mov                 dword ptr [ebp - 0x10], eax

        $sequence_9 = { c745c000000000 b90c000000 be???????? 8d7dc4 f3a5 837d0800 }
            // n = 6, score = 200
            //   c745c000000000       | mov                 dword ptr [ebp - 0x40], 0
            //   b90c000000           | mov                 ecx, 0xc
            //   be????????           |                     
            //   8d7dc4               | lea                 edi, [ebp - 0x3c]
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   837d0800             | cmp                 dword ptr [ebp + 8], 0

    condition:
        7 of them and filesize < 73728
}