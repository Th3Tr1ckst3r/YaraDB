rule win_roseam_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.roseam."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.roseam"
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
        $sequence_0 = { 9d 5d 8b45f8 85c0 0f84db000000 68???????? 55 }
            // n = 7, score = 100
            //   9d                   | popfd               
            //   5d                   | pop                 ebp
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   85c0                 | test                eax, eax
            //   0f84db000000         | je                  0xe1
            //   68????????           |                     
            //   55                   | push                ebp

        $sequence_1 = { 88951df1ffff 68???????? 55 8bec 9c 6845061504 6862110404 }
            // n = 7, score = 100
            //   88951df1ffff         | mov                 byte ptr [ebp - 0xee3], dl
            //   68????????           |                     
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   9c                   | pushfd              
            //   6845061504           | push                0x4150645
            //   6862110404           | push                0x4041162

        $sequence_2 = { 9d 58 83c8ff 5f 5e 5b 8be5 }
            // n = 7, score = 100
            //   9d                   | popfd               
            //   58                   | pop                 eax
            //   83c8ff               | or                  eax, 0xffffffff
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx
            //   8be5                 | mov                 esp, ebp

        $sequence_3 = { 52 ff15???????? 68???????? 55 8bec 9c 6845061504 }
            // n = 7, score = 100
            //   52                   | push                edx
            //   ff15????????         |                     
            //   68????????           |                     
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   9c                   | pushfd              
            //   6845061504           | push                0x4150645

        $sequence_4 = { 6a00 8d8544fcffff 6a00 50 6a44 51 }
            // n = 6, score = 100
            //   6a00                 | push                0
            //   8d8544fcffff         | lea                 eax, [ebp - 0x3bc]
            //   6a00                 | push                0
            //   50                   | push                eax
            //   6a44                 | push                0x44
            //   51                   | push                ecx

        $sequence_5 = { 51 8b4dfa 25ffff0000 81e1ffff0000 50 8b45f8 }
            // n = 6, score = 100
            //   51                   | push                ecx
            //   8b4dfa               | mov                 ecx, dword ptr [ebp - 6]
            //   25ffff0000           | and                 eax, 0xffff
            //   81e1ffff0000         | and                 ecx, 0xffff
            //   50                   | push                eax
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]

        $sequence_6 = { 8d85f4fcffff 8a10 8a1e 8aca 3ad3 751e 84c9 }
            // n = 7, score = 100
            //   8d85f4fcffff         | lea                 eax, [ebp - 0x30c]
            //   8a10                 | mov                 dl, byte ptr [eax]
            //   8a1e                 | mov                 bl, byte ptr [esi]
            //   8aca                 | mov                 cl, dl
            //   3ad3                 | cmp                 dl, bl
            //   751e                 | jne                 0x20
            //   84c9                 | test                cl, cl

        $sequence_7 = { 8955f4 50 55 8bec 9c 6841061504 6862110404 }
            // n = 7, score = 100
            //   8955f4               | mov                 dword ptr [ebp - 0xc], edx
            //   50                   | push                eax
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   9c                   | pushfd              
            //   6841061504           | push                0x4150641
            //   6862110404           | push                0x4041162

        $sequence_8 = { c745a444000000 8945e4 68???????? 50 9c b80a000000 }
            // n = 6, score = 100
            //   c745a444000000       | mov                 dword ptr [ebp - 0x5c], 0x44
            //   8945e4               | mov                 dword ptr [ebp - 0x1c], eax
            //   68????????           |                     
            //   50                   | push                eax
            //   9c                   | pushfd              
            //   b80a000000           | mov                 eax, 0xa

        $sequence_9 = { 5d 9d 5d 58 8b4508 8b4df4 0fbe0401 }
            // n = 7, score = 100
            //   5d                   | pop                 ebp
            //   9d                   | popfd               
            //   5d                   | pop                 ebp
            //   58                   | pop                 eax
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   8b4df4               | mov                 ecx, dword ptr [ebp - 0xc]
            //   0fbe0401             | movsx               eax, byte ptr [ecx + eax]

    condition:
        7 of them and filesize < 221184
}