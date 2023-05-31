rule win_mangzamel_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.mangzamel."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mangzamel"
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
        $sequence_0 = { 8a86c5020000 3ac3 751e 8b9694000000 8b4d08 2b4e64 69d280ee3600 }
            // n = 7, score = 400
            //   8a86c5020000         | mov                 al, byte ptr [esi + 0x2c5]
            //   3ac3                 | cmp                 al, bl
            //   751e                 | jne                 0x20
            //   8b9694000000         | mov                 edx, dword ptr [esi + 0x94]
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   2b4e64               | sub                 ecx, dword ptr [esi + 0x64]
            //   69d280ee3600         | imul                edx, edx, 0x36ee80

        $sequence_1 = { 8d8ddcfeffff e8???????? 8b4df4 5f 8ac3 5e 5b }
            // n = 7, score = 400
            //   8d8ddcfeffff         | lea                 ecx, [ebp - 0x124]
            //   e8????????           |                     
            //   8b4df4               | mov                 ecx, dword ptr [ebp - 0xc]
            //   5f                   | pop                 edi
            //   8ac3                 | mov                 al, bl
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx

        $sequence_2 = { 6a01 ff35???????? ff35???????? e8???????? 894604 a1???????? 83c40c }
            // n = 7, score = 400
            //   6a01                 | push                1
            //   ff35????????         |                     
            //   ff35????????         |                     
            //   e8????????           |                     
            //   894604               | mov                 dword ptr [esi + 4], eax
            //   a1????????           |                     
            //   83c40c               | add                 esp, 0xc

        $sequence_3 = { ff750c 6a01 eb3b ff750c 8bcb e8???????? }
            // n = 6, score = 400
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   6a01                 | push                1
            //   eb3b                 | jmp                 0x3d
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   8bcb                 | mov                 ecx, ebx
            //   e8????????           |                     

        $sequence_4 = { 6a02 84c0 5e 747a 3975cc 7575 8b751c }
            // n = 7, score = 400
            //   6a02                 | push                2
            //   84c0                 | test                al, al
            //   5e                   | pop                 esi
            //   747a                 | je                  0x7c
            //   3975cc               | cmp                 dword ptr [ebp - 0x34], esi
            //   7575                 | jne                 0x77
            //   8b751c               | mov                 esi, dword ptr [ebp + 0x1c]

        $sequence_5 = { 8d4dec 56 e8???????? 85c0 7c31 8d85d8feffff 50 }
            // n = 7, score = 400
            //   8d4dec               | lea                 ecx, [ebp - 0x14]
            //   56                   | push                esi
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   7c31                 | jl                  0x33
            //   8d85d8feffff         | lea                 eax, [ebp - 0x128]
            //   50                   | push                eax

        $sequence_6 = { 46 3bf7 72f0 834dfcff 8d4de0 e8???????? 5f }
            // n = 7, score = 400
            //   46                   | inc                 esi
            //   3bf7                 | cmp                 esi, edi
            //   72f0                 | jb                  0xfffffff2
            //   834dfcff             | or                  dword ptr [ebp - 4], 0xffffffff
            //   8d4de0               | lea                 ecx, [ebp - 0x20]
            //   e8????????           |                     
            //   5f                   | pop                 edi

        $sequence_7 = { c1e003 85f6 894508 746a 837d1400 7464 3b4514 }
            // n = 7, score = 400
            //   c1e003               | shl                 eax, 3
            //   85f6                 | test                esi, esi
            //   894508               | mov                 dword ptr [ebp + 8], eax
            //   746a                 | je                  0x6c
            //   837d1400             | cmp                 dword ptr [ebp + 0x14], 0
            //   7464                 | je                  0x66
            //   3b4514               | cmp                 eax, dword ptr [ebp + 0x14]

        $sequence_8 = { ff75fc 6805000102 57 ff767c e8???????? 57 57 }
            // n = 7, score = 400
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   6805000102           | push                0x2010005
            //   57                   | push                edi
            //   ff767c               | push                dword ptr [esi + 0x7c]
            //   e8????????           |                     
            //   57                   | push                edi
            //   57                   | push                edi

        $sequence_9 = { 7466 56 6a2c e8???????? 8bf0 59 89751c }
            // n = 7, score = 400
            //   7466                 | je                  0x68
            //   56                   | push                esi
            //   6a2c                 | push                0x2c
            //   e8????????           |                     
            //   8bf0                 | mov                 esi, eax
            //   59                   | pop                 ecx
            //   89751c               | mov                 dword ptr [ebp + 0x1c], esi

    condition:
        7 of them and filesize < 360448
}