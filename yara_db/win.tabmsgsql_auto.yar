rule win_tabmsgsql_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.tabmsgsql."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.tabmsgsql"
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
        $sequence_0 = { 52 68???????? ffd7 83c408 8d4c240c 51 68???????? }
            // n = 7, score = 100
            //   52                   | push                edx
            //   68????????           |                     
            //   ffd7                 | call                edi
            //   83c408               | add                 esp, 8
            //   8d4c240c             | lea                 ecx, [esp + 0xc]
            //   51                   | push                ecx
            //   68????????           |                     

        $sequence_1 = { 56 e8???????? 83c410 85c0 0f8404ffffff be???????? 8d45c8 }
            // n = 7, score = 100
            //   56                   | push                esi
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10
            //   85c0                 | test                eax, eax
            //   0f8404ffffff         | je                  0xffffff0a
            //   be????????           |                     
            //   8d45c8               | lea                 eax, [ebp - 0x38]

        $sequence_2 = { 51 50 e8???????? 83c408 eb62 }
            // n = 5, score = 100
            //   51                   | push                ecx
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   eb62                 | jmp                 0x64

        $sequence_3 = { 33c0 eb05 1bc0 83d8ff 3bc3 0f84b0090000 be???????? }
            // n = 7, score = 100
            //   33c0                 | xor                 eax, eax
            //   eb05                 | jmp                 7
            //   1bc0                 | sbb                 eax, eax
            //   83d8ff               | sbb                 eax, -1
            //   3bc3                 | cmp                 eax, ebx
            //   0f84b0090000         | je                  0x9b6
            //   be????????           |                     

        $sequence_4 = { 55 52 e8???????? 83c418 85c0 7599 5f }
            // n = 7, score = 100
            //   55                   | push                ebp
            //   52                   | push                edx
            //   e8????????           |                     
            //   83c418               | add                 esp, 0x18
            //   85c0                 | test                eax, eax
            //   7599                 | jne                 0xffffff9b
            //   5f                   | pop                 edi

        $sequence_5 = { 8b4c242c c644241400 66ab aa 8b44242e 81e1ffff0000 25ffff0000 }
            // n = 7, score = 100
            //   8b4c242c             | mov                 ecx, dword ptr [esp + 0x2c]
            //   c644241400           | mov                 byte ptr [esp + 0x14], 0
            //   66ab                 | stosw               word ptr es:[edi], ax
            //   aa                   | stosb               byte ptr es:[edi], al
            //   8b44242e             | mov                 eax, dword ptr [esp + 0x2e]
            //   81e1ffff0000         | and                 ecx, 0xffff
            //   25ffff0000           | and                 eax, 0xffff

        $sequence_6 = { 0f8eb2000000 8b7c2414 0fbe05???????? 33db 8a1c39 3bd8 }
            // n = 6, score = 100
            //   0f8eb2000000         | jle                 0xb8
            //   8b7c2414             | mov                 edi, dword ptr [esp + 0x14]
            //   0fbe05????????       |                     
            //   33db                 | xor                 ebx, ebx
            //   8a1c39               | mov                 bl, byte ptr [ecx + edi]
            //   3bd8                 | cmp                 ebx, eax

        $sequence_7 = { c1e902 f3a5 8bca 8d85c216fcff 83e103 }
            // n = 5, score = 100
            //   c1e902               | shr                 ecx, 2
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   8bca                 | mov                 ecx, edx
            //   8d85c216fcff         | lea                 eax, [ebp - 0x3e93e]
            //   83e103               | and                 ecx, 3

        $sequence_8 = { f3a5 8bca 83e103 f3a4 ff15???????? 5e }
            // n = 6, score = 100
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   8bca                 | mov                 ecx, edx
            //   83e103               | and                 ecx, 3
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   ff15????????         |                     
            //   5e                   | pop                 esi

        $sequence_9 = { 3bc3 0f84d7000000 b9???????? e8???????? 3bc3 }
            // n = 5, score = 100
            //   3bc3                 | cmp                 eax, ebx
            //   0f84d7000000         | je                  0xdd
            //   b9????????           |                     
            //   e8????????           |                     
            //   3bc3                 | cmp                 eax, ebx

    condition:
        7 of them and filesize < 163840
}