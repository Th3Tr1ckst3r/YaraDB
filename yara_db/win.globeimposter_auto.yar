rule win_globeimposter_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.globeimposter."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.globeimposter"
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
        $sequence_0 = { ff742440 e8???????? 83c40c 8bc5 eb03 6ac4 58 }
            // n = 7, score = 700
            //   ff742440             | push                dword ptr [esp + 0x40]
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   8bc5                 | mov                 eax, ebp
            //   eb03                 | jmp                 5
            //   6ac4                 | push                -0x3c
            //   58                   | pop                 eax

        $sequence_1 = { e8???????? 6a6c 55 56 e8???????? }
            // n = 5, score = 700
            //   e8????????           |                     
            //   6a6c                 | push                0x6c
            //   55                   | push                ebp
            //   56                   | push                esi
            //   e8????????           |                     

        $sequence_2 = { ff15???????? 6ac4 58 eb0a }
            // n = 4, score = 700
            //   ff15????????         |                     
            //   6ac4                 | push                -0x3c
            //   58                   | pop                 eax
            //   eb0a                 | jmp                 0xc

        $sequence_3 = { 5f eb0d 3d96000000 1bff 83e709 }
            // n = 5, score = 700
            //   5f                   | pop                 edi
            //   eb0d                 | jmp                 0xf
            //   3d96000000           | cmp                 eax, 0x96
            //   1bff                 | sbb                 edi, edi
            //   83e709               | and                 edi, 9

        $sequence_4 = { 743b 8b7c2410 43 3bdd }
            // n = 4, score = 700
            //   743b                 | je                  0x3d
            //   8b7c2410             | mov                 edi, dword ptr [esp + 0x10]
            //   43                   | inc                 ebx
            //   3bdd                 | cmp                 ebx, ebp

        $sequence_5 = { 45 8364241000 8d442410 50 }
            // n = 4, score = 700
            //   45                   | inc                 ebp
            //   8364241000           | and                 dword ptr [esp + 0x10], 0
            //   8d442410             | lea                 eax, [esp + 0x10]
            //   50                   | push                eax

        $sequence_6 = { 57 6800000040 8d85fcefffff 50 ff15???????? }
            // n = 5, score = 700
            //   57                   | push                edi
            //   6800000040           | push                0x40000000
            //   8d85fcefffff         | lea                 eax, [ebp - 0x1004]
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_7 = { 8d0445ffffffff 8945f0 8d45fc 8945f8 8d45f0 }
            // n = 5, score = 700
            //   8d0445ffffffff       | lea                 eax, [eax*2 - 1]
            //   8945f0               | mov                 dword ptr [ebp - 0x10], eax
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   8d45f0               | lea                 eax, [ebp - 0x10]

        $sequence_8 = { 6a0c 5f eb0d 3d96000000 }
            // n = 4, score = 700
            //   6a0c                 | push                0xc
            //   5f                   | pop                 edi
            //   eb0d                 | jmp                 0xf
            //   3d96000000           | cmp                 eax, 0x96

        $sequence_9 = { e8???????? 8b442410 014608 43 }
            // n = 4, score = 700
            //   e8????????           |                     
            //   8b442410             | mov                 eax, dword ptr [esp + 0x10]
            //   014608               | add                 dword ptr [esi + 8], eax
            //   43                   | inc                 ebx

    condition:
        7 of them and filesize < 327680
}