rule win_cheesetray_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.cheesetray."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cheesetray"
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
        $sequence_0 = { 83c408 5b 8be5 5d c3 56 50 }
            // n = 7, score = 200
            //   83c408               | add                 esp, 8
            //   5b                   | pop                 ebx
            //   8be5                 | mov                 esp, ebp
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   56                   | push                esi
            //   50                   | push                eax

        $sequence_1 = { 8b4508 50 e8???????? 83c40c 894614 83f8ff 751b }
            // n = 7, score = 200
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   894614               | mov                 dword ptr [esi + 0x14], eax
            //   83f8ff               | cmp                 eax, -1
            //   751b                 | jne                 0x1d

        $sequence_2 = { 68c0d40100 6880000000 8d542448 52 57 e8???????? }
            // n = 6, score = 200
            //   68c0d40100           | push                0x1d4c0
            //   6880000000           | push                0x80
            //   8d542448             | lea                 edx, [esp + 0x48]
            //   52                   | push                edx
            //   57                   | push                edi
            //   e8????????           |                     

        $sequence_3 = { 85c9 7455 85ff 7451 85c0 7211 7708 }
            // n = 7, score = 200
            //   85c9                 | test                ecx, ecx
            //   7455                 | je                  0x57
            //   85ff                 | test                edi, edi
            //   7451                 | je                  0x53
            //   85c0                 | test                eax, eax
            //   7211                 | jb                  0x13
            //   7708                 | ja                  0xa

        $sequence_4 = { 83f82f 7505 83c102 ebee 8b4508 51 50 }
            // n = 7, score = 200
            //   83f82f               | cmp                 eax, 0x2f
            //   7505                 | jne                 7
            //   83c102               | add                 ecx, 2
            //   ebee                 | jmp                 0xfffffff0
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   51                   | push                ecx
            //   50                   | push                eax

        $sequence_5 = { 754e 53 57 8d3c8560a44400 833f00 bb00100000 7520 }
            // n = 7, score = 200
            //   754e                 | jne                 0x50
            //   53                   | push                ebx
            //   57                   | push                edi
            //   8d3c8560a44400       | lea                 edi, [eax*4 + 0x44a460]
            //   833f00               | cmp                 dword ptr [edi], 0
            //   bb00100000           | mov                 ebx, 0x1000
            //   7520                 | jne                 0x22

        $sequence_6 = { 8b742410 89442414 e9???????? 8b542418 57 }
            // n = 5, score = 200
            //   8b742410             | mov                 esi, dword ptr [esp + 0x10]
            //   89442414             | mov                 dword ptr [esp + 0x14], eax
            //   e9????????           |                     
            //   8b542418             | mov                 edx, dword ptr [esp + 0x18]
            //   57                   | push                edi

        $sequence_7 = { 3bd3 0f8c42ffffff 7f0a 3b442420 0f8236ffffff 85ff 7418 }
            // n = 7, score = 200
            //   3bd3                 | cmp                 edx, ebx
            //   0f8c42ffffff         | jl                  0xffffff48
            //   7f0a                 | jg                  0xc
            //   3b442420             | cmp                 eax, dword ptr [esp + 0x20]
            //   0f8236ffffff         | jb                  0xffffff3c
            //   85ff                 | test                edi, edi
            //   7418                 | je                  0x1a

        $sequence_8 = { 83c404 3bd3 0f8ff8000000 7c10 3b442420 0f83ec000000 8d9b00000000 }
            // n = 7, score = 200
            //   83c404               | add                 esp, 4
            //   3bd3                 | cmp                 edx, ebx
            //   0f8ff8000000         | jg                  0xfe
            //   7c10                 | jl                  0x12
            //   3b442420             | cmp                 eax, dword ptr [esp + 0x20]
            //   0f83ec000000         | jae                 0xf2
            //   8d9b00000000         | lea                 ebx, [ebx]

        $sequence_9 = { 8b80008b4400 3bf0 7e44 83ee07 eb3f 2503000080 7905 }
            // n = 7, score = 200
            //   8b80008b4400         | mov                 eax, dword ptr [eax + 0x448b00]
            //   3bf0                 | cmp                 esi, eax
            //   7e44                 | jle                 0x46
            //   83ee07               | sub                 esi, 7
            //   eb3f                 | jmp                 0x41
            //   2503000080           | and                 eax, 0x80000003
            //   7905                 | jns                 7

    condition:
        7 of them and filesize < 8626176
}