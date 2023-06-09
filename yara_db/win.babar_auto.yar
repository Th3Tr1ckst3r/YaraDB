rule win_babar_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.babar."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.babar"
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
        $sequence_0 = { 0108 015dfc 8b45fc 3b450c }
            // n = 4, score = 400
            //   0108                 | add                 dword ptr [eax], ecx
            //   015dfc               | add                 dword ptr [ebp - 4], ebx
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   3b450c               | cmp                 eax, dword ptr [ebp + 0xc]

        $sequence_1 = { 0107 8b3f 57 897d08 }
            // n = 4, score = 400
            //   0107                 | add                 dword ptr [edi], eax
            //   8b3f                 | mov                 edi, dword ptr [edi]
            //   57                   | push                edi
            //   897d08               | mov                 dword ptr [ebp + 8], edi

        $sequence_2 = { 0138 668bc7 5f 5e }
            // n = 4, score = 400
            //   0138                 | add                 dword ptr [eax], edi
            //   668bc7               | mov                 ax, di
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_3 = { 0103 83530400 8b4728 894634 }
            // n = 4, score = 400
            //   0103                 | add                 dword ptr [ebx], eax
            //   83530400             | adc                 dword ptr [ebx + 4], 0
            //   8b4728               | mov                 eax, dword ptr [edi + 0x28]
            //   894634               | mov                 dword ptr [esi + 0x34], eax

        $sequence_4 = { 47 3bfb 897c2414 0f8e19ffffff 5f }
            // n = 5, score = 400
            //   47                   | inc                 edi
            //   3bfb                 | cmp                 edi, ebx
            //   897c2414             | mov                 dword ptr [esp + 0x14], edi
            //   0f8e19ffffff         | jle                 0xffffff1f
            //   5f                   | pop                 edi

        $sequence_5 = { 010a 8b16 390c82 1bc9 }
            // n = 4, score = 400
            //   010a                 | add                 dword ptr [edx], ecx
            //   8b16                 | mov                 edx, dword ptr [esi]
            //   390c82               | cmp                 dword ptr [edx + eax*4], ecx
            //   1bc9                 | sbb                 ecx, ecx

        $sequence_6 = { 0101 c9 c3 56 8bf1 }
            // n = 5, score = 400
            //   0101                 | add                 dword ptr [ecx], eax
            //   c9                   | leave               
            //   c3                   | ret                 
            //   56                   | push                esi
            //   8bf1                 | mov                 esi, ecx

        $sequence_7 = { 0137 2933 33c0 40 }
            // n = 4, score = 400
            //   0137                 | add                 dword ptr [edi], esi
            //   2933                 | sub                 dword ptr [ebx], esi
            //   33c0                 | xor                 eax, eax
            //   40                   | inc                 eax

        $sequence_8 = { 8d942478020000 6a00 52 e8???????? 8d84247c010000 50 8d4c247c }
            // n = 7, score = 200
            //   8d942478020000       | lea                 edx, [esp + 0x278]
            //   6a00                 | push                0
            //   52                   | push                edx
            //   e8????????           |                     
            //   8d84247c010000       | lea                 eax, [esp + 0x17c]
            //   50                   | push                eax
            //   8d4c247c             | lea                 ecx, [esp + 0x7c]

        $sequence_9 = { 6a00 51 52 c744241804000000 }
            // n = 4, score = 200
            //   6a00                 | push                0
            //   51                   | push                ecx
            //   52                   | push                edx
            //   c744241804000000     | mov                 dword ptr [esp + 0x18], 4

        $sequence_10 = { 03c2 8bfa 33f8 23f9 33fa }
            // n = 5, score = 200
            //   03c2                 | add                 eax, edx
            //   8bfa                 | mov                 edi, edx
            //   33f8                 | xor                 edi, eax
            //   23f9                 | and                 edi, ecx
            //   33fa                 | xor                 edi, edx

        $sequence_11 = { c1ea08 88500d 0fb64e0e 88480e }
            // n = 4, score = 200
            //   c1ea08               | shr                 edx, 8
            //   88500d               | mov                 byte ptr [eax + 0xd], dl
            //   0fb64e0e             | movzx               ecx, byte ptr [esi + 0xe]
            //   88480e               | mov                 byte ptr [eax + 0xe], cl

        $sequence_12 = { 33db 57 895c2418 893e ffd5 68???????? }
            // n = 6, score = 200
            //   33db                 | xor                 ebx, ebx
            //   57                   | push                edi
            //   895c2418             | mov                 dword ptr [esp + 0x18], ebx
            //   893e                 | mov                 dword ptr [esi], edi
            //   ffd5                 | call                ebp
            //   68????????           |                     

        $sequence_13 = { 50 ff15???????? 8b4d00 51 e8???????? 83c404 }
            // n = 6, score = 200
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b4d00               | mov                 ecx, dword ptr [ebp]
            //   51                   | push                ecx
            //   e8????????           |                     
            //   83c404               | add                 esp, 4

        $sequence_14 = { 6a10 68???????? 8d4c2424 51 }
            // n = 4, score = 200
            //   6a10                 | push                0x10
            //   68????????           |                     
            //   8d4c2424             | lea                 ecx, [esp + 0x24]
            //   51                   | push                ecx

        $sequence_15 = { 83c408 c3 8b16 52 ff15???????? }
            // n = 5, score = 200
            //   83c408               | add                 esp, 8
            //   c3                   | ret                 
            //   8b16                 | mov                 edx, dword ptr [esi]
            //   52                   | push                edx
            //   ff15????????         |                     

    condition:
        7 of them and filesize < 1294336
}