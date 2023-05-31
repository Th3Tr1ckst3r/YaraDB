rule win_lilith_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.lilith."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.lilith"
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
        $sequence_0 = { 8b4004 c744309040ef4200 8b4690 8b4804 8d41e8 8944318c c745fc00000000 }
            // n = 7, score = 200
            //   8b4004               | mov                 eax, dword ptr [eax + 4]
            //   c744309040ef4200     | mov                 dword ptr [eax + esi - 0x70], 0x42ef40
            //   8b4690               | mov                 eax, dword ptr [esi - 0x70]
            //   8b4804               | mov                 ecx, dword ptr [eax + 4]
            //   8d41e8               | lea                 eax, [ecx - 0x18]
            //   8944318c             | mov                 dword ptr [ecx + esi - 0x74], eax
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0

        $sequence_1 = { 83f8ff 7524 0f57c0 c745d04c3e4200 68???????? 8d45d0 }
            // n = 6, score = 200
            //   83f8ff               | cmp                 eax, -1
            //   7524                 | jne                 0x26
            //   0f57c0               | xorps               xmm0, xmm0
            //   c745d04c3e4200       | mov                 dword ptr [ebp - 0x30], 0x423e4c
            //   68????????           |                     
            //   8d45d0               | lea                 eax, [ebp - 0x30]

        $sequence_2 = { 64a300000000 8bf1 6a00 8d4e10 c745fc00000000 }
            // n = 5, score = 200
            //   64a300000000         | mov                 dword ptr fs:[0], eax
            //   8bf1                 | mov                 esi, ecx
            //   6a00                 | push                0
            //   8d4e10               | lea                 ecx, [esi + 0x10]
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0

        $sequence_3 = { 99 2bc2 8bf0 d1fe 6a55 ff34f5184a4200 ff7508 }
            // n = 7, score = 200
            //   99                   | cdq                 
            //   2bc2                 | sub                 eax, edx
            //   8bf0                 | mov                 esi, eax
            //   d1fe                 | sar                 esi, 1
            //   6a55                 | push                0x55
            //   ff34f5184a4200       | push                dword ptr [esi*8 + 0x424a18]
            //   ff7508               | push                dword ptr [ebp + 8]

        $sequence_4 = { 3934bda84b4300 7531 e8???????? 8904bda84b4300 }
            // n = 4, score = 200
            //   3934bda84b4300       | cmp                 dword ptr [edi*4 + 0x434ba8], esi
            //   7531                 | jne                 0x33
            //   e8????????           |                     
            //   8904bda84b4300       | mov                 dword ptr [edi*4 + 0x434ba8], eax

        $sequence_5 = { 50 8b8540ffffff ff7008 ffd7 80bd64ffffff00 }
            // n = 5, score = 200
            //   50                   | push                eax
            //   8b8540ffffff         | mov                 eax, dword ptr [ebp - 0xc0]
            //   ff7008               | push                dword ptr [eax + 8]
            //   ffd7                 | call                edi
            //   80bd64ffffff00       | cmp                 byte ptr [ebp - 0x9c], 0

        $sequence_6 = { 894df0 8d4df8 51 8bc8 8945f4 e8???????? 84c0 }
            // n = 7, score = 200
            //   894df0               | mov                 dword ptr [ebp - 0x10], ecx
            //   8d4df8               | lea                 ecx, [ebp - 8]
            //   51                   | push                ecx
            //   8bc8                 | mov                 ecx, eax
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax
            //   e8????????           |                     
            //   84c0                 | test                al, al

        $sequence_7 = { 6a04 58 6bc000 8b4d08 898814434300 68???????? }
            // n = 6, score = 200
            //   6a04                 | push                4
            //   58                   | pop                 eax
            //   6bc000               | imul                eax, eax, 0
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   898814434300         | mov                 dword ptr [eax + 0x434314], ecx
            //   68????????           |                     

        $sequence_8 = { 8d45d4 660fd645d8 50 c745d870ed4200 e8???????? 8b75e4 }
            // n = 6, score = 200
            //   8d45d4               | lea                 eax, [ebp - 0x2c]
            //   660fd645d8           | movq                qword ptr [ebp - 0x28], xmm0
            //   50                   | push                eax
            //   c745d870ed4200       | mov                 dword ptr [ebp - 0x28], 0x42ed70
            //   e8????????           |                     
            //   8b75e4               | mov                 esi, dword ptr [ebp - 0x1c]

        $sequence_9 = { 8d4508 03c6 50 ffb790210000 ffd3 83f8ff }
            // n = 6, score = 200
            //   8d4508               | lea                 eax, [ebp + 8]
            //   03c6                 | add                 eax, esi
            //   50                   | push                eax
            //   ffb790210000         | push                dword ptr [edi + 0x2190]
            //   ffd3                 | call                ebx
            //   83f8ff               | cmp                 eax, -1

    condition:
        7 of them and filesize < 499712
}