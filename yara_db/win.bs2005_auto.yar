rule win_bs2005_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.bs2005."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.bs2005"
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
        $sequence_0 = { 771c 0fbeca c0e006 83e947 0ac1 }
            // n = 5, score = 100
            //   771c                 | ja                  0x1e
            //   0fbeca               | movsx               ecx, dl
            //   c0e006               | shl                 al, 6
            //   83e947               | sub                 ecx, 0x47
            //   0ac1                 | or                  al, cl

        $sequence_1 = { 8d0480 03c0 83c404 50 e8???????? }
            // n = 5, score = 100
            //   8d0480               | lea                 eax, [eax + eax*4]
            //   03c0                 | add                 eax, eax
            //   83c404               | add                 esp, 4
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_2 = { 8b8f54060000 8b9104010000 52 ff15???????? 8b45fc }
            // n = 5, score = 100
            //   8b8f54060000         | mov                 ecx, dword ptr [edi + 0x654]
            //   8b9104010000         | mov                 edx, dword ptr [ecx + 0x104]
            //   52                   | push                edx
            //   ff15????????         |                     
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]

        $sequence_3 = { c785dcfeffff00000000 89b5e0feffff 899de8feffff 85c0 0f8e42010000 8d48ff }
            // n = 6, score = 100
            //   c785dcfeffff00000000     | mov    dword ptr [ebp - 0x124], 0
            //   89b5e0feffff         | mov                 dword ptr [ebp - 0x120], esi
            //   899de8feffff         | mov                 dword ptr [ebp - 0x118], ebx
            //   85c0                 | test                eax, eax
            //   0f8e42010000         | jle                 0x148
            //   8d48ff               | lea                 ecx, [eax - 1]

        $sequence_4 = { e8???????? 8b4de8 83c404 8945ec 8b45e0 6a0a 50 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8b4de8               | mov                 ecx, dword ptr [ebp - 0x18]
            //   83c404               | add                 esp, 4
            //   8945ec               | mov                 dword ptr [ebp - 0x14], eax
            //   8b45e0               | mov                 eax, dword ptr [ebp - 0x20]
            //   6a0a                 | push                0xa
            //   50                   | push                eax

        $sequence_5 = { ffd6 8b45e8 50 ffd7 8d4ddc }
            // n = 5, score = 100
            //   ffd6                 | call                esi
            //   8b45e8               | mov                 eax, dword ptr [ebp - 0x18]
            //   50                   | push                eax
            //   ffd7                 | call                edi
            //   8d4ddc               | lea                 ecx, [ebp - 0x24]

        $sequence_6 = { 3bc3 7403 50 ffd6 399dc8feffff 742c 8b95a4feffff }
            // n = 7, score = 100
            //   3bc3                 | cmp                 eax, ebx
            //   7403                 | je                  5
            //   50                   | push                eax
            //   ffd6                 | call                esi
            //   399dc8feffff         | cmp                 dword ptr [ebp - 0x138], ebx
            //   742c                 | je                  0x2e
            //   8b95a4feffff         | mov                 edx, dword ptr [ebp - 0x15c]

        $sequence_7 = { b23d 885303 5e c6430400 }
            // n = 4, score = 100
            //   b23d                 | mov                 dl, 0x3d
            //   885303               | mov                 byte ptr [ebx + 3], dl
            //   5e                   | pop                 esi
            //   c6430400             | mov                 byte ptr [ebx + 4], 0

        $sequence_8 = { 3bf3 7412 53 ff15???????? 8bce 891e e8???????? }
            // n = 7, score = 100
            //   3bf3                 | cmp                 esi, ebx
            //   7412                 | je                  0x14
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   8bce                 | mov                 ecx, esi
            //   891e                 | mov                 dword ptr [esi], ebx
            //   e8????????           |                     

        $sequence_9 = { b900000400 83c041 8818 40 49 }
            // n = 5, score = 100
            //   b900000400           | mov                 ecx, 0x40000
            //   83c041               | add                 eax, 0x41
            //   8818                 | mov                 byte ptr [eax], bl
            //   40                   | inc                 eax
            //   49                   | dec                 ecx

    condition:
        7 of them and filesize < 212992
}