rule win_koadic_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.koadic."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.koadic"
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
        $sequence_0 = { d9042b ded9 dfe0 f6c401 }
            // n = 4, score = 100
            //   d9042b               | fld                 dword ptr [ebx + ebp]
            //   ded9                 | fcompp              
            //   dfe0                 | fnstsw              ax
            //   f6c401               | test                ah, 1

        $sequence_1 = { 3a1c17 0f83f2000000 8911 8906 8b11 8902 8b06 }
            // n = 7, score = 100
            //   3a1c17               | cmp                 bl, byte ptr [edi + edx]
            //   0f83f2000000         | jae                 0xf8
            //   8911                 | mov                 dword ptr [ecx], edx
            //   8906                 | mov                 dword ptr [esi], eax
            //   8b11                 | mov                 edx, dword ptr [ecx]
            //   8902                 | mov                 dword ptr [edx], eax
            //   8b06                 | mov                 eax, dword ptr [esi]

        $sequence_2 = { e8???????? 83c440 ff761c ff7618 57 }
            // n = 5, score = 100
            //   e8????????           |                     
            //   83c440               | add                 esp, 0x40
            //   ff761c               | push                dword ptr [esi + 0x1c]
            //   ff7618               | push                dword ptr [esi + 0x18]
            //   57                   | push                edi

        $sequence_3 = { 83660800 33c0 59 40 eb02 33c0 5e }
            // n = 7, score = 100
            //   83660800             | and                 dword ptr [esi + 8], 0
            //   33c0                 | xor                 eax, eax
            //   59                   | pop                 ecx
            //   40                   | inc                 eax
            //   eb02                 | jmp                 4
            //   33c0                 | xor                 eax, eax
            //   5e                   | pop                 esi

        $sequence_4 = { ff3424 e8???????? eb05 e8???????? 31c0 83c404 c3 }
            // n = 7, score = 100
            //   ff3424               | push                dword ptr [esp]
            //   e8????????           |                     
            //   eb05                 | jmp                 7
            //   e8????????           |                     
            //   31c0                 | xor                 eax, eax
            //   83c404               | add                 esp, 4
            //   c3                   | ret                 

        $sequence_5 = { 8945fc 85c0 7457 53 50 ff36 ff15???????? }
            // n = 7, score = 100
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   85c0                 | test                eax, eax
            //   7457                 | je                  0x59
            //   53                   | push                ebx
            //   50                   | push                eax
            //   ff36                 | push                dword ptr [esi]
            //   ff15????????         |                     

        $sequence_6 = { ff35???????? ff35???????? ff35???????? e8???????? 8d0584334100 50 e8???????? }
            // n = 7, score = 100
            //   ff35????????         |                     
            //   ff35????????         |                     
            //   ff35????????         |                     
            //   e8????????           |                     
            //   8d0584334100         | lea                 eax, [0x413384]
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_7 = { 85f6 7470 8a1419 3a142b 7c1a }
            // n = 5, score = 100
            //   85f6                 | test                esi, esi
            //   7470                 | je                  0x72
            //   8a1419               | mov                 dl, byte ptr [ecx + ebx]
            //   3a142b               | cmp                 dl, byte ptr [ebx + ebp]
            //   7c1a                 | jl                  0x1c

        $sequence_8 = { c705????????c49d4000 c705????????01000000 837d1c00 7507 c7451c02104100 8b4d20 6a00 }
            // n = 7, score = 100
            //   c705????????c49d4000     |     
            //   c705????????01000000     |     
            //   837d1c00             | cmp                 dword ptr [ebp + 0x1c], 0
            //   7507                 | jne                 9
            //   c7451c02104100       | mov                 dword ptr [ebp + 0x1c], 0x411002
            //   8b4d20               | mov                 ecx, dword ptr [ebp + 0x20]
            //   6a00                 | push                0

        $sequence_9 = { 33f6 56 ff75fc 56 6839330000 e8???????? 897510 }
            // n = 7, score = 100
            //   33f6                 | xor                 esi, esi
            //   56                   | push                esi
            //   ff75fc               | push                dword ptr [ebp - 4]
            //   56                   | push                esi
            //   6839330000           | push                0x3339
            //   e8????????           |                     
            //   897510               | mov                 dword ptr [ebp + 0x10], esi

    condition:
        7 of them and filesize < 180224
}