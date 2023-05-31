rule win_fakeword_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.fakeword."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.fakeword"
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
        $sequence_0 = { 68???????? 68???????? c705????????01000000 ff15???????? 5e 59 c3 }
            // n = 7, score = 200
            //   68????????           |                     
            //   68????????           |                     
            //   c705????????01000000     |     
            //   ff15????????         |                     
            //   5e                   | pop                 esi
            //   59                   | pop                 ecx
            //   c3                   | ret                 

        $sequence_1 = { 7405 e8???????? 6800040000 6a00 ff15???????? 50 ff15???????? }
            // n = 7, score = 200
            //   7405                 | je                  7
            //   e8????????           |                     
            //   6800040000           | push                0x400
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_2 = { 57 6a00 55 ff15???????? 8b742418 50 68???????? }
            // n = 7, score = 200
            //   57                   | push                edi
            //   6a00                 | push                0
            //   55                   | push                ebp
            //   ff15????????         |                     
            //   8b742418             | mov                 esi, dword ptr [esp + 0x18]
            //   50                   | push                eax
            //   68????????           |                     

        $sequence_3 = { 81ec5c060000 53 55 56 57 b940000000 }
            // n = 6, score = 200
            //   81ec5c060000         | sub                 esp, 0x65c
            //   53                   | push                ebx
            //   55                   | push                ebp
            //   56                   | push                esi
            //   57                   | push                edi
            //   b940000000           | mov                 ecx, 0x40

        $sequence_4 = { 8be8 83fdff 896c2408 0f84e6000000 8bbc243c040000 8b0d???????? }
            // n = 6, score = 200
            //   8be8                 | mov                 ebp, eax
            //   83fdff               | cmp                 ebp, -1
            //   896c2408             | mov                 dword ptr [esp + 8], ebp
            //   0f84e6000000         | je                  0xec
            //   8bbc243c040000       | mov                 edi, dword ptr [esp + 0x43c]
            //   8b0d????????         |                     

        $sequence_5 = { 66c744247c0100 66895c247e 89b42480000000 89b42484000000 }
            // n = 4, score = 200
            //   66c744247c0100       | mov                 word ptr [esp + 0x7c], 1
            //   66895c247e           | mov                 word ptr [esp + 0x7e], bx
            //   89b42480000000       | mov                 dword ptr [esp + 0x80], esi
            //   89b42484000000       | mov                 dword ptr [esp + 0x84], esi

        $sequence_6 = { 68???????? e9???????? 8b542450 68???????? 52 ff15???????? 5f }
            // n = 7, score = 200
            //   68????????           |                     
            //   e9????????           |                     
            //   8b542450             | mov                 edx, dword ptr [esp + 0x50]
            //   68????????           |                     
            //   52                   | push                edx
            //   ff15????????         |                     
            //   5f                   | pop                 edi

        $sequence_7 = { ff15???????? 8b742414 55 53 6a50 8d7e04 68???????? }
            // n = 7, score = 200
            //   ff15????????         |                     
            //   8b742414             | mov                 esi, dword ptr [esp + 0x14]
            //   55                   | push                ebp
            //   53                   | push                ebx
            //   6a50                 | push                0x50
            //   8d7e04               | lea                 edi, [esi + 4]
            //   68????????           |                     

        $sequence_8 = { b808000000 5e 83c440 c3 81fea1000000 7528 }
            // n = 6, score = 200
            //   b808000000           | mov                 eax, 8
            //   5e                   | pop                 esi
            //   83c440               | add                 esp, 0x40
            //   c3                   | ret                 
            //   81fea1000000         | cmp                 esi, 0xa1
            //   7528                 | jne                 0x2a

        $sequence_9 = { 85c0 0f84dd010000 8b4c2450 68???????? 51 ff15???????? 5f }
            // n = 7, score = 200
            //   85c0                 | test                eax, eax
            //   0f84dd010000         | je                  0x1e3
            //   8b4c2450             | mov                 ecx, dword ptr [esp + 0x50]
            //   68????????           |                     
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   5f                   | pop                 edi

    condition:
        7 of them and filesize < 98304
}