rule win_felismus_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.felismus."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.felismus"
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
        $sequence_0 = { 83e103 f3a4 8dbc24a8030000 83c9ff f2ae f7d1 2bf9 }
            // n = 7, score = 100
            //   83e103               | and                 ecx, 3
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   8dbc24a8030000       | lea                 edi, [esp + 0x3a8]
            //   83c9ff               | or                  ecx, 0xffffffff
            //   f2ae                 | repne scasb         al, byte ptr es:[edi]
            //   f7d1                 | not                 ecx
            //   2bf9                 | sub                 edi, ecx

        $sequence_1 = { 56 89442414 e8???????? 83c404 eb0e 6804010000 56 }
            // n = 7, score = 100
            //   56                   | push                esi
            //   89442414             | mov                 dword ptr [esp + 0x14], eax
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   eb0e                 | jmp                 0x10
            //   6804010000           | push                0x104
            //   56                   | push                esi

        $sequence_2 = { 8b4c244c 8d8402ed145a45 8bd0 d3ea 8b0d???????? d3e0 8bcf }
            // n = 7, score = 100
            //   8b4c244c             | mov                 ecx, dword ptr [esp + 0x4c]
            //   8d8402ed145a45       | lea                 eax, [edx + eax + 0x455a14ed]
            //   8bd0                 | mov                 edx, eax
            //   d3ea                 | shr                 edx, cl
            //   8b0d????????         |                     
            //   d3e0                 | shl                 eax, cl
            //   8bcf                 | mov                 ecx, edi

        $sequence_3 = { f3ab e8???????? 50 53 68???????? }
            // n = 5, score = 100
            //   f3ab                 | rep stosd           dword ptr es:[edi], eax
            //   e8????????           |                     
            //   50                   | push                eax
            //   53                   | push                ebx
            //   68????????           |                     

        $sequence_4 = { ffd3 56 ffd3 55 ffd3 83c40c 33c0 }
            // n = 7, score = 100
            //   ffd3                 | call                ebx
            //   56                   | push                esi
            //   ffd3                 | call                ebx
            //   55                   | push                ebp
            //   ffd3                 | call                ebx
            //   83c40c               | add                 esp, 0xc
            //   33c0                 | xor                 eax, eax

        $sequence_5 = { 8a46ff 83e03f 41 4f 8a907c520110 8851ff }
            // n = 6, score = 100
            //   8a46ff               | mov                 al, byte ptr [esi - 1]
            //   83e03f               | and                 eax, 0x3f
            //   41                   | inc                 ecx
            //   4f                   | dec                 edi
            //   8a907c520110         | mov                 dl, byte ptr [eax + 0x1001527c]
            //   8851ff               | mov                 byte ptr [ecx - 1], dl

        $sequence_6 = { 8b4518 83c404 890a 50 56 894a04 894a08 }
            // n = 7, score = 100
            //   8b4518               | mov                 eax, dword ptr [ebp + 0x18]
            //   83c404               | add                 esp, 4
            //   890a                 | mov                 dword ptr [edx], ecx
            //   50                   | push                eax
            //   56                   | push                esi
            //   894a04               | mov                 dword ptr [edx + 4], ecx
            //   894a08               | mov                 dword ptr [edx + 8], ecx

        $sequence_7 = { 83e00f c1ee04 c1e604 8a840620420110 884201 33c0 8a4102 }
            // n = 7, score = 100
            //   83e00f               | and                 eax, 0xf
            //   c1ee04               | shr                 esi, 4
            //   c1e604               | shl                 esi, 4
            //   8a840620420110       | mov                 al, byte ptr [esi + eax + 0x10014220]
            //   884201               | mov                 byte ptr [edx + 1], al
            //   33c0                 | xor                 eax, eax
            //   8a4102               | mov                 al, byte ptr [ecx + 2]

        $sequence_8 = { 57 ff15???????? 8b5d14 8b35???????? 50 57 53 }
            // n = 7, score = 100
            //   57                   | push                edi
            //   ff15????????         |                     
            //   8b5d14               | mov                 ebx, dword ptr [ebp + 0x14]
            //   8b35????????         |                     
            //   50                   | push                eax
            //   57                   | push                edi
            //   53                   | push                ebx

        $sequence_9 = { 83c410 56 55 c6043100 ff15???????? 56 ff15???????? }
            // n = 7, score = 100
            //   83c410               | add                 esp, 0x10
            //   56                   | push                esi
            //   55                   | push                ebp
            //   c6043100             | mov                 byte ptr [ecx + esi], 0
            //   ff15????????         |                     
            //   56                   | push                esi
            //   ff15????????         |                     

    condition:
        7 of them and filesize < 204800
}