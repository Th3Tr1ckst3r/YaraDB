rule win_h1n1_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.h1n1."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.h1n1"
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
        $sequence_0 = { 8bec 53 56 57 33c0 8b7508 8b7d0c }
            // n = 7, score = 400
            //   8bec                 | mov                 ebp, esp
            //   53                   | push                ebx
            //   56                   | push                esi
            //   57                   | push                edi
            //   33c0                 | xor                 eax, eax
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   8b7d0c               | mov                 edi, dword ptr [ebp + 0xc]

        $sequence_1 = { ffd0 91 8b7df8 8b75f8 ac 3c2b 7502 }
            // n = 7, score = 400
            //   ffd0                 | call                eax
            //   91                   | xchg                eax, ecx
            //   8b7df8               | mov                 edi, dword ptr [ebp - 8]
            //   8b75f8               | mov                 esi, dword ptr [ebp - 8]
            //   ac                   | lodsb               al, byte ptr [esi]
            //   3c2b                 | cmp                 al, 0x2b
            //   7502                 | jne                 4

        $sequence_2 = { 7453 e8???????? 8ae0 ac 0ac0 }
            // n = 5, score = 400
            //   7453                 | je                  0x55
            //   e8????????           |                     
            //   8ae0                 | mov                 ah, al
            //   ac                   | lodsb               al, byte ptr [esi]
            //   0ac0                 | or                  al, al

        $sequence_3 = { c745fc30750000 8d45fc 6a04 50 6a05 56 }
            // n = 6, score = 400
            //   c745fc30750000       | mov                 dword ptr [ebp - 4], 0x7530
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   6a04                 | push                4
            //   50                   | push                eax
            //   6a05                 | push                5
            //   56                   | push                esi

        $sequence_4 = { 92 5a 3bc6 740c 83c304 }
            // n = 5, score = 400
            //   92                   | xchg                eax, edx
            //   5a                   | pop                 edx
            //   3bc6                 | cmp                 eax, esi
            //   740c                 | je                  0xe
            //   83c304               | add                 ebx, 4

        $sequence_5 = { 8145fc00000080 f7451802000000 7407 8145fc00004000 f7451804000000 7407 8145fc00008000 }
            // n = 7, score = 400
            //   8145fc00000080       | add                 dword ptr [ebp - 4], 0x80000000
            //   f7451802000000       | test                dword ptr [ebp + 0x18], 2
            //   7407                 | je                  9
            //   8145fc00004000       | add                 dword ptr [ebp - 4], 0x400000
            //   f7451804000000       | test                dword ptr [ebp + 0x18], 4
            //   7407                 | je                  9
            //   8145fc00008000       | add                 dword ptr [ebp - 4], 0x800000

        $sequence_6 = { 51 6a15 ff7508 ff35???????? 58 ffd0 }
            // n = 6, score = 400
            //   51                   | push                ecx
            //   6a15                 | push                0x15
            //   ff7508               | push                dword ptr [ebp + 8]
            //   ff35????????         |                     
            //   58                   | pop                 eax
            //   ffd0                 | call                eax

        $sequence_7 = { ffd0 0bc0 7459 8b00 48 50 ff36 }
            // n = 7, score = 400
            //   ffd0                 | call                eax
            //   0bc0                 | or                  eax, eax
            //   7459                 | je                  0x5b
            //   8b00                 | mov                 eax, dword ptr [eax]
            //   48                   | dec                 eax
            //   50                   | push                eax
            //   ff36                 | push                dword ptr [esi]

        $sequence_8 = { c3 56 8b742408 6804010000 68f8820010 }
            // n = 5, score = 100
            //   c3                   | ret                 
            //   56                   | push                esi
            //   8b742408             | mov                 esi, dword ptr [esp + 8]
            //   6804010000           | push                0x104
            //   68f8820010           | push                0x100082f8

        $sequence_9 = { 33db 68d0600010 6880000000 50 e8???????? }
            // n = 5, score = 100
            //   33db                 | xor                 ebx, ebx
            //   68d0600010           | push                0x100060d0
            //   6880000000           | push                0x80
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_10 = { 68f8020000 6800800010 56 e8???????? 5e c3 56 }
            // n = 7, score = 100
            //   68f8020000           | push                0x2f8
            //   6800800010           | push                0x10008000
            //   56                   | push                esi
            //   e8????????           |                     
            //   5e                   | pop                 esi
            //   c3                   | ret                 
            //   56                   | push                esi

        $sequence_11 = { 8bd6 bbffffff7f 8b0c95c4850010 330c95c0850010 23cb 330c95c0850010 }
            // n = 6, score = 100
            //   8bd6                 | mov                 edx, esi
            //   bbffffff7f           | mov                 ebx, 0x7fffffff
            //   8b0c95c4850010       | mov                 ecx, dword ptr [edx*4 + 0x100085c4]
            //   330c95c0850010       | xor                 ecx, dword ptr [edx*4 + 0x100085c0]
            //   23cb                 | and                 ecx, ebx
            //   330c95c0850010       | xor                 ecx, dword ptr [edx*4 + 0x100085c0]

        $sequence_12 = { 56 8bf3 6a04 8d8614850010 50 ffb610850010 }
            // n = 6, score = 100
            //   56                   | push                esi
            //   8bf3                 | mov                 esi, ebx
            //   6a04                 | push                4
            //   8d8614850010         | lea                 eax, [esi + 0x10008514]
            //   50                   | push                eax
            //   ffb610850010         | push                dword ptr [esi + 0x10008510]

        $sequence_13 = { 8d8578fdffff 50 68fc600010 6804010000 ff7508 }
            // n = 5, score = 100
            //   8d8578fdffff         | lea                 eax, [ebp - 0x288]
            //   50                   | push                eax
            //   68fc600010           | push                0x100060fc
            //   6804010000           | push                0x104
            //   ff7508               | push                dword ptr [ebp + 8]

        $sequence_14 = { 83e001 d1e9 8b048500850010 338774fcffff 33c1 8907 83c704 }
            // n = 7, score = 100
            //   83e001               | and                 eax, 1
            //   d1e9                 | shr                 ecx, 1
            //   8b048500850010       | mov                 eax, dword ptr [eax*4 + 0x10008500]
            //   338774fcffff         | xor                 eax, dword ptr [edi - 0x38c]
            //   33c1                 | xor                 eax, ecx
            //   8907                 | mov                 dword ptr [edi], eax
            //   83c704               | add                 edi, 4

        $sequence_15 = { f7d0 83e001 395d08 53 50 b8006e0010 0f454508 }
            // n = 7, score = 100
            //   f7d0                 | not                 eax
            //   83e001               | and                 eax, 1
            //   395d08               | cmp                 dword ptr [ebp + 8], ebx
            //   53                   | push                ebx
            //   50                   | push                eax
            //   b8006e0010           | mov                 eax, 0x10006e00
            //   0f454508             | cmovne              eax, dword ptr [ebp + 8]

    condition:
        7 of them and filesize < 172032
}