rule win_bundestrojaner_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.bundestrojaner."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bundestrojaner"
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
        $sequence_0 = { c1eb10 8988bc000000 8b1495c8f00310 81e3ff000000 33149dc8ec0310 8bd9 c1eb08 }
            // n = 7, score = 100
            //   c1eb10               | shr                 ebx, 0x10
            //   8988bc000000         | mov                 dword ptr [eax + 0xbc], ecx
            //   8b1495c8f00310       | mov                 edx, dword ptr [edx*4 + 0x1003f0c8]
            //   81e3ff000000         | and                 ebx, 0xff
            //   33149dc8ec0310       | xor                 edx, dword ptr [ebx*4 + 0x1003ecc8]
            //   8bd9                 | mov                 ebx, ecx
            //   c1eb08               | shr                 ebx, 8

        $sequence_1 = { 7d13 b801000000 50 56 e8???????? 83c408 }
            // n = 6, score = 100
            //   7d13                 | jge                 0x15
            //   b801000000           | mov                 eax, 1
            //   50                   | push                eax
            //   56                   | push                esi
            //   e8????????           |                     
            //   83c408               | add                 esp, 8

        $sequence_2 = { 8b475c 8d4f10 896c2414 8944242c 8d7002 66c7000000 e8???????? }
            // n = 7, score = 100
            //   8b475c               | mov                 eax, dword ptr [edi + 0x5c]
            //   8d4f10               | lea                 ecx, [edi + 0x10]
            //   896c2414             | mov                 dword ptr [esp + 0x14], ebp
            //   8944242c             | mov                 dword ptr [esp + 0x2c], eax
            //   8d7002               | lea                 esi, [eax + 2]
            //   66c7000000           | mov                 word ptr [eax], 0
            //   e8????????           |                     

        $sequence_3 = { 8978c0 8b7c2410 03fb 2bcf 8b7c2410 894840 8bce }
            // n = 7, score = 100
            //   8978c0               | mov                 dword ptr [eax - 0x40], edi
            //   8b7c2410             | mov                 edi, dword ptr [esp + 0x10]
            //   03fb                 | add                 edi, ebx
            //   2bcf                 | sub                 ecx, edi
            //   8b7c2410             | mov                 edi, dword ptr [esp + 0x10]
            //   894840               | mov                 dword ptr [eax + 0x40], ecx
            //   8bce                 | mov                 ecx, esi

        $sequence_4 = { 8d442440 8d4c2424 50 8d54243c 51 52 68a1000000 }
            // n = 7, score = 100
            //   8d442440             | lea                 eax, [esp + 0x40]
            //   8d4c2424             | lea                 ecx, [esp + 0x24]
            //   50                   | push                eax
            //   8d54243c             | lea                 edx, [esp + 0x3c]
            //   51                   | push                ecx
            //   52                   | push                edx
            //   68a1000000           | push                0xa1

        $sequence_5 = { c744242000000000 0f8e18010000 eb04 8b442430 8b542434 8b4d08 3bca }
            // n = 7, score = 100
            //   c744242000000000     | mov                 dword ptr [esp + 0x20], 0
            //   0f8e18010000         | jle                 0x11e
            //   eb04                 | jmp                 6
            //   8b442430             | mov                 eax, dword ptr [esp + 0x30]
            //   8b542434             | mov                 edx, dword ptr [esp + 0x34]
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   3bca                 | cmp                 ecx, edx

        $sequence_6 = { 8d148d04000000 8b4e0c 52 d805???????? 8d1488 52 50 }
            // n = 7, score = 100
            //   8d148d04000000       | lea                 edx, [ecx*4 + 4]
            //   8b4e0c               | mov                 ecx, dword ptr [esi + 0xc]
            //   52                   | push                edx
            //   d805????????         |                     
            //   8d1488               | lea                 edx, [eax + ecx*4]
            //   52                   | push                edx
            //   50                   | push                eax

        $sequence_7 = { 7509 c6451001 e9???????? 6a10 68???????? 56 e8???????? }
            // n = 7, score = 100
            //   7509                 | jne                 0xb
            //   c6451001             | mov                 byte ptr [ebp + 0x10], 1
            //   e9????????           |                     
            //   6a10                 | push                0x10
            //   68????????           |                     
            //   56                   | push                esi
            //   e8????????           |                     

        $sequence_8 = { 6a14 c644242401 884e3c 88563d 885e44 e8???????? 8bf8 }
            // n = 7, score = 100
            //   6a14                 | push                0x14
            //   c644242401           | mov                 byte ptr [esp + 0x24], 1
            //   884e3c               | mov                 byte ptr [esi + 0x3c], cl
            //   88563d               | mov                 byte ptr [esi + 0x3d], dl
            //   885e44               | mov                 byte ptr [esi + 0x44], bl
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax

        $sequence_9 = { 3bc8 0f8358010000 8b442428 8b54242c 3910 0f8348010000 8b442420 }
            // n = 7, score = 100
            //   3bc8                 | cmp                 ecx, eax
            //   0f8358010000         | jae                 0x15e
            //   8b442428             | mov                 eax, dword ptr [esp + 0x28]
            //   8b54242c             | mov                 edx, dword ptr [esp + 0x2c]
            //   3910                 | cmp                 dword ptr [eax], edx
            //   0f8348010000         | jae                 0x14e
            //   8b442420             | mov                 eax, dword ptr [esp + 0x20]

    condition:
        7 of them and filesize < 729088
}