rule win_lolsnif_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.lolsnif."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.lolsnif"
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
        $sequence_0 = { 33db 53 8945f4 68???????? 8d45f4 895df8 e8???????? }
            // n = 7, score = 200
            //   33db                 | xor                 ebx, ebx
            //   53                   | push                ebx
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax
            //   68????????           |                     
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   895df8               | mov                 dword ptr [ebp - 8], ebx
            //   e8????????           |                     

        $sequence_1 = { 68???????? e8???????? 8bf0 85f6 7404 3bf3 7447 }
            // n = 7, score = 200
            //   68????????           |                     
            //   e8????????           |                     
            //   8bf0                 | mov                 esi, eax
            //   85f6                 | test                esi, esi
            //   7404                 | je                  6
            //   3bf3                 | cmp                 esi, ebx
            //   7447                 | je                  0x49

        $sequence_2 = { 6a54 897c2410 e8???????? 8bf0 3bf3 7508 6a08 }
            // n = 7, score = 200
            //   6a54                 | push                0x54
            //   897c2410             | mov                 dword ptr [esp + 0x10], edi
            //   e8????????           |                     
            //   8bf0                 | mov                 esi, eax
            //   3bf3                 | cmp                 esi, ebx
            //   7508                 | jne                 0xa
            //   6a08                 | push                8

        $sequence_3 = { c9 c20c00 55 8bec 51 8b483c 03c8 }
            // n = 7, score = 200
            //   c9                   | leave               
            //   c20c00               | ret                 0xc
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   51                   | push                ecx
            //   8b483c               | mov                 ecx, dword ptr [eax + 0x3c]
            //   03c8                 | add                 ecx, eax

        $sequence_4 = { 0f84e3020000 83fe04 7621 8b450c 8b00 3d47455420 }
            // n = 6, score = 200
            //   0f84e3020000         | je                  0x2e9
            //   83fe04               | cmp                 esi, 4
            //   7621                 | jbe                 0x23
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   8b00                 | mov                 eax, dword ptr [eax]
            //   3d47455420           | cmp                 eax, 0x20544547

        $sequence_5 = { eb01 56 e8???????? 395df8 8b45f8 7502 8bc3 }
            // n = 7, score = 200
            //   eb01                 | jmp                 3
            //   56                   | push                esi
            //   e8????????           |                     
            //   395df8               | cmp                 dword ptr [ebp - 8], ebx
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   7502                 | jne                 4
            //   8bc3                 | mov                 eax, ebx

        $sequence_6 = { 0f859c000000 68???????? 33ff 47 }
            // n = 4, score = 200
            //   0f859c000000         | jne                 0xa2
            //   68????????           |                     
            //   33ff                 | xor                 edi, edi
            //   47                   | inc                 edi

        $sequence_7 = { 56 8b35???????? 57 6800080000 8bf8 a1???????? 6a00 }
            // n = 7, score = 200
            //   56                   | push                esi
            //   8b35????????         |                     
            //   57                   | push                edi
            //   6800080000           | push                0x800
            //   8bf8                 | mov                 edi, eax
            //   a1????????           |                     
            //   6a00                 | push                0

        $sequence_8 = { ff15???????? 50 8b4dd0 33c0 e8???????? f7d0 394510 }
            // n = 7, score = 200
            //   ff15????????         |                     
            //   50                   | push                eax
            //   8b4dd0               | mov                 ecx, dword ptr [ebp - 0x30]
            //   33c0                 | xor                 eax, eax
            //   e8????????           |                     
            //   f7d0                 | not                 eax
            //   394510               | cmp                 dword ptr [ebp + 0x10], eax

        $sequence_9 = { ff15???????? bf02010000 eb08 ff15???????? 8bf8 }
            // n = 5, score = 200
            //   ff15????????         |                     
            //   bf02010000           | mov                 edi, 0x102
            //   eb08                 | jmp                 0xa
            //   ff15????????         |                     
            //   8bf8                 | mov                 edi, eax

    condition:
        7 of them and filesize < 425984
}