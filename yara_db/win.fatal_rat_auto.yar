rule win_fatal_rat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.fatal_rat."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.fatal_rat"
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
        $sequence_0 = { 3908 7602 8908 53 56 e8???????? 8bf8 }
            // n = 7, score = 100
            //   3908                 | cmp                 dword ptr [eax], ecx
            //   7602                 | jbe                 4
            //   8908                 | mov                 dword ptr [eax], ecx
            //   53                   | push                ebx
            //   56                   | push                esi
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax

        $sequence_1 = { 56 57 6a40 33db 59 33c0 8dbdf5fdffff }
            // n = 7, score = 100
            //   56                   | push                esi
            //   57                   | push                edi
            //   6a40                 | push                0x40
            //   33db                 | xor                 ebx, ebx
            //   59                   | pop                 ecx
            //   33c0                 | xor                 eax, eax
            //   8dbdf5fdffff         | lea                 edi, [ebp - 0x20b]

        $sequence_2 = { c3 ff7108 ff15???????? c3 55 8bec 56 }
            // n = 7, score = 100
            //   c3                   | ret                 
            //   ff7108               | push                dword ptr [ecx + 8]
            //   ff15????????         |                     
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   56                   | push                esi

        $sequence_3 = { 50 e8???????? 59 8d45f8 59 50 6819000200 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   8d45f8               | lea                 eax, [ebp - 8]
            //   59                   | pop                 ecx
            //   50                   | push                eax
            //   6819000200           | push                0x20019

        $sequence_4 = { f3ab 6a40 8dbdf5fcffff 59 f3ab 66ab aa }
            // n = 7, score = 100
            //   f3ab                 | rep stosd           dword ptr es:[edi], eax
            //   6a40                 | push                0x40
            //   8dbdf5fcffff         | lea                 edi, [ebp - 0x30b]
            //   59                   | pop                 ecx
            //   f3ab                 | rep stosd           dword ptr es:[edi], eax
            //   66ab                 | stosw               word ptr es:[edi], ax
            //   aa                   | stosb               byte ptr es:[edi], al

        $sequence_5 = { 59 59 ff15???????? 50 8d85fcfeffff 50 8d85fcfeffff }
            // n = 7, score = 100
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx
            //   ff15????????         |                     
            //   50                   | push                eax
            //   8d85fcfeffff         | lea                 eax, [ebp - 0x104]
            //   50                   | push                eax
            //   8d85fcfeffff         | lea                 eax, [ebp - 0x104]

        $sequence_6 = { c6859dfeffff54 c6859efeffff50 c6859ffeffff2e c685a0feffff65 c685a1feffff78 c685a2feffff65 }
            // n = 6, score = 100
            //   c6859dfeffff54       | mov                 byte ptr [ebp - 0x163], 0x54
            //   c6859efeffff50       | mov                 byte ptr [ebp - 0x162], 0x50
            //   c6859ffeffff2e       | mov                 byte ptr [ebp - 0x161], 0x2e
            //   c685a0feffff65       | mov                 byte ptr [ebp - 0x160], 0x65
            //   c685a1feffff78       | mov                 byte ptr [ebp - 0x15f], 0x78
            //   c685a2feffff65       | mov                 byte ptr [ebp - 0x15e], 0x65

        $sequence_7 = { 57 33db 680c010000 8d85b4fcffff 53 50 e8???????? }
            // n = 7, score = 100
            //   57                   | push                edi
            //   33db                 | xor                 ebx, ebx
            //   680c010000           | push                0x10c
            //   8d85b4fcffff         | lea                 eax, [ebp - 0x34c]
            //   53                   | push                ebx
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_8 = { 85c0 0f84f7feffff 8d85c0f9ffff 50 ff15???????? 85c0 0f84e2feffff }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   0f84f7feffff         | je                  0xfffffefd
            //   8d85c0f9ffff         | lea                 eax, [ebp - 0x640]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f84e2feffff         | je                  0xfffffee8

        $sequence_9 = { 5d c3 55 8bec 8b4508 6a00 99 }
            // n = 7, score = 100
            //   5d                   | pop                 ebp
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   6a00                 | push                0
            //   99                   | cdq                 

    condition:
        7 of them and filesize < 344064
}