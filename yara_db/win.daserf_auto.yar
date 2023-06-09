rule win_daserf_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.daserf."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.daserf"
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
        $sequence_0 = { 0553a5ea58 2d675e2301 05bc834a17 0500a446e0 81eb569b5ebd }
            // n = 5, score = 100
            //   0553a5ea58           | add                 eax, 0x58eaa553
            //   2d675e2301           | sub                 eax, 0x1235e67
            //   05bc834a17           | add                 eax, 0x174a83bc
            //   0500a446e0           | add                 eax, 0xe046a400
            //   81eb569b5ebd         | sub                 ebx, 0xbd5e9b56

        $sequence_1 = { 87db 0523e96851 8bc9 81ebc0af5cc1 8d1b 05b4a07c86 }
            // n = 6, score = 100
            //   87db                 | xchg                ebx, ebx
            //   0523e96851           | add                 eax, 0x5168e923
            //   8bc9                 | mov                 ecx, ecx
            //   81ebc0af5cc1         | sub                 ebx, 0xc15cafc0
            //   8d1b                 | lea                 ebx, [ebx]
            //   05b4a07c86           | add                 eax, 0x867ca0b4

        $sequence_2 = { 89bc2400f5ffff 8bf8 8b842400f5ffff 81c3a7362c5f 8d3f }
            // n = 5, score = 100
            //   89bc2400f5ffff       | mov                 dword ptr [esp - 0xb00], edi
            //   8bf8                 | mov                 edi, eax
            //   8b842400f5ffff       | mov                 eax, dword ptr [esp - 0xb00]
            //   81c3a7362c5f         | add                 ebx, 0x5f2c36a7
            //   8d3f                 | lea                 edi, [edi]

        $sequence_3 = { 81eb6a3e606f 81eb9ca132d8 05580f5855 2d4d8f76f7 2d193c03f3 81ebc0e134e1 }
            // n = 6, score = 100
            //   81eb6a3e606f         | sub                 ebx, 0x6f603e6a
            //   81eb9ca132d8         | sub                 ebx, 0xd832a19c
            //   05580f5855           | add                 eax, 0x55580f58
            //   2d4d8f76f7           | sub                 eax, 0xf7768f4d
            //   2d193c03f3           | sub                 eax, 0xf3033c19
            //   81ebc0e134e1         | sub                 ebx, 0xe134e1c0

        $sequence_4 = { 8d85f8fbffff 68???????? 50 ffd7 8d85f8fbffff 68???????? }
            // n = 6, score = 100
            //   8d85f8fbffff         | lea                 eax, [ebp - 0x408]
            //   68????????           |                     
            //   50                   | push                eax
            //   ffd7                 | call                edi
            //   8d85f8fbffff         | lea                 eax, [ebp - 0x408]
            //   68????????           |                     

        $sequence_5 = { 744f 8d45f8 56 50 8d85f8fbffff 50 }
            // n = 6, score = 100
            //   744f                 | je                  0x51
            //   8d45f8               | lea                 eax, [ebp - 8]
            //   56                   | push                esi
            //   50                   | push                eax
            //   8d85f8fbffff         | lea                 eax, [ebp - 0x408]
            //   50                   | push                eax

        $sequence_6 = { 8bd2 05c9ebd48b 95 89ac2400f5ffff 8be8 8b842400f5ffff 81ebcd0cd0b5 }
            // n = 7, score = 100
            //   8bd2                 | mov                 edx, edx
            //   05c9ebd48b           | add                 eax, 0x8bd4ebc9
            //   95                   | xchg                eax, ebp
            //   89ac2400f5ffff       | mov                 dword ptr [esp - 0xb00], ebp
            //   8be8                 | mov                 ebp, eax
            //   8b842400f5ffff       | mov                 eax, dword ptr [esp - 0xb00]
            //   81ebcd0cd0b5         | sub                 ebx, 0xb5d00ccd

        $sequence_7 = { 8d00 05f225dc3e f7d3 f7d3 81ebf32dee35 9b }
            // n = 6, score = 100
            //   8d00                 | lea                 eax, [eax]
            //   05f225dc3e           | add                 eax, 0x3edc25f2
            //   f7d3                 | not                 ebx
            //   f7d3                 | not                 ebx
            //   81ebf32dee35         | sub                 ebx, 0x35ee2df3
            //   9b                   | wait                

        $sequence_8 = { 91 898c2400f2ffff 8bc8 8b842400f2ffff }
            // n = 4, score = 100
            //   91                   | xchg                eax, ecx
            //   898c2400f2ffff       | mov                 dword ptr [esp - 0xe00], ecx
            //   8bc8                 | mov                 ecx, eax
            //   8b842400f2ffff       | mov                 eax, dword ptr [esp - 0xe00]

        $sequence_9 = { 2d1a1d9dd5 81c314e4e0cb 2d6e39a0da 05cad15e7a 81ebc912a367 }
            // n = 5, score = 100
            //   2d1a1d9dd5           | sub                 eax, 0xd59d1d1a
            //   81c314e4e0cb         | add                 ebx, 0xcbe0e414
            //   2d6e39a0da           | sub                 eax, 0xdaa0396e
            //   05cad15e7a           | add                 eax, 0x7a5ed1ca
            //   81ebc912a367         | sub                 ebx, 0x67a312c9

        $sequence_10 = { ff75f8 50 66a1???????? 50 }
            // n = 4, score = 100
            //   ff75f8               | push                dword ptr [ebp - 8]
            //   50                   | push                eax
            //   66a1????????         |                     
            //   50                   | push                eax

        $sequence_11 = { f7d6 2deea4abe1 90 81eb5f7aa06f }
            // n = 4, score = 100
            //   f7d6                 | not                 esi
            //   2deea4abe1           | sub                 eax, 0xe1aba4ee
            //   90                   | nop                 
            //   81eb5f7aa06f         | sub                 ebx, 0x6fa07a5f

        $sequence_12 = { 8bc8 8b842420f1ffff 81c3d9ce500c 7500 81c30149dde5 }
            // n = 5, score = 100
            //   8bc8                 | mov                 ecx, eax
            //   8b842420f1ffff       | mov                 eax, dword ptr [esp - 0xee0]
            //   81c3d9ce500c         | add                 ebx, 0xc50ced9
            //   7500                 | jne                 2
            //   81c30149dde5         | add                 ebx, 0xe5dd4901

        $sequence_13 = { 7500 81c3ebb55cd4 f7d0 f7d0 055fa43a95 f7d2 }
            // n = 6, score = 100
            //   7500                 | jne                 2
            //   81c3ebb55cd4         | add                 ebx, 0xd45cb5eb
            //   f7d0                 | not                 eax
            //   f7d0                 | not                 eax
            //   055fa43a95           | add                 eax, 0x953aa45f
            //   f7d2                 | not                 edx

        $sequence_14 = { 2dc37545b8 2d8b0d9f7e 81eb32542767 81c321c91cca }
            // n = 4, score = 100
            //   2dc37545b8           | sub                 eax, 0xb84575c3
            //   2d8b0d9f7e           | sub                 eax, 0x7e9f0d8b
            //   81eb32542767         | sub                 ebx, 0x67275432
            //   81c321c91cca         | add                 ebx, 0xca1cc921

        $sequence_15 = { 81eb8d2d07be 81c34b01c807 2d08223beb 05c6f5fb34 }
            // n = 4, score = 100
            //   81eb8d2d07be         | sub                 ebx, 0xbe072d8d
            //   81c34b01c807         | add                 ebx, 0x7c8014b
            //   2d08223beb           | sub                 eax, 0xeb3b2208
            //   05c6f5fb34           | add                 eax, 0x34fbf5c6

    condition:
        7 of them and filesize < 245760
}