rule win_hdmr_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.hdmr."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.hdmr"
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
        $sequence_0 = { c1e810 83e001 41 8bf0 }
            // n = 4, score = 100
            //   c1e810               | shr                 eax, 0x10
            //   83e001               | and                 eax, 1
            //   41                   | inc                 ecx
            //   8bf0                 | mov                 esi, eax

        $sequence_1 = { d4a8 40 0000 a9400024a9 40 0023 d18a0688078a }
            // n = 7, score = 100
            //   d4a8                 | aam                 0xa8
            //   40                   | inc                 eax
            //   0000                 | add                 byte ptr [eax], al
            //   a9400024a9           | test                eax, 0xa9240040
            //   40                   | inc                 eax
            //   0023                 | add                 byte ptr [ebx], ah
            //   d18a0688078a         | ror                 dword ptr [edx - 0x75f877fa], 1

        $sequence_2 = { 8bc2 57 c1e210 0bc2 b920000000 }
            // n = 5, score = 100
            //   8bc2                 | mov                 eax, edx
            //   57                   | push                edi
            //   c1e210               | shl                 edx, 0x10
            //   0bc2                 | or                  eax, edx
            //   b920000000           | mov                 ecx, 0x20

        $sequence_3 = { 56 57 8d442458 e8???????? 83c408 }
            // n = 5, score = 100
            //   56                   | push                esi
            //   57                   | push                edi
            //   8d442458             | lea                 eax, [esp + 0x58]
            //   e8????????           |                     
            //   83c408               | add                 esp, 8

        $sequence_4 = { 7439 8b7508 8d8d78ffffff 33c0 8bf9 8d5041 }
            // n = 6, score = 100
            //   7439                 | je                  0x3b
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   8d8d78ffffff         | lea                 ecx, [ebp - 0x88]
            //   33c0                 | xor                 eax, eax
            //   8bf9                 | mov                 edi, ecx
            //   8d5041               | lea                 edx, [eax + 0x41]

        $sequence_5 = { 33c1 8bca c1e918 0fb60c8d68464100 33c1 }
            // n = 5, score = 100
            //   33c1                 | xor                 eax, ecx
            //   8bca                 | mov                 ecx, edx
            //   c1e918               | shr                 ecx, 0x18
            //   0fb60c8d68464100     | movzx               ecx, byte ptr [ecx*4 + 0x414668]
            //   33c1                 | xor                 eax, ecx

        $sequence_6 = { 8d542444 52 50 68???????? 56 ff15???????? }
            // n = 6, score = 100
            //   8d542444             | lea                 edx, [esp + 0x44]
            //   52                   | push                edx
            //   50                   | push                eax
            //   68????????           |                     
            //   56                   | push                esi
            //   ff15????????         |                     

        $sequence_7 = { c1e606 03348540d04100 8b45f8 8b00 }
            // n = 4, score = 100
            //   c1e606               | shl                 esi, 6
            //   03348540d04100       | add                 esi, dword ptr [eax*4 + 0x41d040]
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   8b00                 | mov                 eax, dword ptr [eax]

        $sequence_8 = { ff15???????? 85c0 0f85cc030000 50 e8???????? 83c404 50 }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f85cc030000         | jne                 0x3d2
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   50                   | push                eax

        $sequence_9 = { ff15???????? 8bd8 83fbff 0f849b040000 8d4c2438 51 53 }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   8bd8                 | mov                 ebx, eax
            //   83fbff               | cmp                 ebx, -1
            //   0f849b040000         | je                  0x4a1
            //   8d4c2438             | lea                 ecx, [esp + 0x38]
            //   51                   | push                ecx
            //   53                   | push                ebx

    condition:
        7 of them and filesize < 284672
}