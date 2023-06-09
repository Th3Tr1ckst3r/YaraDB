rule win_darkshell_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.darkshell."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.darkshell"
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
        $sequence_0 = { 81e2ff000000 33d3 c1e808 8b549408 33c2 41 }
            // n = 6, score = 300
            //   81e2ff000000         | and                 edx, 0xff
            //   33d3                 | xor                 edx, ebx
            //   c1e808               | shr                 eax, 8
            //   8b549408             | mov                 edx, dword ptr [esp + edx*4 + 8]
            //   33c2                 | xor                 eax, edx
            //   41                   | inc                 ecx

        $sequence_1 = { 89442434 50 8b8424a0000000 50 6a00 }
            // n = 5, score = 300
            //   89442434             | mov                 dword ptr [esp + 0x34], eax
            //   50                   | push                eax
            //   8b8424a0000000       | mov                 eax, dword ptr [esp + 0xa0]
            //   50                   | push                eax
            //   6a00                 | push                0

        $sequence_2 = { 89442418 ffd7 6a00 6a00 6a00 6a00 }
            // n = 6, score = 300
            //   89442418             | mov                 dword ptr [esp + 0x18], eax
            //   ffd7                 | call                edi
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0

        $sequence_3 = { 83c702 d1ea 3bda 7286 8b4604 }
            // n = 5, score = 300
            //   83c702               | add                 edi, 2
            //   d1ea                 | shr                 edx, 1
            //   3bda                 | cmp                 ebx, edx
            //   7286                 | jb                  0xffffff88
            //   8b4604               | mov                 eax, dword ptr [esi + 4]

        $sequence_4 = { 8b4e38 51 50 eb05 }
            // n = 4, score = 300
            //   8b4e38               | mov                 ecx, dword ptr [esi + 0x38]
            //   51                   | push                ecx
            //   50                   | push                eax
            //   eb05                 | jmp                 7

        $sequence_5 = { 50 89442434 50 8b8424a0000000 50 6a00 c744246044000000 }
            // n = 7, score = 300
            //   50                   | push                eax
            //   89442434             | mov                 dword ptr [esp + 0x34], eax
            //   50                   | push                eax
            //   8b8424a0000000       | mov                 eax, dword ptr [esp + 0xa0]
            //   50                   | push                eax
            //   6a00                 | push                0
            //   c744246044000000     | mov                 dword ptr [esp + 0x60], 0x44

        $sequence_6 = { 8b44240c 85c0 7435 8d4c240c 6a00 }
            // n = 5, score = 300
            //   8b44240c             | mov                 eax, dword ptr [esp + 0xc]
            //   85c0                 | test                eax, eax
            //   7435                 | je                  0x37
            //   8d4c240c             | lea                 ecx, [esp + 0xc]
            //   6a00                 | push                0

        $sequence_7 = { 83c40c 8b5604 43 83ea08 83c702 }
            // n = 5, score = 300
            //   83c40c               | add                 esp, 0xc
            //   8b5604               | mov                 edx, dword ptr [esi + 4]
            //   43                   | inc                 ebx
            //   83ea08               | sub                 edx, 8
            //   83c702               | add                 edi, 2

        $sequence_8 = { 53 55 56 57 8d442410 68???????? }
            // n = 6, score = 300
            //   53                   | push                ebx
            //   55                   | push                ebp
            //   56                   | push                esi
            //   57                   | push                edi
            //   8d442410             | lea                 eax, [esp + 0x10]
            //   68????????           |                     

        $sequence_9 = { 8b4804 8b10 03ca 7420 }
            // n = 4, score = 300
            //   8b4804               | mov                 ecx, dword ptr [eax + 4]
            //   8b10                 | mov                 edx, dword ptr [eax]
            //   03ca                 | add                 ecx, edx
            //   7420                 | je                  0x22

    condition:
        7 of them and filesize < 344064
}