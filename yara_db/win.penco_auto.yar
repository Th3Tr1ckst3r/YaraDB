rule win_penco_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.penco."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.penco"
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
        $sequence_0 = { 83f83c 7412 83f864 753e 8b4104 50 ff15???????? }
            // n = 7, score = 100
            //   83f83c               | cmp                 eax, 0x3c
            //   7412                 | je                  0x14
            //   83f864               | cmp                 eax, 0x64
            //   753e                 | jne                 0x40
            //   8b4104               | mov                 eax, dword ptr [ecx + 4]
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_1 = { 8b8d4cfeffff 51 8b55e4 52 ff15???????? eb7c 68???????? }
            // n = 7, score = 100
            //   8b8d4cfeffff         | mov                 ecx, dword ptr [ebp - 0x1b4]
            //   51                   | push                ecx
            //   8b55e4               | mov                 edx, dword ptr [ebp - 0x1c]
            //   52                   | push                edx
            //   ff15????????         |                     
            //   eb7c                 | jmp                 0x7e
            //   68????????           |                     

        $sequence_2 = { 57 8b7c2414 68???????? 57 e8???????? 8b5c2418 83c408 }
            // n = 7, score = 100
            //   57                   | push                edi
            //   8b7c2414             | mov                 edi, dword ptr [esp + 0x14]
            //   68????????           |                     
            //   57                   | push                edi
            //   e8????????           |                     
            //   8b5c2418             | mov                 ebx, dword ptr [esp + 0x18]
            //   83c408               | add                 esp, 8

        $sequence_3 = { 81fa00080000 7602 eb55 8d8590fdffff 50 8b8dd0fdffff 51 }
            // n = 7, score = 100
            //   81fa00080000         | cmp                 edx, 0x800
            //   7602                 | jbe                 4
            //   eb55                 | jmp                 0x57
            //   8d8590fdffff         | lea                 eax, [ebp - 0x270]
            //   50                   | push                eax
            //   8b8dd0fdffff         | mov                 ecx, dword ptr [ebp - 0x230]
            //   51                   | push                ecx

        $sequence_4 = { 03dd 53 e8???????? 83c40c e9???????? 57 ff15???????? }
            // n = 7, score = 100
            //   03dd                 | add                 ebx, ebp
            //   53                   | push                ebx
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   e9????????           |                     
            //   57                   | push                edi
            //   ff15????????         |                     

        $sequence_5 = { 8d8c2400940000 51 8d942400540000 52 8d4c2430 51 40 }
            // n = 7, score = 100
            //   8d8c2400940000       | lea                 ecx, [esp + 0x9400]
            //   51                   | push                ecx
            //   8d942400540000       | lea                 edx, [esp + 0x5400]
            //   52                   | push                edx
            //   8d4c2430             | lea                 ecx, [esp + 0x30]
            //   51                   | push                ecx
            //   40                   | inc                 eax

        $sequence_6 = { 8d542440 52 e8???????? 43 83c424 03f0 83c508 }
            // n = 7, score = 100
            //   8d542440             | lea                 edx, [esp + 0x40]
            //   52                   | push                edx
            //   e8????????           |                     
            //   43                   | inc                 ebx
            //   83c424               | add                 esp, 0x24
            //   03f0                 | add                 esi, eax
            //   83c508               | add                 ebp, 8

        $sequence_7 = { c1ea08 0fb6d2 894c241c 8b4c2410 c1e910 0fb6f9 3334bd28e83400 }
            // n = 7, score = 100
            //   c1ea08               | shr                 edx, 8
            //   0fb6d2               | movzx               edx, dl
            //   894c241c             | mov                 dword ptr [esp + 0x1c], ecx
            //   8b4c2410             | mov                 ecx, dword ptr [esp + 0x10]
            //   c1e910               | shr                 ecx, 0x10
            //   0fb6f9               | movzx               edi, cl
            //   3334bd28e83400       | xor                 esi, dword ptr [edi*4 + 0x34e828]

        $sequence_8 = { c1ea08 0fb6d2 33349500d83400 8bcf c1e918 33348d28ec3400 }
            // n = 6, score = 100
            //   c1ea08               | shr                 edx, 8
            //   0fb6d2               | movzx               edx, dl
            //   33349500d83400       | xor                 esi, dword ptr [edx*4 + 0x34d800]
            //   8bcf                 | mov                 ecx, edi
            //   c1e918               | shr                 ecx, 0x18
            //   33348d28ec3400       | xor                 esi, dword ptr [ecx*4 + 0x34ec28]

        $sequence_9 = { 50 ff15???????? 85c0 0f84ea000000 397d6c 751b c7455c01000000 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f84ea000000         | je                  0xf0
            //   397d6c               | cmp                 dword ptr [ebp + 0x6c], edi
            //   751b                 | jne                 0x1d
            //   c7455c01000000       | mov                 dword ptr [ebp + 0x5c], 1

    condition:
        7 of them and filesize < 319488
}