rule win_cryptowall_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.cryptowall."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cryptowall"
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
        $sequence_0 = { 7d1f 6a09 6a00 e8???????? 83c408 83c030 660fbed0 }
            // n = 7, score = 2100
            //   7d1f                 | jge                 0x21
            //   6a09                 | push                9
            //   6a00                 | push                0
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   83c030               | add                 eax, 0x30
            //   660fbed0             | movsx               dx, al

        $sequence_1 = { 99 b91a000000 f7f9 83c261 8b45f4 }
            // n = 5, score = 2100
            //   99                   | cdq                 
            //   b91a000000           | mov                 ecx, 0x1a
            //   f7f9                 | idiv                ecx
            //   83c261               | add                 edx, 0x61
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]

        $sequence_2 = { c745dc00000000 c745e000000000 6a08 6a00 }
            // n = 4, score = 2100
            //   c745dc00000000       | mov                 dword ptr [ebp - 0x24], 0
            //   c745e000000000       | mov                 dword ptr [ebp - 0x20], 0
            //   6a08                 | push                8
            //   6a00                 | push                0

        $sequence_3 = { c745ec00000000 c745f000000000 8b4508 8945f4 c745f800000000 }
            // n = 5, score = 2100
            //   c745ec00000000       | mov                 dword ptr [ebp - 0x14], 0
            //   c745f000000000       | mov                 dword ptr [ebp - 0x10], 0
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax
            //   c745f800000000       | mov                 dword ptr [ebp - 8], 0

        $sequence_4 = { 668945ec b933000000 66894dee ba32000000 668955f0 33c0 668945f2 }
            // n = 7, score = 2100
            //   668945ec             | mov                 word ptr [ebp - 0x14], ax
            //   b933000000           | mov                 ecx, 0x33
            //   66894dee             | mov                 word ptr [ebp - 0x12], cx
            //   ba32000000           | mov                 edx, 0x32
            //   668955f0             | mov                 word ptr [ebp - 0x10], dx
            //   33c0                 | xor                 eax, eax
            //   668945f2             | mov                 word ptr [ebp - 0xe], ax

        $sequence_5 = { 6a00 8d45d0 50 e8???????? 8b482c ffd1 }
            // n = 6, score = 2100
            //   6a00                 | push                0
            //   8d45d0               | lea                 eax, [ebp - 0x30]
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b482c               | mov                 ecx, dword ptr [eax + 0x2c]
            //   ffd1                 | call                ecx

        $sequence_6 = { 55 8bec 0fb74508 85c0 }
            // n = 4, score = 2100
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   0fb74508             | movzx               eax, word ptr [ebp + 8]
            //   85c0                 | test                eax, eax

        $sequence_7 = { 8b4d08 894834 5d c3 }
            // n = 4, score = 2100
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   894834               | mov                 dword ptr [eax + 0x34], ecx
            //   5d                   | pop                 ebp
            //   c3                   | ret                 

        $sequence_8 = { 50 6aff e8???????? 8b4818 ffd1 }
            // n = 5, score = 2100
            //   50                   | push                eax
            //   6aff                 | push                -1
            //   e8????????           |                     
            //   8b4818               | mov                 ecx, dword ptr [eax + 0x18]
            //   ffd1                 | call                ecx

        $sequence_9 = { 837d1400 7425 837d1000 741f }
            // n = 4, score = 2100
            //   837d1400             | cmp                 dword ptr [ebp + 0x14], 0
            //   7425                 | je                  0x27
            //   837d1000             | cmp                 dword ptr [ebp + 0x10], 0
            //   741f                 | je                  0x21

    condition:
        7 of them and filesize < 417792
}