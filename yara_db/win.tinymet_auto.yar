rule win_tinymet_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-29"
        version = "1"
        description = "Detects win.tinymet."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.tinymet"
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
        $sequence_0 = { eb03 83c602 6a2e 56 e8???????? 33c9 6a5f }
            // n = 7, score = 100
            //   eb03                 | jmp                 5
            //   83c602               | add                 esi, 2
            //   6a2e                 | push                0x2e
            //   56                   | push                esi
            //   e8????????           |                     
            //   33c9                 | xor                 ecx, ecx
            //   6a5f                 | push                0x5f

        $sequence_1 = { 6a5f 56 668908 e8???????? 8bf8 }
            // n = 5, score = 100
            //   6a5f                 | push                0x5f
            //   56                   | push                esi
            //   668908               | mov                 word ptr [eax], cx
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax

        $sequence_2 = { 751b 68???????? e9???????? ff15???????? 85c0 7407 68???????? }
            // n = 7, score = 100
            //   751b                 | jne                 0x1d
            //   68????????           |                     
            //   e9????????           |                     
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7407                 | je                  9
            //   68????????           |                     

        $sequence_3 = { a3???????? 6a04 c600bf 8d45fc 50 }
            // n = 5, score = 100
            //   a3????????           |                     
            //   6a04                 | push                4
            //   c600bf               | mov                 byte ptr [eax], 0xbf
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   50                   | push                eax

        $sequence_4 = { 6a02 894df0 59 53 6a01 51 66a3???????? }
            // n = 7, score = 100
            //   6a02                 | push                2
            //   894df0               | mov                 dword ptr [ebp - 0x10], ecx
            //   59                   | pop                 ecx
            //   53                   | push                ebx
            //   6a01                 | push                1
            //   51                   | push                ecx
            //   66a3????????         |                     

        $sequence_5 = { 51 66a3???????? 66894dec 668945ee ff15???????? }
            // n = 5, score = 100
            //   51                   | push                ecx
            //   66a3????????         |                     
            //   66894dec             | mov                 word ptr [ebp - 0x14], cx
            //   668945ee             | mov                 word ptr [ebp - 0x12], ax
            //   ff15????????         |                     

        $sequence_6 = { 7416 6a04 8d45fc c745fc80330000 50 6a1f }
            // n = 6, score = 100
            //   7416                 | je                  0x18
            //   6a04                 | push                4
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   c745fc80330000       | mov                 dword ptr [ebp - 4], 0x3380
            //   50                   | push                eax
            //   6a1f                 | push                0x1f

        $sequence_7 = { 7412 0fbe043e 03d8 46 }
            // n = 4, score = 100
            //   7412                 | je                  0x14
            //   0fbe043e             | movsx               eax, byte ptr [esi + edi]
            //   03d8                 | add                 ebx, eax
            //   46                   | inc                 esi

    condition:
        7 of them and filesize < 57344
}