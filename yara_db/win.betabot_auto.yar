rule win_betabot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.betabot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.betabot"
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
        $sequence_0 = { 83780400 740c c78554ffffff01000000 eb07 83a554ffffff00 83bd54ffffff01 }
            // n = 6, score = 400
            //   83780400             | cmp                 dword ptr [eax + 4], 0
            //   740c                 | je                  0xe
            //   c78554ffffff01000000     | mov    dword ptr [ebp - 0xac], 1
            //   eb07                 | jmp                 9
            //   83a554ffffff00       | and                 dword ptr [ebp - 0xac], 0
            //   83bd54ffffff01       | cmp                 dword ptr [ebp - 0xac], 1

        $sequence_1 = { e9???????? 834dfcff 8365f400 8b45f8 ff7004 e8???????? }
            // n = 6, score = 400
            //   e9????????           |                     
            //   834dfcff             | or                  dword ptr [ebp - 4], 0xffffffff
            //   8365f400             | and                 dword ptr [ebp - 0xc], 0
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   ff7004               | push                dword ptr [eax + 4]
            //   e8????????           |                     

        $sequence_2 = { 85c0 7420 8b460c 8d04b8 833800 740f ff7508 }
            // n = 7, score = 400
            //   85c0                 | test                eax, eax
            //   7420                 | je                  0x22
            //   8b460c               | mov                 eax, dword ptr [esi + 0xc]
            //   8d04b8               | lea                 eax, [eax + edi*4]
            //   833800               | cmp                 dword ptr [eax], 0
            //   740f                 | je                  0x11
            //   ff7508               | push                dword ptr [ebp + 8]

        $sequence_3 = { 83a5d0feffff00 83a5c4fdffff00 83a5b0fcffff00 83a5d4feffff00 83a5d8feffff00 83a5f4feffff00 83a5e4feffff00 }
            // n = 7, score = 400
            //   83a5d0feffff00       | and                 dword ptr [ebp - 0x130], 0
            //   83a5c4fdffff00       | and                 dword ptr [ebp - 0x23c], 0
            //   83a5b0fcffff00       | and                 dword ptr [ebp - 0x350], 0
            //   83a5d4feffff00       | and                 dword ptr [ebp - 0x12c], 0
            //   83a5d8feffff00       | and                 dword ptr [ebp - 0x128], 0
            //   83a5f4feffff00       | and                 dword ptr [ebp - 0x10c], 0
            //   83a5e4feffff00       | and                 dword ptr [ebp - 0x11c], 0

        $sequence_4 = { 8b08 57 56 50 ff5128 8b45fc 8b08 }
            // n = 7, score = 400
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   57                   | push                edi
            //   56                   | push                esi
            //   50                   | push                eax
            //   ff5128               | call                dword ptr [ecx + 0x28]
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   8b08                 | mov                 ecx, dword ptr [eax]

        $sequence_5 = { 57 e8???????? 8365fc00 8bcb e8???????? 8945f8 83f802 }
            // n = 7, score = 400
            //   57                   | push                edi
            //   e8????????           |                     
            //   8365fc00             | and                 dword ptr [ebp - 4], 0
            //   8bcb                 | mov                 ecx, ebx
            //   e8????????           |                     
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   83f802               | cmp                 eax, 2

        $sequence_6 = { 56 8d8588feffff 50 e8???????? 397508 745d 8b4d08 }
            // n = 7, score = 400
            //   56                   | push                esi
            //   8d8588feffff         | lea                 eax, [ebp - 0x178]
            //   50                   | push                eax
            //   e8????????           |                     
            //   397508               | cmp                 dword ptr [ebp + 8], esi
            //   745d                 | je                  0x5f
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]

        $sequence_7 = { 7507 33c0 e9???????? 83a5e8feffff00 83a5b8fcffff00 83a5dcfeffff00 83a5e0feffff00 }
            // n = 7, score = 400
            //   7507                 | jne                 9
            //   33c0                 | xor                 eax, eax
            //   e9????????           |                     
            //   83a5e8feffff00       | and                 dword ptr [ebp - 0x118], 0
            //   83a5b8fcffff00       | and                 dword ptr [ebp - 0x348], 0
            //   83a5dcfeffff00       | and                 dword ptr [ebp - 0x124], 0
            //   83a5e0feffff00       | and                 dword ptr [ebp - 0x120], 0

        $sequence_8 = { 837d0800 740c 6a10 6a00 ff7508 e8???????? }
            // n = 6, score = 400
            //   837d0800             | cmp                 dword ptr [ebp + 8], 0
            //   740c                 | je                  0xe
            //   6a10                 | push                0x10
            //   6a00                 | push                0
            //   ff7508               | push                dword ptr [ebp + 8]
            //   e8????????           |                     

        $sequence_9 = { ff15???????? 85c0 7411 ff750c ff7508 6a08 }
            // n = 6, score = 400
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7411                 | je                  0x13
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   ff7508               | push                dword ptr [ebp + 8]
            //   6a08                 | push                8

    condition:
        7 of them and filesize < 835584
}