rule win_dyepack_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.dyepack."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dyepack"
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
        $sequence_0 = { 8b442414 13fb 3bf8 7cb2 7f08 }
            // n = 5, score = 300
            //   8b442414             | mov                 eax, dword ptr [esp + 0x14]
            //   13fb                 | adc                 edi, ebx
            //   3bf8                 | cmp                 edi, eax
            //   7cb2                 | jl                  0xffffffb4
            //   7f08                 | jg                  0xa

        $sequence_1 = { 83feff 7510 ff15???????? 5f 5e 5b 81c414100000 }
            // n = 7, score = 300
            //   83feff               | cmp                 esi, -1
            //   7510                 | jne                 0x12
            //   ff15????????         |                     
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx
            //   81c414100000         | add                 esp, 0x1014

        $sequence_2 = { ff15???????? 56 ff15???????? 8b8c2428100000 53 }
            // n = 5, score = 300
            //   ff15????????         |                     
            //   56                   | push                esi
            //   ff15????????         |                     
            //   8b8c2428100000       | mov                 ecx, dword ptr [esp + 0x1028]
            //   53                   | push                ebx

        $sequence_3 = { 8b442414 13fb 3bf8 7cb2 7f08 8b4c2410 3be9 }
            // n = 7, score = 300
            //   8b442414             | mov                 eax, dword ptr [esp + 0x14]
            //   13fb                 | adc                 edi, ebx
            //   3bf8                 | cmp                 edi, eax
            //   7cb2                 | jl                  0xffffffb4
            //   7f08                 | jg                  0xa
            //   8b4c2410             | mov                 ecx, dword ptr [esp + 0x10]
            //   3be9                 | cmp                 ebp, ecx

        $sequence_4 = { 8d542418 53 52 8d44242c 51 }
            // n = 5, score = 300
            //   8d542418             | lea                 edx, [esp + 0x18]
            //   53                   | push                ebx
            //   52                   | push                edx
            //   8d44242c             | lea                 eax, [esp + 0x2c]
            //   51                   | push                ecx

        $sequence_5 = { 56 ffd7 8b442414 8b4c2410 33ed 33ff 3bc3 }
            // n = 7, score = 300
            //   56                   | push                esi
            //   ffd7                 | call                edi
            //   8b442414             | mov                 eax, dword ptr [esp + 0x14]
            //   8b4c2410             | mov                 ecx, dword ptr [esp + 0x10]
            //   33ed                 | xor                 ebp, ebp
            //   33ff                 | xor                 edi, edi
            //   3bc3                 | cmp                 eax, ebx

        $sequence_6 = { 53 6880000000 6a03 53 aa 8b842434100000 }
            // n = 6, score = 300
            //   53                   | push                ebx
            //   6880000000           | push                0x80
            //   6a03                 | push                3
            //   53                   | push                ebx
            //   aa                   | stosb               byte ptr es:[edi], al
            //   8b842434100000       | mov                 eax, dword ptr [esp + 0x1034]

        $sequence_7 = { 53 51 8d54242c 6a01 52 56 ff15???????? }
            // n = 7, score = 300
            //   53                   | push                ebx
            //   51                   | push                ecx
            //   8d54242c             | lea                 edx, [esp + 0x2c]
            //   6a01                 | push                1
            //   52                   | push                edx
            //   56                   | push                esi
            //   ff15????????         |                     

        $sequence_8 = { 56 57 33db b9ff030000 33c0 8d7c2421 885c2420 }
            // n = 7, score = 300
            //   56                   | push                esi
            //   57                   | push                edi
            //   33db                 | xor                 ebx, ebx
            //   b9ff030000           | mov                 ecx, 0x3ff
            //   33c0                 | xor                 eax, eax
            //   8d7c2421             | lea                 edi, [esp + 0x21]
            //   885c2420             | mov                 byte ptr [esp + 0x20], bl

        $sequence_9 = { 56 ff15???????? 56 ff15???????? 8b8c2428100000 }
            // n = 5, score = 300
            //   56                   | push                esi
            //   ff15????????         |                     
            //   56                   | push                esi
            //   ff15????????         |                     
            //   8b8c2428100000       | mov                 ecx, dword ptr [esp + 0x1028]

    condition:
        7 of them and filesize < 212992
}