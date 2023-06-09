rule win_unidentified_061_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.unidentified_061."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_061"
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
        $sequence_0 = { 885d73 8d85a8f3ffff 50 ff7534 e8???????? 8d85a8f3ffff 50 }
            // n = 7, score = 200
            //   885d73               | mov                 byte ptr [ebp + 0x73], bl
            //   8d85a8f3ffff         | lea                 eax, [ebp - 0xc58]
            //   50                   | push                eax
            //   ff7534               | push                dword ptr [ebp + 0x34]
            //   e8????????           |                     
            //   8d85a8f3ffff         | lea                 eax, [ebp - 0xc58]
            //   50                   | push                eax

        $sequence_1 = { 8ac8 80e941 80f919 7706 0fbec0 83c020 c20400 }
            // n = 7, score = 200
            //   8ac8                 | mov                 cl, al
            //   80e941               | sub                 cl, 0x41
            //   80f919               | cmp                 cl, 0x19
            //   7706                 | ja                  8
            //   0fbec0               | movsx               eax, al
            //   83c020               | add                 eax, 0x20
            //   c20400               | ret                 4

        $sequence_2 = { 83c708 6a20 57 e8???????? 2bc7 40 40 }
            // n = 7, score = 200
            //   83c708               | add                 edi, 8
            //   6a20                 | push                0x20
            //   57                   | push                edi
            //   e8????????           |                     
            //   2bc7                 | sub                 eax, edi
            //   40                   | inc                 eax
            //   40                   | inc                 eax

        $sequence_3 = { 50 8d85c0f7ffff 50 e8???????? 8d85a8f3ffff 50 8d85c0f7ffff }
            // n = 7, score = 200
            //   50                   | push                eax
            //   8d85c0f7ffff         | lea                 eax, [ebp - 0x840]
            //   50                   | push                eax
            //   e8????????           |                     
            //   8d85a8f3ffff         | lea                 eax, [ebp - 0xc58]
            //   50                   | push                eax
            //   8d85c0f7ffff         | lea                 eax, [ebp - 0x840]

        $sequence_4 = { 8d45f8 50 53 68???????? 57 c745fc04010000 c745f803000000 }
            // n = 7, score = 200
            //   8d45f8               | lea                 eax, [ebp - 8]
            //   50                   | push                eax
            //   53                   | push                ebx
            //   68????????           |                     
            //   57                   | push                edi
            //   c745fc04010000       | mov                 dword ptr [ebp - 4], 0x104
            //   c745f803000000       | mov                 dword ptr [ebp - 8], 3

        $sequence_5 = { 50 8d85f0feffff 50 8d85ecfdffff 50 53 53 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   8d85f0feffff         | lea                 eax, [ebp - 0x110]
            //   50                   | push                eax
            //   8d85ecfdffff         | lea                 eax, [ebp - 0x214]
            //   50                   | push                eax
            //   53                   | push                ebx
            //   53                   | push                ebx

        $sequence_6 = { 50 8d85f0feffff 50 8d85ecfdffff 50 53 }
            // n = 6, score = 200
            //   50                   | push                eax
            //   8d85f0feffff         | lea                 eax, [ebp - 0x110]
            //   50                   | push                eax
            //   8d85ecfdffff         | lea                 eax, [ebp - 0x214]
            //   50                   | push                eax
            //   53                   | push                ebx

        $sequence_7 = { 50 ff750c 0ad1 885509 c6450b00 }
            // n = 5, score = 200
            //   50                   | push                eax
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   0ad1                 | or                  dl, cl
            //   885509               | mov                 byte ptr [ebp + 9], dl
            //   c6450b00             | mov                 byte ptr [ebp + 0xb], 0

        $sequence_8 = { ffd6 85c0 7512 68???????? 8d85fcfeffff 50 ffd6 }
            // n = 7, score = 200
            //   ffd6                 | call                esi
            //   85c0                 | test                eax, eax
            //   7512                 | jne                 0x14
            //   68????????           |                     
            //   8d85fcfeffff         | lea                 eax, [ebp - 0x104]
            //   50                   | push                eax
            //   ffd6                 | call                esi

        $sequence_9 = { 837d4c00 0f8f10ffffff 8b4564 8b4d70 }
            // n = 4, score = 200
            //   837d4c00             | cmp                 dword ptr [ebp + 0x4c], 0
            //   0f8f10ffffff         | jg                  0xffffff16
            //   8b4564               | mov                 eax, dword ptr [ebp + 0x64]
            //   8b4d70               | mov                 ecx, dword ptr [ebp + 0x70]

    condition:
        7 of them and filesize < 360448
}