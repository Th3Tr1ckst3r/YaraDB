rule win_ruckguv_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.ruckguv."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ruckguv"
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
        $sequence_0 = { 6a01 e8???????? 59 59 53 6880000000 }
            // n = 6, score = 200
            //   6a01                 | push                1
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx
            //   53                   | push                ebx
            //   6880000000           | push                0x80

        $sequence_1 = { 889101010000 8bf1 b800010000 8816 42 }
            // n = 5, score = 200
            //   889101010000         | mov                 byte ptr [ecx + 0x101], dl
            //   8bf1                 | mov                 esi, ecx
            //   b800010000           | mov                 eax, 0x100
            //   8816                 | mov                 byte ptr [esi], dl
            //   42                   | inc                 edx

        $sequence_2 = { c745e844000000 66894518 e8???????? 59 }
            // n = 4, score = 200
            //   c745e844000000       | mov                 dword ptr [ebp - 0x18], 0x44
            //   66894518             | mov                 word ptr [ebp + 0x18], ax
            //   e8????????           |                     
            //   59                   | pop                 ecx

        $sequence_3 = { ff75fc 8d85b0f7ffff 50 ff75f4 }
            // n = 4, score = 200
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   8d85b0f7ffff         | lea                 eax, [ebp - 0x850]
            //   50                   | push                eax
            //   ff75f4               | push                dword ptr [ebp - 0xc]

        $sequence_4 = { 6814f1f808 6a01 e8???????? 83c410 56 6880000000 }
            // n = 6, score = 200
            //   6814f1f808           | push                0x8f8f114
            //   6a01                 | push                1
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10
            //   56                   | push                esi
            //   6880000000           | push                0x80

        $sequence_5 = { 8d45f4 ebd7 e8???????? 83650800 8bf8 8b473c }
            // n = 6, score = 200
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   ebd7                 | jmp                 0xffffffd9
            //   e8????????           |                     
            //   83650800             | and                 dword ptr [ebp + 8], 0
            //   8bf8                 | mov                 edi, eax
            //   8b473c               | mov                 eax, dword ptr [edi + 0x3c]

        $sequence_6 = { c3 55 8bec 51 56 8b7508 8b463c }
            // n = 7, score = 200
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   51                   | push                ecx
            //   56                   | push                esi
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   8b463c               | mov                 eax, dword ptr [esi + 0x3c]

        $sequence_7 = { c3 8b4c2404 803900 56 8bf1 743c }
            // n = 6, score = 200
            //   c3                   | ret                 
            //   8b4c2404             | mov                 ecx, dword ptr [esp + 4]
            //   803900               | cmp                 byte ptr [ecx], 0
            //   56                   | push                esi
            //   8bf1                 | mov                 esi, ecx
            //   743c                 | je                  0x3e

        $sequence_8 = { 0fb7db 7908 49 81c900f0ffff 41 0fb7c9 6685db }
            // n = 7, score = 200
            //   0fb7db               | movzx               ebx, bx
            //   7908                 | jns                 0xa
            //   49                   | dec                 ecx
            //   81c900f0ffff         | or                  ecx, 0xfffff000
            //   41                   | inc                 ecx
            //   0fb7c9               | movzx               ecx, cx
            //   6685db               | test                bx, bx

        $sequence_9 = { ff4508 394508 7cc9 53 e8???????? 59 be00800000 }
            // n = 7, score = 200
            //   ff4508               | inc                 dword ptr [ebp + 8]
            //   394508               | cmp                 dword ptr [ebp + 8], eax
            //   7cc9                 | jl                  0xffffffcb
            //   53                   | push                ebx
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   be00800000           | mov                 esi, 0x8000

    condition:
        7 of them and filesize < 41024
}