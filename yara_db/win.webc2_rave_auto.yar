rule win_webc2_rave_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.webc2_rave."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.webc2_rave"
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
        $sequence_0 = { 8b4c2410 6a00 51 56 53 }
            // n = 5, score = 100
            //   8b4c2410             | mov                 ecx, dword ptr [esp + 0x10]
            //   6a00                 | push                0
            //   51                   | push                ecx
            //   56                   | push                esi
            //   53                   | push                ebx

        $sequence_1 = { 7e14 55 8be9 8d7c240c c1e902 f3a5 8bcd }
            // n = 7, score = 100
            //   7e14                 | jle                 0x16
            //   55                   | push                ebp
            //   8be9                 | mov                 ebp, ecx
            //   8d7c240c             | lea                 edi, [esp + 0xc]
            //   c1e902               | shr                 ecx, 2
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   8bcd                 | mov                 ecx, ebp

        $sequence_2 = { 57 33f6 33ff 33c0 8844040c 40 }
            // n = 6, score = 100
            //   57                   | push                edi
            //   33f6                 | xor                 esi, esi
            //   33ff                 | xor                 edi, edi
            //   33c0                 | xor                 eax, eax
            //   8844040c             | mov                 byte ptr [esp + eax + 0xc], al
            //   40                   | inc                 eax

        $sequence_3 = { ff15???????? 8dbc24b0040000 83c9ff 33c0 f2ae }
            // n = 5, score = 100
            //   ff15????????         |                     
            //   8dbc24b0040000       | lea                 edi, [esp + 0x4b0]
            //   83c9ff               | or                  ecx, 0xffffffff
            //   33c0                 | xor                 eax, eax
            //   f2ae                 | repne scasb         al, byte ptr es:[edi]

        $sequence_4 = { ffd5 8b442410 85c0 7529 6a32 }
            // n = 5, score = 100
            //   ffd5                 | call                ebp
            //   8b442410             | mov                 eax, dword ptr [esp + 0x10]
            //   85c0                 | test                eax, eax
            //   7529                 | jne                 0x2b
            //   6a32                 | push                0x32

        $sequence_5 = { 83c004 c20400 83f82d 7508 b83e000000 c20400 }
            // n = 6, score = 100
            //   83c004               | add                 eax, 4
            //   c20400               | ret                 4
            //   83f82d               | cmp                 eax, 0x2d
            //   7508                 | jne                 0xa
            //   b83e000000           | mov                 eax, 0x3e
            //   c20400               | ret                 4

        $sequence_6 = { 40 3d00010000 7cf4 8b8c2410020000 }
            // n = 4, score = 100
            //   40                   | inc                 eax
            //   3d00010000           | cmp                 eax, 0x100
            //   7cf4                 | jl                  0xfffffff6
            //   8b8c2410020000       | mov                 ecx, dword ptr [esp + 0x210]

        $sequence_7 = { 49 742e 8b942430020000 8d7c2424 2bfa 897c2410 eb04 }
            // n = 7, score = 100
            //   49                   | dec                 ecx
            //   742e                 | je                  0x30
            //   8b942430020000       | mov                 edx, dword ptr [esp + 0x230]
            //   8d7c2424             | lea                 edi, [esp + 0x24]
            //   2bfa                 | sub                 edi, edx
            //   897c2410             | mov                 dword ptr [esp + 0x10], edi
            //   eb04                 | jmp                 6

        $sequence_8 = { 56 50 e8???????? 83c408 8944241c 881c30 }
            // n = 6, score = 100
            //   56                   | push                esi
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   8944241c             | mov                 dword ptr [esp + 0x1c], eax
            //   881c30               | mov                 byte ptr [eax + esi], bl

        $sequence_9 = { 51 ff15???????? 83c408 e9???????? 8d54244c }
            // n = 5, score = 100
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   83c408               | add                 esp, 8
            //   e9????????           |                     
            //   8d54244c             | lea                 edx, [esp + 0x4c]

    condition:
        7 of them and filesize < 57344
}