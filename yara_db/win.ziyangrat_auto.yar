rule win_ziyangrat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.ziyangrat."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ziyangrat"
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
        $sequence_0 = { 55 56 57 8b03 b905000000 8bfa 8bf0 }
            // n = 7, score = 200
            //   55                   | push                ebp
            //   56                   | push                esi
            //   57                   | push                edi
            //   8b03                 | mov                 eax, dword ptr [ebx]
            //   b905000000           | mov                 ecx, 5
            //   8bfa                 | mov                 edi, edx
            //   8bf0                 | mov                 esi, eax

        $sequence_1 = { 8b442440 8b4c2424 0fbe1c02 8bc2 40 3bc1 89442420 }
            // n = 7, score = 200
            //   8b442440             | mov                 eax, dword ptr [esp + 0x40]
            //   8b4c2424             | mov                 ecx, dword ptr [esp + 0x24]
            //   0fbe1c02             | movsx               ebx, byte ptr [edx + eax]
            //   8bc2                 | mov                 eax, edx
            //   40                   | inc                 eax
            //   3bc1                 | cmp                 eax, ecx
            //   89442420             | mov                 dword ptr [esp + 0x20], eax

        $sequence_2 = { 83c110 3bc8 7404 8b7c2410 56 e8???????? 83c404 }
            // n = 7, score = 200
            //   83c110               | add                 ecx, 0x10
            //   3bc8                 | cmp                 ecx, eax
            //   7404                 | je                  6
            //   8b7c2410             | mov                 edi, dword ptr [esp + 0x10]
            //   56                   | push                esi
            //   e8????????           |                     
            //   83c404               | add                 esp, 4

        $sequence_3 = { 754a 33c0 85db 7e2e }
            // n = 4, score = 200
            //   754a                 | jne                 0x4c
            //   33c0                 | xor                 eax, eax
            //   85db                 | test                ebx, ebx
            //   7e2e                 | jle                 0x30

        $sequence_4 = { 81c440200000 c3 8d7c2444 83c9ff }
            // n = 4, score = 200
            //   81c440200000         | add                 esp, 0x2040
            //   c3                   | ret                 
            //   8d7c2444             | lea                 edi, [esp + 0x44]
            //   83c9ff               | or                  ecx, 0xffffffff

        $sequence_5 = { c644242c4b 885c242d c644241c43 c644241d44 8854241e c644241f4f 885c2421 }
            // n = 7, score = 200
            //   c644242c4b           | mov                 byte ptr [esp + 0x2c], 0x4b
            //   885c242d             | mov                 byte ptr [esp + 0x2d], bl
            //   c644241c43           | mov                 byte ptr [esp + 0x1c], 0x43
            //   c644241d44           | mov                 byte ptr [esp + 0x1d], 0x44
            //   8854241e             | mov                 byte ptr [esp + 0x1e], dl
            //   c644241f4f           | mov                 byte ptr [esp + 0x1f], 0x4f
            //   885c2421             | mov                 byte ptr [esp + 0x21], bl

        $sequence_6 = { 888c24eb000000 c68424ec00000047 c68424ed00000020 c68424ee00000044 898c24f3000000 88842400010000 898c24f7000000 }
            // n = 7, score = 200
            //   888c24eb000000       | mov                 byte ptr [esp + 0xeb], cl
            //   c68424ec00000047     | mov                 byte ptr [esp + 0xec], 0x47
            //   c68424ed00000020     | mov                 byte ptr [esp + 0xed], 0x20
            //   c68424ee00000044     | mov                 byte ptr [esp + 0xee], 0x44
            //   898c24f3000000       | mov                 dword ptr [esp + 0xf3], ecx
            //   88842400010000       | mov                 byte ptr [esp + 0x100], al
            //   898c24f7000000       | mov                 dword ptr [esp + 0xf7], ecx

        $sequence_7 = { 5b 81c494000000 c3 8b9c24a4000000 68???????? 53 8d4c2444 }
            // n = 7, score = 200
            //   5b                   | pop                 ebx
            //   81c494000000         | add                 esp, 0x94
            //   c3                   | ret                 
            //   8b9c24a4000000       | mov                 ebx, dword ptr [esp + 0xa4]
            //   68????????           |                     
            //   53                   | push                ebx
            //   8d4c2444             | lea                 ecx, [esp + 0x44]

        $sequence_8 = { 50 8bf1 ff15???????? 85c0 0f841b010000 81fe4c4f0000 0f87e6000000 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   8bf1                 | mov                 esi, ecx
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f841b010000         | je                  0x121
            //   81fe4c4f0000         | cmp                 esi, 0x4f4c
            //   0f87e6000000         | ja                  0xec

        $sequence_9 = { 50 52 e8???????? 83c40c 85c0 0f8459050000 e9???????? }
            // n = 7, score = 200
            //   50                   | push                eax
            //   52                   | push                edx
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   85c0                 | test                eax, eax
            //   0f8459050000         | je                  0x55f
            //   e9????????           |                     

    condition:
        7 of them and filesize < 188416
}