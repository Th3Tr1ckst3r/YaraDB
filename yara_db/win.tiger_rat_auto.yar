rule win_tiger_rat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.tiger_rat."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.tiger_rat"
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
        $sequence_0 = { 33c0 89442438 89442430 448bcf 4533c0 }
            // n = 5, score = 200
            //   33c0                 | jmp                 5
            //   89442438             | dec                 eax
            //   89442430             | mov                 eax, ecx
            //   448bcf               | movzx               eax, byte ptr [eax]
            //   4533c0               | dec                 eax

        $sequence_1 = { 41b901000000 488bd6 488bcb e8???????? }
            // n = 4, score = 200
            //   41b901000000         | dec                 eax
            //   488bd6               | mov                 eax, dword ptr [ecx]
            //   488bcb               | jmp                 8
            //   e8????????           |                     

        $sequence_2 = { 4881ec90050000 8b01 8985c8040000 8b4104 }
            // n = 4, score = 200
            //   4881ec90050000       | test                eax, eax
            //   8b01                 | jns                 0x16
            //   8985c8040000         | dec                 eax
            //   8b4104               | mov                 eax, dword ptr [ecx]

        $sequence_3 = { 488b01 ff10 488b4f08 4c8d4c2430 }
            // n = 4, score = 200
            //   488b01               | mov                 edx, esi
            //   ff10                 | dec                 eax
            //   488b4f08             | mov                 ecx, ebx
            //   4c8d4c2430           | inc                 ecx

        $sequence_4 = { 488b01 ff10 488b4e18 488b01 }
            // n = 4, score = 200
            //   488b01               | dec                 eax
            //   ff10                 | cmp                 dword ptr [ecx + 0x18], 0x10
            //   488b4e18             | dec                 eax
            //   488b01               | sub                 esp, 0x590

        $sequence_5 = { 4881eca0000000 33c0 488bd9 488d4c2432 }
            // n = 4, score = 200
            //   4881eca0000000       | mov                 eax, dword ptr [ecx]
            //   33c0                 | mov                 dword ptr [ebp + 0x4c8], eax
            //   488bd9               | mov                 eax, dword ptr [ecx + 4]
            //   488d4c2432           | mov                 dword ptr [ebp + 0x4d0], eax

        $sequence_6 = { 488b01 eb03 488bc1 0fb600 }
            // n = 4, score = 200
            //   488b01               | inc                 ecx
            //   eb03                 | mov                 ebx, dword ptr [ebp + ebp]
            //   488bc1               | inc                 ecx
            //   0fb600               | movups              xmmword ptr [edi], xmm0

        $sequence_7 = { 488b01 8b10 895124 448b4124 4585c0 }
            // n = 5, score = 200
            //   488b01               | sub                 esp, 0x30
            //   8b10                 | dec                 ecx
            //   895124               | mov                 ebx, eax
            //   448b4124             | dec                 eax
            //   4585c0               | mov                 ecx, eax

        $sequence_8 = { 4c8d0d31eb0000 c1e918 c1e808 41bf00000080 }
            // n = 4, score = 100
            //   4c8d0d31eb0000       | jne                 0x1e6
            //   c1e918               | dec                 eax
            //   c1e808               | lea                 ecx, [0xbda0]
            //   41bf00000080         | dec                 esp

        $sequence_9 = { 488bd8 4885c0 752d ff15???????? 83f857 0f85e0010000 488d0da0bd0000 }
            // n = 7, score = 100
            //   488bd8               | dec                 eax
            //   4885c0               | mov                 ebx, eax
            //   752d                 | dec                 eax
            //   ff15????????         |                     
            //   83f857               | test                eax, eax
            //   0f85e0010000         | jne                 0x2f
            //   488d0da0bd0000       | cmp                 eax, 0x57

        $sequence_10 = { 75d4 488d1d7f6c0100 488b4bf8 4885c9 740b }
            // n = 5, score = 100
            //   75d4                 | lea                 ecx, [0xeb31]
            //   488d1d7f6c0100       | shr                 ecx, 0x18
            //   488b4bf8             | shr                 eax, 8
            //   4885c9               | inc                 ecx
            //   740b                 | mov                 edi, 0x80000000

        $sequence_11 = { 0f85d9000000 488d15d0c90000 41b810200100 488bcd e8???????? eb6b b9f4ffffff }
            // n = 7, score = 100
            //   0f85d9000000         | jne                 0xffffffd6
            //   488d15d0c90000       | dec                 eax
            //   41b810200100         | lea                 ebx, [0x16c7f]
            //   488bcd               | dec                 eax
            //   e8????????           |                     
            //   eb6b                 | mov                 ecx, dword ptr [ebx - 8]
            //   b9f4ffffff           | dec                 eax

        $sequence_12 = { 48890d???????? 488905???????? 488d05ae610000 488905???????? 488d05a0550000 488905???????? }
            // n = 6, score = 100
            //   48890d????????       |                     
            //   488905????????       |                     
            //   488d05ae610000       | test                ecx, ecx
            //   488905????????       |                     
            //   488d05a0550000       | je                  0x10
            //   488905????????       |                     

        $sequence_13 = { 8bcf e8???????? 488b7c2448 85c0 0f8440030000 488d0560250100 }
            // n = 6, score = 100
            //   8bcf                 | mov                 eax, 0x12010
            //   e8????????           |                     
            //   488b7c2448           | dec                 eax
            //   85c0                 | mov                 ecx, ebp
            //   0f8440030000         | jmp                 0x83
            //   488d0560250100       | mov                 ecx, 0xfffffff4

        $sequence_14 = { ff15???????? 8b05???????? 2305???????? ba02000000 33c9 8905???????? 8b05???????? }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   8b05????????         |                     
            //   2305????????         |                     
            //   ba02000000           | dec                 eax
            //   33c9                 | lea                 eax, [0x61ae]
            //   8905????????         |                     
            //   8b05????????         |                     

        $sequence_15 = { 4883ec30 498bd8 e8???????? 488bc8 4885c0 }
            // n = 5, score = 100
            //   4883ec30             | jne                 0xdf
            //   498bd8               | dec                 eax
            //   e8????????           |                     
            //   488bc8               | lea                 edx, [0xc9d0]
            //   4885c0               | inc                 ecx

    condition:
        7 of them and filesize < 557056
}