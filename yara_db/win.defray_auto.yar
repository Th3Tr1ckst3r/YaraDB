rule win_defray_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.defray."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.defray"
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
        $sequence_0 = { ab ab 66ab 33c0 8dbd14f2ffff be???????? 6a06 }
            // n = 7, score = 200
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   66ab                 | stosw               word ptr es:[edi], ax
            //   33c0                 | xor                 eax, eax
            //   8dbd14f2ffff         | lea                 edi, [ebp - 0xdec]
            //   be????????           |                     
            //   6a06                 | push                6

        $sequence_1 = { f7f9 85d2 790d 83c8ff 2bc2 83c210 83e0f0 }
            // n = 7, score = 200
            //   f7f9                 | idiv                ecx
            //   85d2                 | test                edx, edx
            //   790d                 | jns                 0xf
            //   83c8ff               | or                  eax, 0xffffffff
            //   2bc2                 | sub                 eax, edx
            //   83c210               | add                 edx, 0x10
            //   83e0f0               | and                 eax, 0xfffffff0

        $sequence_2 = { 8bca 83e103 f3a4 50 ff15???????? 83f8ff 0f844d030000 }
            // n = 7, score = 200
            //   8bca                 | mov                 ecx, edx
            //   83e103               | and                 ecx, 3
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   83f8ff               | cmp                 eax, -1
            //   0f844d030000         | je                  0x353

        $sequence_3 = { 50 57 8d8584f7ffff 50 }
            // n = 4, score = 200
            //   50                   | push                eax
            //   57                   | push                edi
            //   8d8584f7ffff         | lea                 eax, [ebp - 0x87c]
            //   50                   | push                eax

        $sequence_4 = { 7404 8b4018 c3 33c0 c3 833d????????01 725f }
            // n = 7, score = 200
            //   7404                 | je                  6
            //   8b4018               | mov                 eax, dword ptr [eax + 0x18]
            //   c3                   | ret                 
            //   33c0                 | xor                 eax, eax
            //   c3                   | ret                 
            //   833d????????01       |                     
            //   725f                 | jb                  0x61

        $sequence_5 = { 6a00 6a00 e8???????? cc 56 57 8bfa }
            // n = 7, score = 200
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   e8????????           |                     
            //   cc                   | int3                
            //   56                   | push                esi
            //   57                   | push                edi
            //   8bfa                 | mov                 edi, edx

        $sequence_6 = { 8dbdb4f7ffff a5 a5 66a5 }
            // n = 4, score = 200
            //   8dbdb4f7ffff         | lea                 edi, [ebp - 0x84c]
            //   a5                   | movsd               dword ptr es:[edi], dword ptr [esi]
            //   a5                   | movsd               dword ptr es:[edi], dword ptr [esi]
            //   66a5                 | movsw               word ptr es:[edi], word ptr [esi]

        $sequence_7 = { 57 50 e8???????? 8b4d08 83c40c 03cb }
            // n = 6, score = 200
            //   57                   | push                edi
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   83c40c               | add                 esp, 0xc
            //   03cb                 | add                 ecx, ebx

        $sequence_8 = { 8b45f8 8b7808 7521 0f1f440000 8d45e8 8bd3 50 }
            // n = 7, score = 200
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   8b7808               | mov                 edi, dword ptr [eax + 8]
            //   7521                 | jne                 0x23
            //   0f1f440000           | nop                 dword ptr [eax + eax]
            //   8d45e8               | lea                 eax, [ebp - 0x18]
            //   8bd3                 | mov                 edx, ebx
            //   50                   | push                eax

        $sequence_9 = { 57 8b4b10 3bc8 7271 8b7d10 2bc8 }
            // n = 6, score = 200
            //   57                   | push                edi
            //   8b4b10               | mov                 ecx, dword ptr [ebx + 0x10]
            //   3bc8                 | cmp                 ecx, eax
            //   7271                 | jb                  0x73
            //   8b7d10               | mov                 edi, dword ptr [ebp + 0x10]
            //   2bc8                 | sub                 ecx, eax

    condition:
        7 of them and filesize < 1253376
}