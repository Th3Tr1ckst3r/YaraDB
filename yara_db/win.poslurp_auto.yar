rule win_poslurp_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.poslurp."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.poslurp"
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
        $sequence_0 = { 0f8542010000 b850000000 48895c2460 33db }
            // n = 4, score = 100
            //   0f8542010000         | movzx               eax, word ptr [ebx]
            //   b850000000           | je                  0xbe
            //   48895c2460           | dec                 ecx
            //   33db                 | cmp                 ebp, edi

        $sequence_1 = { 8905???????? 3b05???????? 7312 33c9 ff15???????? cc 33c9 }
            // n = 7, score = 100
            //   8905????????         |                     
            //   3b05????????         |                     
            //   7312                 | mov                 eax, esp
            //   33c9                 | test                eax, eax
            //   ff15????????         |                     
            //   cc                   | je                  0x1799
            //   33c9                 | dec                 ecx

        $sequence_2 = { 488d542438 66895c2458 e8???????? 4885c0 }
            // n = 4, score = 100
            //   488d542438           | test                ecx, ecx
            //   66895c2458           | je                  0x22f
            //   e8????????           |                     
            //   4885c0               | dec                 eax

        $sequence_3 = { 890a 4883c204 85db 7432 482bfa 4c8bc3 0f1f840000000000 }
            // n = 7, score = 100
            //   890a                 | dec                 eax
            //   4883c204             | mov                 eax, dword ptr [esp + 0x88]
            //   85db                 | test                eax, eax
            //   7432                 | je                  0x17f9
            //   482bfa               | dec                 eax
            //   4c8bc3               | mov                 ebx, dword ptr [esp + 0x78]
            //   0f1f840000000000     | dec                 eax

        $sequence_4 = { 48895c2428 48895c2420 e8???????? 85c0 7513 }
            // n = 5, score = 100
            //   48895c2428           | dec                 eax
            //   48895c2420           | sub                 ecx, 1
            //   e8????????           |                     
            //   85c0                 | jne                 0x5e
            //   7513                 | jmp                 0x7a

        $sequence_5 = { 6689445420 41ffc0 48ffc2 4883c9ff }
            // n = 4, score = 100
            //   6689445420           | dec                 eax
            //   41ffc0               | and                 ebx, 0xfffff000
            //   48ffc2               | nop                 word ptr [eax + eax]
            //   4883c9ff             | cmp                 byte ptr [ebx], 0x4d

        $sequence_6 = { ff15???????? 4883f830 0f85b3000000 817c245000100000 }
            // n = 4, score = 100
            //   ff15????????         |                     
            //   4883f830             | lea                 ecx, [ebx + 0x14]
            //   0f85b3000000         | inc                 ebp
            //   817c245000100000     | xor                 eax, eax

        $sequence_7 = { 4863413c 4c8be1 8b940890000000 85d2 0f8413010000 }
            // n = 5, score = 100
            //   4863413c             | inc                 ebp
            //   4c8be1               | mov                 dword ptr [ecx + edx*4], eax
            //   8b940890000000       | mov                 ecx, 0x10
            //   85d2                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   0f8413010000         | dec                 eax

        $sequence_8 = { baeeeac01f 488bcb 4c8bf0 e8???????? 837e1000 }
            // n = 5, score = 100
            //   baeeeac01f           | dec                 eax
            //   488bcb               | mov                 dword ptr [esp + 0x40], eax
            //   4c8bf0               | dec                 eax
            //   e8????????           |                     
            //   837e1000             | mov                 dword ptr [esp + 0x38], ebx

        $sequence_9 = { 66897c2460 6644894c2462 66895c2464 ff15???????? 488bf0 4885c0 0f84c0000000 }
            // n = 7, score = 100
            //   66897c2460           | mov                 word ptr [esp + 0x70], ax
            //   6644894c2462         | mov                 ecx, 0x65
            //   66895c2464           | mov                 eax, 0x2e
            //   ff15????????         |                     
            //   488bf0               | mov                 word ptr [esp + 0x76], ax
            //   4885c0               | mov                 eax, 0x78
            //   0f84c0000000         | dec                 eax

    condition:
        7 of them and filesize < 50176
}