rule win_transbox_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.transbox."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.transbox"
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
        $sequence_0 = { 234a08 8b3488 56 e8???????? }
            // n = 4, score = 100
            //   234a08               | and                 ecx, dword ptr [edx + 8]
            //   8b3488               | mov                 esi, dword ptr [eax + ecx*4]
            //   56                   | push                esi
            //   e8????????           |                     

        $sequence_1 = { 03f1 890d???????? 57 8b3d???????? 23f2 833cb700 7520 }
            // n = 7, score = 100
            //   03f1                 | add                 esi, ecx
            //   890d????????         |                     
            //   57                   | push                edi
            //   8b3d????????         |                     
            //   23f2                 | and                 esi, edx
            //   833cb700             | cmp                 dword ptr [edi + esi*4], 0
            //   7520                 | jne                 0x22

        $sequence_2 = { 89b570fbffff 898d78fbffff 33db 8bfe 43 33c0 895dfc }
            // n = 7, score = 100
            //   89b570fbffff         | mov                 dword ptr [ebp - 0x490], esi
            //   898d78fbffff         | mov                 dword ptr [ebp - 0x488], ecx
            //   33db                 | xor                 ebx, ebx
            //   8bfe                 | mov                 edi, esi
            //   43                   | inc                 ebx
            //   33c0                 | xor                 eax, eax
            //   895dfc               | mov                 dword ptr [ebp - 4], ebx

        $sequence_3 = { 6a01 53 57 895dfc e8???????? }
            // n = 5, score = 100
            //   6a01                 | push                1
            //   53                   | push                ebx
            //   57                   | push                edi
            //   895dfc               | mov                 dword ptr [ebp - 4], ebx
            //   e8????????           |                     

        $sequence_4 = { 6884040000 b8???????? e8???????? 8bf1 89b574fbffff 33c9 }
            // n = 6, score = 100
            //   6884040000           | push                0x484
            //   b8????????           |                     
            //   e8????????           |                     
            //   8bf1                 | mov                 esi, ecx
            //   89b574fbffff         | mov                 dword ptr [ebp - 0x48c], esi
            //   33c9                 | xor                 ecx, ecx

        $sequence_5 = { 66897dda 668955dc 66897de0 668955e2 66895de4 668955e6 66895de8 }
            // n = 7, score = 100
            //   66897dda             | mov                 word ptr [ebp - 0x26], di
            //   668955dc             | mov                 word ptr [ebp - 0x24], dx
            //   66897de0             | mov                 word ptr [ebp - 0x20], di
            //   668955e2             | mov                 word ptr [ebp - 0x1e], dx
            //   66895de4             | mov                 word ptr [ebp - 0x1c], bx
            //   668955e6             | mov                 word ptr [ebp - 0x1a], dx
            //   66895de8             | mov                 word ptr [ebp - 0x18], bx

        $sequence_6 = { c20c00 55 8bec 8b5508 33c9 83ec14 380a }
            // n = 7, score = 100
            //   c20c00               | ret                 0xc
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   33c9                 | xor                 ecx, ecx
            //   83ec14               | sub                 esp, 0x14
            //   380a                 | cmp                 byte ptr [edx], cl

        $sequence_7 = { 352083b8ed eb02 d1e8 83e901 75ec 8904b570c20110 46 }
            // n = 7, score = 100
            //   352083b8ed           | xor                 eax, 0xedb88320
            //   eb02                 | jmp                 4
            //   d1e8                 | shr                 eax, 1
            //   83e901               | sub                 ecx, 1
            //   75ec                 | jne                 0xffffffee
            //   8904b570c20110       | mov                 dword ptr [esi*4 + 0x1001c270], eax
            //   46                   | inc                 esi

        $sequence_8 = { 53 50 e8???????? 83c414 8d85b0e1ffff ffb564e1ffff }
            // n = 6, score = 100
            //   53                   | push                ebx
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c414               | add                 esp, 0x14
            //   8d85b0e1ffff         | lea                 eax, [ebp - 0x1e50]
            //   ffb564e1ffff         | push                dword ptr [ebp - 0x1e9c]

        $sequence_9 = { 8d8d30ffffff e8???????? 59 6aff 33f6 c645fc04 56 }
            // n = 7, score = 100
            //   8d8d30ffffff         | lea                 ecx, [ebp - 0xd0]
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   6aff                 | push                -1
            //   33f6                 | xor                 esi, esi
            //   c645fc04             | mov                 byte ptr [ebp - 4], 4
            //   56                   | push                esi

    condition:
        7 of them and filesize < 288768
}