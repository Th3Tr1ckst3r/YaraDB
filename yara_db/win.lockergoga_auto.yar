rule win_lockergoga_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.lockergoga."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.lockergoga"
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
        $sequence_0 = { 7558 8d4dc0 8b07 51 8d4da8 8b5060 8d045b }
            // n = 7, score = 400
            //   7558                 | jne                 0x5a
            //   8d4dc0               | lea                 ecx, [ebp - 0x40]
            //   8b07                 | mov                 eax, dword ptr [edi]
            //   51                   | push                ecx
            //   8d4da8               | lea                 ecx, [ebp - 0x58]
            //   8b5060               | mov                 edx, dword ptr [eax + 0x60]
            //   8d045b               | lea                 eax, [ebx + ebx*2]

        $sequence_1 = { e8???????? 85ff 0f8473020000 897de8 bf9a050000 c745f000000000 8975e4 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   85ff                 | test                edi, edi
            //   0f8473020000         | je                  0x279
            //   897de8               | mov                 dword ptr [ebp - 0x18], edi
            //   bf9a050000           | mov                 edi, 0x59a
            //   c745f000000000       | mov                 dword ptr [ebp - 0x10], 0
            //   8975e4               | mov                 dword ptr [ebp - 0x1c], esi

        $sequence_2 = { 290b 897e44 740a 8b4634 034630 3bf8 7506 }
            // n = 7, score = 400
            //   290b                 | sub                 dword ptr [ebx], ecx
            //   897e44               | mov                 dword ptr [esi + 0x44], edi
            //   740a                 | je                  0xc
            //   8b4634               | mov                 eax, dword ptr [esi + 0x34]
            //   034630               | add                 eax, dword ptr [esi + 0x30]
            //   3bf8                 | cmp                 edi, eax
            //   7506                 | jne                 8

        $sequence_3 = { 8b16 8bce 85c0 7411 ff92a4000000 5e 8b08 }
            // n = 7, score = 400
            //   8b16                 | mov                 edx, dword ptr [esi]
            //   8bce                 | mov                 ecx, esi
            //   85c0                 | test                eax, eax
            //   7411                 | je                  0x13
            //   ff92a4000000         | call                dword ptr [edx + 0xa4]
            //   5e                   | pop                 esi
            //   8b08                 | mov                 ecx, dword ptr [eax]

        $sequence_4 = { ff90a4000000 8bc8 8b10 8b4240 ffd0 8b4df4 64890d00000000 }
            // n = 7, score = 400
            //   ff90a4000000         | call                dword ptr [eax + 0xa4]
            //   8bc8                 | mov                 ecx, eax
            //   8b10                 | mov                 edx, dword ptr [eax]
            //   8b4240               | mov                 eax, dword ptr [edx + 0x40]
            //   ffd0                 | call                eax
            //   8b4df4               | mov                 ecx, dword ptr [ebp - 0xc]
            //   64890d00000000       | mov                 dword ptr fs:[0], ecx

        $sequence_5 = { 8b49fc 83c223 2bc1 83c0fc 83f81f 0f87ab020000 52 }
            // n = 7, score = 400
            //   8b49fc               | mov                 ecx, dword ptr [ecx - 4]
            //   83c223               | add                 edx, 0x23
            //   2bc1                 | sub                 eax, ecx
            //   83c0fc               | add                 eax, -4
            //   83f81f               | cmp                 eax, 0x1f
            //   0f87ab020000         | ja                  0x2b1
            //   52                   | push                edx

        $sequence_6 = { 8bf0 83c404 8975fc 85f6 7422 57 8bce }
            // n = 7, score = 400
            //   8bf0                 | mov                 esi, eax
            //   83c404               | add                 esp, 4
            //   8975fc               | mov                 dword ptr [ebp - 4], esi
            //   85f6                 | test                esi, esi
            //   7422                 | je                  0x24
            //   57                   | push                edi
            //   8bce                 | mov                 ecx, esi

        $sequence_7 = { 83f81f 0f877f050000 53 51 e8???????? 8b4dd4 83c408 }
            // n = 7, score = 400
            //   83f81f               | cmp                 eax, 0x1f
            //   0f877f050000         | ja                  0x585
            //   53                   | push                ebx
            //   51                   | push                ecx
            //   e8????????           |                     
            //   8b4dd4               | mov                 ecx, dword ptr [ebp - 0x2c]
            //   83c408               | add                 esp, 8

        $sequence_8 = { 83c40c 85c0 7404 2bc3 eb03 83c8ff 48 }
            // n = 7, score = 400
            //   83c40c               | add                 esp, 0xc
            //   85c0                 | test                eax, eax
            //   7404                 | je                  6
            //   2bc3                 | sub                 eax, ebx
            //   eb03                 | jmp                 5
            //   83c8ff               | or                  eax, 0xffffffff
            //   48                   | dec                 eax

        $sequence_9 = { e8???????? 6a08 68???????? 8d4da8 c645fc0c c745b800000000 c745bc0f000000 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   6a08                 | push                8
            //   68????????           |                     
            //   8d4da8               | lea                 ecx, [ebp - 0x58]
            //   c645fc0c             | mov                 byte ptr [ebp - 4], 0xc
            //   c745b800000000       | mov                 dword ptr [ebp - 0x48], 0
            //   c745bc0f000000       | mov                 dword ptr [ebp - 0x44], 0xf

    condition:
        7 of them and filesize < 2588672
}