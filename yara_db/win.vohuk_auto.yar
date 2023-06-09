rule win_vohuk_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.vohuk."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.vohuk"
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
        $sequence_0 = { c745e49000d600 c745e8b5009100 c745ec9700da00 c745f0be009100 c745f48d008a00 c745f896006501 c745fc65010201 }
            // n = 7, score = 100
            //   c745e49000d600       | mov                 dword ptr [ebp - 0x1c], 0xd60090
            //   c745e8b5009100       | mov                 dword ptr [ebp - 0x18], 0x9100b5
            //   c745ec9700da00       | mov                 dword ptr [ebp - 0x14], 0xda0097
            //   c745f0be009100       | mov                 dword ptr [ebp - 0x10], 0x9100be
            //   c745f48d008a00       | mov                 dword ptr [ebp - 0xc], 0x8a008d
            //   c745f896006501       | mov                 dword ptr [ebp - 8], 0x1650096
            //   c745fc65010201       | mov                 dword ptr [ebp - 4], 0x1020165

        $sequence_1 = { 8bff b8fdb04819 f7e9 c1fa04 8bc2 }
            // n = 5, score = 100
            //   8bff                 | mov                 edi, edi
            //   b8fdb04819           | mov                 eax, 0x1948b0fd
            //   f7e9                 | imul                ecx
            //   c1fa04               | sar                 edx, 4
            //   8bc2                 | mov                 eax, edx

        $sequence_2 = { c78574ffffff28000000 89bd7cffffff c7458001001000 894584 894588 89458c 894590 }
            // n = 7, score = 100
            //   c78574ffffff28000000     | mov    dword ptr [ebp - 0x8c], 0x28
            //   89bd7cffffff         | mov                 dword ptr [ebp - 0x84], edi
            //   c7458001001000       | mov                 dword ptr [ebp - 0x80], 0x100001
            //   894584               | mov                 dword ptr [ebp - 0x7c], eax
            //   894588               | mov                 dword ptr [ebp - 0x78], eax
            //   89458c               | mov                 dword ptr [ebp - 0x74], eax
            //   894590               | mov                 dword ptr [ebp - 0x70], eax

        $sequence_3 = { 8945e4 898568ffffff 33c2 c1c008 8945e0 8945a4 }
            // n = 6, score = 100
            //   8945e4               | mov                 dword ptr [ebp - 0x1c], eax
            //   898568ffffff         | mov                 dword ptr [ebp - 0x98], eax
            //   33c2                 | xor                 eax, edx
            //   c1c008               | rol                 eax, 8
            //   8945e0               | mov                 dword ptr [ebp - 0x20], eax
            //   8945a4               | mov                 dword ptr [ebp - 0x5c], eax

        $sequence_4 = { c7407c73015501 c780800000004c014701 c7808400000050010401 c7808800000043014901 c7808c00000055010801 c7809000000064014501 c780940000005e014201 }
            // n = 7, score = 100
            //   c7407c73015501       | mov                 dword ptr [eax + 0x7c], 0x1550173
            //   c780800000004c014701     | mov    dword ptr [eax + 0x80], 0x147014c
            //   c7808400000050010401     | mov    dword ptr [eax + 0x84], 0x1040150
            //   c7808800000043014901     | mov    dword ptr [eax + 0x88], 0x1490143
            //   c7808c00000055010801     | mov    dword ptr [eax + 0x8c], 0x1080155
            //   c7809000000064014501     | mov    dword ptr [eax + 0x90], 0x1450164
            //   c780940000005e014201     | mov    dword ptr [eax + 0x94], 0x142015e

        $sequence_5 = { 53 6a00 56 ffd0 b8f0000000 c745b68000a200 c745baad00a400 }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   6a00                 | push                0
            //   56                   | push                esi
            //   ffd0                 | call                eax
            //   b8f0000000           | mov                 eax, 0xf0
            //   c745b68000a200       | mov                 dword ptr [ebp - 0x4a], 0xa20080
            //   c745baad00a400       | mov                 dword ptr [ebp - 0x46], 0xa400ad

        $sequence_6 = { c745e2ed00ff00 c745e6bd00ec00 c745eae800e300 b8a1a0a0a0 f7ee b801000000 03d6 }
            // n = 7, score = 100
            //   c745e2ed00ff00       | mov                 dword ptr [ebp - 0x1e], 0xff00ed
            //   c745e6bd00ec00       | mov                 dword ptr [ebp - 0x1a], 0xec00bd
            //   c745eae800e300       | mov                 dword ptr [ebp - 0x16], 0xe300e8
            //   b8a1a0a0a0           | mov                 eax, 0xa0a0a0a1
            //   f7ee                 | imul                esi
            //   b801000000           | mov                 eax, 1
            //   03d6                 | add                 edx, esi

        $sequence_7 = { c745b2ac00a800 c745b6cf00dd00 c745bacf00d200 c745beb0009500 c745c29b009800 c745c698008c00 }
            // n = 6, score = 100
            //   c745b2ac00a800       | mov                 dword ptr [ebp - 0x4e], 0xa800ac
            //   c745b6cf00dd00       | mov                 dword ptr [ebp - 0x4a], 0xdd00cf
            //   c745bacf00d200       | mov                 dword ptr [ebp - 0x46], 0xd200cf
            //   c745beb0009500       | mov                 dword ptr [ebp - 0x42], 0x9500b0
            //   c745c29b009800       | mov                 dword ptr [ebp - 0x3e], 0x98009b
            //   c745c698008c00       | mov                 dword ptr [ebp - 0x3a], 0x8c0098

        $sequence_8 = { 6a00 6aff ffd0 6a00 6a20 ffb538ffffff ff75ec }
            // n = 7, score = 100
            //   6a00                 | push                0
            //   6aff                 | push                -1
            //   ffd0                 | call                eax
            //   6a00                 | push                0
            //   6a20                 | push                0x20
            //   ffb538ffffff         | push                dword ptr [ebp - 0xc8]
            //   ff75ec               | push                dword ptr [ebp - 0x14]

        $sequence_9 = { 8b840da8fcffff 11840d58ffffff 8b840dacfcffff 01840d5cffffff 8b840db0fcffff 11840d60ffffff 83c110 }
            // n = 7, score = 100
            //   8b840da8fcffff       | mov                 eax, dword ptr [ebp + ecx - 0x358]
            //   11840d58ffffff       | adc                 dword ptr [ebp + ecx - 0xa8], eax
            //   8b840dacfcffff       | mov                 eax, dword ptr [ebp + ecx - 0x354]
            //   01840d5cffffff       | add                 dword ptr [ebp + ecx - 0xa4], eax
            //   8b840db0fcffff       | mov                 eax, dword ptr [ebp + ecx - 0x350]
            //   11840d60ffffff       | adc                 dword ptr [ebp + ecx - 0xa0], eax
            //   83c110               | add                 ecx, 0x10

    condition:
        7 of them and filesize < 260096
}