rule win_gratem_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.gratem."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.gratem"
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
        $sequence_0 = { 33c1 3c02 750a 0fb64203 33c1 3c45 }
            // n = 6, score = 100
            //   33c1                 | xor                 eax, ecx
            //   3c02                 | cmp                 al, 2
            //   750a                 | jne                 0xc
            //   0fb64203             | movzx               eax, byte ptr [edx + 3]
            //   33c1                 | xor                 eax, ecx
            //   3c45                 | cmp                 al, 0x45

        $sequence_1 = { 0f8469010000 0fb7048d64bc4000 41 6685c0 75e4 }
            // n = 5, score = 100
            //   0f8469010000         | je                  0x16f
            //   0fb7048d64bc4000     | movzx               eax, word ptr [ecx*4 + 0x40bc64]
            //   41                   | inc                 ecx
            //   6685c0               | test                ax, ax
            //   75e4                 | jne                 0xffffffe6

        $sequence_2 = { 0fb7c0 baa3170000 663bc2 0f8402030000 0fb7048d64bc4000 41 }
            // n = 6, score = 100
            //   0fb7c0               | movzx               eax, ax
            //   baa3170000           | mov                 edx, 0x17a3
            //   663bc2               | cmp                 ax, dx
            //   0f8402030000         | je                  0x308
            //   0fb7048d64bc4000     | movzx               eax, word ptr [ecx*4 + 0x40bc64]
            //   41                   | inc                 ecx

        $sequence_3 = { 6685c0 741f 0fb7c0 ba6cc70000 663bc2 }
            // n = 5, score = 100
            //   6685c0               | test                ax, ax
            //   741f                 | je                  0x21
            //   0fb7c0               | movzx               eax, ax
            //   ba6cc70000           | mov                 edx, 0xc76c
            //   663bc2               | cmp                 ax, dx

        $sequence_4 = { 5e 33cc 33c0 e8???????? 81c4d4070000 c21000 3b0d???????? }
            // n = 7, score = 100
            //   5e                   | pop                 esi
            //   33cc                 | xor                 ecx, esp
            //   33c0                 | xor                 eax, eax
            //   e8????????           |                     
            //   81c4d4070000         | add                 esp, 0x7d4
            //   c21000               | ret                 0x10
            //   3b0d????????         |                     

        $sequence_5 = { c7430801000000 e8???????? 6a06 89430c 8d4310 8d8944b44000 5a }
            // n = 7, score = 100
            //   c7430801000000       | mov                 dword ptr [ebx + 8], 1
            //   e8????????           |                     
            //   6a06                 | push                6
            //   89430c               | mov                 dword ptr [ebx + 0xc], eax
            //   8d4310               | lea                 eax, [ebx + 0x10]
            //   8d8944b44000         | lea                 ecx, [ecx + 0x40b444]
            //   5a                   | pop                 edx

        $sequence_6 = { 83e801 79f6 eb04 c6040400 8d1424 52 ff15???????? }
            // n = 7, score = 100
            //   83e801               | sub                 eax, 1
            //   79f6                 | jns                 0xfffffff8
            //   eb04                 | jmp                 6
            //   c6040400             | mov                 byte ptr [esp + eax], 0
            //   8d1424               | lea                 edx, [esp]
            //   52                   | push                edx
            //   ff15????????         |                     

        $sequence_7 = { ff15???????? 68???????? 8d442418 50 ff15???????? 53 53 }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   68????????           |                     
            //   8d442418             | lea                 eax, [esp + 0x18]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   53                   | push                ebx
            //   53                   | push                ebx

        $sequence_8 = { ba6cc70000 663bc2 0f84d6040000 0fb7048d64bc4000 41 6685c0 }
            // n = 6, score = 100
            //   ba6cc70000           | mov                 edx, 0xc76c
            //   663bc2               | cmp                 ax, dx
            //   0f84d6040000         | je                  0x4dc
            //   0fb7048d64bc4000     | movzx               eax, word ptr [ecx*4 + 0x40bc64]
            //   41                   | inc                 ecx
            //   6685c0               | test                ax, ax

        $sequence_9 = { 0f8428010000 6a00 6a00 8d4c244c }
            // n = 4, score = 100
            //   0f8428010000         | je                  0x12e
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   8d4c244c             | lea                 ecx, [esp + 0x4c]

    condition:
        7 of them and filesize < 155648
}