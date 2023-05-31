rule win_purplefox_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.purplefox."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.purplefox"
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
        $sequence_0 = { 57 ff15???????? 8bf0 85f6 7914 6a00 }
            // n = 6, score = 100
            //   57                   | push                edi
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   85f6                 | test                esi, esi
            //   7914                 | jns                 0x16
            //   6a00                 | push                0

        $sequence_1 = { 833900 7507 33c0 4883c448 c3 }
            // n = 5, score = 100
            //   833900               | mov                 dh, 0xf8
            //   7507                 | inc                 ebx
            //   33c0                 | or                  al, dl
            //   4883c448             | mov                 cl, 0xa0
            //   c3                   | push                ds

        $sequence_2 = { 017fd5 13955bdb9187 e465 8bfa }
            // n = 4, score = 100
            //   017fd5               | lea                 eax, [ebp + 0x6f]
            //   13955bdb9187         | mov                 edx, dword ptr [esp + 0x58]
            //   e465                 | mov                 dword ptr [esp], edi
            //   8bfa                 | mov                 byte ptr [esp + 4], dh

        $sequence_3 = { 723e 488d0568d60000 483bd8 7732 }
            // n = 4, score = 100
            //   723e                 | adc                 edx, dword ptr [ebp - 0x786e24a5]
            //   488d0568d60000       | in                  al, 0x65
            //   483bd8               | mov                 edi, edx
            //   7732                 | rol                 al, 6

        $sequence_4 = { 6808020000 50 89442420 89442424 }
            // n = 4, score = 100
            //   6808020000           | push                0x208
            //   50                   | push                eax
            //   89442420             | mov                 dword ptr [esp + 0x20], eax
            //   89442424             | mov                 dword ptr [esp + 0x24], eax

        $sequence_5 = { 4883c308 3bac2498000000 0f82e9feffff 4c8b7c2450 4c8b642458 }
            // n = 5, score = 100
            //   4883c308             | lea                 edx, [esp + 0x30]
            //   3bac2498000000       | dec                 eax
            //   0f82e9feffff         | lea                 ecx, [0x1eb9]
            //   4c8b7c2450           | mov                 byte ptr [eax - 0x45], 0xe0
            //   4c8b642458           | dec                 eax

        $sequence_6 = { 49c1fc05 4c8d3552720000 83e31f 486bdb58 4b8b34e6 bf01000000 }
            // n = 6, score = 100
            //   49c1fc05             | sub                 cl, 0xfc
            //   4c8d3552720000       | dec                 ch
            //   83e31f               | sub                 bl, al
            //   486bdb58             | sbb                 ch, ch
            //   4b8b34e6             | shld                cx, ax, 8
            //   bf01000000           | bound               eax, qword ptr [edx - 0x7107b84f]

        $sequence_7 = { 6282b147f88e b6f8 43 0ac2 b1a0 1e }
            // n = 6, score = 100
            //   6282b147f88e         | movsx               di, cl
            //   b6f8                 | bts                 di, di
            //   43                   | or                  edi, dword ptr [edi + 0x1bed2bd5]
            //   0ac2                 | test                eax, 0x3012e177
            //   b1a0                 | xor                 bl, bh
            //   1e                   | cmpsd               dword ptr [esi], dword ptr es:[edi]

        $sequence_8 = { 8b550c 89560c eb36 8b4510 8b4d0c 6a00 }
            // n = 6, score = 100
            //   8b550c               | mov                 edx, dword ptr [ebp + 0xc]
            //   89560c               | mov                 dword ptr [esi + 0xc], edx
            //   eb36                 | jmp                 0x38
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   6a00                 | push                0

        $sequence_9 = { ff15???????? e9???????? 418bee 4439b42498000000 0f8632010000 4c897c2450 }
            // n = 6, score = 100
            //   ff15????????         |                     
            //   e9????????           |                     
            //   418bee               | mov                 eax, edi
            //   4439b42498000000     | dec                 eax
            //   0f8632010000         | mov                 dword ptr [esp + 0x40], eax
            //   4c897c2450           | inc                 ecx

        $sequence_10 = { 53 8b1d???????? 740c 8b4604 50 ffd3 c70600000000 }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   8b1d????????         |                     
            //   740c                 | je                  0xe
            //   8b4604               | mov                 eax, dword ptr [esi + 4]
            //   50                   | push                eax
            //   ffd3                 | call                ebx
            //   c70600000000         | mov                 dword ptr [esi], 0

        $sequence_11 = { c1f905 8b0c8d000c4100 c1e006 8d44010c }
            // n = 4, score = 100
            //   c1f905               | sar                 ecx, 5
            //   8b0c8d000c4100       | mov                 ecx, dword ptr [ecx*4 + 0x410c00]
            //   c1e006               | shl                 eax, 6
            //   8d44010c             | lea                 eax, [ecx + eax + 0xc]

        $sequence_12 = { e9???????? 4c8d2d11940000 8bcb 488beb }
            // n = 4, score = 100
            //   e9????????           |                     
            //   4c8d2d11940000       | cmc                 
            //   8bcb                 | sbb                 al, 0x7e
            //   488beb               | add                 dword ptr [edi - 0x2b], edi

        $sequence_13 = { 68d7b091d6 29fb 660fbaef04 660fbef9 660fabff }
            // n = 5, score = 100
            //   68d7b091d6           | dec                 eax
            //   29fb                 | mov                 ecx, edi
            //   660fbaef04           | dec                 eax
            //   660fbef9             | lea                 ecx, [0x2014]
            //   660fabff             | dec                 eax

        $sequence_14 = { 8945f0 3bc3 7d16 8b55f8 52 ff15???????? 8b45f0 }
            // n = 7, score = 100
            //   8945f0               | mov                 dword ptr [ebp - 0x10], eax
            //   3bc3                 | cmp                 eax, ebx
            //   7d16                 | jge                 0x18
            //   8b55f8               | mov                 edx, dword ptr [ebp - 8]
            //   52                   | push                edx
            //   ff15????????         |                     
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]

        $sequence_15 = { 488d0d14200000 ff15???????? 488d4c2430 e8???????? }
            // n = 4, score = 100
            //   488d0d14200000       | lea                 ecx, [0x1ecb]
            //   ff15????????         |                     
            //   488d4c2430           | dec                 eax
            //   e8????????           |                     

        $sequence_16 = { ff15???????? 488be8 0f1f4000 8bcf }
            // n = 4, score = 100
            //   ff15????????         |                     
            //   488be8               | pushal              
            //   0f1f4000             | mov                 word ptr [esp + 0x2c], 0x5c2d
            //   8bcf                 | dec                 eax

        $sequence_17 = { bb08000000 4889bc2480020000 4c895c2448 488d9590010000 }
            // n = 4, score = 100
            //   bb08000000           | mov                 ebp, esi
            //   4889bc2480020000     | inc                 esp
            //   4c895c2448           | cmp                 dword ptr [esp + 0x98], esi
            //   488d9590010000       | jbe                 0x138

        $sequence_18 = { 56 ffd7 8b55f4 8b4d0c }
            // n = 4, score = 100
            //   56                   | push                esi
            //   ffd7                 | call                edi
            //   8b55f4               | mov                 edx, dword ptr [ebp - 0xc]
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]

        $sequence_19 = { 049f 40 0030 9f 40 00549f40 }
            // n = 6, score = 100
            //   049f                 | add                 al, 0x9f
            //   40                   | inc                 eax
            //   0030                 | add                 byte ptr [eax], dh
            //   9f                   | lahf                
            //   40                   | inc                 eax
            //   00549f40             | add                 byte ptr [edi + ebx*4 + 0x40], dl

        $sequence_20 = { e8???????? 33c0 0175dc 6800040000 }
            // n = 4, score = 100
            //   e8????????           |                     
            //   33c0                 | xor                 eax, eax
            //   0175dc               | add                 dword ptr [ebp - 0x24], esi
            //   6800040000           | push                0x400

        $sequence_21 = { c0c006 80e9fc fecd 28c3 18ed 660fa4c108 }
            // n = 6, score = 100
            //   c0c006               | mov                 byte ptr [esp], ah
            //   80e9fc               | mov                 word ptr [esp + 4], cx
            //   fecd                 | push                dword ptr [esp + 0x5c]
            //   28c3                 | push                0xd691b0d7
            //   18ed                 | sub                 ebx, edi
            //   660fa4c108           | bts                 di, 4

        $sequence_22 = { 8945e8 8d560e 8955e8 668b460c 8b5508 6a01 }
            // n = 6, score = 100
            //   8945e8               | mov                 dword ptr [ebp - 0x18], eax
            //   8d560e               | lea                 edx, [esi + 0xe]
            //   8955e8               | mov                 dword ptr [ebp - 0x18], edx
            //   668b460c             | mov                 ax, word ptr [esi + 0xc]
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   6a01                 | push                1

        $sequence_23 = { 7514 c1e902 83e203 83f908 7229 f3a5 ff2495c06c4000 }
            // n = 7, score = 100
            //   7514                 | jne                 0x16
            //   c1e902               | shr                 ecx, 2
            //   83e203               | and                 edx, 3
            //   83f908               | cmp                 ecx, 8
            //   7229                 | jb                  0x2b
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   ff2495c06c4000       | jmp                 dword ptr [edx*4 + 0x406cc0]

        $sequence_24 = { 0bbfd52bed1b a977e11230 32df a7 }
            // n = 4, score = 100
            //   0bbfd52bed1b         | lea                 ecx, [esp + 0x30]
            //   a977e11230           | dec                 eax
            //   32df                 | add                 ebx, 8
            //   a7                   | cmp                 ebp, dword ptr [esp + 0x98]

        $sequence_25 = { 8d45f4 50 8b45f8 6a00 52 6800000080 6a00 }
            // n = 7, score = 100
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   50                   | push                eax
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   6a00                 | push                0
            //   52                   | push                edx
            //   6800000080           | push                0x80000000
            //   6a00                 | push                0

        $sequence_26 = { 8b7508 8d34f518fc4000 391e 7404 8bc7 eb6d 6a18 }
            // n = 7, score = 100
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   8d34f518fc4000       | lea                 esi, [esi*8 + 0x40fc18]
            //   391e                 | cmp                 dword ptr [esi], ebx
            //   7404                 | je                  6
            //   8bc7                 | mov                 eax, edi
            //   eb6d                 | jmp                 0x6f
            //   6a18                 | push                0x18

        $sequence_27 = { c640bbe0 488d4c2430 488948f8 488b4f10 }
            // n = 4, score = 100
            //   c640bbe0             | mov                 dword ptr [esp + 0x280], edi
            //   488d4c2430           | dec                 esp
            //   488948f8             | mov                 dword ptr [esp + 0x48], ebx
            //   488b4f10             | dec                 eax

        $sequence_28 = { 488d0d27b10000 4533c9 4533c0 ba000000c0 }
            // n = 4, score = 100
            //   488d0d27b10000       | mov                 ecx, dword ptr [ebx + 0x130]
            //   4533c9               | dec                 eax
            //   4533c0               | mov                 ecx, dword ptr [ebx + 0x158]
            //   ba000000c0           | dec                 eax

        $sequence_29 = { e8???????? 488b8b30010000 e8???????? 488b8b58010000 488d05ac8e0000 }
            // n = 5, score = 100
            //   e8????????           |                     
            //   488b8b30010000       | jge                 0xffffffa6
            //   e8????????           |                     
            //   488b8b58010000       | in                  eax, 0x23
            //   488d05ac8e0000       | jbe                 0x41

        $sequence_30 = { 0f8478010000 bf08020000 488d4c2470 33d2 448bc7 4889442440 }
            // n = 6, score = 100
            //   0f8478010000         | je                  0x17e
            //   bf08020000           | mov                 edi, 0x208
            //   488d4c2470           | dec                 eax
            //   33d2                 | lea                 ecx, [esp + 0x70]
            //   448bc7               | xor                 edx, edx
            //   4889442440           | inc                 esp

        $sequence_31 = { eb02 33f6 8bfe 897308 e8???????? 33ff }
            // n = 6, score = 100
            //   eb02                 | jmp                 4
            //   33f6                 | xor                 esi, esi
            //   8bfe                 | mov                 edi, esi
            //   897308               | mov                 dword ptr [ebx + 8], esi
            //   e8????????           |                     
            //   33ff                 | xor                 edi, edi

        $sequence_32 = { 647da3 e523 763d f5 1c7e }
            // n = 5, score = 100
            //   647da3               | pop                 ebp
            //   e523                 | ret                 
            //   763d                 | dec                 eax
            //   f5                   | mov                 ecx, dword ptr [ebp + 0x77]
            //   1c7e                 | dec                 eax

        $sequence_33 = { 817d0063736de0 7528 48833d????????00 741e 488d0d599a0000 }
            // n = 5, score = 100
            //   817d0063736de0       | pushal              
            //   7528                 | mov                 byte ptr [esp + 4], al
            //   48833d????????00     |                     
            //   741e                 | mov                 byte ptr [esp], 0x32
            //   488d0d599a0000       | mov                 dword ptr [ebp + 4], edx

        $sequence_34 = { c70424e4dceabe 8d642444 0f8576eb0500 e8???????? f5 2c30 683aa15480 }
            // n = 7, score = 100
            //   c70424e4dceabe       | jb                  0xfffffef6
            //   8d642444             | dec                 esp
            //   0f8576eb0500         | mov                 edi, dword ptr [esp + 0x50]
            //   e8????????           |                     
            //   f5                   | dec                 esp
            //   2c30                 | mov                 esp, dword ptr [esp + 0x58]
            //   683aa15480           | pop                 ebx

        $sequence_35 = { 2bc2 d1f8 0f84d6020000 33c0 8944240c 89442410 57 }
            // n = 7, score = 100
            //   2bc2                 | sub                 eax, edx
            //   d1f8                 | sar                 eax, 1
            //   0f84d6020000         | je                  0x2dc
            //   33c0                 | xor                 eax, eax
            //   8944240c             | mov                 dword ptr [esp + 0xc], eax
            //   89442410             | mov                 dword ptr [esp + 0x10], eax
            //   57                   | push                edi

        $sequence_36 = { 488b4828 48897110 488931 488bcf ff15???????? }
            // n = 5, score = 100
            //   488b4828             | lea                 edx, [ebp + 0x190]
            //   48897110             | dec                 eax
            //   488931               | lea                 edx, [esp + 0x20]
            //   488bcf               | dec                 eax
            //   ff15????????         |                     

        $sequence_37 = { 8b542458 893c24 88742404 882424 66894c2404 ff74245c }
            // n = 6, score = 100
            //   8b542458             | dec                 eax
            //   893c24               | mov                 ecx, dword ptr [eax + 0x28]
            //   88742404             | dec                 eax
            //   882424               | mov                 dword ptr [ecx + 0x10], esi
            //   66894c2404           | dec                 eax
            //   ff74245c             | mov                 dword ptr [ecx], esi

        $sequence_38 = { 6a00 6a00 8d95fcfdffff 52 6a00 6a03 6a01 }
            // n = 7, score = 100
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   8d95fcfdffff         | lea                 edx, [ebp - 0x204]
            //   52                   | push                edx
            //   6a00                 | push                0
            //   6a03                 | push                3
            //   6a01                 | push                1

        $sequence_39 = { 488d542420 488d0dcb1e0000 ff15???????? 488d542430 488d0db91e0000 }
            // n = 5, score = 100
            //   488d542420           | dec                 esp
            //   488d0dcb1e0000       | mov                 dword ptr [esp + 0x50], edi
            //   ff15????????         |                     
            //   488d542430           | mov                 ebx, 8
            //   488d0db91e0000       | dec                 eax

    condition:
        7 of them and filesize < 1983488
}