rule win_putabmow_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.putabmow."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.putabmow"
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
        $sequence_0 = { 50 8b85f0f4ffff 50 e8???????? 83c408 c3 8d8d10f9ffff }
            // n = 7, score = 100
            //   50                   | push                eax
            //   8b85f0f4ffff         | mov                 eax, dword ptr [ebp - 0xb10]
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   c3                   | ret                 
            //   8d8d10f9ffff         | lea                 ecx, [ebp - 0x6f0]

        $sequence_1 = { e8???????? 85c0 0f8461010000 8b7c2410 8bf3 57 8bce }
            // n = 7, score = 100
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   0f8461010000         | je                  0x167
            //   8b7c2410             | mov                 edi, dword ptr [esp + 0x10]
            //   8bf3                 | mov                 esi, ebx
            //   57                   | push                edi
            //   8bce                 | mov                 ecx, esi

        $sequence_2 = { 83c40c 66894618 23ca 8b459c }
            // n = 4, score = 100
            //   83c40c               | add                 esp, 0xc
            //   66894618             | mov                 word ptr [esi + 0x18], ax
            //   23ca                 | and                 ecx, edx
            //   8b459c               | mov                 eax, dword ptr [ebp - 0x64]

        $sequence_3 = { c705????????18b27100 a3???????? c705????????a9b27100 c705????????03b37100 c705????????88b37100 a3???????? }
            // n = 6, score = 100
            //   c705????????18b27100     |     
            //   a3????????           |                     
            //   c705????????a9b27100     |     
            //   c705????????03b37100     |     
            //   c705????????88b37100     |     
            //   a3????????           |                     

        $sequence_4 = { ff742424 0fb7c0 89442438 8b442430 }
            // n = 4, score = 100
            //   ff742424             | push                dword ptr [esp + 0x24]
            //   0fb7c0               | movzx               eax, ax
            //   89442438             | mov                 dword ptr [esp + 0x38], eax
            //   8b442430             | mov                 eax, dword ptr [esp + 0x30]

        $sequence_5 = { b8398ee338 f7ef 46 c1fa05 8bc2 c1e81f }
            // n = 6, score = 100
            //   b8398ee338           | mov                 eax, 0x38e38e39
            //   f7ef                 | imul                edi
            //   46                   | inc                 esi
            //   c1fa05               | sar                 edx, 5
            //   8bc2                 | mov                 eax, edx
            //   c1e81f               | shr                 eax, 0x1f

        $sequence_6 = { 8d8c2444020000 0f438c2444020000 50 51 8d8c2424070000 e8???????? c68424200b00002e }
            // n = 7, score = 100
            //   8d8c2444020000       | lea                 ecx, [esp + 0x244]
            //   0f438c2444020000     | cmovae              ecx, dword ptr [esp + 0x244]
            //   50                   | push                eax
            //   51                   | push                ecx
            //   8d8c2424070000       | lea                 ecx, [esp + 0x724]
            //   e8????????           |                     
            //   c68424200b00002e     | mov                 byte ptr [esp + 0xb20], 0x2e

        $sequence_7 = { 8d8424d4000000 50 8d8c2488050000 e8???????? 8bd8 8d8c2484050000 8d8424fc000000 }
            // n = 7, score = 100
            //   8d8424d4000000       | lea                 eax, [esp + 0xd4]
            //   50                   | push                eax
            //   8d8c2488050000       | lea                 ecx, [esp + 0x588]
            //   e8????????           |                     
            //   8bd8                 | mov                 ebx, eax
            //   8d8c2484050000       | lea                 ecx, [esp + 0x584]
            //   8d8424fc000000       | lea                 eax, [esp + 0xfc]

        $sequence_8 = { e8???????? 83c424 85c0 0f8428030000 }
            // n = 4, score = 100
            //   e8????????           |                     
            //   83c424               | add                 esp, 0x24
            //   85c0                 | test                eax, eax
            //   0f8428030000         | je                  0x32e

        $sequence_9 = { 0f438c24dc000000 3b742420 0f42c6 50 e8???????? 83c404 85c0 }
            // n = 7, score = 100
            //   0f438c24dc000000     | cmovae              ecx, dword ptr [esp + 0xdc]
            //   3b742420             | cmp                 esi, dword ptr [esp + 0x20]
            //   0f42c6               | cmovb               eax, esi
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   85c0                 | test                eax, eax

    condition:
        7 of them and filesize < 704512
}