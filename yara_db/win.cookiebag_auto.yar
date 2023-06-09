rule win_cookiebag_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.cookiebag."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cookiebag"
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
        $sequence_0 = { 6a00 6a00 8d54247c 83ec10 8bcc 89642430 52 }
            // n = 7, score = 100
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   8d54247c             | lea                 edx, [esp + 0x7c]
            //   83ec10               | sub                 esp, 0x10
            //   8bcc                 | mov                 ecx, esp
            //   89642430             | mov                 dword ptr [esp + 0x30], esp
            //   52                   | push                edx

        $sequence_1 = { 85c0 0f8425ffffff 8b83ac000000 3bc7 }
            // n = 4, score = 100
            //   85c0                 | test                eax, eax
            //   0f8425ffffff         | je                  0xffffff2b
            //   8b83ac000000         | mov                 eax, dword ptr [ebx + 0xac]
            //   3bc7                 | cmp                 eax, edi

        $sequence_2 = { 57 8bce c684248000000009 8816 e8???????? a1???????? }
            // n = 6, score = 100
            //   57                   | push                edi
            //   8bce                 | mov                 ecx, esi
            //   c684248000000009     | mov                 byte ptr [esp + 0x80], 9
            //   8816                 | mov                 byte ptr [esi], dl
            //   e8????????           |                     
            //   a1????????           |                     

        $sequence_3 = { 8d4c2448 c644247004 e8???????? 3bef 7409 55 }
            // n = 6, score = 100
            //   8d4c2448             | lea                 ecx, [esp + 0x48]
            //   c644247004           | mov                 byte ptr [esp + 0x70], 4
            //   e8????????           |                     
            //   3bef                 | cmp                 ebp, edi
            //   7409                 | je                  0xb
            //   55                   | push                ebp

        $sequence_4 = { 68???????? 8d4c2460 e8???????? 8d4c2468 c784248001000000000000 51 8b4e28 }
            // n = 7, score = 100
            //   68????????           |                     
            //   8d4c2460             | lea                 ecx, [esp + 0x60]
            //   e8????????           |                     
            //   8d4c2468             | lea                 ecx, [esp + 0x68]
            //   c784248001000000000000     | mov    dword ptr [esp + 0x180], 0
            //   51                   | push                ecx
            //   8b4e28               | mov                 ecx, dword ptr [esi + 0x28]

        $sequence_5 = { 85c0 7509 47 3bfd 75eb 8bf7 eb29 }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   7509                 | jne                 0xb
            //   47                   | inc                 edi
            //   3bfd                 | cmp                 edi, ebp
            //   75eb                 | jne                 0xffffffed
            //   8bf7                 | mov                 esi, edi
            //   eb29                 | jmp                 0x2b

        $sequence_6 = { 8b8424c0000000 c68424b40000000d 3bc5 7505 b8???????? 6a5c 50 }
            // n = 7, score = 100
            //   8b8424c0000000       | mov                 eax, dword ptr [esp + 0xc0]
            //   c68424b40000000d     | mov                 byte ptr [esp + 0xb4], 0xd
            //   3bc5                 | cmp                 eax, ebp
            //   7505                 | jne                 7
            //   b8????????           |                     
            //   6a5c                 | push                0x5c
            //   50                   | push                eax

        $sequence_7 = { e9???????? 8d4d04 e9???????? 8d4d84 e9???????? 8d4d94 e9???????? }
            // n = 7, score = 100
            //   e9????????           |                     
            //   8d4d04               | lea                 ecx, [ebp + 4]
            //   e9????????           |                     
            //   8d4d84               | lea                 ecx, [ebp - 0x7c]
            //   e9????????           |                     
            //   8d4d94               | lea                 ecx, [ebp - 0x6c]
            //   e9????????           |                     

        $sequence_8 = { f7d1 49 894c2418 51 8d8c24a8000000 e8???????? }
            // n = 6, score = 100
            //   f7d1                 | not                 ecx
            //   49                   | dec                 ecx
            //   894c2418             | mov                 dword ptr [esp + 0x18], ecx
            //   51                   | push                ecx
            //   8d8c24a8000000       | lea                 ecx, [esp + 0xa8]
            //   e8????????           |                     

        $sequence_9 = { 57 33db 894c2410 68???????? 895c2418 e8???????? 8b6c2440 }
            // n = 7, score = 100
            //   57                   | push                edi
            //   33db                 | xor                 ebx, ebx
            //   894c2410             | mov                 dword ptr [esp + 0x10], ecx
            //   68????????           |                     
            //   895c2418             | mov                 dword ptr [esp + 0x18], ebx
            //   e8????????           |                     
            //   8b6c2440             | mov                 ebp, dword ptr [esp + 0x40]

    condition:
        7 of them and filesize < 311296
}