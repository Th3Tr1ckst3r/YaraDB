rule win_astralocker_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.astralocker."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.astralocker"
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
        $sequence_0 = { 33f6 89040a 89740a04 c745fc00000000 eb09 8b4dfc }
            // n = 6, score = 500
            //   33f6                 | xor                 esi, esi
            //   89040a               | mov                 dword ptr [edx + ecx], eax
            //   89740a04             | mov                 dword ptr [edx + ecx + 4], esi
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   eb09                 | jmp                 0xb
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]

        $sequence_1 = { 89740104 b808000000 6bc800 8b5508 8b440a04 }
            // n = 5, score = 500
            //   89740104             | mov                 dword ptr [ecx + eax + 4], esi
            //   b808000000           | mov                 eax, 8
            //   6bc800               | imul                ecx, eax, 0
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   8b440a04             | mov                 eax, dword ptr [edx + ecx + 4]

        $sequence_2 = { 8b440a04 50 8b0c0a 51 e8???????? }
            // n = 5, score = 500
            //   8b440a04             | mov                 eax, dword ptr [edx + ecx + 4]
            //   50                   | push                eax
            //   8b0c0a               | mov                 ecx, dword ptr [edx + ecx]
            //   51                   | push                ecx
            //   e8????????           |                     

        $sequence_3 = { 50 8b0c0a 51 e8???????? 83c408 }
            // n = 5, score = 500
            //   50                   | push                eax
            //   8b0c0a               | mov                 ecx, dword ptr [edx + ecx]
            //   51                   | push                ecx
            //   e8????????           |                     
            //   83c408               | add                 esp, 8

        $sequence_4 = { 89441104 ba08000000 6bc20a 8b4d08 33d2 33f6 891401 }
            // n = 7, score = 500
            //   89441104             | mov                 dword ptr [ecx + edx + 4], eax
            //   ba08000000           | mov                 edx, 8
            //   6bc20a               | imul                eax, edx, 0xa
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   33d2                 | xor                 edx, edx
            //   33f6                 | xor                 esi, esi
            //   891401               | mov                 dword ptr [ecx + eax], edx

        $sequence_5 = { 33c0 33f6 89040a 89740a04 c745fc00000000 eb09 8b4dfc }
            // n = 7, score = 500
            //   33c0                 | xor                 eax, eax
            //   33f6                 | xor                 esi, esi
            //   89040a               | mov                 dword ptr [edx + ecx], eax
            //   89740a04             | mov                 dword ptr [edx + ecx + 4], esi
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   eb09                 | jmp                 0xb
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]

        $sequence_6 = { 89740104 b808000000 6bc800 8b5508 8b440a04 50 }
            // n = 6, score = 500
            //   89740104             | mov                 dword ptr [ecx + eax + 4], esi
            //   b808000000           | mov                 eax, 8
            //   6bc800               | imul                ecx, eax, 0
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   8b440a04             | mov                 eax, dword ptr [edx + ecx + 4]
            //   50                   | push                eax

        $sequence_7 = { 89740104 b808000000 6bc800 8b5508 }
            // n = 4, score = 500
            //   89740104             | mov                 dword ptr [ecx + eax + 4], esi
            //   b808000000           | mov                 eax, 8
            //   6bc800               | imul                ecx, eax, 0
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]

        $sequence_8 = { 0f83dc000000 8b55fc 8b4508 8b4cd004 }
            // n = 4, score = 500
            //   0f83dc000000         | jae                 0xe2
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   8b4cd004             | mov                 ecx, dword ptr [eax + edx*8 + 4]

        $sequence_9 = { 33f6 891401 89740104 b808000000 6bc800 8b5508 }
            // n = 6, score = 500
            //   33f6                 | xor                 esi, esi
            //   891401               | mov                 dword ptr [ecx + eax], edx
            //   89740104             | mov                 dword ptr [ecx + eax + 4], esi
            //   b808000000           | mov                 eax, 8
            //   6bc800               | imul                ecx, eax, 0
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]

    condition:
        7 of them and filesize < 191488
}