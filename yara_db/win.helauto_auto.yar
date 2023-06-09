rule win_helauto_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.helauto."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.helauto"
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
        $sequence_0 = { 8d85ecfeffff 50 53 53 53 52 }
            // n = 6, score = 100
            //   8d85ecfeffff         | lea                 eax, [ebp - 0x114]
            //   50                   | push                eax
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   52                   | push                edx

        $sequence_1 = { 8d8528feffff c7855cffffff01010000 50 66899d60ffffff ff15???????? 8d8528feffff 68???????? }
            // n = 7, score = 100
            //   8d8528feffff         | lea                 eax, [ebp - 0x1d8]
            //   c7855cffffff01010000     | mov    dword ptr [ebp - 0xa4], 0x101
            //   50                   | push                eax
            //   66899d60ffffff       | mov                 word ptr [ebp - 0xa0], bx
            //   ff15????????         |                     
            //   8d8528feffff         | lea                 eax, [ebp - 0x1d8]
            //   68????????           |                     

        $sequence_2 = { 57 50 6a1f ff75fc ffd6 }
            // n = 5, score = 100
            //   57                   | push                edi
            //   50                   | push                eax
            //   6a1f                 | push                0x1f
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   ffd6                 | call                esi

        $sequence_3 = { 743c 017d10 8b45f4 3b4510 75ad 395dfc }
            // n = 6, score = 100
            //   743c                 | je                  0x3e
            //   017d10               | add                 dword ptr [ebp + 0x10], edi
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   3b4510               | cmp                 eax, dword ptr [ebp + 0x10]
            //   75ad                 | jne                 0xffffffaf
            //   395dfc               | cmp                 dword ptr [ebp - 4], ebx

        $sequence_4 = { b9???????? 50 ff75fc e8???????? e9???????? }
            // n = 5, score = 100
            //   b9????????           |                     
            //   50                   | push                eax
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   e8????????           |                     
            //   e9????????           |                     

        $sequence_5 = { 59 85db 59 750c 50 ff15???????? }
            // n = 6, score = 100
            //   59                   | pop                 ecx
            //   85db                 | test                ebx, ebx
            //   59                   | pop                 ecx
            //   750c                 | jne                 0xe
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_6 = { ff758c 8b35???????? ffd6 ff7588 }
            // n = 4, score = 100
            //   ff758c               | push                dword ptr [ebp - 0x74]
            //   8b35????????         |                     
            //   ffd6                 | call                esi
            //   ff7588               | push                dword ptr [ebp - 0x78]

        $sequence_7 = { 53 50 e8???????? 56 8d85a8f3ffff 53 50 }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   50                   | push                eax
            //   e8????????           |                     
            //   56                   | push                esi
            //   8d85a8f3ffff         | lea                 eax, [ebp - 0xc58]
            //   53                   | push                ebx
            //   50                   | push                eax

        $sequence_8 = { e8???????? 56 8d85a8ebffff 53 50 }
            // n = 5, score = 100
            //   e8????????           |                     
            //   56                   | push                esi
            //   8d85a8ebffff         | lea                 eax, [ebp - 0x1458]
            //   53                   | push                ebx
            //   50                   | push                eax

        $sequence_9 = { ffd6 ff75b0 53 53 }
            // n = 4, score = 100
            //   ffd6                 | call                esi
            //   ff75b0               | push                dword ptr [ebp - 0x50]
            //   53                   | push                ebx
            //   53                   | push                ebx

    condition:
        7 of them and filesize < 57344
}