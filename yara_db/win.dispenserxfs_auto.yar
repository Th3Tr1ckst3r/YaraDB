rule win_dispenserxfs_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.dispenserxfs."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dispenserxfs"
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
        $sequence_0 = { 7556 837d0800 750b 8b4c2408 }
            // n = 4, score = 200
            //   7556                 | jne                 0x58
            //   837d0800             | cmp                 dword ptr [ebp + 8], 0
            //   750b                 | jne                 0xd
            //   8b4c2408             | mov                 ecx, dword ptr [esp + 8]

        $sequence_1 = { 50 68???????? e8???????? 8d45e8 8bcb 50 0fb7c7 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   68????????           |                     
            //   e8????????           |                     
            //   8d45e8               | lea                 eax, [ebp - 0x18]
            //   8bcb                 | mov                 ecx, ebx
            //   50                   | push                eax
            //   0fb7c7               | movzx               eax, di

        $sequence_2 = { b81c120000 e8???????? 53 56 }
            // n = 4, score = 200
            //   b81c120000           | mov                 eax, 0x121c
            //   e8????????           |                     
            //   53                   | push                ebx
            //   56                   | push                esi

        $sequence_3 = { 894df4 ff30 8d45c4 53 68???????? 6a1f }
            // n = 6, score = 200
            //   894df4               | mov                 dword ptr [ebp - 0xc], ecx
            //   ff30                 | push                dword ptr [eax]
            //   8d45c4               | lea                 eax, [ebp - 0x3c]
            //   53                   | push                ebx
            //   68????????           |                     
            //   6a1f                 | push                0x1f

        $sequence_4 = { 8b45f8 43 83c204 895df4 663bd8 0f8277ffffff }
            // n = 6, score = 200
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   43                   | inc                 ebx
            //   83c204               | add                 edx, 4
            //   895df4               | mov                 dword ptr [ebp - 0xc], ebx
            //   663bd8               | cmp                 bx, ax
            //   0f8277ffffff         | jb                  0xffffff7d

        $sequence_5 = { 48 0f84c2000000 83e80d 742e }
            // n = 4, score = 200
            //   48                   | dec                 eax
            //   0f84c2000000         | je                  0xc8
            //   83e80d               | sub                 eax, 0xd
            //   742e                 | je                  0x30

        $sequence_6 = { 731f 8b4230 0fb7cb 8b0488 }
            // n = 4, score = 200
            //   731f                 | jae                 0x21
            //   8b4230               | mov                 eax, dword ptr [edx + 0x30]
            //   0fb7cb               | movzx               ecx, bx
            //   8b0488               | mov                 eax, dword ptr [eax + ecx*4]

        $sequence_7 = { 43 ff4df4 f3a4 75af 8b5de4 }
            // n = 5, score = 200
            //   43                   | inc                 ebx
            //   ff4df4               | dec                 dword ptr [ebp - 0xc]
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   75af                 | jne                 0xffffffb1
            //   8b5de4               | mov                 ebx, dword ptr [ebp - 0x1c]

        $sequence_8 = { 8d45fc 50 6860ea0000 8d45e4 50 6838010000 }
            // n = 6, score = 200
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   50                   | push                eax
            //   6860ea0000           | push                0xea60
            //   8d45e4               | lea                 eax, [ebp - 0x1c]
            //   50                   | push                eax
            //   6838010000           | push                0x138

        $sequence_9 = { 6838010000 57 ff15???????? 5e 85c0 7516 68???????? }
            // n = 7, score = 200
            //   6838010000           | push                0x138
            //   57                   | push                edi
            //   ff15????????         |                     
            //   5e                   | pop                 esi
            //   85c0                 | test                eax, eax
            //   7516                 | jne                 0x18
            //   68????????           |                     

    condition:
        7 of them and filesize < 114688
}