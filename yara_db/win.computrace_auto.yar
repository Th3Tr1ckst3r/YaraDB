rule win_computrace_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.computrace."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.computrace"
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
        $sequence_0 = { 74bb 53 e8???????? 8945f8 }
            // n = 4, score = 200
            //   74bb                 | je                  0xffffffbd
            //   53                   | push                ebx
            //   e8????????           |                     
            //   8945f8               | mov                 dword ptr [ebp - 8], eax

        $sequence_1 = { 50 e8???????? c7466c03000000 8d45d8 50 }
            // n = 5, score = 200
            //   50                   | push                eax
            //   e8????????           |                     
            //   c7466c03000000       | mov                 dword ptr [esi + 0x6c], 3
            //   8d45d8               | lea                 eax, [ebp - 0x28]
            //   50                   | push                eax

        $sequence_2 = { 8d8558ffffff 50 e8???????? 3bc7 0f8eaa000000 }
            // n = 5, score = 200
            //   8d8558ffffff         | lea                 eax, [ebp - 0xa8]
            //   50                   | push                eax
            //   e8????????           |                     
            //   3bc7                 | cmp                 eax, edi
            //   0f8eaa000000         | jle                 0xb0

        $sequence_3 = { e8???????? 56 ff15???????? 5e c20800 68e4000000 68???????? }
            // n = 7, score = 200
            //   e8????????           |                     
            //   56                   | push                esi
            //   ff15????????         |                     
            //   5e                   | pop                 esi
            //   c20800               | ret                 8
            //   68e4000000           | push                0xe4
            //   68????????           |                     

        $sequence_4 = { 51 56 33f6 3935???????? 7525 }
            // n = 5, score = 200
            //   51                   | push                ecx
            //   56                   | push                esi
            //   33f6                 | xor                 esi, esi
            //   3935????????         |                     
            //   7525                 | jne                 0x27

        $sequence_5 = { e8???????? c745e005000000 897ddc ff4de0 8b45e0 48 746b }
            // n = 7, score = 200
            //   e8????????           |                     
            //   c745e005000000       | mov                 dword ptr [ebp - 0x20], 5
            //   897ddc               | mov                 dword ptr [ebp - 0x24], edi
            //   ff4de0               | dec                 dword ptr [ebp - 0x20]
            //   8b45e0               | mov                 eax, dword ptr [ebp - 0x20]
            //   48                   | dec                 eax
            //   746b                 | je                  0x6d

        $sequence_6 = { 5b eb0d 8d45d8 50 }
            // n = 4, score = 200
            //   5b                   | pop                 ebx
            //   eb0d                 | jmp                 0xf
            //   8d45d8               | lea                 eax, [ebp - 0x28]
            //   50                   | push                eax

        $sequence_7 = { e8???????? 8b86983b0000 3b869c3b0000 7c41 }
            // n = 4, score = 200
            //   e8????????           |                     
            //   8b86983b0000         | mov                 eax, dword ptr [esi + 0x3b98]
            //   3b869c3b0000         | cmp                 eax, dword ptr [esi + 0x3b9c]
            //   7c41                 | jl                  0x43

        $sequence_8 = { 7507 6a00 e8???????? c20400 6a10 }
            // n = 5, score = 200
            //   7507                 | jne                 9
            //   6a00                 | push                0
            //   e8????????           |                     
            //   c20400               | ret                 4
            //   6a10                 | push                0x10

        $sequence_9 = { 6830750000 57 ffd3 57 ff15???????? ff35???????? ff15???????? }
            // n = 7, score = 200
            //   6830750000           | push                0x7530
            //   57                   | push                edi
            //   ffd3                 | call                ebx
            //   57                   | push                edi
            //   ff15????????         |                     
            //   ff35????????         |                     
            //   ff15????????         |                     

    condition:
        7 of them and filesize < 73728
}