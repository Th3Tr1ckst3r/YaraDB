rule win_blackrevolution_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2020-10-14"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.5.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.blackrevolution"
        malpedia_rule_date = "20201014"
        malpedia_hash = "a7e3bd57eaf12bf3ea29a863c041091ba3af9ac9"
        malpedia_version = "20201014"
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
        $sequence_0 = { ba04000000 e8???????? 8b4de4 ba???????? 8bc3 e8???????? 8bc3 }
            // n = 7, score = 300
            //   ba04000000           | mov                 edx, 4
            //   e8????????           |                     
            //   8b4de4               | mov                 ecx, dword ptr [ebp - 0x1c]
            //   ba????????           |                     
            //   8bc3                 | mov                 eax, ebx
            //   e8????????           |                     
            //   8bc3                 | mov                 eax, ebx

        $sequence_1 = { b9???????? 33d2 33c0 e8???????? c705????????01000000 }
            // n = 5, score = 300
            //   b9????????           |                     
            //   33d2                 | xor                 edx, edx
            //   33c0                 | xor                 eax, eax
            //   e8????????           |                     
            //   c705????????01000000     |     

        $sequence_2 = { 83fbff 0f84f2000000 c785d4feffff28010000 8d95d4feffff 8bc3 e8???????? }
            // n = 6, score = 300
            //   83fbff               | cmp                 ebx, -1
            //   0f84f2000000         | je                  0xf8
            //   c785d4feffff28010000     | mov    dword ptr [ebp - 0x12c], 0x128
            //   8d95d4feffff         | lea                 edx, [ebp - 0x12c]
            //   8bc3                 | mov                 eax, ebx
            //   e8????????           |                     

        $sequence_3 = { 8b55fc e8???????? 8b85a8feffff e8???????? 8d45f8 }
            // n = 5, score = 300
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]
            //   e8????????           |                     
            //   8b85a8feffff         | mov                 eax, dword ptr [ebp - 0x158]
            //   e8????????           |                     
            //   8d45f8               | lea                 eax, [ebp - 8]

        $sequence_4 = { 8b55e4 8b4508 e8???????? 8b4508 46 ff4dec }
            // n = 6, score = 300
            //   8b55e4               | mov                 edx, dword ptr [ebp - 0x1c]
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   e8????????           |                     
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   46                   | inc                 esi
            //   ff4dec               | dec                 dword ptr [ebp - 0x14]

        $sequence_5 = { ba???????? 8b45f4 e8???????? ff75e8 }
            // n = 4, score = 300
            //   ba????????           |                     
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   e8????????           |                     
            //   ff75e8               | push                dword ptr [ebp - 0x18]

        $sequence_6 = { 50 e8???????? 8d85a8feffff 8b4df8 }
            // n = 4, score = 300
            //   50                   | push                eax
            //   e8????????           |                     
            //   8d85a8feffff         | lea                 eax, [ebp - 0x158]
            //   8b4df8               | mov                 ecx, dword ptr [ebp - 8]

        $sequence_7 = { 50 e8???????? 8bc6 8bd4 b900100000 }
            // n = 5, score = 300
            //   50                   | push                eax
            //   e8????????           |                     
            //   8bc6                 | mov                 eax, esi
            //   8bd4                 | mov                 edx, esp
            //   b900100000           | mov                 ecx, 0x1000

        $sequence_8 = { 740d 8b45f8 8b5030 8bc6 8b08 ff516c }
            // n = 6, score = 300
            //   740d                 | je                  0xf
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   8b5030               | mov                 edx, dword ptr [eax + 0x30]
            //   8bc6                 | mov                 eax, esi
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   ff516c               | call                dword ptr [ecx + 0x6c]

        $sequence_9 = { e8???????? 8bd8 8d4338 ba???????? e8???????? c6433c01 68???????? }
            // n = 7, score = 300
            //   e8????????           |                     
            //   8bd8                 | mov                 ebx, eax
            //   8d4338               | lea                 eax, [ebx + 0x38]
            //   ba????????           |                     
            //   e8????????           |                     
            //   c6433c01             | mov                 byte ptr [ebx + 0x3c], 1
            //   68????????           |                     

    condition:
        7 of them and filesize < 1220608
}