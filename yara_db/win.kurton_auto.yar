rule win_kurton_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.kurton."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kurton"
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
        $sequence_0 = { 7410 6860ea0000 ffd7 e8???????? 85c0 75f0 }
            // n = 6, score = 100
            //   7410                 | je                  0x12
            //   6860ea0000           | push                0xea60
            //   ffd7                 | call                edi
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   75f0                 | jne                 0xfffffff2

        $sequence_1 = { 51 8bce e8???????? 84c0 0f841c010000 b91f000000 33c0 }
            // n = 7, score = 100
            //   51                   | push                ecx
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   0f841c010000         | je                  0x122
            //   b91f000000           | mov                 ecx, 0x1f
            //   33c0                 | xor                 eax, eax

        $sequence_2 = { 8dbc24c5000000 c68424c400000000 f3ab 66ab }
            // n = 4, score = 100
            //   8dbc24c5000000       | lea                 edi, [esp + 0xc5]
            //   c68424c400000000     | mov                 byte ptr [esp + 0xc4], 0
            //   f3ab                 | rep stosd           dword ptr es:[edi], eax
            //   66ab                 | stosw               word ptr es:[edi], ax

        $sequence_3 = { 8bce e8???????? b001 5e 83c408 c3 51 }
            // n = 7, score = 100
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   b001                 | mov                 al, 1
            //   5e                   | pop                 esi
            //   83c408               | add                 esp, 8
            //   c3                   | ret                 
            //   51                   | push                ecx

        $sequence_4 = { ff15???????? 85c0 741d 68e8030000 ff15???????? 8b4e7c }
            // n = 6, score = 100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   741d                 | je                  0x1f
            //   68e8030000           | push                0x3e8
            //   ff15????????         |                     
            //   8b4e7c               | mov                 ecx, dword ptr [esi + 0x7c]

        $sequence_5 = { ffd7 5f eb59 68???????? 68???????? e8???????? }
            // n = 6, score = 100
            //   ffd7                 | call                edi
            //   5f                   | pop                 edi
            //   eb59                 | jmp                 0x5b
            //   68????????           |                     
            //   68????????           |                     
            //   e8????????           |                     

        $sequence_6 = { 8954242c c744241c00000000 89542430 8d54241c 52 57 ff15???????? }
            // n = 7, score = 100
            //   8954242c             | mov                 dword ptr [esp + 0x2c], edx
            //   c744241c00000000     | mov                 dword ptr [esp + 0x1c], 0
            //   89542430             | mov                 dword ptr [esp + 0x30], edx
            //   8d54241c             | lea                 edx, [esp + 0x1c]
            //   52                   | push                edx
            //   57                   | push                edi
            //   ff15????????         |                     

        $sequence_7 = { 7552 833c85cc58021000 53 57 8d3c85cc580210 bb00100000 7520 }
            // n = 7, score = 100
            //   7552                 | jne                 0x54
            //   833c85cc58021000     | cmp                 dword ptr [eax*4 + 0x100258cc], 0
            //   53                   | push                ebx
            //   57                   | push                edi
            //   8d3c85cc580210       | lea                 edi, [eax*4 + 0x100258cc]
            //   bb00100000           | mov                 ebx, 0x1000
            //   7520                 | jne                 0x22

        $sequence_8 = { e8???????? 85c0 741e 8b44241c 53 6a00 68???????? }
            // n = 7, score = 100
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   741e                 | je                  0x20
            //   8b44241c             | mov                 eax, dword ptr [esp + 0x1c]
            //   53                   | push                ebx
            //   6a00                 | push                0
            //   68????????           |                     

        $sequence_9 = { 895de0 895ddc 895dfc 897de4 740a 803800 7405 }
            // n = 7, score = 100
            //   895de0               | mov                 dword ptr [ebp - 0x20], ebx
            //   895ddc               | mov                 dword ptr [ebp - 0x24], ebx
            //   895dfc               | mov                 dword ptr [ebp - 4], ebx
            //   897de4               | mov                 dword ptr [ebp - 0x1c], edi
            //   740a                 | je                  0xc
            //   803800               | cmp                 byte ptr [eax], 0
            //   7405                 | je                  7

    condition:
        7 of them and filesize < 344064
}