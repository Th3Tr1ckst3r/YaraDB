rule win_darkvnc_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.darkvnc."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.darkvnc"
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
        $sequence_0 = { 0bc3 448bc0 ff15???????? 4c8d4c2420 c744242001000000 4533c0 4889742428 }
            // n = 7, score = 100
            //   0bc3                 | dec                 esp
            //   448bc0               | lea                 ecx, [0xe14c]
            //   ff15????????         |                     
            //   4c8d4c2420           | inc                 esp
            //   c744242001000000     | lea                 eax, [ebp - 1]
            //   4533c0               | inc                 esp
            //   4889742428           | mov                 byte ptr [eax], dh

        $sequence_1 = { 85db 7436 4d85f6 7408 498bce e8???????? }
            // n = 6, score = 100
            //   85db                 | sar                 ecx, 3
            //   7436                 | inc                 edx
            //   4d85f6               | lea                 eax, [ecx + eax*4]
            //   7408                 | imul                ecx, dword ptr [esp + 0xa0]
            //   498bce               | mov                 eax, dword ptr [esp + 0xa0]
            //   e8????????           |                     

        $sequence_2 = { 488d052bffffff 4889442450 488d442428 4889442458 488d442440 4889442448 488b442448 }
            // n = 7, score = 100
            //   488d052bffffff       | arpl                ax, si
            //   4889442450           | dec                 ecx
            //   488d442428           | lea                 ebp, [esi + ebx]
            //   4889442458           | dec                 eax
            //   488d442440           | mov                 ecx, ebp
            //   4889442448           | dec                 ecx
            //   488b442448           | mov                 edx, ebp

        $sequence_3 = { 443b3f 0f82b8fdffff 4885f6 7412 488b0d???????? 4c8bc6 33d2 }
            // n = 7, score = 100
            //   443b3f               | mov                 dword ptr [ebp - 0x49], eax
            //   0f82b8fdffff         | dec                 eax
            //   4885f6               | mov                 dword ptr [ebp - 0x39], eax
            //   7412                 | inc                 esp
            //   488b0d????????       |                     
            //   4c8bc6               | lea                 eax, [ebx + 0x60]
            //   33d2                 | dec                 eax

        $sequence_4 = { 4423c2 0fb681f3070000 41c1e108 440bc8 450bc8 44894b14 741a }
            // n = 7, score = 100
            //   4423c2               | dec                 eax
            //   0fb681f3070000       | mov                 ecx, dword ptr [esp + 0x550]
            //   41c1e108             | dec                 eax
            //   440bc8               | mov                 dword ptr [esp + 0x60], eax
            //   450bc8               | mov                 eax, 8
            //   44894b14             | dec                 eax
            //   741a                 | imul                eax, eax, 1

        $sequence_5 = { 41d3e0 ffc0 0fb60410 4433c0 44234374 44894368 eb5e }
            // n = 7, score = 100
            //   41d3e0               | dec                 esp
            //   ffc0                 | mov                 ecx, dword ptr [esp + 0x70]
            //   0fb60410             | dec                 esp
            //   4433c0               | mov                 eax, dword ptr [esp + 0x68]
            //   44234374             | dec                 eax
            //   44894368             | mov                 edx, dword ptr [esp + 0x60]
            //   eb5e                 | dec                 eax

        $sequence_6 = { 7e10 488bcf e8???????? 85c0 0f84a4020000 488b5710 4c8d442460 }
            // n = 7, score = 100
            //   7e10                 | mov                 eax, dword ptr [esp + 0x90]
            //   488bcf               | and                 dword ptr [ebx + 0xf0], ebp
            //   e8????????           |                     
            //   85c0                 | or                  eax, 4
            //   0f84a4020000         | mov                 dword ptr [esp + 0x50], eax
            //   488b5710             | dec                 eax
            //   4c8d442460           | mov                 eax, dword ptr [esp + 0xb0]

        $sequence_7 = { ff15???????? 4533c9 4533c0 418bd7 488bcf ff15???????? 488b05???????? }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   4533c9               | mov                 dword ptr [esp + 0x20], 2
            //   4533c0               | jmp                 0x1a5c
            //   418bd7               | inc                 ecx
            //   488bcf               | movzx               edx, ax
            //   ff15????????         |                     
            //   488b05????????       |                     

        $sequence_8 = { 85c0 7465 837c242c01 7517 488b442450 488b4018 488b4c2450 }
            // n = 7, score = 100
            //   85c0                 | dec                 eax
            //   7465                 | lea                 edx, [esp + 0x30]
            //   837c242c01           | movzx               eax, word ptr [esi + 0x2bc]
            //   7517                 | inc                 esp
            //   488b442450           | cmp                 esp, eax
            //   488b4018             | jne                 0xed1
            //   488b4c2450           | movzx               eax, word ptr [esi + 0x2be]

        $sequence_9 = { 4156 4157 488b4210 4c8bc1 448b5a08 4533d2 488b1a }
            // n = 7, score = 100
            //   4156                 | inc                 esp
            //   4157                 | lea                 ecx, [esi + 1]
            //   488b4210             | inc                 ebp
            //   4c8bc1               | xor                 eax, eax
            //   448b5a08             | dec                 eax
            //   4533d2               | lea                 edx, [0x132fa]
            //   488b1a               | dec                 eax

    condition:
        7 of them and filesize < 606208
}