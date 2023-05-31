rule win_badnews_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.badnews."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.badnews"
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
        $sequence_0 = { 50 e8???????? 83c404 68???????? 6804010000 ff15???????? }
            // n = 6, score = 1000
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   68????????           |                     
            //   6804010000           | push                0x104
            //   ff15????????         |                     

        $sequence_1 = { 55 8bec 8b450c 3d01020000 }
            // n = 4, score = 900
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   3d01020000           | cmp                 eax, 0x201

        $sequence_2 = { 33c5 8945fc 53 56 57 8d8534ffffff }
            // n = 6, score = 900
            //   33c5                 | xor                 eax, ebp
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   53                   | push                ebx
            //   56                   | push                esi
            //   57                   | push                edi
            //   8d8534ffffff         | lea                 eax, [ebp - 0xcc]

        $sequence_3 = { c78534ffffff47657457 c78538ffffff696e646f c7853cffffff77546578 66c78540ffffff7457 }
            // n = 4, score = 900
            //   c78534ffffff47657457     | mov    dword ptr [ebp - 0xcc], 0x57746547
            //   c78538ffffff696e646f     | mov    dword ptr [ebp - 0xc8], 0x6f646e69
            //   c7853cffffff77546578     | mov    dword ptr [ebp - 0xc4], 0x78655477
            //   66c78540ffffff7457     | mov    word ptr [ebp - 0xc0], 0x5774

        $sequence_4 = { eb02 33c9 c0e004 02c1 3423 c0c003 }
            // n = 6, score = 900
            //   eb02                 | jmp                 4
            //   33c9                 | xor                 ecx, ecx
            //   c0e004               | shl                 al, 4
            //   02c1                 | add                 al, cl
            //   3423                 | xor                 al, 0x23
            //   c0c003               | rol                 al, 3

        $sequence_5 = { c705????????33322e64 66c705????????6c6c c605????????00 ff15???????? }
            // n = 4, score = 900
            //   c705????????33322e64     |     
            //   66c705????????6c6c     |     
            //   c605????????00       |                     
            //   ff15????????         |                     

        $sequence_6 = { 6a00 d1f9 68???????? 03c9 51 }
            // n = 5, score = 800
            //   6a00                 | push                0
            //   d1f9                 | sar                 ecx, 1
            //   68????????           |                     
            //   03c9                 | add                 ecx, ecx
            //   51                   | push                ecx

        $sequence_7 = { 68???????? 6a1a 68???????? 57 }
            // n = 4, score = 800
            //   68????????           |                     
            //   6a1a                 | push                0x1a
            //   68????????           |                     
            //   57                   | push                edi

        $sequence_8 = { 57 6a00 6880000000 6a04 6a00 6a01 6a04 }
            // n = 7, score = 700
            //   57                   | push                edi
            //   6a00                 | push                0
            //   6880000000           | push                0x80
            //   6a04                 | push                4
            //   6a00                 | push                0
            //   6a01                 | push                1
            //   6a04                 | push                4

        $sequence_9 = { ff15???????? 85c0 7405 83c004 eb02 }
            // n = 5, score = 700
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7405                 | je                  7
            //   83c004               | add                 eax, 4
            //   eb02                 | jmp                 4

        $sequence_10 = { 8bf0 56 ff15???????? 50 6a40 }
            // n = 5, score = 700
            //   8bf0                 | mov                 esi, eax
            //   56                   | push                esi
            //   ff15????????         |                     
            //   50                   | push                eax
            //   6a40                 | push                0x40

        $sequence_11 = { ffd3 85c0 7403 83c608 }
            // n = 4, score = 700
            //   ffd3                 | call                ebx
            //   85c0                 | test                eax, eax
            //   7403                 | je                  5
            //   83c608               | add                 esi, 8

        $sequence_12 = { b8???????? 83c424 8d5002 668b08 }
            // n = 4, score = 500
            //   b8????????           |                     
            //   83c424               | add                 esp, 0x24
            //   8d5002               | lea                 edx, [eax + 2]
            //   668b08               | mov                 cx, word ptr [eax]

        $sequence_13 = { 0f88b3040000 3bce 0f87ab040000 8b55f4 03f9 8b3495d0a70110 8a441e04 }
            // n = 7, score = 100
            //   0f88b3040000         | js                  0x4b9
            //   3bce                 | cmp                 ecx, esi
            //   0f87ab040000         | ja                  0x4b1
            //   8b55f4               | mov                 edx, dword ptr [ebp - 0xc]
            //   03f9                 | add                 edi, ecx
            //   8b3495d0a70110       | mov                 esi, dword ptr [edx*4 + 0x1001a7d0]
            //   8a441e04             | mov                 al, byte ptr [esi + ebx + 4]

        $sequence_14 = { 8b04bdd0a70110 8bbdd8efffff 395c0130 0f8403010000 }
            // n = 4, score = 100
            //   8b04bdd0a70110       | mov                 eax, dword ptr [edi*4 + 0x1001a7d0]
            //   8bbdd8efffff         | mov                 edi, dword ptr [ebp - 0x1028]
            //   395c0130             | cmp                 dword ptr [ecx + eax + 0x30], ebx
            //   0f8403010000         | je                  0x109

        $sequence_15 = { 8d85f4faffff 6a00 50 e8???????? 83c430 c785f4faffff44000000 33db }
            // n = 7, score = 100
            //   8d85f4faffff         | lea                 eax, [ebp - 0x50c]
            //   6a00                 | push                0
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c430               | add                 esp, 0x30
            //   c785f4faffff44000000     | mov    dword ptr [ebp - 0x50c], 0x44
            //   33db                 | xor                 ebx, ebx

        $sequence_16 = { c1e106 8b0485d0a70110 80640804fe ff37 e8???????? }
            // n = 5, score = 100
            //   c1e106               | shl                 ecx, 6
            //   8b0485d0a70110       | mov                 eax, dword ptr [eax*4 + 0x1001a7d0]
            //   80640804fe           | and                 byte ptr [eax + ecx + 4], 0xfe
            //   ff37                 | push                dword ptr [edi]
            //   e8????????           |                     

        $sequence_17 = { c1e106 899528e5ffff 53 8b1495d0a70110 }
            // n = 4, score = 100
            //   c1e106               | shl                 ecx, 6
            //   899528e5ffff         | mov                 dword ptr [ebp - 0x1ad8], edx
            //   53                   | push                ebx
            //   8b1495d0a70110       | mov                 edx, dword ptr [edx*4 + 0x1001a7d0]

        $sequence_18 = { 8a45f9 88441925 8b0495d0a70110 59 884c1826 6a0d 59 }
            // n = 7, score = 100
            //   8a45f9               | mov                 al, byte ptr [ebp - 7]
            //   88441925             | mov                 byte ptr [ecx + ebx + 0x25], al
            //   8b0495d0a70110       | mov                 eax, dword ptr [edx*4 + 0x1001a7d0]
            //   59                   | pop                 ecx
            //   884c1826             | mov                 byte ptr [eax + ebx + 0x26], cl
            //   6a0d                 | push                0xd
            //   59                   | pop                 ecx

        $sequence_19 = { 75f9 2bc7 3bd0 72e5 83c664 4b 75cd }
            // n = 7, score = 100
            //   75f9                 | jne                 0xfffffffb
            //   2bc7                 | sub                 eax, edi
            //   3bd0                 | cmp                 edx, eax
            //   72e5                 | jb                  0xffffffe7
            //   83c664               | add                 esi, 0x64
            //   4b                   | dec                 ebx
            //   75cd                 | jne                 0xffffffcf

        $sequence_20 = { c745ec643d0010 894df8 8945fc 64a100000000 }
            // n = 4, score = 100
            //   c745ec643d0010       | mov                 dword ptr [ebp - 0x14], 0x10003d64
            //   894df8               | mov                 dword ptr [ebp - 8], ecx
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   64a100000000         | mov                 eax, dword ptr fs:[0]

    condition:
        7 of them and filesize < 612352
}