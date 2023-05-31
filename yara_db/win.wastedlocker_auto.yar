rule win_wastedlocker_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.wastedlocker."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.wastedlocker"
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
        $sequence_0 = { ab 8d7de4 ab ab ab ab 8b4508 }
            // n = 7, score = 1000
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   8d7de4               | lea                 edi, [ebp - 0x1c]
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]

        $sequence_1 = { 6810041000 b812345605 ffd0 3bc3 }
            // n = 4, score = 1000
            //   6810041000           | push                0x100410
            //   b812345605           | mov                 eax, 0x5563412
            //   ffd0                 | call                eax
            //   3bc3                 | cmp                 eax, ebx

        $sequence_2 = { 56 ff15???????? 8945f8 8b4738 85c0 740a ff7740 }
            // n = 7, score = 1000
            //   56                   | push                esi
            //   ff15????????         |                     
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   8b4738               | mov                 eax, dword ptr [edi + 0x38]
            //   85c0                 | test                eax, eax
            //   740a                 | je                  0xc
            //   ff7740               | push                dword ptr [edi + 0x40]

        $sequence_3 = { 8b4d0c 6a04 5a d3e2 }
            // n = 4, score = 1000
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   6a04                 | push                4
            //   5a                   | pop                 edx
            //   d3e2                 | shl                 edx, cl

        $sequence_4 = { 0fb7c6 bf00000100 2bf8 397d10 7303 8b7d10 8a06 }
            // n = 7, score = 1000
            //   0fb7c6               | movzx               eax, si
            //   bf00000100           | mov                 edi, 0x10000
            //   2bf8                 | sub                 edi, eax
            //   397d10               | cmp                 dword ptr [ebp + 0x10], edi
            //   7303                 | jae                 5
            //   8b7d10               | mov                 edi, dword ptr [ebp + 0x10]
            //   8a06                 | mov                 al, byte ptr [esi]

        $sequence_5 = { 83f802 7241 8b07 3d66006900 }
            // n = 4, score = 1000
            //   83f802               | cmp                 eax, 2
            //   7241                 | jb                  0x43
            //   8b07                 | mov                 eax, dword ptr [edi]
            //   3d66006900           | cmp                 eax, 0x690066

        $sequence_6 = { 8b450c 53 ff7514 8d440601 ff7510 50 }
            // n = 6, score = 1000
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   53                   | push                ebx
            //   ff7514               | push                dword ptr [ebp + 0x14]
            //   8d440601             | lea                 eax, [esi + eax + 1]
            //   ff7510               | push                dword ptr [ebp + 0x10]
            //   50                   | push                eax

        $sequence_7 = { 50 53 e8???????? 6a00 8d45fc 50 }
            // n = 6, score = 1000
            //   50                   | push                eax
            //   53                   | push                ebx
            //   e8????????           |                     
            //   6a00                 | push                0
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   50                   | push                eax

        $sequence_8 = { 83ec0c 57 8bf8 8b4f3c 03cf }
            // n = 5, score = 1000
            //   83ec0c               | sub                 esp, 0xc
            //   57                   | push                edi
            //   8bf8                 | mov                 edi, eax
            //   8b4f3c               | mov                 ecx, dword ptr [edi + 0x3c]
            //   03cf                 | add                 ecx, edi

        $sequence_9 = { ff7624 ff7604 ff15???????? 85c0 740a 897e20 }
            // n = 6, score = 1000
            //   ff7624               | push                dword ptr [esi + 0x24]
            //   ff7604               | push                dword ptr [esi + 4]
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   740a                 | je                  0xc
            //   897e20               | mov                 dword ptr [esi + 0x20], edi

    condition:
        7 of them and filesize < 147456
}