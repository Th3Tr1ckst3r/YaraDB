rule win_vermilion_strike_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.vermilion_strike."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.vermilion_strike"
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
        $sequence_0 = { e8???????? 56 e8???????? 83c404 837c243410 720d 8b442420 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   56                   | push                esi
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   837c243410           | cmp                 dword ptr [esp + 0x34], 0x10
            //   720d                 | jb                  0xf
            //   8b442420             | mov                 eax, dword ptr [esp + 0x20]

        $sequence_1 = { c744241400000000 8b4648 2409 3c01 751f 8b4650 85c0 }
            // n = 7, score = 200
            //   c744241400000000     | mov                 dword ptr [esp + 0x14], 0
            //   8b4648               | mov                 eax, dword ptr [esi + 0x48]
            //   2409                 | and                 al, 9
            //   3c01                 | cmp                 al, 1
            //   751f                 | jne                 0x21
            //   8b4650               | mov                 eax, dword ptr [esi + 0x50]
            //   85c0                 | test                eax, eax

        $sequence_2 = { 68???????? 64a100000000 50 b88c100000 e8???????? a1???????? 33c4 }
            // n = 7, score = 200
            //   68????????           |                     
            //   64a100000000         | mov                 eax, dword ptr fs:[0]
            //   50                   | push                eax
            //   b88c100000           | mov                 eax, 0x108c
            //   e8????????           |                     
            //   a1????????           |                     
            //   33c4                 | xor                 eax, esp

        $sequence_3 = { 88642428 88442429 a1???????? b15a 884c2421 884c2425 8bc8 }
            // n = 7, score = 200
            //   88642428             | mov                 byte ptr [esp + 0x28], ah
            //   88442429             | mov                 byte ptr [esp + 0x29], al
            //   a1????????           |                     
            //   b15a                 | mov                 cl, 0x5a
            //   884c2421             | mov                 byte ptr [esp + 0x21], cl
            //   884c2425             | mov                 byte ptr [esp + 0x25], cl
            //   8bc8                 | mov                 ecx, eax

        $sequence_4 = { 33c0 bf07000000 897e18 895e14 6aff 66894604 53 }
            // n = 7, score = 200
            //   33c0                 | xor                 eax, eax
            //   bf07000000           | mov                 edi, 7
            //   897e18               | mov                 dword ptr [esi + 0x18], edi
            //   895e14               | mov                 dword ptr [esi + 0x14], ebx
            //   6aff                 | push                -1
            //   66894604             | mov                 word ptr [esi + 4], ax
            //   53                   | push                ebx

        $sequence_5 = { 6a00 68???????? ff15???????? 85c0 7505 5d 83c40c }
            // n = 7, score = 200
            //   6a00                 | push                0
            //   68????????           |                     
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7505                 | jne                 7
            //   5d                   | pop                 ebp
            //   83c40c               | add                 esp, 0xc

        $sequence_6 = { 50 8d4c2418 895c240c 51 89742418 c744241404010000 ff15???????? }
            // n = 7, score = 200
            //   50                   | push                eax
            //   8d4c2418             | lea                 ecx, [esp + 0x18]
            //   895c240c             | mov                 dword ptr [esp + 0xc], ebx
            //   51                   | push                ecx
            //   89742418             | mov                 dword ptr [esp + 0x18], esi
            //   c744241404010000     | mov                 dword ptr [esp + 0x14], 0x104
            //   ff15????????         |                     

        $sequence_7 = { 8b0b 894c2420 eb04 895c2420 83f808 7204 8b0b }
            // n = 7, score = 200
            //   8b0b                 | mov                 ecx, dword ptr [ebx]
            //   894c2420             | mov                 dword ptr [esp + 0x20], ecx
            //   eb04                 | jmp                 6
            //   895c2420             | mov                 dword ptr [esp + 0x20], ebx
            //   83f808               | cmp                 eax, 8
            //   7204                 | jb                  6
            //   8b0b                 | mov                 ecx, dword ptr [ebx]

        $sequence_8 = { 720d 8b44241c 50 e8???????? 83c404 89742430 895c242c }
            // n = 7, score = 200
            //   720d                 | jb                  0xf
            //   8b44241c             | mov                 eax, dword ptr [esp + 0x1c]
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   89742430             | mov                 dword ptr [esp + 0x30], esi
            //   895c242c             | mov                 dword ptr [esp + 0x2c], ebx

        $sequence_9 = { 8b15???????? 68???????? 6800010000 6a00 }
            // n = 4, score = 200
            //   8b15????????         |                     
            //   68????????           |                     
            //   6800010000           | push                0x100
            //   6a00                 | push                0

    condition:
        7 of them and filesize < 540672
}