rule win_yarat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.yarat."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.yarat"
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
        $sequence_0 = { e8???????? 83c408 c78624040000ffffffff c6860705000000 5e 5d c3 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   c78624040000ffffffff     | mov    dword ptr [esi + 0x424], 0xffffffff
            //   c6860705000000       | mov                 byte ptr [esi + 0x507], 0
            //   5e                   | pop                 esi
            //   5d                   | pop                 ebp
            //   c3                   | ret                 

        $sequence_1 = { 8b7d08 389f400b0000 741b ffb7300b0000 ff15???????? 83c404 899f300b0000 }
            // n = 7, score = 100
            //   8b7d08               | mov                 edi, dword ptr [ebp + 8]
            //   389f400b0000         | cmp                 byte ptr [edi + 0xb40], bl
            //   741b                 | je                  0x1d
            //   ffb7300b0000         | push                dword ptr [edi + 0xb30]
            //   ff15????????         |                     
            //   83c404               | add                 esp, 4
            //   899f300b0000         | mov                 dword ptr [edi + 0xb30], ebx

        $sequence_2 = { f61c30 27 341c 4f 7d6b fa 83ee0e }
            // n = 7, score = 100
            //   f61c30               | neg                 byte ptr [eax + esi]
            //   27                   | daa                 
            //   341c                 | xor                 al, 0x1c
            //   4f                   | dec                 edi
            //   7d6b                 | jge                 0x6d
            //   fa                   | cli                 
            //   83ee0e               | sub                 esi, 0xe

        $sequence_3 = { e8???????? 83c418 b837000000 5f 5e 5b 8b4dfc }
            // n = 7, score = 100
            //   e8????????           |                     
            //   83c418               | add                 esp, 0x18
            //   b837000000           | mov                 eax, 0x37
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]

        $sequence_4 = { 8d45f4 64a300000000 8bf9 89bd64feffff 897dcc 89bd40feffff c78560feffff00000000 }
            // n = 7, score = 100
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   64a300000000         | mov                 dword ptr fs:[0], eax
            //   8bf9                 | mov                 edi, ecx
            //   89bd64feffff         | mov                 dword ptr [ebp - 0x19c], edi
            //   897dcc               | mov                 dword ptr [ebp - 0x34], edi
            //   89bd40feffff         | mov                 dword ptr [ebp - 0x1c0], edi
            //   c78560feffff00000000     | mov    dword ptr [ebp - 0x1a0], 0

        $sequence_5 = { e8???????? 59 8bd0 6a01 68???????? 89565c 56 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   8bd0                 | mov                 edx, eax
            //   6a01                 | push                1
            //   68????????           |                     
            //   89565c               | mov                 dword ptr [esi + 0x5c], edx
            //   56                   | push                esi

        $sequence_6 = { 8d45d2 50 6a00 ff7608 e8???????? 83c40c 8bf8 }
            // n = 7, score = 100
            //   8d45d2               | lea                 eax, [ebp - 0x2e]
            //   50                   | push                eax
            //   6a00                 | push                0
            //   ff7608               | push                dword ptr [esi + 8]
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   8bf8                 | mov                 edi, eax

        $sequence_7 = { d1cf 45 3ac5 41 f7df f8 f5 }
            // n = 7, score = 100
            //   d1cf                 | ror                 edi, 1
            //   45                   | inc                 ebp
            //   3ac5                 | cmp                 al, ch
            //   41                   | inc                 ecx
            //   f7df                 | neg                 edi
            //   f8                   | clc                 
            //   f5                   | cmc                 

        $sequence_8 = { 8d45fc 50 8b450c 2bf0 4e 56 50 }
            // n = 7, score = 100
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   50                   | push                eax
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   2bf0                 | sub                 esi, eax
            //   4e                   | dec                 esi
            //   56                   | push                esi
            //   50                   | push                eax

        $sequence_9 = { 897724 85db 5f 0f45f3 8bc6 5e 5b }
            // n = 7, score = 100
            //   897724               | mov                 dword ptr [edi + 0x24], esi
            //   85db                 | test                ebx, ebx
            //   5f                   | pop                 edi
            //   0f45f3               | cmovne              esi, ebx
            //   8bc6                 | mov                 eax, esi
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx

    condition:
        7 of them and filesize < 8692736
}