rule win_flame_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.flame."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.flame"
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
        $sequence_0 = { 83f901 7415 e8???????? c70016000000 e8???????? 83c8ff }
            // n = 6, score = 400
            //   83f901               | cmp                 ecx, 1
            //   7415                 | je                  0x17
            //   e8????????           |                     
            //   c70016000000         | mov                 dword ptr [eax], 0x16
            //   e8????????           |                     
            //   83c8ff               | or                  eax, 0xffffffff

        $sequence_1 = { 85c9 741a 83f901 7415 }
            // n = 4, score = 400
            //   85c9                 | test                ecx, ecx
            //   741a                 | je                  0x1c
            //   83f901               | cmp                 ecx, 1
            //   7415                 | je                  0x17

        $sequence_2 = { 85c0 75f2 5d c3 8b4910 894810 }
            // n = 6, score = 200
            //   85c0                 | dec                 eax
            //   75f2                 | sub                 eax, 2
            //   5d                   | inc                 ecx
            //   c3                   | cmp                 ebx, esi
            //   8b4910               | inc                 sp
            //   894810               | cmp                 dword ptr [eax], ebp

        $sequence_3 = { 8975e8 c706???????? 33db 895dfc c645fc01 }
            // n = 5, score = 200
            //   8975e8               | inc                 sp
            //   c706????????         |                     
            //   33db                 | cmp                 dword ptr [eax], ebp
            //   895dfc               | jne                 0xd
            //   c645fc01             | add                 ebx, ecx

        $sequence_4 = { 59 a3???????? 85c0 0f8425fdffff }
            // n = 4, score = 200
            //   59                   | cmp                 dword ptr [eax], ebp
            //   a3????????           |                     
            //   85c0                 | jne                 0xd
            //   0f8425fdffff         | add                 ebx, ecx

        $sequence_5 = { 66443928 750b 03d9 4883e802 }
            // n = 4, score = 200
            //   66443928             | inc                 bp
            //   750b                 | add                 eax, eax
            //   03d9                 | inc                 sp
            //   4883e802             | mov                 dword ptr [esp + edx*2 + 0x20], eax

        $sequence_6 = { 59 59 5b 5f c9 c3 }
            // n = 6, score = 200
            //   59                   | cmp                 dword ptr [eax], ebp
            //   59                   | jne                 0xd
            //   5b                   | add                 ebx, ecx
            //   5f                   | dec                 eax
            //   c9                   | sub                 eax, 2
            //   c3                   | inc                 sp

        $sequence_7 = { 664289549d02 448b5c2448 2bfe 85ff 75c2 2bd6 75a6 }
            // n = 7, score = 200
            //   664289549d02         | inc                 dx
            //   448b5c2448           | mov                 dword ptr [ebp + ebx*4 + 2], edx
            //   2bfe                 | inc                 esp
            //   85ff                 | mov                 ebx, dword ptr [esp + 0x48]
            //   75c2                 | sub                 edi, esi
            //   2bd6                 | test                edi, edi
            //   75a6                 | jne                 0xffffffc4

        $sequence_8 = { 51 56 50 ff73e4 }
            // n = 4, score = 200
            //   51                   | lea                 eax, [esi + 0x23]
            //   56                   | inc                 cx
            //   50                   | cmp                 eax, dword ptr [eax]
            //   ff73e4               | inc                 sp

        $sequence_9 = { 55 8bec 56 8b750c 2b7508 56 ff7508 }
            // n = 7, score = 200
            //   55                   | jne                 0xd
            //   8bec                 | add                 ebx, ecx
            //   56                   | dec                 eax
            //   8b750c               | sub                 eax, 2
            //   2b7508               | inc                 ecx
            //   56                   | cmp                 ebx, esi
            //   ff7508               | jae                 0xfffffffc

        $sequence_10 = { 6644017445d8 4103fe 4883c202 413bf8 }
            // n = 4, score = 200
            //   6644017445d8         | dec                 eax
            //   4103fe               | mov                 edx, dword ptr [ebp + 0x68]
            //   4883c202             | or                  ecx, 0xffffffff
            //   413bf8               | mov                 ebx, 0xf

        $sequence_11 = { 664403440420 664503c0 664489445420 4903d6 }
            // n = 4, score = 200
            //   664403440420         | cmp                 edi, eax
            //   664503c0             | inc                 sp
            //   664489445420         | add                 dword ptr [ebp + eax*2 - 0x28], esi
            //   4903d6               | inc                 ecx

        $sequence_12 = { 664403620c 4c8be9 488d5a10 49f7c00000ffff }
            // n = 4, score = 200
            //   664403620c           | add                 dword ptr [ebp + eax*2 - 0x28], esi
            //   4c8be9               | inc                 ecx
            //   488d5a10             | add                 edi, esi
            //   49f7c00000ffff       | dec                 eax

        $sequence_13 = { 6644017445b8 492bce 75ee 488b5568 }
            // n = 4, score = 200
            //   6644017445b8         | sub                 edx, esi
            //   492bce               | jne                 0xffffffa8
            //   75ee                 | inc                 sp
            //   488b5568             | add                 dword ptr [ebp + eax*2 - 0x48], esi

    condition:
        7 of them and filesize < 1676288
}