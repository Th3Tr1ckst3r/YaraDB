rule win_purelocker_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.purelocker."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.purelocker"
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
        $sequence_0 = { 58 8d442414 50 e8???????? ff3424 e8???????? 8b542410 }
            // n = 7, score = 100
            //   58                   | pop                 eax
            //   8d442414             | lea                 eax, [esp + 0x14]
            //   50                   | push                eax
            //   e8????????           |                     
            //   ff3424               | push                dword ptr [esp]
            //   e8????????           |                     
            //   8b542410             | mov                 edx, dword ptr [esp + 0x10]

        $sequence_1 = { 035d20 895c2418 8b6c240c 8b5d18 81fb00100000 }
            // n = 5, score = 100
            //   035d20               | add                 ebx, dword ptr [ebp + 0x20]
            //   895c2418             | mov                 dword ptr [esp + 0x18], ebx
            //   8b6c240c             | mov                 ebp, dword ptr [esp + 0xc]
            //   8b5d18               | mov                 ebx, dword ptr [ebp + 0x18]
            //   81fb00100000         | cmp                 ebx, 0x1000

        $sequence_2 = { 6802000000 8b5c2404 43 53 58 e8???????? ff742428 }
            // n = 7, score = 100
            //   6802000000           | push                2
            //   8b5c2404             | mov                 ebx, dword ptr [esp + 4]
            //   43                   | inc                 ebx
            //   53                   | push                ebx
            //   58                   | pop                 eax
            //   e8????????           |                     
            //   ff742428             | push                dword ptr [esp + 0x28]

        $sequence_3 = { 89c3 3b5c2424 0f85ce000000 ff742424 8d6c2408 58 66894502 }
            // n = 7, score = 100
            //   89c3                 | mov                 ebx, eax
            //   3b5c2424             | cmp                 ebx, dword ptr [esp + 0x24]
            //   0f85ce000000         | jne                 0xd4
            //   ff742424             | push                dword ptr [esp + 0x24]
            //   8d6c2408             | lea                 ebp, [esp + 8]
            //   58                   | pop                 eax
            //   66894502             | mov                 word ptr [ebp + 2], ax

        $sequence_4 = { ff5604 56 6a00 ff35???????? ff15???????? 85db 75e3 }
            // n = 7, score = 100
            //   ff5604               | call                dword ptr [esi + 4]
            //   56                   | push                esi
            //   6a00                 | push                0
            //   ff35????????         |                     
            //   ff15????????         |                     
            //   85db                 | test                ebx, ebx
            //   75e3                 | jne                 0xffffffe5

        $sequence_5 = { 83c602 8d7dff 8b560e 8d7610 }
            // n = 4, score = 100
            //   83c602               | add                 esi, 2
            //   8d7dff               | lea                 edi, [ebp - 1]
            //   8b560e               | mov                 edx, dword ptr [esi + 0xe]
            //   8d7610               | lea                 esi, [esi + 0x10]

        $sequence_6 = { ffb42428020000 e8???????? 89842404020000 83bc240402000000 0f84c8000000 8b9c2404020000 c1e305 }
            // n = 7, score = 100
            //   ffb42428020000       | push                dword ptr [esp + 0x228]
            //   e8????????           |                     
            //   89842404020000       | mov                 dword ptr [esp + 0x204], eax
            //   83bc240402000000     | cmp                 dword ptr [esp + 0x204], 0
            //   0f84c8000000         | je                  0xce
            //   8b9c2404020000       | mov                 ebx, dword ptr [esp + 0x204]
            //   c1e305               | shl                 ebx, 5

        $sequence_7 = { 8d842448040000 50 e8???????? b801000000 50 ff74242c e8???????? }
            // n = 7, score = 100
            //   8d842448040000       | lea                 eax, [esp + 0x448]
            //   50                   | push                eax
            //   e8????????           |                     
            //   b801000000           | mov                 eax, 1
            //   50                   | push                eax
            //   ff74242c             | push                dword ptr [esp + 0x2c]
            //   e8????????           |                     

        $sequence_8 = { 0fb6048520200110 330c8520280110 0fb6c2 8b5606 0fb6048520200110 330c8520300110 8bc2 }
            // n = 7, score = 100
            //   0fb6048520200110     | movzx               eax, byte ptr [eax*4 + 0x10012020]
            //   330c8520280110       | xor                 ecx, dword ptr [eax*4 + 0x10012820]
            //   0fb6c2               | movzx               eax, dl
            //   8b5606               | mov                 edx, dword ptr [esi + 6]
            //   0fb6048520200110     | movzx               eax, byte ptr [eax*4 + 0x10012020]
            //   330c8520300110       | xor                 ecx, dword ptr [eax*4 + 0x10013020]
            //   8bc2                 | mov                 eax, edx

        $sequence_9 = { 55 53 ba11020000 83ec04 c7042400000000 }
            // n = 5, score = 100
            //   55                   | push                ebp
            //   53                   | push                ebx
            //   ba11020000           | mov                 edx, 0x211
            //   83ec04               | sub                 esp, 4
            //   c7042400000000       | mov                 dword ptr [esp], 0

    condition:
        7 of them and filesize < 193536
}