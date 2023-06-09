rule win_phorpiex_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-29"
        version = "1"
        description = "Detects win.phorpiex."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.phorpiex"
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
        $sequence_0 = { 6a00 ff15???????? ff15???????? 50 e8???????? }
            // n = 5, score = 1100
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   ff15????????         |                     
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_1 = { ff15???????? 85c0 740f 6a07 }
            // n = 4, score = 1100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   740f                 | je                  0x11
            //   6a07                 | push                7

        $sequence_2 = { ff15???????? 85c0 741f 6880000000 }
            // n = 4, score = 1000
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   741f                 | je                  0x21
            //   6880000000           | push                0x80

        $sequence_3 = { 83c410 6a00 6a02 6a02 }
            // n = 4, score = 900
            //   83c410               | add                 esp, 0x10
            //   6a00                 | push                0
            //   6a02                 | push                2
            //   6a02                 | push                2

        $sequence_4 = { 6a00 6a20 6a00 6a00 6a00 8b5508 }
            // n = 6, score = 900
            //   6a00                 | push                0
            //   6a20                 | push                0x20
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]

        $sequence_5 = { e8???????? 83c404 e8???????? e8???????? ff15???????? 6a00 }
            // n = 6, score = 800
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   e8????????           |                     
            //   e8????????           |                     
            //   ff15????????         |                     
            //   6a00                 | push                0

        $sequence_6 = { 6a01 6a00 68???????? e8???????? 83c40c 33c0 }
            // n = 6, score = 800
            //   6a01                 | push                1
            //   6a00                 | push                0
            //   68????????           |                     
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   33c0                 | xor                 eax, eax

        $sequence_7 = { e8???????? 99 b90d000000 f7f9 }
            // n = 4, score = 800
            //   e8????????           |                     
            //   99                   | cdq                 
            //   b90d000000           | mov                 ecx, 0xd
            //   f7f9                 | idiv                ecx

        $sequence_8 = { 52 683f000f00 6a00 68???????? 6802000080 ff15???????? 85c0 }
            // n = 7, score = 700
            //   52                   | push                edx
            //   683f000f00           | push                0xf003f
            //   6a00                 | push                0
            //   68????????           |                     
            //   6802000080           | push                0x80000002
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax

        $sequence_9 = { 6a00 6a00 682a800000 6a00 }
            // n = 4, score = 700
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   682a800000           | push                0x802a
            //   6a00                 | push                0

        $sequence_10 = { 6a01 ff15???????? ff15???????? b001 }
            // n = 4, score = 700
            //   6a01                 | push                1
            //   ff15????????         |                     
            //   ff15????????         |                     
            //   b001                 | mov                 al, 1

        $sequence_11 = { 68???????? ff15???????? 8d85f8fdffff 50 68???????? }
            // n = 5, score = 700
            //   68????????           |                     
            //   ff15????????         |                     
            //   8d85f8fdffff         | lea                 eax, [ebp - 0x208]
            //   50                   | push                eax
            //   68????????           |                     

        $sequence_12 = { ff15???????? 6a00 ff15???????? 85c0 7418 }
            // n = 5, score = 700
            //   ff15????????         |                     
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7418                 | je                  0x1a

        $sequence_13 = { e8???????? 99 b930750000 f7f9 81c210270000 }
            // n = 5, score = 600
            //   e8????????           |                     
            //   99                   | cdq                 
            //   b930750000           | mov                 ecx, 0x7530
            //   f7f9                 | idiv                ecx
            //   81c210270000         | add                 edx, 0x2710

        $sequence_14 = { 6a01 ff15???????? 8945f8 837df800 7429 8b45f8 }
            // n = 6, score = 600
            //   6a01                 | push                1
            //   ff15????????         |                     
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   837df800             | cmp                 dword ptr [ebp - 8], 0
            //   7429                 | je                  0x2b
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]

        $sequence_15 = { f7f9 81c210270000 52 e8???????? 99 }
            // n = 5, score = 600
            //   f7f9                 | idiv                ecx
            //   81c210270000         | add                 edx, 0x2710
            //   52                   | push                edx
            //   e8????????           |                     
            //   99                   | cdq                 

        $sequence_16 = { 68???????? ff15???????? e9???????? 8d45fc }
            // n = 4, score = 600
            //   68????????           |                     
            //   ff15????????         |                     
            //   e9????????           |                     
            //   8d45fc               | lea                 eax, [ebp - 4]

        $sequence_17 = { eb02 ebcd 8b95ecfeffff 3b95f0feffff 7528 }
            // n = 5, score = 600
            //   eb02                 | jmp                 4
            //   ebcd                 | jmp                 0xffffffcf
            //   8b95ecfeffff         | mov                 edx, dword ptr [ebp - 0x114]
            //   3b95f0feffff         | cmp                 edx, dword ptr [ebp - 0x110]
            //   7528                 | jne                 0x2a

        $sequence_18 = { 50 e8???????? 59 59 85c0 0f85c0000000 }
            // n = 6, score = 500
            //   50                   | push                eax
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx
            //   85c0                 | test                eax, eax
            //   0f85c0000000         | jne                 0xc6

        $sequence_19 = { 6a21 50 e8???????? c60000 }
            // n = 4, score = 500
            //   6a21                 | push                0x21
            //   50                   | push                eax
            //   e8????????           |                     
            //   c60000               | mov                 byte ptr [eax], 0

        $sequence_20 = { 3d00010000 7504 83c8ff c3 }
            // n = 4, score = 500
            //   3d00010000           | cmp                 eax, 0x100
            //   7504                 | jne                 6
            //   83c8ff               | or                  eax, 0xffffffff
            //   c3                   | ret                 

        $sequence_21 = { 3db7000000 7508 6a00 ff15???????? 6804010000 }
            // n = 5, score = 500
            //   3db7000000           | cmp                 eax, 0xb7
            //   7508                 | jne                 0xa
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   6804010000           | push                0x104

        $sequence_22 = { 75f9 2bc2 50 8d54242c 52 ff15???????? }
            // n = 6, score = 400
            //   75f9                 | jne                 0xfffffffb
            //   2bc2                 | sub                 eax, edx
            //   50                   | push                eax
            //   8d54242c             | lea                 edx, [esp + 0x2c]
            //   52                   | push                edx
            //   ff15????????         |                     

        $sequence_23 = { 7501 40 39510c 7501 40 }
            // n = 5, score = 400
            //   7501                 | jne                 3
            //   40                   | inc                 eax
            //   39510c               | cmp                 dword ptr [ecx + 0xc], edx
            //   7501                 | jne                 3
            //   40                   | inc                 eax

        $sequence_24 = { 83c40c e8???????? 99 b960ea0000 f7f9 }
            // n = 5, score = 400
            //   83c40c               | add                 esp, 0xc
            //   e8????????           |                     
            //   99                   | cdq                 
            //   b960ea0000           | mov                 ecx, 0xea60
            //   f7f9                 | idiv                ecx

        $sequence_25 = { 83f130 8d1492 46 8d1451 }
            // n = 4, score = 400
            //   83f130               | xor                 ecx, 0x30
            //   8d1492               | lea                 edx, [edx + edx*4]
            //   46                   | inc                 esi
            //   8d1451               | lea                 edx, [ecx + edx*2]

        $sequence_26 = { 663bc2 72f7 53 33c0 }
            // n = 4, score = 300
            //   663bc2               | cmp                 ax, dx
            //   72f7                 | jb                  0xfffffff9
            //   53                   | push                ebx
            //   33c0                 | xor                 eax, eax

        $sequence_27 = { 50 8d45ec 50 6805000020 }
            // n = 4, score = 300
            //   50                   | push                eax
            //   8d45ec               | lea                 eax, [ebp - 0x14]
            //   50                   | push                eax
            //   6805000020           | push                0x20000005

        $sequence_28 = { 56 57 68e8030000 ff15???????? e8???????? be???????? }
            // n = 6, score = 300
            //   56                   | push                esi
            //   57                   | push                edi
            //   68e8030000           | push                0x3e8
            //   ff15????????         |                     
            //   e8????????           |                     
            //   be????????           |                     

        $sequence_29 = { 50 8d45e0 50 6805000020 }
            // n = 4, score = 200
            //   50                   | push                eax
            //   8d45e0               | lea                 eax, [ebp - 0x20]
            //   50                   | push                eax
            //   6805000020           | push                0x20000005

    condition:
        7 of them and filesize < 2490368
}