rule win_auriga_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.auriga."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.auriga"
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
        $sequence_0 = { 7514 68???????? e8???????? c785f8fbffff010000c0 53 53 }
            // n = 6, score = 100
            //   7514                 | jne                 0x16
            //   68????????           |                     
            //   e8????????           |                     
            //   c785f8fbffff010000c0     | mov    dword ptr [ebp - 0x408], 0xc0000001
            //   53                   | push                ebx
            //   53                   | push                ebx

        $sequence_1 = { ff15???????? 3bc6 5e 750b ff7508 }
            // n = 5, score = 100
            //   ff15????????         |                     
            //   3bc6                 | cmp                 eax, esi
            //   5e                   | pop                 esi
            //   750b                 | jne                 0xd
            //   ff7508               | push                dword ptr [ebp + 8]

        $sequence_2 = { 6800000080 8d85f8fbffff 50 c785dcfbffff18000000 }
            // n = 4, score = 100
            //   6800000080           | push                0x80000000
            //   8d85f8fbffff         | lea                 eax, [ebp - 0x408]
            //   50                   | push                eax
            //   c785dcfbffff18000000     | mov    dword ptr [ebp - 0x424], 0x18

        $sequence_3 = { 6a28 8d858cfbffff 50 8d85d4fbffff }
            // n = 4, score = 100
            //   6a28                 | push                0x28
            //   8d858cfbffff         | lea                 eax, [ebp - 0x474]
            //   50                   | push                eax
            //   8d85d4fbffff         | lea                 eax, [ebp - 0x42c]

        $sequence_4 = { eb03 8b7604 8b0d???????? 2bf0 8b3c31 ff45ec e9???????? }
            // n = 7, score = 100
            //   eb03                 | jmp                 5
            //   8b7604               | mov                 esi, dword ptr [esi + 4]
            //   8b0d????????         |                     
            //   2bf0                 | sub                 esi, eax
            //   8b3c31               | mov                 edi, dword ptr [ecx + esi]
            //   ff45ec               | inc                 dword ptr [ebp - 0x14]
            //   e9????????           |                     

        $sequence_5 = { 6800040000 8d85fcfbffff 50 6a01 8d85d4fbffff 50 ffb5f8fbffff }
            // n = 7, score = 100
            //   6800040000           | push                0x400
            //   8d85fcfbffff         | lea                 eax, [ebp - 0x404]
            //   50                   | push                eax
            //   6a01                 | push                1
            //   8d85d4fbffff         | lea                 eax, [ebp - 0x42c]
            //   50                   | push                eax
            //   ffb5f8fbffff         | push                dword ptr [ebp - 0x408]

        $sequence_6 = { 7421 8b15???????? 83fb01 7c04 3bfe 7410 8b0402 }
            // n = 7, score = 100
            //   7421                 | je                  0x23
            //   8b15????????         |                     
            //   83fb01               | cmp                 ebx, 1
            //   7c04                 | jl                  6
            //   3bfe                 | cmp                 edi, esi
            //   7410                 | je                  0x12
            //   8b0402               | mov                 eax, dword ptr [edx + eax]

        $sequence_7 = { 756e 8d45c4 50 56 ff15???????? a1???????? }
            // n = 6, score = 100
            //   756e                 | jne                 0x70
            //   8d45c4               | lea                 eax, [ebp - 0x3c]
            //   50                   | push                eax
            //   56                   | push                esi
            //   ff15????????         |                     
            //   a1????????           |                     

        $sequence_8 = { 50 ffd3 8b45fc 85c0 7539 ff750c }
            // n = 6, score = 100
            //   50                   | push                eax
            //   ffd3                 | call                ebx
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   85c0                 | test                eax, eax
            //   7539                 | jne                 0x3b
            //   ff750c               | push                dword ptr [ebp + 0xc]

        $sequence_9 = { c705????????84000000 c705????????88000000 a3???????? c705????????64010000 c705????????4a000000 }
            // n = 5, score = 100
            //   c705????????84000000     |     
            //   c705????????88000000     |     
            //   a3????????           |                     
            //   c705????????64010000     |     
            //   c705????????4a000000     |     

    condition:
        7 of them and filesize < 75776
}