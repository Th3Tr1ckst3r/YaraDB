rule win_kimsuky_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.kimsuky."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kimsuky"
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
        $sequence_0 = { 8d95f0fcffff b9???????? e8???????? 8d95ecfbffff }
            // n = 4, score = 400
            //   8d95f0fcffff         | lea                 edx, [ebp - 0x310]
            //   b9????????           |                     
            //   e8????????           |                     
            //   8d95ecfbffff         | lea                 edx, [ebp - 0x414]

        $sequence_1 = { 68???????? ff15???????? 6a00 8d85e8fdffff 50 }
            // n = 5, score = 400
            //   68????????           |                     
            //   ff15????????         |                     
            //   6a00                 | push                0
            //   8d85e8fdffff         | lea                 eax, [ebp - 0x218]
            //   50                   | push                eax

        $sequence_2 = { ffd7 a3???????? 8d85ccf3ffff 50 56 }
            // n = 5, score = 400
            //   ffd7                 | call                edi
            //   a3????????           |                     
            //   8d85ccf3ffff         | lea                 eax, [ebp - 0xc34]
            //   50                   | push                eax
            //   56                   | push                esi

        $sequence_3 = { 8bd8 85db 7510 5e }
            // n = 4, score = 400
            //   8bd8                 | mov                 ebx, eax
            //   85db                 | test                ebx, ebx
            //   7510                 | jne                 0x12
            //   5e                   | pop                 esi

        $sequence_4 = { 85c0 7516 ff15???????? 8bd8 e8???????? }
            // n = 5, score = 400
            //   85c0                 | test                eax, eax
            //   7516                 | jne                 0x18
            //   ff15????????         |                     
            //   8bd8                 | mov                 ebx, eax
            //   e8????????           |                     

        $sequence_5 = { 8945fc 56 8b7508 56 ff15???????? 6804010000 }
            // n = 6, score = 400
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   56                   | push                esi
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   56                   | push                esi
            //   ff15????????         |                     
            //   6804010000           | push                0x104

        $sequence_6 = { 7423 6a00 8d85f0feffff 50 68???????? ff15???????? }
            // n = 6, score = 400
            //   7423                 | je                  0x25
            //   6a00                 | push                0
            //   8d85f0feffff         | lea                 eax, [ebp - 0x110]
            //   50                   | push                eax
            //   68????????           |                     
            //   ff15????????         |                     

        $sequence_7 = { 7504 b03d eb09 0fb6c7 }
            // n = 4, score = 400
            //   7504                 | jne                 6
            //   b03d                 | mov                 al, 0x3d
            //   eb09                 | jmp                 0xb
            //   0fb6c7               | movzx               eax, bh

        $sequence_8 = { 8d85f8feffff 6804010000 50 e8???????? 83c418 8d85f8feffff 6a00 }
            // n = 7, score = 400
            //   8d85f8feffff         | lea                 eax, [ebp - 0x108]
            //   6804010000           | push                0x104
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c418               | add                 esp, 0x18
            //   8d85f8feffff         | lea                 eax, [ebp - 0x108]
            //   6a00                 | push                0

        $sequence_9 = { 0f8540feffff 488b6c2460 4c637d3c 33c9 41b800300000 4c03fd }
            // n = 6, score = 300
            //   0f8540feffff         | inc                 ebp
            //   488b6c2460           | xor                 esp, esp
            //   4c637d3c             | dec                 esp
            //   33c9                 | mov                 dword ptr [esp + 0x68], edi
            //   41b800300000         | dec                 eax
            //   4c03fd               | mov                 ebp, eax

        $sequence_10 = { 468b540f20 468b5c0f24 4d03d1 4d03d9 666666660f1f840000000000 }
            // n = 5, score = 300
            //   468b540f20           | dec                 eax
            //   468b5c0f24           | mov                 ebp, dword ptr [esp + 0x70]
            //   4d03d1               | dec                 ebp
            //   4d03d9               | mov                 eax, esi
            //   666666660f1f840000000000     | dec    ebp

        $sequence_11 = { 448d4940 418b5750 4c897c2460 ffd6 458b4754 488bd5 4c8bf0 }
            // n = 7, score = 300
            //   448d4940             | sub                 esp, 0x40
            //   418b5750             | dec                 eax
            //   4c897c2460           | mov                 dword ptr [esp + 0x70], ebp
            //   ffd6                 | dec                 eax
            //   458b4754             | mov                 dword ptr [esp + 0x38], esi
            //   488bd5               | inc                 ebp
            //   4c8bf0               | xor                 edi, edi

        $sequence_12 = { 0f857affffff 4c8b7c2460 4c8b6c2420 4c8b642428 }
            // n = 4, score = 300
            //   0f857affffff         | push                esi
            //   4c8b7c2460           | inc                 ecx
            //   4c8b6c2420           | push                edi
            //   4c8b642428           | dec                 eax

        $sequence_13 = { 33f6 4533ed 4533e4 4c897c2468 e8???????? 488be8 b84d5a0000 }
            // n = 7, score = 300
            //   33f6                 | sub                 eax, dword ptr [edi + 0x30]
            //   4533ed               | inc                 esi
            //   4533e4               | mov                 edx, dword ptr [edi + ecx + 0x20]
            //   4c897c2468           | inc                 esi
            //   e8????????           |                     
            //   488be8               | mov                 ebx, dword ptr [edi + ecx + 0x24]
            //   b84d5a0000           | dec                 ebp

        $sequence_14 = { 4c8b642428 488b7c2430 488b742438 488b6c2470 4d8bc6 4d2b4730 }
            // n = 6, score = 300
            //   4c8b642428           | dec                 esp
            //   488b7c2430           | mov                 esp, dword ptr [esp + 0x28]
            //   488b742438           | dec                 eax
            //   488b6c2470           | mov                 edi, dword ptr [esp + 0x30]
            //   4d8bc6               | dec                 eax
            //   4d2b4730             | mov                 esi, dword ptr [esp + 0x38]

        $sequence_15 = { 4053 4156 4157 4883ec40 48896c2470 4889742438 4533ff }
            // n = 7, score = 300
            //   4053                 | add                 edx, ecx
            //   4156                 | dec                 ebp
            //   4157                 | add                 ebx, ecx
            //   4883ec40             | nop                 word ptr [eax + eax]
            //   48896c2470           | xor                 esi, esi
            //   4889742438           | inc                 ebp
            //   4533ff               | xor                 ebp, ebp

        $sequence_16 = { 85c0 7464 c7453038000000 33c0 }
            // n = 4, score = 200
            //   85c0                 | xor                 esi, esi
            //   7464                 | inc                 ebp
            //   c7453038000000       | xor                 ebp, ebp
            //   33c0                 | inc                 ebp

        $sequence_17 = { 8bbda0010000 8d4702 03c2 89442450 }
            // n = 4, score = 200
            //   8bbda0010000         | mov                 esi, eax
            //   8d4702               | inc                 ebp
            //   03c2                 | xor                 eax, eax
            //   89442450             | dec                 ecx

        $sequence_18 = { 4c89642430 c744242880000000 c744242002000000 4533c9 4533c0 ba00000040 }
            // n = 6, score = 200
            //   4c89642430           | sete                cl
            //   c744242880000000     | test                ecx, ecx
            //   c744242002000000     | je                  0x29f
            //   4533c9               | mov                 dword ptr [ebp + 0xa0], edi
            //   4533c0               | mov                 dword ptr [ebp + 0x30], edi
            //   ba00000040           | test                eax, eax

        $sequence_19 = { 85c0 0f8432020000 8b7590 660f1f440000 }
            // n = 4, score = 200
            //   85c0                 | test                eax, eax
            //   0f8432020000         | jne                 0x18
            //   8b7590               | mov                 ebx, eax
            //   660f1f440000         | test                eax, eax

        $sequence_20 = { ff15???????? 498bc6 488b4d20 4833cc e8???????? }
            // n = 5, score = 200
            //   ff15????????         |                     
            //   498bc6               | lea                 esi, [ebx + 0x40]
            //   488b4d20             | je                  0xa
            //   4833cc               | mov                 esi, 0x20
            //   e8????????           |                     

        $sequence_21 = { 8bf0 85c0 7471 895c2468 8d4801 }
            // n = 5, score = 200
            //   8bf0                 | mov                 eax, 0x5a4d
            //   85c0                 | inc                 eax
            //   7471                 | push                ebx
            //   895c2468             | inc                 ecx
            //   8d4801               | push                esi

        $sequence_22 = { 83f809 8d7340 7405 be20000000 c68424a000000000 33d2 }
            // n = 6, score = 200
            //   83f809               | mov                 dword ptr [esp + 0x70], ebp
            //   8d7340               | dec                 eax
            //   7405                 | mov                 dword ptr [esp + 0x38], esi
            //   be20000000           | inc                 ebp
            //   c68424a000000000     | xor                 edi, edi
            //   33d2                 | jne                 0xfffffe46

        $sequence_23 = { 488d8a38000000 e9???????? 488d8a28010000 e9???????? }
            // n = 4, score = 200
            //   488d8a38000000       | xor                 eax, eax
            //   e9????????           |                     
            //   488d8a28010000       | test                eax, eax
            //   e9????????           |                     

        $sequence_24 = { 894d90 8bc1 81fb00000001 0f97c0 }
            // n = 4, score = 200
            //   894d90               | jne                 0x18
            //   8bc1                 | mov                 ebx, eax
            //   81fb00000001         | imul                ebx, eax
            //   0f97c0               | test                eax, eax

        $sequence_25 = { 85c0 0f94c1 85c9 0f8494020000 }
            // n = 4, score = 200
            //   85c0                 | dec                 eax
            //   0f94c1               | mov                 ebp, dword ptr [esp + 0x60]
            //   85c9                 | dec                 esp
            //   0f8494020000         | arpl                word ptr [ebp + 0x3c], di

        $sequence_26 = { 895014 81c2a1ebd96e 418bc1 c1c005 }
            // n = 4, score = 100
            //   895014               | nop                 word ptr [eax + eax]
            //   81c2a1ebd96e         | mov                 dword ptr [ebp - 0x70], ecx
            //   418bc1               | mov                 eax, ecx
            //   c1c005               | cmp                 ebx, 0x1000000

        $sequence_27 = { 895014 81c2a1ebd96e 8bc3 c1c005 }
            // n = 4, score = 100
            //   895014               | mov                 ebx, eax
            //   81c2a1ebd96e         | imul                ebx, eax
            //   8bc3                 | test                eax, eax
            //   c1c005               | jne                 0x18

        $sequence_28 = { 895018 418bc2 4133c3 33c3 }
            // n = 4, score = 100
            //   895018               | lea                 ecx, [edx + 0x38]
            //   418bc2               | dec                 eax
            //   4133c3               | lea                 ecx, [edx + 0x128]
            //   33c3                 | dec                 esp

        $sequence_29 = { 895014 418bc1 4133c2 4133c3 41c1c31e }
            // n = 5, score = 100
            //   895014               | add                 eax, edx
            //   418bc1               | mov                 dword ptr [esp + 0x50], eax
            //   4133c2               | mov                 esi, eax
            //   4133c3               | mov                 edi, dword ptr [ebp + 0x1a0]
            //   41c1c31e             | lea                 eax, [edi + 2]

        $sequence_30 = { 895018 81c2a1ebd96e 418bc2 c1c005 }
            // n = 4, score = 100
            //   895018               | mov                 dword ptr [esp + 0x30], esp
            //   81c2a1ebd96e         | mov                 dword ptr [esp + 0x28], 0x80
            //   418bc2               | mov                 dword ptr [esp + 0x20], 2
            //   c1c005               | inc                 ebp

    condition:
        7 of them and filesize < 1021952
}