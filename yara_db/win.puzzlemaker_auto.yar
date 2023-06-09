rule win_puzzlemaker_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.puzzlemaker."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.puzzlemaker"
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
        $sequence_0 = { 0fb705???????? 66d1e8 6683e07f 668905???????? 0fb705???????? 66d1e8 }
            // n = 6, score = 100
            //   0fb705????????       |                     
            //   66d1e8               | dec                 eax
            //   6683e07f             | mov                 ebp, ecx
            //   668905????????       |                     
            //   0fb705????????       |                     
            //   66d1e8               | dec                 esp

        $sequence_1 = { 448b4598 443bc7 7424 488d5590 488bcb }
            // n = 5, score = 100
            //   448b4598             | lea                 ecx, [0x1fa6b]
            //   443bc7               | je                  0x6b8
            //   7424                 | inc                 ecx
            //   488d5590             | cmp                 edi, 0xf
            //   488bcb               | jb                  0x43c

        $sequence_2 = { 488b4dcf 488b01 44896c2420 4c8d4def 4533c0 }
            // n = 5, score = 100
            //   488b4dcf             | xor                 eax, eax
            //   488b01               | dec                 esp
            //   44896c2420           | lea                 ebx, [0xffffa62f]
            //   4c8d4def             | mov                 byte ptr [ecx + 0x18], al
            //   4533c0               | int3                

        $sequence_3 = { e8???????? e9???????? 488d05dcfb0000 4a8b04e8 42f644f83840 7405 803f1a }
            // n = 7, score = 100
            //   e8????????           |                     
            //   e9????????           |                     
            //   488d05dcfb0000       | dec                 eax
            //   4a8b04e8             | sub                 esp, 0x20
            //   42f644f83840         | inc                 esp
            //   7405                 | mov                 edi, ecx
            //   803f1a               | dec                 esp

        $sequence_4 = { 0f87cf000000 8b8c86d0190100 4803ce ffe1 660f73f901 }
            // n = 5, score = 100
            //   0f87cf000000         | jne                 0xc98
            //   8b8c86d0190100       | dec                 esp
            //   4803ce               | mov                 edi, eax
            //   ffe1                 | dec                 eax
            //   660f73f901           | lea                 ecx, [0x1fa1b]

        $sequence_5 = { 7551 488b0d???????? 488d157c160200 c705????????01000000 48c705????????01000000 48891d???????? ff15???????? }
            // n = 7, score = 100
            //   7551                 | mov                 eax, dword ptr [ebx]
            //   488b0d????????       |                     
            //   488d157c160200       | cmp                 dword ptr [eax], 0
            //   c705????????01000000     |     
            //   48c705????????01000000     |     
            //   48891d????????       |                     
            //   ff15????????         |                     

        $sequence_6 = { 4a0fbe8431b8640100 428a8c31c8640100 4c2bc8 418b51fc }
            // n = 4, score = 100
            //   4a0fbe8431b8640100     | dec    eax
            //   428a8c31c8640100     | mov                 ecx, dword ptr [ebp - 0x39]
            //   4c2bc8               | dec                 eax
            //   418b51fc             | mov                 eax, dword ptr [ecx]

        $sequence_7 = { 4c8bc9 0f84c1000000 4863520c 4903d0 4c8d05a1a9ffff }
            // n = 5, score = 100
            //   4c8bc9               | mov                 ebx, edx
            //   0f84c1000000         | dec                 esp
            //   4863520c             | lea                 eax, [0xa12e]
            //   4903d0               | dec                 eax
            //   4c8d05a1a9ffff       | mov                 edi, ecx

        $sequence_8 = { 4803fe e9???????? 0fb606 498bd5 482bd6 4a0fbebc38f0180200 8d4f01 }
            // n = 7, score = 100
            //   4803fe               | dec                 esp
            //   e9????????           |                     
            //   0fb606               | lea                 ecx, [0xa616]
            //   498bd5               | vsubsd              xmm1, xmm1, xmm2
            //   482bd6               | vmulsd              xmm1, xmm1, qword ptr [ecx + eax*8]
            //   4a0fbebc38f0180200     | dec    eax
            //   8d4f01               | sar                 eax, 6

        $sequence_9 = { f2410f590cc1 660f28d1 660f28c1 4c8d0dbb980000 }
            // n = 4, score = 100
            //   f2410f590cc1         | movsx               eax, byte ptr [ecx + esi + 0x164b8]
            //   660f28d1             | inc                 edx
            //   660f28c1             | mov                 cl, byte ptr [ecx + esi + 0x164c8]
            //   4c8d0dbb980000       | dec                 esp

    condition:
        7 of them and filesize < 331776
}