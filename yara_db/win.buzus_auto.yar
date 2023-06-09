rule win_buzus_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.buzus."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.buzus"
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
        $sequence_0 = { 897df4 897df8 897dfc 897df0 e8???????? 83f80f 59 }
            // n = 7, score = 100
            //   897df4               | mov                 dword ptr [ebp - 0xc], edi
            //   897df8               | mov                 dword ptr [ebp - 8], edi
            //   897dfc               | mov                 dword ptr [ebp - 4], edi
            //   897df0               | mov                 dword ptr [ebp - 0x10], edi
            //   e8????????           |                     
            //   83f80f               | cmp                 eax, 0xf
            //   59                   | pop                 ecx

        $sequence_1 = { 746e 8d85d4faffff 50 57 e8???????? 85c0 }
            // n = 6, score = 100
            //   746e                 | je                  0x70
            //   8d85d4faffff         | lea                 eax, [ebp - 0x52c]
            //   50                   | push                eax
            //   57                   | push                edi
            //   e8????????           |                     
            //   85c0                 | test                eax, eax

        $sequence_2 = { 55 8bec 81ec2c050000 b8???????? ba???????? 89858cfcffff }
            // n = 6, score = 100
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   81ec2c050000         | sub                 esp, 0x52c
            //   b8????????           |                     
            //   ba????????           |                     
            //   89858cfcffff         | mov                 dword ptr [ebp - 0x374], eax

        $sequence_3 = { 8d85b0f9ffff 50 e8???????? 6a40 8d85b0feffff ff7508 50 }
            // n = 7, score = 100
            //   8d85b0f9ffff         | lea                 eax, [ebp - 0x650]
            //   50                   | push                eax
            //   e8????????           |                     
            //   6a40                 | push                0x40
            //   8d85b0feffff         | lea                 eax, [ebp - 0x150]
            //   ff7508               | push                dword ptr [ebp + 8]
            //   50                   | push                eax

        $sequence_4 = { 5e 5d 5b 81c410500000 c3 33c0 }
            // n = 6, score = 100
            //   5e                   | pop                 esi
            //   5d                   | pop                 ebp
            //   5b                   | pop                 ebx
            //   81c410500000         | add                 esp, 0x5010
            //   c3                   | ret                 
            //   33c0                 | xor                 eax, eax

        $sequence_5 = { ffd7 83c40c 68???????? ff15???????? 8945fc 6a02 8d45fc }
            // n = 7, score = 100
            //   ffd7                 | call                edi
            //   83c40c               | add                 esp, 0xc
            //   68????????           |                     
            //   ff15????????         |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   6a02                 | push                2
            //   8d45fc               | lea                 eax, [ebp - 4]

        $sequence_6 = { 50 6a01 5e 56 53 68???????? ff75fc }
            // n = 7, score = 100
            //   50                   | push                eax
            //   6a01                 | push                1
            //   5e                   | pop                 esi
            //   56                   | push                esi
            //   53                   | push                ebx
            //   68????????           |                     
            //   ff75fc               | push                dword ptr [ebp - 4]

        $sequence_7 = { 3bc3 0f84e4fdffff c60078 8d8524ffffff 6a30 50 ffd6 }
            // n = 7, score = 100
            //   3bc3                 | cmp                 eax, ebx
            //   0f84e4fdffff         | je                  0xfffffdea
            //   c60078               | mov                 byte ptr [eax], 0x78
            //   8d8524ffffff         | lea                 eax, [ebp - 0xdc]
            //   6a30                 | push                0x30
            //   50                   | push                eax
            //   ffd6                 | call                esi

        $sequence_8 = { 8bc1 56 52 50 }
            // n = 4, score = 100
            //   8bc1                 | mov                 eax, ecx
            //   56                   | push                esi
            //   52                   | push                edx
            //   50                   | push                eax

        $sequence_9 = { 53 c785b8fcffff28010000 e8???????? 85c0 746e 8d85b8fcffff 50 }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   c785b8fcffff28010000     | mov    dword ptr [ebp - 0x348], 0x128
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   746e                 | je                  0x70
            //   8d85b8fcffff         | lea                 eax, [ebp - 0x348]
            //   50                   | push                eax

    condition:
        7 of them and filesize < 679936
}