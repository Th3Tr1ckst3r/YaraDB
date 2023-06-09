rule win_chiser_client_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.chiser_client."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.chiser_client"
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
        $sequence_0 = { 483305???????? 488d15a6df0200 488bcb 488905???????? ff15???????? }
            // n = 5, score = 100
            //   483305????????       |                     
            //   488d15a6df0200       | mov                 ecx, dword ptr [esi + 8]
            //   488bcb               | dec                 esp
            //   488905????????       |                     
            //   ff15????????         |                     

        $sequence_1 = { 488d059f830200 488901 488bc1 c3 488d0591fd0100 }
            // n = 5, score = 100
            //   488d059f830200       | lea                 edi, [esi + eax*2]
            //   488901               | dec                 eax
            //   488bc1               | test                esi, esi
            //   c3                   | dec                 eax
            //   488d0591fd0100       | arpl                si, ax

        $sequence_2 = { e8???????? 4885c0 7509 488d0567da0300 eb04 4883c020 4883c428 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   4885c0               | or                  edx, 0x80070000
            //   7509                 | test                eax, eax
            //   488d0567da0300       | cmovle              edx, eax
            //   eb04                 | dec                 eax
            //   4883c020             | lea                 edx, [0x1aab4]
            //   4883c428             | dec                 eax

        $sequence_3 = { 81ca00000780 85c0 0f4ed0 e8???????? 488d1578380300 488d4c2430 }
            // n = 6, score = 100
            //   81ca00000780         | je                  0x3dd
            //   85c0                 | dec                 eax
            //   0f4ed0               | lea                 eax, [0x2e16d]
            //   e8????????           |                     
            //   488d1578380300       | dec                 eax
            //   488d4c2430           | mov                 dword ptr [ebx], eax

        $sequence_4 = { e9???????? b84c000000 668945b7 488d4dd7 e8???????? }
            // n = 5, score = 100
            //   e9????????           |                     
            //   b84c000000           | mov                 dword ptr [esp + 0x60], 0x780065
            //   668945b7             | mov                 dword ptr [esp + 0x64], 0x6a002e
            //   488d4dd7             | mov                 word ptr [ebp + 0xf], ax
            //   e8????????           |                     

        $sequence_5 = { 488d15ce9d0100 488d4c2438 e8???????? 488d1585320200 488d4c2438 e8???????? }
            // n = 6, score = 100
            //   488d15ce9d0100       | dec                 esp
            //   488d4c2438           | lea                 eax, [esp + 0x50]
            //   e8????????           |                     
            //   488d1585320200       | mov                 edx, 0x2000
            //   488d4c2438           | dec                 ecx
            //   e8????????           |                     

        $sequence_6 = { 89442428 48894c2420 33d2 33c9 ff15???????? 488b4618 488d7f01 }
            // n = 7, score = 100
            //   89442428             | and                 edx, 0x3f
            //   48894c2420           | dec                 eax
            //   33d2                 | mov                 ecx, edi
            //   33c9                 | dec                 eax
            //   ff15????????         |                     
            //   488b4618             | sar                 ecx, 6
            //   488d7f01             | dec                 eax

        $sequence_7 = { 49894508 498b4d00 49beffffffffffffff1f 4885c9 7465 498b4510 482bc1 }
            // n = 7, score = 100
            //   49894508             | mov                 ecx, dword ptr [ebp - 0x78]
            //   498b4d00             | dec                 eax
            //   49beffffffffffffff1f     | test    ecx, ecx
            //   4885c9               | je                  0x22
            //   7465                 | dec                 eax
            //   498b4510             | test                ecx, ecx
            //   482bc1               | je                  0x2b

        $sequence_8 = { 57 4883ec20 488d1d92d30300 488d358bd30300 eb16 488b3b }
            // n = 6, score = 100
            //   57                   | cmp                 dword ptr [edi + ecx*2], ebp
            //   4883ec20             | dec                 eax
            //   488d1d92d30300       | mov                 ecx, dword ptr [esi + 8]
            //   488d358bd30300       | dec                 esp
            //   eb16                 | lea                 eax, [0x3b5a9]
            //   488b3b               | dec                 eax

        $sequence_9 = { 4d8bc7 488bd7 488b4e08 e8???????? 4c8d05d5b10300 488bd7 488b4e08 }
            // n = 7, score = 100
            //   4d8bc7               | dec                 eax
            //   488bd7               | lea                 ecx, [eax + 8]
            //   488b4e08             | dec                 eax
            //   e8????????           |                     
            //   4c8d05d5b10300       | lea                 eax, [0x231f1]
            //   488bd7               | dec                 eax
            //   488b4e08             | mov                 dword ptr [ebx], eax

    condition:
        7 of them and filesize < 714752
}