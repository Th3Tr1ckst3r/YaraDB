rule win_epsilon_red_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.epsilon_red."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.epsilon_red"
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
        $sequence_0 = { 488b8900000000 483b6110 0f86ec000000 4883ec48 48896c2440 488d6c2440 b800040000 }
            // n = 7, score = 200
            //   488b8900000000       | dec                 eax
            //   483b6110             | cmp                 dword ptr [esp + 0xb8], 0
            //   0f86ec000000         | je                  0x1237
            //   4883ec48             | dec                 eax
            //   48896c2440           | mov                 ebx, dword ptr [esp + 0xc0]
            //   488d6c2440           | dec                 eax
            //   b800040000           | mov                 dword ptr [esp + 0x58], edx

        $sequence_1 = { 833d????????00 0f8507030000 49895820 8b82a8000000 0302 4863c0 486bc0c4 }
            // n = 7, score = 200
            //   833d????????00       |                     
            //   0f8507030000         | dec                 eax
            //   49895820             | lea                 eax, [0x72e3e]
            //   8b82a8000000         | dec                 eax
            //   0302                 | mov                 dword ptr [esp], eax
            //   4863c0               | dec                 eax
            //   486bc0c4             | lea                 eax, [0x6485a]

        $sequence_2 = { f7c110000000 0f45da 8b4038 83f802 750b 81cb00002004 895c2410 }
            // n = 7, score = 200
            //   f7c110000000         | dec                 ecx
            //   0f45da               | mov                 ebx, eax
            //   8b4038               | dec                 eax
            //   83f802               | mov                 eax, esi
            //   750b                 | dec                 esp
            //   81cb00002004         | mov                 esi, ebx
            //   895c2410             | dec                 ebp

        $sequence_3 = { ffc6 488b3b 660f1f840000000000 4885ff 0f84d5000000 4189d0 29ca }
            // n = 7, score = 200
            //   ffc6                 | dec                 ebp
            //   488b3b               | mov                 esi, dword ptr [ebp + eax*8]
            //   660f1f840000000000     | dec    ebp
            //   4885ff               | lea                 edi, [ebp + eax*8]
            //   0f84d5000000         | dec                 ebp
            //   4189d0               | test                esi, esi
            //   29ca                 | dec                 ebp

        $sequence_4 = { ebaa 31c0 90 eba5 4531e4 e9???????? 480fbdd8 }
            // n = 7, score = 200
            //   ebaa                 | dec                 esp
            //   31c0                 | mov                 dword ptr [esp], ecx
            //   90                   | dec                 eax
            //   eba5                 | mov                 dword ptr [esp + 8], edx
            //   4531e4               | dec                 eax
            //   e9????????           |                     
            //   480fbdd8             | mov                 dword ptr [esp + 0x10], esi

        $sequence_5 = { e9???????? 488b842428010000 488b4850 488b942450010000 48891424 48c744240800000000 ffd1 }
            // n = 7, score = 200
            //   e9????????           |                     
            //   488b842428010000     | dec                 esp
            //   488b4850             | mov                 dword ptr [esp + 0x70], ebp
            //   488b942450010000     | dec                 ebp
            //   48891424             | cmp                 esi, esp
            //   48c744240800000000     | je    0x7fa
            //   ffd1                 | dec                 ecx

        $sequence_6 = { 4d8d5a01 4c8b27 4c8b6f10 0f1f4000 4d39dd 7212 4d8d5a01 }
            // n = 7, score = 200
            //   4d8d5a01             | dec                 eax
            //   4c8b27               | mov                 dword ptr [esp + 8], edx
            //   4c8b6f10             | dec                 eax
            //   0f1f4000             | mov                 eax, dword ptr [esp + 0x10]
            //   4d39dd               | dec                 eax
            //   7212                 | mov                 eax, dword ptr [esp + 0xe0]
            //   4d8d5a01             | dec                 eax

        $sequence_7 = { 7562 c7042401000000 e8???????? e8???????? 488b442410 488b4830 488b8938010000 }
            // n = 7, score = 200
            //   7562                 | mov                 dword ptr [esp + 8], ebx
            //   c7042401000000       | dec                 eax
            //   e8????????           |                     
            //   e8????????           |                     
            //   488b442410           | mov                 dword ptr [esp + 0x10], ecx
            //   488b4830             | dec                 eax
            //   488b8938010000       | mov                 ebp, dword ptr [esp + 0x88]

        $sequence_8 = { ebd2 488b4808 488b5810 488b7018 488b7a08 4c8b4210 4c8b4a18 }
            // n = 7, score = 200
            //   ebd2                 | dec                 eax
            //   488b4808             | mov                 edx, dword ptr [esp + 0x340]
            //   488b5810             | dec                 eax
            //   488b7018             | mov                 eax, dword ptr [esp + 0x348]
            //   488b7a08             | dec                 esp
            //   4c8b4210             | mov                 eax, dword ptr [esp + 0x338]
            //   4c8b4a18             | dec                 esp

        $sequence_9 = { 488b8c24c8000000 488b9424d8000000 488b5c2450 488bbc2480000000 e9???????? 488b5c2470 488d7301 }
            // n = 7, score = 200
            //   488b8c24c8000000     | dec                 eax
            //   488b9424d8000000     | mov                 dword ptr [esp + 0x70], esi
            //   488b5c2450           | dec                 eax
            //   488bbc2480000000     | mov                 dword ptr [esp + 0x48], edi
            //   e9????????           |                     
            //   488b5c2470           | dec                 eax
            //   488d7301             | lea                 edx, [0x4d52d]

    condition:
        7 of them and filesize < 5075968
}