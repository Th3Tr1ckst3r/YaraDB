rule win_apocalypse_ransom_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.apocalypse_ransom."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.apocalypse_ransom"
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
        $sequence_0 = { 8d542414 52 ffd7 8b4c2410 }
            // n = 4, score = 200
            //   8d542414             | lea                 edx, [esp + 0x14]
            //   52                   | push                edx
            //   ffd7                 | call                edi
            //   8b4c2410             | mov                 ecx, dword ptr [esp + 0x10]

        $sequence_1 = { 50 ff15???????? 8d4c2408 51 e8???????? 83c40c }
            // n = 6, score = 200
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8d4c2408             | lea                 ecx, [esp + 8]
            //   51                   | push                ecx
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc

        $sequence_2 = { 6a01 6a00 68???????? 51 ffd3 8b542410 8b2d???????? }
            // n = 7, score = 200
            //   6a01                 | push                1
            //   6a00                 | push                0
            //   68????????           |                     
            //   51                   | push                ecx
            //   ffd3                 | call                ebx
            //   8b542410             | mov                 edx, dword ptr [esp + 0x10]
            //   8b2d????????         |                     

        $sequence_3 = { 6a00 6a00 ff15???????? 57 ff15???????? 5f 5e }
            // n = 7, score = 200
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   57                   | push                edi
            //   ff15????????         |                     
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_4 = { 5e 5b c3 6a00 6afa 56 }
            // n = 6, score = 200
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx
            //   c3                   | ret                 
            //   6a00                 | push                0
            //   6afa                 | push                -6
            //   56                   | push                esi

        $sequence_5 = { 68f5010000 56 68d2000000 68bc020000 }
            // n = 4, score = 200
            //   68f5010000           | push                0x1f5
            //   56                   | push                esi
            //   68d2000000           | push                0xd2
            //   68bc020000           | push                0x2bc

        $sequence_6 = { 52 ffd7 85c0 75cc 6aff ff15???????? }
            // n = 6, score = 200
            //   52                   | push                edx
            //   ffd7                 | call                edi
            //   85c0                 | test                eax, eax
            //   75cc                 | jne                 0xffffffce
            //   6aff                 | push                -1
            //   ff15????????         |                     

        $sequence_7 = { 6a00 6a01 6a00 6a02 6800000040 8d542420 52 }
            // n = 7, score = 200
            //   6a00                 | push                0
            //   6a01                 | push                1
            //   6a00                 | push                0
            //   6a02                 | push                2
            //   6800000040           | push                0x40000000
            //   8d542420             | lea                 edx, [esp + 0x20]
            //   52                   | push                edx

        $sequence_8 = { 6801000080 ffd6 8b3d???????? 8d542414 52 ffd7 }
            // n = 6, score = 200
            //   6801000080           | push                0x80000001
            //   ffd6                 | call                esi
            //   8b3d????????         |                     
            //   8d542414             | lea                 edx, [esp + 0x14]
            //   52                   | push                edx
            //   ffd7                 | call                edi

        $sequence_9 = { 8bc6 e8???????? 8bc6 e8???????? 6a6d 56 }
            // n = 6, score = 200
            //   8bc6                 | mov                 eax, esi
            //   e8????????           |                     
            //   8bc6                 | mov                 eax, esi
            //   e8????????           |                     
            //   6a6d                 | push                0x6d
            //   56                   | push                esi

    condition:
        7 of them and filesize < 40960
}