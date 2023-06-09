rule win_funny_dream_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.funny_dream."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.funny_dream"
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
        $sequence_0 = { 898df4f9ffff 8d85f8f9ffff c785f8f9ffff00000000 50 687e660480 57 ff15???????? }
            // n = 7, score = 300
            //   898df4f9ffff         | mov                 dword ptr [ebp - 0x60c], ecx
            //   8d85f8f9ffff         | lea                 eax, [ebp - 0x608]
            //   c785f8f9ffff00000000     | mov    dword ptr [ebp - 0x608], 0
            //   50                   | push                eax
            //   687e660480           | push                0x8004667e
            //   57                   | push                edi
            //   ff15????????         |                     

        $sequence_1 = { 8d8564feffff 8bca 50 6a00 6a00 6a20 6a01 }
            // n = 7, score = 300
            //   8d8564feffff         | lea                 eax, [ebp - 0x19c]
            //   8bca                 | mov                 ecx, edx
            //   50                   | push                eax
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a20                 | push                0x20
            //   6a01                 | push                1

        $sequence_2 = { 84c0 75f9 2bd9 c785fcfdffff05010003 8d8d01feffff }
            // n = 5, score = 300
            //   84c0                 | test                al, al
            //   75f9                 | jne                 0xfffffffb
            //   2bd9                 | sub                 ebx, ecx
            //   c785fcfdffff05010003     | mov    dword ptr [ebp - 0x204], 0x3000105
            //   8d8d01feffff         | lea                 ecx, [ebp - 0x1ff]

        $sequence_3 = { 6689855effffff 8d8550ffffff 50 660fd68552ffffff }
            // n = 4, score = 300
            //   6689855effffff       | mov                 word ptr [ebp - 0xa2], ax
            //   8d8550ffffff         | lea                 eax, [ebp - 0xb0]
            //   50                   | push                eax
            //   660fd68552ffffff     | movq                qword ptr [ebp - 0xae], xmm0

        $sequence_4 = { 85c0 0f84e5000000 68f2010000 8d85c2fdffff }
            // n = 4, score = 300
            //   85c0                 | test                eax, eax
            //   0f84e5000000         | je                  0xeb
            //   68f2010000           | push                0x1f2
            //   8d85c2fdffff         | lea                 eax, [ebp - 0x23e]

        $sequence_5 = { c20800 8b4904 e8???????? 5e }
            // n = 4, score = 300
            //   c20800               | ret                 8
            //   8b4904               | mov                 ecx, dword ptr [ecx + 4]
            //   e8????????           |                     
            //   5e                   | pop                 esi

        $sequence_6 = { ff15???????? 85c0 0f849a000000 68???????? 50 ff15???????? 85c0 }
            // n = 7, score = 300
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f849a000000         | je                  0xa0
            //   68????????           |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax

        $sequence_7 = { 83450cf8 53 56 8b5a04 8d4208 57 }
            // n = 6, score = 300
            //   83450cf8             | add                 dword ptr [ebp + 0xc], -8
            //   53                   | push                ebx
            //   56                   | push                esi
            //   8b5a04               | mov                 ebx, dword ptr [edx + 4]
            //   8d4208               | lea                 eax, [edx + 8]
            //   57                   | push                edi

        $sequence_8 = { 8db5d0fdffff 2410 8d4e01 88041f 47 6690 8a06 }
            // n = 7, score = 300
            //   8db5d0fdffff         | lea                 esi, [ebp - 0x230]
            //   2410                 | and                 al, 0x10
            //   8d4e01               | lea                 ecx, [esi + 1]
            //   88041f               | mov                 byte ptr [edi + ebx], al
            //   47                   | inc                 edi
            //   6690                 | nop                 
            //   8a06                 | mov                 al, byte ptr [esi]

        $sequence_9 = { 8be5 5d c3 6683780a04 7736 b902000000 66890f }
            // n = 7, score = 300
            //   8be5                 | mov                 esp, ebp
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   6683780a04           | cmp                 word ptr [eax + 0xa], 4
            //   7736                 | ja                  0x38
            //   b902000000           | mov                 ecx, 2
            //   66890f               | mov                 word ptr [edi], cx

    condition:
        7 of them and filesize < 393216
}