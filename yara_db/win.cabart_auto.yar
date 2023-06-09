rule win_cabart_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.cabart."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cabart"
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
        $sequence_0 = { 750a 68ed030000 e9???????? 57 68???????? 57 }
            // n = 6, score = 300
            //   750a                 | jne                 0xc
            //   68ed030000           | push                0x3ed
            //   e9????????           |                     
            //   57                   | push                edi
            //   68????????           |                     
            //   57                   | push                edi

        $sequence_1 = { 33c0 57 8bd1 85c9 7e0f 66833c535c }
            // n = 6, score = 300
            //   33c0                 | xor                 eax, eax
            //   57                   | push                edi
            //   8bd1                 | mov                 edx, ecx
            //   85c9                 | test                ecx, ecx
            //   7e0f                 | jle                 0x11
            //   66833c535c           | cmp                 word ptr [ebx + edx*2], 0x5c

        $sequence_2 = { 8d79fc 83ff01 7d04 33c0 eb22 }
            // n = 5, score = 300
            //   8d79fc               | lea                 edi, [ecx - 4]
            //   83ff01               | cmp                 edi, 1
            //   7d04                 | jge                 6
            //   33c0                 | xor                 eax, eax
            //   eb22                 | jmp                 0x24

        $sequence_3 = { 33c0 6689847de0fdffff 395d10 7415 c745ec00330000 }
            // n = 5, score = 300
            //   33c0                 | xor                 eax, eax
            //   6689847de0fdffff     | mov                 word ptr [ebp + edi*2 - 0x220], ax
            //   395d10               | cmp                 dword ptr [ebp + 0x10], ebx
            //   7415                 | je                  0x17
            //   c745ec00330000       | mov                 dword ptr [ebp - 0x14], 0x3300

        $sequence_4 = { 57 57 ff15???????? ff15???????? 57 3db7000000 }
            // n = 6, score = 300
            //   57                   | push                edi
            //   57                   | push                edi
            //   ff15????????         |                     
            //   ff15????????         |                     
            //   57                   | push                edi
            //   3db7000000           | cmp                 eax, 0xb7

        $sequence_5 = { 3bcf 7732 3bc3 7620 8d4df0 }
            // n = 5, score = 300
            //   3bcf                 | cmp                 ecx, edi
            //   7732                 | ja                  0x34
            //   3bc3                 | cmp                 eax, ebx
            //   7620                 | jbe                 0x22
            //   8d4df0               | lea                 ecx, [ebp - 0x10]

        $sequence_6 = { ff15???????? 8bf0 83feff 744c 53 57 }
            // n = 6, score = 300
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   83feff               | cmp                 esi, -1
            //   744c                 | je                  0x4e
            //   53                   | push                ebx
            //   57                   | push                edi

        $sequence_7 = { 66833c535c 7407 4a 85d2 7ff4 eb01 42 }
            // n = 7, score = 300
            //   66833c535c           | cmp                 word ptr [ebx + edx*2], 0x5c
            //   7407                 | je                  9
            //   4a                   | dec                 edx
            //   85d2                 | test                edx, edx
            //   7ff4                 | jg                  0xfffffff6
            //   eb01                 | jmp                 3
            //   42                   | inc                 edx

        $sequence_8 = { 8bd1 85c9 7e0f 66833c535c 7407 4a }
            // n = 6, score = 300
            //   8bd1                 | mov                 edx, ecx
            //   85c9                 | test                ecx, ecx
            //   7e0f                 | jle                 0x11
            //   66833c535c           | cmp                 word ptr [ebx + edx*2], 0x5c
            //   7407                 | je                  9
            //   4a                   | dec                 edx

        $sequence_9 = { e9???????? 6a0a 57 57 ff35???????? 57 }
            // n = 6, score = 300
            //   e9????????           |                     
            //   6a0a                 | push                0xa
            //   57                   | push                edi
            //   57                   | push                edi
            //   ff35????????         |                     
            //   57                   | push                edi

    condition:
        7 of them and filesize < 32768
}