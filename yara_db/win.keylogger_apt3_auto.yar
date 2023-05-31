rule win_keylogger_apt3_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.keylogger_apt3."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.keylogger_apt3"
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
        $sequence_0 = { be???????? 90 837e04ff 750e 8b0e 394c2414 }
            // n = 6, score = 300
            //   be????????           |                     
            //   90                   | nop                 
            //   837e04ff             | cmp                 dword ptr [esi + 4], -1
            //   750e                 | jne                 0x10
            //   8b0e                 | mov                 ecx, dword ptr [esi]
            //   394c2414             | cmp                 dword ptr [esp + 0x14], ecx

        $sequence_1 = { 52 83c048 50 ffd7 8b15???????? 8d8ec0010000 51 }
            // n = 7, score = 300
            //   52                   | push                edx
            //   83c048               | add                 eax, 0x48
            //   50                   | push                eax
            //   ffd7                 | call                edi
            //   8b15????????         |                     
            //   8d8ec0010000         | lea                 ecx, [esi + 0x1c0]
            //   51                   | push                ecx

        $sequence_2 = { 51 ffd7 a1???????? 8d96b0010000 }
            // n = 4, score = 300
            //   51                   | push                ecx
            //   ffd7                 | call                edi
            //   a1????????           |                     
            //   8d96b0010000         | lea                 edx, [esi + 0x1b0]

        $sequence_3 = { 85c0 7416 8d3c28 8b442430 50 57 }
            // n = 6, score = 300
            //   85c0                 | test                eax, eax
            //   7416                 | je                  0x18
            //   8d3c28               | lea                 edi, [eax + ebp]
            //   8b442430             | mov                 eax, dword ptr [esp + 0x30]
            //   50                   | push                eax
            //   57                   | push                edi

        $sequence_4 = { 6a0c 51 66894c240c 8d4c240c ba02000000 }
            // n = 5, score = 300
            //   6a0c                 | push                0xc
            //   51                   | push                ecx
            //   66894c240c           | mov                 word ptr [esp + 0xc], cx
            //   8d4c240c             | lea                 ecx, [esp + 0xc]
            //   ba02000000           | mov                 edx, 2

        $sequence_5 = { 81c114010000 03c7 81f9???????? 7ceb 8d7c00ff }
            // n = 5, score = 300
            //   81c114010000         | add                 ecx, 0x114
            //   03c7                 | add                 eax, edi
            //   81f9????????         |                     
            //   7ceb                 | jl                  0xffffffed
            //   8d7c00ff             | lea                 edi, [eax + eax - 1]

        $sequence_6 = { ff15???????? 8bf0 85f6 752e ff15???????? 3d31040000 }
            // n = 6, score = 300
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   85f6                 | test                esi, esi
            //   752e                 | jne                 0x30
            //   ff15????????         |                     
            //   3d31040000           | cmp                 eax, 0x431

        $sequence_7 = { 50 0fb68694010000 51 52 50 8d4c245c 68???????? }
            // n = 7, score = 300
            //   50                   | push                eax
            //   0fb68694010000       | movzx               eax, byte ptr [esi + 0x194]
            //   51                   | push                ecx
            //   52                   | push                edx
            //   50                   | push                eax
            //   8d4c245c             | lea                 ecx, [esp + 0x5c]
            //   68????????           |                     

        $sequence_8 = { 8d4c2434 6a04 51 e8???????? 6a00 6a08 56 }
            // n = 7, score = 300
            //   8d4c2434             | lea                 ecx, [esp + 0x34]
            //   6a04                 | push                4
            //   51                   | push                ecx
            //   e8????????           |                     
            //   6a00                 | push                0
            //   6a08                 | push                8
            //   56                   | push                esi

        $sequence_9 = { e8???????? 8d4d0c 51 50 8d5508 52 }
            // n = 6, score = 300
            //   e8????????           |                     
            //   8d4d0c               | lea                 ecx, [ebp + 0xc]
            //   51                   | push                ecx
            //   50                   | push                eax
            //   8d5508               | lea                 edx, [ebp + 8]
            //   52                   | push                edx

    condition:
        7 of them and filesize < 761856
}