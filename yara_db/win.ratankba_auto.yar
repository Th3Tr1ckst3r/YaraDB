rule win_ratankba_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.ratankba."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ratankba"
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
        $sequence_0 = { 8b1b 53 8d4588 e8???????? 3bc7 7417 8b458c }
            // n = 7, score = 400
            //   8b1b                 | mov                 ebx, dword ptr [ebx]
            //   53                   | push                ebx
            //   8d4588               | lea                 eax, [ebp - 0x78]
            //   e8????????           |                     
            //   3bc7                 | cmp                 eax, edi
            //   7417                 | je                  0x19
            //   8b458c               | mov                 eax, dword ptr [ebp - 0x74]

        $sequence_1 = { 8d8578efffff 68???????? 50 e8???????? 83c408 85c0 7509 }
            // n = 7, score = 400
            //   8d8578efffff         | lea                 eax, [ebp - 0x1088]
            //   68????????           |                     
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   85c0                 | test                eax, eax
            //   7509                 | jne                 0xb

        $sequence_2 = { 8b45fc 85c0 7407 8b5508 8902 eb0b 56 }
            // n = 7, score = 400
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   85c0                 | test                eax, eax
            //   7407                 | je                  9
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   8902                 | mov                 dword ptr [edx], eax
            //   eb0b                 | jmp                 0xd
            //   56                   | push                esi

        $sequence_3 = { 8b04f1 8b4cf104 3bc7 744c 3bcf 7448 2bc8 }
            // n = 7, score = 400
            //   8b04f1               | mov                 eax, dword ptr [ecx + esi*8]
            //   8b4cf104             | mov                 ecx, dword ptr [ecx + esi*8 + 4]
            //   3bc7                 | cmp                 eax, edi
            //   744c                 | je                  0x4e
            //   3bcf                 | cmp                 ecx, edi
            //   7448                 | je                  0x4a
            //   2bc8                 | sub                 ecx, eax

        $sequence_4 = { 3bc7 770a 68???????? e8???????? 85ff 0f848b000000 }
            // n = 6, score = 400
            //   3bc7                 | cmp                 eax, edi
            //   770a                 | ja                  0xc
            //   68????????           |                     
            //   e8????????           |                     
            //   85ff                 | test                edi, edi
            //   0f848b000000         | je                  0x91

        $sequence_5 = { 8b4308 8b5318 56 8b7508 894de0 8b4d0c 51 }
            // n = 7, score = 400
            //   8b4308               | mov                 eax, dword ptr [ebx + 8]
            //   8b5318               | mov                 edx, dword ptr [ebx + 0x18]
            //   56                   | push                esi
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   894de0               | mov                 dword ptr [ebp - 0x20], ecx
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   51                   | push                ecx

        $sequence_6 = { 0fb61c31 881c30 0fb65dff 40 881c31 3d00010000 }
            // n = 6, score = 400
            //   0fb61c31             | movzx               ebx, byte ptr [ecx + esi]
            //   881c30               | mov                 byte ptr [eax + esi], bl
            //   0fb65dff             | movzx               ebx, byte ptr [ebp - 1]
            //   40                   | inc                 eax
            //   881c31               | mov                 byte ptr [ecx + esi], bl
            //   3d00010000           | cmp                 eax, 0x100

        $sequence_7 = { 750c ff15???????? 89831c010000 8b8500efffff 85c0 }
            // n = 5, score = 400
            //   750c                 | jne                 0xe
            //   ff15????????         |                     
            //   89831c010000         | mov                 dword ptr [ebx + 0x11c], eax
            //   8b8500efffff         | mov                 eax, dword ptr [ebp - 0x1100]
            //   85c0                 | test                eax, eax

        $sequence_8 = { 56 8bd8 6a1f e8???????? 8bf0 8975f4 85f6 }
            // n = 7, score = 400
            //   56                   | push                esi
            //   8bd8                 | mov                 ebx, eax
            //   6a1f                 | push                0x1f
            //   e8????????           |                     
            //   8bf0                 | mov                 esi, eax
            //   8975f4               | mov                 dword ptr [ebp - 0xc], esi
            //   85f6                 | test                esi, esi

        $sequence_9 = { c78558f8ffff00000000 e8???????? 33d2 83c430 668955d4 }
            // n = 5, score = 400
            //   c78558f8ffff00000000     | mov    dword ptr [ebp - 0x7a8], 0
            //   e8????????           |                     
            //   33d2                 | xor                 edx, edx
            //   83c430               | add                 esp, 0x30
            //   668955d4             | mov                 word ptr [ebp - 0x2c], dx

    condition:
        7 of them and filesize < 303104
}