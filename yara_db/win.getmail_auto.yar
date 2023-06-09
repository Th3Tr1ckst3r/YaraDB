rule win_getmail_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.getmail."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.getmail"
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
        $sequence_0 = { f3a4 8b842488000000 899c248c000000 c6041800 8a5c2413 8b54241c 33c9 }
            // n = 7, score = 100
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   8b842488000000       | mov                 eax, dword ptr [esp + 0x88]
            //   899c248c000000       | mov                 dword ptr [esp + 0x8c], ebx
            //   c6041800             | mov                 byte ptr [eax + ebx], 0
            //   8a5c2413             | mov                 bl, byte ptr [esp + 0x13]
            //   8b54241c             | mov                 edx, dword ptr [esp + 0x1c]
            //   33c9                 | xor                 ecx, ecx

        $sequence_1 = { 83ec10 8bcc 89642438 50 e8???????? 8b0d???????? c644247401 }
            // n = 7, score = 100
            //   83ec10               | sub                 esp, 0x10
            //   8bcc                 | mov                 ecx, esp
            //   89642438             | mov                 dword ptr [esp + 0x38], esp
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b0d????????         |                     
            //   c644247401           | mov                 byte ptr [esp + 0x74], 1

        $sequence_2 = { c1e902 f3a5 8bca 83e103 f3a4 8b442410 395810 }
            // n = 7, score = 100
            //   c1e902               | shr                 ecx, 2
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   8bca                 | mov                 ecx, edx
            //   83e103               | and                 ecx, 3
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   8b442410             | mov                 eax, dword ptr [esp + 0x10]
            //   395810               | cmp                 dword ptr [eax + 0x10], ebx

        $sequence_3 = { ff15???????? b80f010480 5e 83c408 c3 53 }
            // n = 6, score = 100
            //   ff15????????         |                     
            //   b80f010480           | mov                 eax, 0x8004010f
            //   5e                   | pop                 esi
            //   83c408               | add                 esp, 8
            //   c3                   | ret                 
            //   53                   | push                ebx

        $sequence_4 = { 68???????? 8bce e8???????? 8b542424 8d8424b0000000 52 50 }
            // n = 7, score = 100
            //   68????????           |                     
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   8b542424             | mov                 edx, dword ptr [esp + 0x24]
            //   8d8424b0000000       | lea                 eax, [esp + 0xb0]
            //   52                   | push                edx
            //   50                   | push                eax

        $sequence_5 = { c68424bc00000001 3bce 741b 8a41ff 49 84c0 740a }
            // n = 7, score = 100
            //   c68424bc00000001     | mov                 byte ptr [esp + 0xbc], 1
            //   3bce                 | cmp                 ecx, esi
            //   741b                 | je                  0x1d
            //   8a41ff               | mov                 al, byte ptr [ecx - 1]
            //   49                   | dec                 ecx
            //   84c0                 | test                al, al
            //   740a                 | je                  0xc

        $sequence_6 = { e8???????? 8b8424d8000000 3bc3 7505 b8???????? 50 ff15???????? }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8b8424d8000000       | mov                 eax, dword ptr [esp + 0xd8]
            //   3bc3                 | cmp                 eax, ebx
            //   7505                 | jne                 7
            //   b8????????           |                     
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_7 = { 0f846c030000 8a442411 84c0 0f8560030000 8d442414 50 6a02 }
            // n = 7, score = 100
            //   0f846c030000         | je                  0x372
            //   8a442411             | mov                 al, byte ptr [esp + 0x11]
            //   84c0                 | test                al, al
            //   0f8560030000         | jne                 0x366
            //   8d442414             | lea                 eax, [esp + 0x14]
            //   50                   | push                eax
            //   6a02                 | push                2

        $sequence_8 = { 8b442410 395840 7463 8b704c 8b7848 a1???????? 3bc5 }
            // n = 7, score = 100
            //   8b442410             | mov                 eax, dword ptr [esp + 0x10]
            //   395840               | cmp                 dword ptr [eax + 0x40], ebx
            //   7463                 | je                  0x65
            //   8b704c               | mov                 esi, dword ptr [eax + 0x4c]
            //   8b7848               | mov                 edi, dword ptr [eax + 0x48]
            //   a1????????           |                     
            //   3bc5                 | cmp                 eax, ebp

        $sequence_9 = { 668b11 f6c201 7416 8088????????10 8a9405ecfdffff 8890004f4100 eb1c }
            // n = 7, score = 100
            //   668b11               | mov                 dx, word ptr [ecx]
            //   f6c201               | test                dl, 1
            //   7416                 | je                  0x18
            //   8088????????10       |                     
            //   8a9405ecfdffff       | mov                 dl, byte ptr [ebp + eax - 0x214]
            //   8890004f4100         | mov                 byte ptr [eax + 0x414f00], dl
            //   eb1c                 | jmp                 0x1e

    condition:
        7 of them and filesize < 188416
}