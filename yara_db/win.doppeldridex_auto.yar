rule win_doppeldridex_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.doppeldridex."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.doppeldridex"
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
        $sequence_0 = { 57 53 83ec24 33c0 }
            // n = 4, score = 1200
            //   57                   | push                edi
            //   53                   | push                ebx
            //   83ec24               | sub                 esp, 0x24
            //   33c0                 | xor                 eax, eax

        $sequence_1 = { 57 53 81ecd4000000 89942490000000 }
            // n = 4, score = 1200
            //   57                   | push                edi
            //   53                   | push                ebx
            //   81ecd4000000         | sub                 esp, 0xd4
            //   89942490000000       | mov                 dword ptr [esp + 0x90], edx

        $sequence_2 = { 57 53 8bd9 8b7c2410 }
            // n = 4, score = 1200
            //   57                   | push                edi
            //   53                   | push                ebx
            //   8bd9                 | mov                 ebx, ecx
            //   8b7c2410             | mov                 edi, dword ptr [esp + 0x10]

        $sequence_3 = { 57 53 83ec20 8bf9 }
            // n = 4, score = 1200
            //   57                   | push                edi
            //   53                   | push                ebx
            //   83ec20               | sub                 esp, 0x20
            //   8bf9                 | mov                 edi, ecx

        $sequence_4 = { 57 53 8bc1 8b7c240c }
            // n = 4, score = 1200
            //   57                   | push                edi
            //   53                   | push                ebx
            //   8bc1                 | mov                 eax, ecx
            //   8b7c240c             | mov                 edi, dword ptr [esp + 0xc]

        $sequence_5 = { 33d2 3b7c2414 0f4cd3 032c24 03ee 2bea }
            // n = 6, score = 1200
            //   33d2                 | xor                 edx, edx
            //   3b7c2414             | cmp                 edi, dword ptr [esp + 0x14]
            //   0f4cd3               | cmovl               edx, ebx
            //   032c24               | add                 ebp, dword ptr [esp]
            //   03ee                 | add                 ebp, esi
            //   2bea                 | sub                 ebp, edx

        $sequence_6 = { 57 53 81ec00040000 8bf2 8b3d???????? 8bd9 803d????????00 }
            // n = 7, score = 1200
            //   57                   | push                edi
            //   53                   | push                ebx
            //   81ec00040000         | sub                 esp, 0x400
            //   8bf2                 | mov                 esi, edx
            //   8b3d????????         |                     
            //   8bd9                 | mov                 ebx, ecx
            //   803d????????00       |                     

        $sequence_7 = { 57 53 81ec10050000 8bfa }
            // n = 4, score = 1200
            //   57                   | push                edi
            //   53                   | push                ebx
            //   81ec10050000         | sub                 esp, 0x510
            //   8bfa                 | mov                 edi, edx

        $sequence_8 = { a1???????? ffd0 8945cc eb98 8b45ec }
            // n = 5, score = 100
            //   a1????????           |                     
            //   ffd0                 | call                eax
            //   8945cc               | mov                 dword ptr [ebp - 0x34], eax
            //   eb98                 | jmp                 0xffffff9a
            //   8b45ec               | mov                 eax, dword ptr [ebp - 0x14]

        $sequence_9 = { 72b9 eb15 8b45e8 89c1 83c106 }
            // n = 5, score = 100
            //   72b9                 | jb                  0xffffffbb
            //   eb15                 | jmp                 0x17
            //   8b45e8               | mov                 eax, dword ptr [ebp - 0x18]
            //   89c1                 | mov                 ecx, eax
            //   83c106               | add                 ecx, 6

        $sequence_10 = { 890424 894c2404 e8???????? 8d0d34302d00 31d2 8b75f8 894608 }
            // n = 7, score = 100
            //   890424               | mov                 dword ptr [esp], eax
            //   894c2404             | mov                 dword ptr [esp + 4], ecx
            //   e8????????           |                     
            //   8d0d34302d00         | lea                 ecx, [0x2d3034]
            //   31d2                 | xor                 edx, edx
            //   8b75f8               | mov                 esi, dword ptr [ebp - 8]
            //   894608               | mov                 dword ptr [esi + 8], eax

        $sequence_11 = { 8945f4 894df0 8955ec 752b 8b45ec 83c418 }
            // n = 6, score = 100
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax
            //   894df0               | mov                 dword ptr [ebp - 0x10], ecx
            //   8955ec               | mov                 dword ptr [ebp - 0x14], edx
            //   752b                 | jne                 0x2d
            //   8b45ec               | mov                 eax, dword ptr [ebp - 0x14]
            //   83c418               | add                 esp, 0x18

        $sequence_12 = { 897db4 8b7e5c 897db8 8b7e2c 897dbc }
            // n = 5, score = 100
            //   897db4               | mov                 dword ptr [ebp - 0x4c], edi
            //   8b7e5c               | mov                 edi, dword ptr [esi + 0x5c]
            //   897db8               | mov                 dword ptr [ebp - 0x48], edi
            //   8b7e2c               | mov                 edi, dword ptr [esi + 0x2c]
            //   897dbc               | mov                 dword ptr [ebp - 0x44], edi

        $sequence_13 = { 83f800 8945e0 74c2 eb9b 8b45f0 }
            // n = 5, score = 100
            //   83f800               | cmp                 eax, 0
            //   8945e0               | mov                 dword ptr [ebp - 0x20], eax
            //   74c2                 | je                  0xffffffc4
            //   eb9b                 | jmp                 0xffffff9d
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]

        $sequence_14 = { 8b45e4 8b4dc0 034110 89c2 }
            // n = 4, score = 100
            //   8b45e4               | mov                 eax, dword ptr [ebp - 0x1c]
            //   8b4dc0               | mov                 ecx, dword ptr [ebp - 0x40]
            //   034110               | add                 eax, dword ptr [ecx + 0x10]
            //   89c2                 | mov                 edx, eax

        $sequence_15 = { 83fa20 0f92c4 8a6db3 20cd }
            // n = 4, score = 100
            //   83fa20               | cmp                 edx, 0x20
            //   0f92c4               | setb                ah
            //   8a6db3               | mov                 ch, byte ptr [ebp - 0x4d]
            //   20cd                 | and                 ch, cl

    condition:
        7 of them and filesize < 360448
}