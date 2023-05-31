rule win_squirrelwaffle_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.squirrelwaffle."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.squirrelwaffle"
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
        $sequence_0 = { 33c0 51 50 52 }
            // n = 4, score = 700
            //   33c0                 | xor                 eax, eax
            //   51                   | push                ecx
            //   50                   | push                eax
            //   52                   | push                edx

        $sequence_1 = { 8b0d???????? 8bc7 894e40 8b0d???????? c7464c00000000 }
            // n = 5, score = 700
            //   8b0d????????         |                     
            //   8bc7                 | mov                 eax, edi
            //   894e40               | mov                 dword ptr [esi + 0x40], ecx
            //   8b0d????????         |                     
            //   c7464c00000000       | mov                 dword ptr [esi + 0x4c], 0

        $sequence_2 = { 72d3 8d96b0010000 8bc2 8d7801 8a08 }
            // n = 5, score = 700
            //   72d3                 | jb                  0xffffffd5
            //   8d96b0010000         | lea                 edx, [esi + 0x1b0]
            //   8bc2                 | mov                 eax, edx
            //   8d7801               | lea                 edi, [eax + 1]
            //   8a08                 | mov                 cl, byte ptr [eax]

        $sequence_3 = { 8d8d18f9ffff 51 68???????? 50 ff15???????? 85c0 }
            // n = 6, score = 700
            //   8d8d18f9ffff         | lea                 ecx, [ebp - 0x6e8]
            //   51                   | push                ecx
            //   68????????           |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax

        $sequence_4 = { e8???????? 83c40c 8d7b40 ff734c }
            // n = 4, score = 700
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   8d7b40               | lea                 edi, [ebx + 0x40]
            //   ff734c               | push                dword ptr [ebx + 0x4c]

        $sequence_5 = { 8b0d???????? 33c0 8945e0 8d5de8 }
            // n = 4, score = 700
            //   8b0d????????         |                     
            //   33c0                 | xor                 eax, eax
            //   8945e0               | mov                 dword ptr [ebp - 0x20], eax
            //   8d5de8               | lea                 ebx, [ebp - 0x18]

        $sequence_6 = { 8d8d70f9ffff e8???????? 8d4d08 e8???????? }
            // n = 4, score = 700
            //   8d8d70f9ffff         | lea                 ecx, [ebp - 0x690]
            //   e8????????           |                     
            //   8d4d08               | lea                 ecx, [ebp + 8]
            //   e8????????           |                     

        $sequence_7 = { c7461000000000 8bc6 c7461400000000 0f1007 }
            // n = 4, score = 700
            //   c7461000000000       | mov                 dword ptr [esi + 0x10], 0
            //   8bc6                 | mov                 eax, esi
            //   c7461400000000       | mov                 dword ptr [esi + 0x14], 0
            //   0f1007               | movups              xmm0, xmmword ptr [edi]

        $sequence_8 = { 897714 eb26 8b0d???????? 0f57c0 }
            // n = 4, score = 700
            //   897714               | mov                 dword ptr [edi + 0x14], esi
            //   eb26                 | jmp                 0x28
            //   8b0d????????         |                     
            //   0f57c0               | xorps               xmm0, xmm0

        $sequence_9 = { ffd6 83f86f 8b458c 752d 50 }
            // n = 5, score = 700
            //   ffd6                 | call                esi
            //   83f86f               | cmp                 eax, 0x6f
            //   8b458c               | mov                 eax, dword ptr [ebp - 0x74]
            //   752d                 | jne                 0x2f
            //   50                   | push                eax

    condition:
        7 of them and filesize < 147456
}