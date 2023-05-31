rule win_megumin_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.megumin."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.megumin"
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
        $sequence_0 = { 50 e8???????? ebc8 837db810 8b55b4 0f434da4 6a02 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   e8????????           |                     
            //   ebc8                 | jmp                 0xffffffca
            //   837db810             | cmp                 dword ptr [ebp - 0x48], 0x10
            //   8b55b4               | mov                 edx, dword ptr [ebp - 0x4c]
            //   0f434da4             | cmovae              ecx, dword ptr [ebp - 0x5c]
            //   6a02                 | push                2

        $sequence_1 = { 8945d0 0f44d0 c745d40f000000 8bca 8845c0 8d7101 8a01 }
            // n = 7, score = 200
            //   8945d0               | mov                 dword ptr [ebp - 0x30], eax
            //   0f44d0               | cmove               edx, eax
            //   c745d40f000000       | mov                 dword ptr [ebp - 0x2c], 0xf
            //   8bca                 | mov                 ecx, edx
            //   8845c0               | mov                 byte ptr [ebp - 0x40], al
            //   8d7101               | lea                 esi, [ecx + 1]
            //   8a01                 | mov                 al, byte ptr [ecx]

        $sequence_2 = { c645fc52 e9???????? 6a00 ba???????? }
            // n = 4, score = 200
            //   c645fc52             | mov                 byte ptr [ebp - 4], 0x52
            //   e9????????           |                     
            //   6a00                 | push                0
            //   ba????????           |                     

        $sequence_3 = { 6a03 68???????? e8???????? 83c408 84c0 0f85d7000000 83ff10 }
            // n = 7, score = 200
            //   6a03                 | push                3
            //   68????????           |                     
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   84c0                 | test                al, al
            //   0f85d7000000         | jne                 0xdd
            //   83ff10               | cmp                 edi, 0x10

        $sequence_4 = { e9???????? 8d8d88fbffff e9???????? 8d8d88fbffff e9???????? 8d8d88fbffff e9???????? }
            // n = 7, score = 200
            //   e9????????           |                     
            //   8d8d88fbffff         | lea                 ecx, [ebp - 0x478]
            //   e9????????           |                     
            //   8d8d88fbffff         | lea                 ecx, [ebp - 0x478]
            //   e9????????           |                     
            //   8d8d88fbffff         | lea                 ecx, [ebp - 0x478]
            //   e9????????           |                     

        $sequence_5 = { 51 ff36 53 e8???????? ff36 e8???????? 8b4e08 }
            // n = 7, score = 200
            //   51                   | push                ecx
            //   ff36                 | push                dword ptr [esi]
            //   53                   | push                ebx
            //   e8????????           |                     
            //   ff36                 | push                dword ptr [esi]
            //   e8????????           |                     
            //   8b4e08               | mov                 ecx, dword ptr [esi + 8]

        $sequence_6 = { 8bd8 6a01 6870f10000 6812010000 53 895c2424 ffd6 }
            // n = 7, score = 200
            //   8bd8                 | mov                 ebx, eax
            //   6a01                 | push                1
            //   6870f10000           | push                0xf170
            //   6812010000           | push                0x112
            //   53                   | push                ebx
            //   895c2424             | mov                 dword ptr [esp + 0x24], ebx
            //   ffd6                 | call                esi

        $sequence_7 = { 8d8da4faffff e8???????? 83c404 8bf8 c645fc12 }
            // n = 5, score = 200
            //   8d8da4faffff         | lea                 ecx, [ebp - 0x55c]
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   8bf8                 | mov                 edi, eax
            //   c645fc12             | mov                 byte ptr [ebp - 4], 0x12

        $sequence_8 = { 50 e8???????? 83c408 c68517f9ffff01 85c0 7407 c68517f9ffff00 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   c68517f9ffff01       | mov                 byte ptr [ebp - 0x6e9], 1
            //   85c0                 | test                eax, eax
            //   7407                 | je                  9
            //   c68517f9ffff00       | mov                 byte ptr [ebp - 0x6e9], 0

        $sequence_9 = { 8a4701 8d7f01 84c0 75f6 66a1???????? 8d8df8f8ffff }
            // n = 6, score = 200
            //   8a4701               | mov                 al, byte ptr [edi + 1]
            //   8d7f01               | lea                 edi, [edi + 1]
            //   84c0                 | test                al, al
            //   75f6                 | jne                 0xfffffff8
            //   66a1????????         |                     
            //   8d8df8f8ffff         | lea                 ecx, [ebp - 0x708]

    condition:
        7 of them and filesize < 1007616
}