rule win_pay2key_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.pay2key."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.pay2key"
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
        $sequence_0 = { 8d4520 6a00 0f43c7 8d4d08 50 e8???????? 83f8ff }
            // n = 7, score = 300
            //   8d4520               | lea                 eax, [ebp + 0x20]
            //   6a00                 | push                0
            //   0f43c7               | cmovae              eax, edi
            //   8d4d08               | lea                 ecx, [ebp + 8]
            //   50                   | push                eax
            //   e8????????           |                     
            //   83f8ff               | cmp                 eax, -1

        $sequence_1 = { c7458c0f000000 c7458800000000 c68578ffffff00 e8???????? c745fc01000000 8d4d90 6a02 }
            // n = 7, score = 300
            //   c7458c0f000000       | mov                 dword ptr [ebp - 0x74], 0xf
            //   c7458800000000       | mov                 dword ptr [ebp - 0x78], 0
            //   c68578ffffff00       | mov                 byte ptr [ebp - 0x88], 0
            //   e8????????           |                     
            //   c745fc01000000       | mov                 dword ptr [ebp - 4], 1
            //   8d4d90               | lea                 ecx, [ebp - 0x70]
            //   6a02                 | push                2

        $sequence_2 = { e8???????? 83c40c 8d45ac 50 6a00 8d8590e5ffff 50 }
            // n = 7, score = 300
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   8d45ac               | lea                 eax, [ebp - 0x54]
            //   50                   | push                eax
            //   6a00                 | push                0
            //   8d8590e5ffff         | lea                 eax, [ebp - 0x1a70]
            //   50                   | push                eax

        $sequence_3 = { c70600000000 c7460400000000 c7460800000000 83f908 720d 41 51 }
            // n = 7, score = 300
            //   c70600000000         | mov                 dword ptr [esi], 0
            //   c7460400000000       | mov                 dword ptr [esi + 4], 0
            //   c7460800000000       | mov                 dword ptr [esi + 8], 0
            //   83f908               | cmp                 ecx, 8
            //   720d                 | jb                  0xf
            //   41                   | inc                 ecx
            //   51                   | push                ecx

        $sequence_4 = { 8d4dd8 8d45c0 0f434dd8 837dd410 0f43c2 0f1f440000 }
            // n = 6, score = 300
            //   8d4dd8               | lea                 ecx, [ebp - 0x28]
            //   8d45c0               | lea                 eax, [ebp - 0x40]
            //   0f434dd8             | cmovae              ecx, dword ptr [ebp - 0x28]
            //   837dd410             | cmp                 dword ptr [ebp - 0x2c], 0x10
            //   0f43c2               | cmovae              eax, edx
            //   0f1f440000           | nop                 dword ptr [eax + eax]

        $sequence_5 = { 83f802 7524 8b0f 85c9 7406 51 e8???????? }
            // n = 7, score = 300
            //   83f802               | cmp                 eax, 2
            //   7524                 | jne                 0x26
            //   8b0f                 | mov                 ecx, dword ptr [edi]
            //   85c9                 | test                ecx, ecx
            //   7406                 | je                  8
            //   51                   | push                ecx
            //   e8????????           |                     

        $sequence_6 = { ff5008 c745fc01000000 8b1f 8b7708 83c604 837b0800 7517 }
            // n = 7, score = 300
            //   ff5008               | call                dword ptr [eax + 8]
            //   c745fc01000000       | mov                 dword ptr [ebp - 4], 1
            //   8b1f                 | mov                 ebx, dword ptr [edi]
            //   8b7708               | mov                 esi, dword ptr [edi + 8]
            //   83c604               | add                 esi, 4
            //   837b0800             | cmp                 dword ptr [ebx + 8], 0
            //   7517                 | jne                 0x19

        $sequence_7 = { e8???????? 83f8ff 752c 8b45ec }
            // n = 4, score = 300
            //   e8????????           |                     
            //   83f8ff               | cmp                 eax, -1
            //   752c                 | jne                 0x2e
            //   8b45ec               | mov                 eax, dword ptr [ebp - 0x14]

        $sequence_8 = { e9???????? 8b4d30 e9???????? 8b4d2c e9???????? 8b4d28 }
            // n = 6, score = 300
            //   e9????????           |                     
            //   8b4d30               | mov                 ecx, dword ptr [ebp + 0x30]
            //   e9????????           |                     
            //   8b4d2c               | mov                 ecx, dword ptr [ebp + 0x2c]
            //   e9????????           |                     
            //   8b4d28               | mov                 ecx, dword ptr [ebp + 0x28]

        $sequence_9 = { c745bc0f000000 c745b800000000 c645a800 e8???????? 6aff c645fc01 8d45a8 }
            // n = 7, score = 300
            //   c745bc0f000000       | mov                 dword ptr [ebp - 0x44], 0xf
            //   c745b800000000       | mov                 dword ptr [ebp - 0x48], 0
            //   c645a800             | mov                 byte ptr [ebp - 0x58], 0
            //   e8????????           |                     
            //   6aff                 | push                -1
            //   c645fc01             | mov                 byte ptr [ebp - 4], 1
            //   8d45a8               | lea                 eax, [ebp - 0x58]

    condition:
        7 of them and filesize < 2252800
}