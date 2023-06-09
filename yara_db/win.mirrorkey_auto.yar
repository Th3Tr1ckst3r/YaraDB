rule win_mirrorkey_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.mirrorkey."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mirrorkey"
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
        $sequence_0 = { 7422 83c004 881c0e 3d00010000 7cb6 }
            // n = 5, score = 100
            //   7422                 | je                  0x24
            //   83c004               | add                 eax, 4
            //   881c0e               | mov                 byte ptr [esi + ecx], bl
            //   3d00010000           | cmp                 eax, 0x100
            //   7cb6                 | jl                  0xffffffb8

        $sequence_1 = { 0f1145d8 eb19 0f57c0 0f1145d8 ff15???????? }
            // n = 5, score = 100
            //   0f1145d8             | movups              xmmword ptr [ebp - 0x28], xmm0
            //   eb19                 | jmp                 0x1b
            //   0f57c0               | xorps               xmm0, xmm0
            //   0f1145d8             | movups              xmmword ptr [ebp - 0x28], xmm0
            //   ff15????????         |                     

        $sequence_2 = { c78530ffffff04c723c3 c78534ffffff1896059a c78538ffffff071280e2 c7853cffffffeb27b275 c78540ffffff09832c1a c78544ffffff1b6e5aa0 }
            // n = 6, score = 100
            //   c78530ffffff04c723c3     | mov    dword ptr [ebp - 0xd0], 0xc323c704
            //   c78534ffffff1896059a     | mov    dword ptr [ebp - 0xcc], 0x9a059618
            //   c78538ffffff071280e2     | mov    dword ptr [ebp - 0xc8], 0xe2801207
            //   c7853cffffffeb27b275     | mov    dword ptr [ebp - 0xc4], 0x75b227eb
            //   c78540ffffff09832c1a     | mov    dword ptr [ebp - 0xc0], 0x1a2c8309
            //   c78544ffffff1b6e5aa0     | mov    dword ptr [ebp - 0xbc], 0xa05a6e1b

        $sequence_3 = { 8d4de8 57 8b13 0f57c0 }
            // n = 4, score = 100
            //   8d4de8               | lea                 ecx, [ebp - 0x18]
            //   57                   | push                edi
            //   8b13                 | mov                 edx, dword ptr [ebx]
            //   0f57c0               | xorps               xmm0, xmm0

        $sequence_4 = { a3???????? ff15???????? 3db7000000 751e ff35???????? ff15???????? }
            // n = 6, score = 100
            //   a3????????           |                     
            //   ff15????????         |                     
            //   3db7000000           | cmp                 eax, 0xb7
            //   751e                 | jne                 0x20
            //   ff35????????         |                     
            //   ff15????????         |                     

        $sequence_5 = { 7232 f6c11f 7406 ff15???????? 8b41fc }
            // n = 5, score = 100
            //   7232                 | jb                  0x34
            //   f6c11f               | test                cl, 0x1f
            //   7406                 | je                  8
            //   ff15????????         |                     
            //   8b41fc               | mov                 eax, dword ptr [ecx - 4]

        $sequence_6 = { c20400 3d00100000 7225 8d4823 3bc8 }
            // n = 5, score = 100
            //   c20400               | ret                 4
            //   3d00100000           | cmp                 eax, 0x1000
            //   7225                 | jb                  0x27
            //   8d4823               | lea                 ecx, [eax + 0x23]
            //   3bc8                 | cmp                 ecx, eax

        $sequence_7 = { c78524feffffa6c2233d c78528feffffee4c950b c7852cfeffff42fac34e 8d7b04 }
            // n = 4, score = 100
            //   c78524feffffa6c2233d     | mov    dword ptr [ebp - 0x1dc], 0x3d23c2a6
            //   c78528feffffee4c950b     | mov    dword ptr [ebp - 0x1d8], 0xb954cee
            //   c7852cfeffff42fac34e     | mov    dword ptr [ebp - 0x1d4], 0x4ec3fa42
            //   8d7b04               | lea                 edi, [ebx + 4]

        $sequence_8 = { 3d00010000 7dd9 0f83b8000000 c68405fcfeffff00 }
            // n = 4, score = 100
            //   3d00010000           | cmp                 eax, 0x100
            //   7dd9                 | jge                 0xffffffdb
            //   0f83b8000000         | jae                 0xbe
            //   c68405fcfeffff00     | mov                 byte ptr [ebp + eax - 0x104], 0

        $sequence_9 = { c685e0feffff00 7504 33c9 eb12 }
            // n = 4, score = 100
            //   c685e0feffff00       | mov                 byte ptr [ebp - 0x120], 0
            //   7504                 | jne                 6
            //   33c9                 | xor                 ecx, ecx
            //   eb12                 | jmp                 0x14

    condition:
        7 of them and filesize < 117760
}