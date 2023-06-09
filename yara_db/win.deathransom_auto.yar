rule win_deathransom_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.deathransom."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.deathransom"
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
        $sequence_0 = { 0f43ce 3b55fc 8b75f0 1bc0 c1eb10 f7d8 }
            // n = 6, score = 100
            //   0f43ce               | cmovae              ecx, esi
            //   3b55fc               | cmp                 edx, dword ptr [ebp - 4]
            //   8b75f0               | mov                 esi, dword ptr [ebp - 0x10]
            //   1bc0                 | sbb                 eax, eax
            //   c1eb10               | shr                 ebx, 0x10
            //   f7d8                 | neg                 eax

        $sequence_1 = { 0bf0 8b55e8 8975fc 8bc3 014dfc 81c2a706dc9b 8b75e4 }
            // n = 7, score = 100
            //   0bf0                 | or                  esi, eax
            //   8b55e8               | mov                 edx, dword ptr [ebp - 0x18]
            //   8975fc               | mov                 dword ptr [ebp - 4], esi
            //   8bc3                 | mov                 eax, ebx
            //   014dfc               | add                 dword ptr [ebp - 4], ecx
            //   81c2a706dc9b         | add                 edx, 0x9bdc06a7
            //   8b75e4               | mov                 esi, dword ptr [ebp - 0x1c]

        $sequence_2 = { 2345e8 0b5de8 235df4 0bd8 895df0 014df0 8b4d94 }
            // n = 7, score = 100
            //   2345e8               | and                 eax, dword ptr [ebp - 0x18]
            //   0b5de8               | or                  ebx, dword ptr [ebp - 0x18]
            //   235df4               | and                 ebx, dword ptr [ebp - 0xc]
            //   0bd8                 | or                  ebx, eax
            //   895df0               | mov                 dword ptr [ebp - 0x10], ebx
            //   014df0               | add                 dword ptr [ebp - 0x10], ecx
            //   8b4d94               | mov                 ecx, dword ptr [ebp - 0x6c]

        $sequence_3 = { 894df8 85d2 0f8556ffffff 5f 5e 8bc1 5b }
            // n = 7, score = 100
            //   894df8               | mov                 dword ptr [ebp - 8], ecx
            //   85d2                 | test                edx, edx
            //   0f8556ffffff         | jne                 0xffffff5c
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   8bc1                 | mov                 eax, ecx
            //   5b                   | pop                 ebx

        $sequence_4 = { 6a08 ff15???????? 50 ff15???????? 8bf0 897508 85f6 }
            // n = 7, score = 100
            //   6a08                 | push                8
            //   ff15????????         |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   897508               | mov                 dword ptr [ebp + 8], esi
            //   85f6                 | test                esi, esi

        $sequence_5 = { 0b7de4 237ddc 0bf8 897de0 }
            // n = 4, score = 100
            //   0b7de4               | or                  edi, dword ptr [ebp - 0x1c]
            //   237ddc               | and                 edi, dword ptr [ebp - 0x24]
            //   0bf8                 | or                  edi, eax
            //   897de0               | mov                 dword ptr [ebp - 0x20], edi

        $sequence_6 = { 8d8e00000100 0345fc 03f8 3bd3 8b5df8 0f43ce 3b7dfc }
            // n = 7, score = 100
            //   8d8e00000100         | lea                 ecx, [esi + 0x10000]
            //   0345fc               | add                 eax, dword ptr [ebp - 4]
            //   03f8                 | add                 edi, eax
            //   3bd3                 | cmp                 edx, ebx
            //   8b5df8               | mov                 ebx, dword ptr [ebp - 8]
            //   0f43ce               | cmovae              ecx, esi
            //   3b7dfc               | cmp                 edi, dword ptr [ebp - 4]

        $sequence_7 = { 85f6 741e 8b4df8 83c128 034dfc 85f6 }
            // n = 6, score = 100
            //   85f6                 | test                esi, esi
            //   741e                 | je                  0x20
            //   8b4df8               | mov                 ecx, dword ptr [ebp - 8]
            //   83c128               | add                 ecx, 0x28
            //   034dfc               | add                 ecx, dword ptr [ebp - 4]
            //   85f6                 | test                esi, esi

        $sequence_8 = { 0f43c8 8bc6 8b75f8 c1e810 03c8 03f1 3bf1 }
            // n = 7, score = 100
            //   0f43c8               | cmovae              ecx, eax
            //   8bc6                 | mov                 eax, esi
            //   8b75f8               | mov                 esi, dword ptr [ebp - 8]
            //   c1e810               | shr                 eax, 0x10
            //   03c8                 | add                 ecx, eax
            //   03f1                 | add                 esi, ecx
            //   3bf1                 | cmp                 esi, ecx

        $sequence_9 = { 6a01 6a00 68???????? ffd6 85c0 0f881b020000 68???????? }
            // n = 7, score = 100
            //   6a01                 | push                1
            //   6a00                 | push                0
            //   68????????           |                     
            //   ffd6                 | call                esi
            //   85c0                 | test                eax, eax
            //   0f881b020000         | js                  0x221
            //   68????????           |                     

    condition:
        7 of them and filesize < 133120
}