rule win_chaperone_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.chaperone."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.chaperone"
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
        $sequence_0 = { 0fb60408 0fb64c2420 03c1 99 81e2ff000000 03c2 25ff000000 }
            // n = 7, score = 100
            //   0fb60408             | movzx               ecx, byte ptr [esp + 0x20]
            //   0fb64c2420           | add                 eax, ecx
            //   03c1                 | cdq                 
            //   99                   | and                 edx, 0xff
            //   81e2ff000000         | dec                 eax
            //   03c2                 | mov                 eax, dword ptr [esp + 0x38]
            //   25ff000000           | movzx               ecx, byte ptr [eax + ecx]

        $sequence_1 = { 488d542440 488b8c2498070000 e8???????? 488d542440 488d8c24a0020000 ff15???????? 66ba5c00 }
            // n = 7, score = 100
            //   488d542440           | mov                 word ptr [ecx + 0x648], ax
            //   488b8c2498070000     | dec                 eax
            //   e8????????           |                     
            //   488d542440           | mov                 ecx, dword ptr [esp + 0x730]
            //   488d8c24a0020000     | dec                 eax
            //   ff15????????         |                     
            //   66ba5c00             | add                 ecx, 0x30

        $sequence_2 = { e8???????? 85c0 742d 488d0567a70100 4883c310 }
            // n = 5, score = 100
            //   e8????????           |                     
            //   85c0                 | mov                 ecx, esi
            //   742d                 | dec                 eax
            //   488d0567a70100       | mov                 eax, esi
            //   4883c310             | dec                 eax

        $sequence_3 = { ff15???????? 488905???????? 48833d????????00 750b c78424c801000003000000 }
            // n = 5, score = 100
            //   ff15????????         |                     
            //   488905????????       |                     
            //   48833d????????00     |                     
            //   750b                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   c78424c801000003000000     | dec    eax

        $sequence_4 = { 488b842480020000 668908 4883bc24a803000000 7474 488b8c24a0030000 4883c10c 488b9424a8030000 }
            // n = 7, score = 100
            //   488b842480020000     | lea                 edx, [esp + 0x180]
            //   668908               | dec                 eax
            //   4883bc24a803000000     | mov    ecx, dword ptr [esp + 0x1a0]
            //   7474                 | je                  0x1dee
            //   488b8c24a0030000     | dec                 eax
            //   4883c10c             | lea                 edx, [esp + 0x280]
            //   488b9424a8030000     | dec                 eax

        $sequence_5 = { 488b4c2470 ff15???????? 89442478 837c247800 7510 }
            // n = 5, score = 100
            //   488b4c2470           | mov                 ecx, 0x1f0001
            //   ff15????????         |                     
            //   89442478             | dec                 esp
            //   837c247800           | lea                 ecx, [esp + 0x40]
            //   7510                 | dec                 esp

        $sequence_6 = { 488d8c0884000000 488d9424b0440000 ff15???????? c784244849000004010000 8b8c2424490000 4869c998040000 488b842400470000 }
            // n = 7, score = 100
            //   488d8c0884000000     | jmp                 0x53
            //   488d9424b0440000     | cmp                 dword ptr [esp + 0x30], 0
            //   ff15????????         |                     
            //   c784244849000004010000     | jne    0xd6
            //   8b8c2424490000       | jne                 0xc8
            //   4869c998040000       | mov                 dword ptr [esp + 0x48], 1
            //   488b842400470000     | jmp                 0x118

        $sequence_7 = { ff15???????? 488d8c2480020000 e8???????? c78424ec08000000000000 488dbc24c0080000 }
            // n = 5, score = 100
            //   ff15????????         |                     
            //   488d8c2480020000     | dec                 eax
            //   e8????????           |                     
            //   c78424ec08000000000000     | lea    ecx, [esp + 0x310]
            //   488dbc24c0080000     | dec                 eax

        $sequence_8 = { 8b400c 89442458 837c245800 740d 8b442458 35b6fe9537 }
            // n = 6, score = 100
            //   8b400c               | dec                 eax
            //   89442458             | lea                 edx, [0x1bd2b]
            //   837c245800           | dec                 eax
            //   740d                 | cmp                 dword ptr [eax - 0x10], edx
            //   8b442458             | je                  0xe6
            //   35b6fe9537           | dec                 eax

        $sequence_9 = { 83fa05 7d19 4863ca 0fb7444b10 664189844868740200 ffc2 89542420 }
            // n = 7, score = 100
            //   83fa05               | mov                 byte ptr [esp + 0x290], 0x53
            //   7d19                 | mov                 byte ptr [esp + 0x291], 0xb8
            //   4863ca               | mov                 byte ptr [esp + 0x28d], 0x20
            //   0fb7444b10           | mov                 byte ptr [esp + 0x28e], 0x71
            //   664189844868740200     | mov    byte ptr [esp + 0x28f], 0xf0
            //   ffc2                 | mov                 byte ptr [esp + 0x290], 0x53
            //   89542420             | mov                 byte ptr [esp + 0x291], 0xb8

    condition:
        7 of them and filesize < 373760
}