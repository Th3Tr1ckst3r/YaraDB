rule win_ehdevel_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.ehdevel."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ehdevel"
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
        $sequence_0 = { 8d85fcf7ffff 50 e8???????? 8d8dfcf7ffff 6800040000 51 e8???????? }
            // n = 7, score = 100
            //   8d85fcf7ffff         | lea                 eax, [ebp - 0x804]
            //   50                   | push                eax
            //   e8????????           |                     
            //   8d8dfcf7ffff         | lea                 ecx, [ebp - 0x804]
            //   6800040000           | push                0x400
            //   51                   | push                ecx
            //   e8????????           |                     

        $sequence_1 = { 83c404 32c0 8b8c24d0040000 64890d00000000 59 5f }
            // n = 6, score = 100
            //   83c404               | add                 esp, 4
            //   32c0                 | xor                 al, al
            //   8b8c24d0040000       | mov                 ecx, dword ptr [esp + 0x4d0]
            //   64890d00000000       | mov                 dword ptr fs:[0], ecx
            //   59                   | pop                 ecx
            //   5f                   | pop                 edi

        $sequence_2 = { 83c404 8bf0 8d85e08bffff 50 51 56 57 }
            // n = 7, score = 100
            //   83c404               | add                 esp, 4
            //   8bf0                 | mov                 esi, eax
            //   8d85e08bffff         | lea                 eax, [ebp - 0x7420]
            //   50                   | push                eax
            //   51                   | push                ecx
            //   56                   | push                esi
            //   57                   | push                edi

        $sequence_3 = { 55 8bec b864740000 e8???????? a1???????? 33c5 }
            // n = 6, score = 100
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   b864740000           | mov                 eax, 0x7464
            //   e8????????           |                     
            //   a1????????           |                     
            //   33c5                 | xor                 eax, ebp

        $sequence_4 = { 8d95f0fdffff 6804010000 52 e8???????? e9???????? ff15???????? 83f812 }
            // n = 7, score = 100
            //   8d95f0fdffff         | lea                 edx, [ebp - 0x210]
            //   6804010000           | push                0x104
            //   52                   | push                edx
            //   e8????????           |                     
            //   e9????????           |                     
            //   ff15????????         |                     
            //   83f812               | cmp                 eax, 0x12

        $sequence_5 = { ff15???????? 85c0 7538 68???????? e8???????? 68???????? e8???????? }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7538                 | jne                 0x3a
            //   68????????           |                     
            //   e8????????           |                     
            //   68????????           |                     
            //   e8????????           |                     

        $sequence_6 = { 51 52 53 56 c785e0efffff00000000 ff15???????? 56 }
            // n = 7, score = 100
            //   51                   | push                ecx
            //   52                   | push                edx
            //   53                   | push                ebx
            //   56                   | push                esi
            //   c785e0efffff00000000     | mov    dword ptr [ebp - 0x1020], 0
            //   ff15????????         |                     
            //   56                   | push                esi

        $sequence_7 = { 8b85f08bffff 8b35???????? 50 ffd6 53 ff15???????? 53 }
            // n = 7, score = 100
            //   8b85f08bffff         | mov                 eax, dword ptr [ebp - 0x7410]
            //   8b35????????         |                     
            //   50                   | push                eax
            //   ffd6                 | call                esi
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   53                   | push                ebx

        $sequence_8 = { 50 81ec48080000 a1???????? 33c5 8945f0 53 56 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   81ec48080000         | sub                 esp, 0x848
            //   a1????????           |                     
            //   33c5                 | xor                 eax, ebp
            //   8945f0               | mov                 dword ptr [ebp - 0x10], eax
            //   53                   | push                ebx
            //   56                   | push                esi

        $sequence_9 = { 56 8b7508 57 68???????? e8???????? 83c404 8d8c2408100000 }
            // n = 7, score = 100
            //   56                   | push                esi
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   57                   | push                edi
            //   68????????           |                     
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   8d8c2408100000       | lea                 ecx, [esp + 0x1008]

    condition:
        7 of them and filesize < 524288
}