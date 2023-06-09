rule win_hesperbot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.hesperbot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.hesperbot"
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
        $sequence_0 = { 894640 85c0 7424 8b4d08 57 8b7e08 6a00 }
            // n = 7, score = 500
            //   894640               | mov                 dword ptr [esi + 0x40], eax
            //   85c0                 | test                eax, eax
            //   7424                 | je                  0x26
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   57                   | push                edi
            //   8b7e08               | mov                 edi, dword ptr [esi + 8]
            //   6a00                 | push                0

        $sequence_1 = { 235c242c 33f8 8b442430 0b442428 23ca 23442438 }
            // n = 6, score = 500
            //   235c242c             | and                 ebx, dword ptr [esp + 0x2c]
            //   33f8                 | xor                 edi, eax
            //   8b442430             | mov                 eax, dword ptr [esp + 0x30]
            //   0b442428             | or                  eax, dword ptr [esp + 0x28]
            //   23ca                 | and                 ecx, edx
            //   23442438             | and                 eax, dword ptr [esp + 0x38]

        $sequence_2 = { ebf8 56 6a0c e8???????? 8bf0 59 }
            // n = 6, score = 500
            //   ebf8                 | jmp                 0xfffffffa
            //   56                   | push                esi
            //   6a0c                 | push                0xc
            //   e8????????           |                     
            //   8bf0                 | mov                 esi, eax
            //   59                   | pop                 ecx

        $sequence_3 = { 895dfc 33ff 395d08 7411 53 ff7508 ff15???????? }
            // n = 7, score = 500
            //   895dfc               | mov                 dword ptr [ebp - 4], ebx
            //   33ff                 | xor                 edi, edi
            //   395d08               | cmp                 dword ptr [ebp + 8], ebx
            //   7411                 | je                  0x13
            //   53                   | push                ebx
            //   ff7508               | push                dword ptr [ebp + 8]
            //   ff15????????         |                     

        $sequence_4 = { 59 55 ff15???????? 5d 5f 8b442404 }
            // n = 6, score = 500
            //   59                   | pop                 ecx
            //   55                   | push                ebp
            //   ff15????????         |                     
            //   5d                   | pop                 ebp
            //   5f                   | pop                 edi
            //   8b442404             | mov                 eax, dword ptr [esp + 4]

        $sequence_5 = { 43 57 ff15???????? 5f 8bc3 5b c3 }
            // n = 7, score = 500
            //   43                   | inc                 ebx
            //   57                   | push                edi
            //   ff15????????         |                     
            //   5f                   | pop                 edi
            //   8bc3                 | mov                 eax, ebx
            //   5b                   | pop                 ebx
            //   c3                   | ret                 

        $sequence_6 = { 0fa4dd19 33c9 0bcd c1e807 33f1 8b4c2444 }
            // n = 6, score = 500
            //   0fa4dd19             | shld                ebp, ebx, 0x19
            //   33c9                 | xor                 ecx, ecx
            //   0bcd                 | or                  ecx, ebp
            //   c1e807               | shr                 eax, 7
            //   33f1                 | xor                 esi, ecx
            //   8b4c2444             | mov                 ecx, dword ptr [esp + 0x44]

        $sequence_7 = { 59 89460c 3bc3 7403 43 }
            // n = 5, score = 500
            //   59                   | pop                 ecx
            //   89460c               | mov                 dword ptr [esi + 0xc], eax
            //   3bc3                 | cmp                 eax, ebx
            //   7403                 | je                  5
            //   43                   | inc                 ebx

        $sequence_8 = { 5f 5b 5d c3 55 8bec 81ecd8000000 }
            // n = 7, score = 500
            //   5f                   | pop                 edi
            //   5b                   | pop                 ebx
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   81ecd8000000         | sub                 esp, 0xd8

        $sequence_9 = { 33db 59 43 57 ff15???????? 5f 8bc3 }
            // n = 7, score = 500
            //   33db                 | xor                 ebx, ebx
            //   59                   | pop                 ecx
            //   43                   | inc                 ebx
            //   57                   | push                edi
            //   ff15????????         |                     
            //   5f                   | pop                 edi
            //   8bc3                 | mov                 eax, ebx

    condition:
        7 of them and filesize < 188416
}