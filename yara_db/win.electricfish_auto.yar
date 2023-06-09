rule win_electricfish_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.electricfish."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.electricfish"
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
        $sequence_0 = { c3 68b6090000 68???????? 6a44 689a010000 6a14 e8???????? }
            // n = 7, score = 1200
            //   c3                   | ret                 
            //   68b6090000           | push                0x9b6
            //   68????????           |                     
            //   6a44                 | push                0x44
            //   689a010000           | push                0x19a
            //   6a14                 | push                0x14
            //   e8????????           |                     

        $sequence_1 = { f7db 23da ba02000000 83c40c c744241000000000 3bf2 7e37 }
            // n = 7, score = 1200
            //   f7db                 | neg                 ebx
            //   23da                 | and                 ebx, edx
            //   ba02000000           | mov                 edx, 2
            //   83c40c               | add                 esp, 0xc
            //   c744241000000000     | mov                 dword ptr [esp + 0x10], 0
            //   3bf2                 | cmp                 esi, edx
            //   7e37                 | jle                 0x39

        $sequence_2 = { e9???????? 8a9d3cffffff 6a48 8d4d88 57 80e301 51 }
            // n = 7, score = 1200
            //   e9????????           |                     
            //   8a9d3cffffff         | mov                 bl, byte ptr [ebp - 0xc4]
            //   6a48                 | push                0x48
            //   8d4d88               | lea                 ecx, [ebp - 0x78]
            //   57                   | push                edi
            //   80e301               | and                 bl, 1
            //   51                   | push                ecx

        $sequence_3 = { 8b442410 8d8800feffff 81f9003e0000 771f 8b4c2408 89814c010000 3b8148010000 }
            // n = 7, score = 1200
            //   8b442410             | mov                 eax, dword ptr [esp + 0x10]
            //   8d8800feffff         | lea                 ecx, [eax - 0x200]
            //   81f9003e0000         | cmp                 ecx, 0x3e00
            //   771f                 | ja                  0x21
            //   8b4c2408             | mov                 ecx, dword ptr [esp + 8]
            //   89814c010000         | mov                 dword ptr [ecx + 0x14c], eax
            //   3b8148010000         | cmp                 eax, dword ptr [ecx + 0x148]

        $sequence_4 = { bd01000000 d1f8 3bc5 7c4d 90 57 56 }
            // n = 7, score = 1200
            //   bd01000000           | mov                 ebp, 1
            //   d1f8                 | sar                 eax, 1
            //   3bc5                 | cmp                 eax, ebp
            //   7c4d                 | jl                  0x4f
            //   90                   | nop                 
            //   57                   | push                edi
            //   56                   | push                esi

        $sequence_5 = { eb25 68da090000 68???????? 6893000000 c7450032000000 689d010000 6a14 }
            // n = 7, score = 1200
            //   eb25                 | jmp                 0x27
            //   68da090000           | push                0x9da
            //   68????????           |                     
            //   6893000000           | push                0x93
            //   c7450032000000       | mov                 dword ptr [ebp], 0x32
            //   689d010000           | push                0x19d
            //   6a14                 | push                0x14

        $sequence_6 = { 8b542408 8b4a64 f6413410 7522 68f1040000 68???????? 689e000000 }
            // n = 7, score = 1200
            //   8b542408             | mov                 edx, dword ptr [esp + 8]
            //   8b4a64               | mov                 ecx, dword ptr [edx + 0x64]
            //   f6413410             | test                byte ptr [ecx + 0x34], 0x10
            //   7522                 | jne                 0x24
            //   68f1040000           | push                0x4f1
            //   68????????           |                     
            //   689e000000           | push                0x9e

        $sequence_7 = { 85c0 7514 6853030000 68???????? 6884010000 e9???????? 8b87b0000000 }
            // n = 7, score = 1200
            //   85c0                 | test                eax, eax
            //   7514                 | jne                 0x16
            //   6853030000           | push                0x353
            //   68????????           |                     
            //   6884010000           | push                0x184
            //   e9????????           |                     
            //   8b87b0000000         | mov                 eax, dword ptr [edi + 0xb0]

        $sequence_8 = { c744241400000000 e8???????? 83c404 85c0 7523 6862050000 68???????? }
            // n = 7, score = 1200
            //   c744241400000000     | mov                 dword ptr [esp + 0x14], 0
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   85c0                 | test                eax, eax
            //   7523                 | jne                 0x25
            //   6862050000           | push                0x562
            //   68????????           |                     

        $sequence_9 = { 5e c3 837e5000 740e 680b010000 68???????? 6a42 }
            // n = 7, score = 1200
            //   5e                   | pop                 esi
            //   c3                   | ret                 
            //   837e5000             | cmp                 dword ptr [esi + 0x50], 0
            //   740e                 | je                  0x10
            //   680b010000           | push                0x10b
            //   68????????           |                     
            //   6a42                 | push                0x42

    condition:
        7 of them and filesize < 3162112
}