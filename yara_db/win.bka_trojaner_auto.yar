rule win_bka_trojaner_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.bka_trojaner."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bka_trojaner"
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
        $sequence_0 = { 6a04 5e 8a1f 47 83f80b 0f8768020000 ff2485a8964000 }
            // n = 7, score = 100
            //   6a04                 | push                4
            //   5e                   | pop                 esi
            //   8a1f                 | mov                 bl, byte ptr [edi]
            //   47                   | inc                 edi
            //   83f80b               | cmp                 eax, 0xb
            //   0f8768020000         | ja                  0x26e
            //   ff2485a8964000       | jmp                 dword ptr [eax*4 + 0x4096a8]

        $sequence_1 = { 85c0 7e12 393cb5f0ea4000 0f84fe000000 }
            // n = 4, score = 100
            //   85c0                 | test                eax, eax
            //   7e12                 | jle                 0x14
            //   393cb5f0ea4000       | cmp                 dword ptr [esi*4 + 0x40eaf0], edi
            //   0f84fe000000         | je                  0x104

        $sequence_2 = { 8b0e 8d54247c 52 50 }
            // n = 4, score = 100
            //   8b0e                 | mov                 ecx, dword ptr [esi]
            //   8d54247c             | lea                 edx, [esp + 0x7c]
            //   52                   | push                edx
            //   50                   | push                eax

        $sequence_3 = { 68???????? 6a00 ff15???????? 6a01 e8???????? 83c404 8d0424 }
            // n = 7, score = 100
            //   68????????           |                     
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   6a01                 | push                1
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   8d0424               | lea                 eax, [esp]

        $sequence_4 = { 8b420c 8d886cffffff 890c30 8b5604 8b4210 }
            // n = 5, score = 100
            //   8b420c               | mov                 eax, dword ptr [edx + 0xc]
            //   8d886cffffff         | lea                 ecx, [eax - 0x94]
            //   890c30               | mov                 dword ptr [eax + esi], ecx
            //   8b5604               | mov                 edx, dword ptr [esi + 4]
            //   8b4210               | mov                 eax, dword ptr [edx + 0x10]

        $sequence_5 = { 7513 83ff08 891d???????? 7508 8b4508 a3???????? 5b }
            // n = 7, score = 100
            //   7513                 | jne                 0x15
            //   83ff08               | cmp                 edi, 8
            //   891d????????         |                     
            //   7508                 | jne                 0xa
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   a3????????           |                     
            //   5b                   | pop                 ebx

        $sequence_6 = { ff7508 83c008 e8???????? 3b4514 59 752d 837df800 }
            // n = 7, score = 100
            //   ff7508               | push                dword ptr [ebp + 8]
            //   83c008               | add                 eax, 8
            //   e8????????           |                     
            //   3b4514               | cmp                 eax, dword ptr [ebp + 0x14]
            //   59                   | pop                 ecx
            //   752d                 | jne                 0x2f
            //   837df800             | cmp                 dword ptr [ebp - 8], 0

        $sequence_7 = { 7507 53 ffd7 03c3 }
            // n = 4, score = 100
            //   7507                 | jne                 9
            //   53                   | push                ebx
            //   ffd7                 | call                edi
            //   03c3                 | add                 eax, ebx

        $sequence_8 = { 8d4c2434 51 57 ffd3 85c0 7411 }
            // n = 6, score = 100
            //   8d4c2434             | lea                 ecx, [esp + 0x34]
            //   51                   | push                ecx
            //   57                   | push                edi
            //   ffd3                 | call                ebx
            //   85c0                 | test                eax, eax
            //   7411                 | je                  0x13

        $sequence_9 = { 728c 33d2 ff45fc 8b4310 8b4dfc 83c704 3b4808 }
            // n = 7, score = 100
            //   728c                 | jb                  0xffffff8e
            //   33d2                 | xor                 edx, edx
            //   ff45fc               | inc                 dword ptr [ebp - 4]
            //   8b4310               | mov                 eax, dword ptr [ebx + 0x10]
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   83c704               | add                 edi, 4
            //   3b4808               | cmp                 ecx, dword ptr [eax + 8]

    condition:
        7 of them and filesize < 221184
}