rule win_poortry_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.poortry."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.poortry"
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
        $sequence_0 = { f5 f9 49f7c4467a0073 4152 440fbfd2 6641d3e2 4180d2ac }
            // n = 7, score = 100
            //   f5                   | inc                 ecx
            //   f9                   | pop                 ebx
            //   49f7c4467a0073       | pop                 ebx
            //   4152                 | inc                 ecx
            //   440fbfd2             | not                 ebp
            //   6641d3e2             | inc                 ecx
            //   4180d2ac             | pop                 edi

        $sequence_1 = { 5f f8 66a9421f f9 4d63d2 664181f95617 }
            // n = 6, score = 100
            //   5f                   | mov                 dword ptr [eax], ecx
            //   f8                   | inc                 ecx
            //   66a9421f             | mov                 ebp, dword ptr [ecx]
            //   f9                   | dec                 ecx
            //   4d63d2               | add                 ecx, 4
            //   664181f95617         | inc                 esp

        $sequence_2 = { 4086f6 40fece 5e f5 41f6c3a9 443ac1 4863c0 }
            // n = 7, score = 100
            //   4086f6               | xor                 dword ptr [esp], eax
            //   40fece               | dec                 eax
            //   5e                   | or                  esi, 0x1f8413d4
            //   f5                   | rol                 eax, 2
            //   41f6c3a9             | inc                 eax
            //   443ac1               | inc                 ecx
            //   4863c0               | test                dh, 0x24

        $sequence_3 = { 81e96a254506 f9 c1c103 443bcd f9 f5 4152 }
            // n = 7, score = 100
            //   81e96a254506         | test                cl, ch
            //   f9                   | dec                 eax
            //   c1c103               | arpl                ax, ax
            //   443bcd               | inc                 ebp
            //   f9                   | and                 cl, bh
            //   f5                   | inc                 ecx
            //   4152                 | movzx               ecx, byte ptr [eax]

        $sequence_4 = { 488b16 2aca f8 8a4e08 f5 6681fa0307 e9???????? }
            // n = 7, score = 100
            //   488b16               | inc                 eax
            //   2aca                 | sub                 bh, 0x71
            //   f8                   | xor                 di, 0x707b
            //   8a4e08               | dec                 eax
            //   f5                   | add                 ebx, 0x10
            //   6681fa0307           | xor                 eax, ebx
            //   e9????????           |                     

        $sequence_5 = { 4180fe99 c1e203 1c55 488bc5 488d0410 493bc2 664485d9 }
            // n = 7, score = 100
            //   4180fe99             | movsx               ecx, dh
            //   c1e203               | setg                cl
            //   1c55                 | dec                 ecx
            //   488bc5               | arpl                di, cx
            //   488d0410             | mov                 word ptr [edi + 8], bx
            //   493bc2               | neg                 cl
            //   664485d9             | and                 cx, 0x4a0b

        $sequence_6 = { 41895008 4189400c 410f98c2 440fbfd1 66440fbed4 9c }
            // n = 6, score = 100
            //   41895008             | arpl                bx, bx
            //   4189400c             | stc                 
            //   410f98c2             | inc                 ecx
            //   440fbfd1             | push                ebx
            //   66440fbed4           | xor                 dword ptr [esp], ebx
            //   9c                   | inc                 ecx

        $sequence_7 = { 311424 5d 6681fc4d15 4585cb 4863d2 f9 f8 }
            // n = 7, score = 100
            //   311424               | xor                 edx, 0x7b8f105d
            //   5d                   | dec                 edx
            //   6681fc4d15           | clc                 
            //   4585cb               | push                esi
            //   4863d2               | xchg                esi, esi
            //   f9                   | bsr                 si, ax
            //   f8                   | xor                 edx, 0x11257d67

        $sequence_8 = { 4981d342615869 41c0c30b 415b 3cc3 f9 4863c0 }
            // n = 6, score = 100
            //   4981d342615869       | inc                 eax
            //   41c0c30b             | neg                 dh
            //   415b                 | inc                 ecx
            //   3cc3                 | bswap               ebx
            //   f9                   | clc                 
            //   4863c0               | inc                 ecx

        $sequence_9 = { 4150 c3 488be5 4185f6 491bf1 4080e6e4 5f }
            // n = 7, score = 100
            //   4150                 | inc                 ecx
            //   c3                   | push                ebx
            //   488be5               | inc                 ecx
            //   4185f6               | rol                 ebx, 0x4c
            //   491bf1               | inc                 ebp
            //   4080e6e4             | add                 bl, cl
            //   5f                   | inc                 ecx

    condition:
        7 of them and filesize < 8078336
}