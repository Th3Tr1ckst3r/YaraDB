rule win_proto8_rat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.proto8_rat."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.proto8_rat"
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
        $sequence_0 = { 8bf7 88442432 8bc1 4c89a42490000000 c1e804 4c89ac2498000000 4c89742458 }
            // n = 7, score = 100
            //   8bf7                 | inc                 ecx
            //   88442432             | sub                 eax, edx
            //   8bc1                 | js                  0x38
            //   4c89a42490000000     | dec                 esp
            //   c1e804               | mov                 ebx, dword ptr [esp + 0xa0]
            //   4c89ac2498000000     | jmp                 0x3c
            //   4c89742458           | dec                 eax

        $sequence_1 = { a9fbffffff 757a 8b5108 40b601 c1e204 48896c2440 488b6918 }
            // n = 7, score = 100
            //   a9fbffffff           | mov                 dword ptr [esp + 0x20], edi
            //   757a                 | dec                 esp
            //   8b5108               | cmp                 ecx, edi
            //   40b601               | dec                 esp
            //   c1e204               | lea                 eax, [0x42734]
            //   48896c2440           | mov                 edx, eax
            //   488b6918             | mov                 eax, 0xffffffdb

        $sequence_2 = { e8???????? 84c0 0f8501010000 488b542478 483bd7 722e 48ffc2 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   84c0                 | inc                 ebp
            //   0f8501010000         | test                bl, bl
            //   488b542478           | je                  0x407
            //   483bd7               | xor                 ebp, ebp
            //   722e                 | mov                 dword ptr [esp + 0x24], ebp
            //   48ffc2               | test                eax, eax

        $sequence_3 = { 8b05???????? a801 752f 83c801 488d0d70030700 8905???????? ff15???????? }
            // n = 7, score = 100
            //   8b05????????         |                     
            //   a801                 | cmp                 ebx, esi
            //   752f                 | jb                  0x222
            //   83c801               | dec                 ecx
            //   488d0d70030700       | cmp                 ebx, edi
            //   8905????????         |                     
            //   ff15????????         |                     

        $sequence_4 = { 8b45d4 f7d8 1bc9 4103cf 894dd8 eb28 448975d8 }
            // n = 7, score = 100
            //   8b45d4               | mov                 dword ptr [ecx + eax], eax
            //   f7d8                 | dec                 ebp
            //   1bc9                 | mov                 edx, dword ptr [ecx + 0x88]
            //   4103cf               | inc                 ecx
            //   894dd8               | mov                 edi, edi
            //   eb28                 | dec                 ebx
            //   448975d8             | mov                 ecx, dword ptr [esi + edx]

        $sequence_5 = { b901000000 84c0 0f44e9 488bcb e8???????? 90 4084ed }
            // n = 7, score = 100
            //   b901000000           | dec                 eax
            //   84c0                 | mov                 dword ptr [esp + 0x20], eax
            //   0f44e9               | dec                 eax
            //   488bcb               | lea                 edx, [ebp + 0x140]
            //   e8????????           |                     
            //   90                   | dec                 esp
            //   4084ed               | lea                 eax, [esp + 0x58]

        $sequence_6 = { 8b6f10 418d4c2410 418bc7 41ffc7 c1e508 03ee 488d1c40 }
            // n = 7, score = 100
            //   8b6f10               | sub                 eax, ecx
            //   418d4c2410           | dec                 eax
            //   418bc7               | sar                 eax, 3
            //   41ffc7               | dec                 eax
            //   c1e508               | mov                 edx, eax
            //   03ee                 | dec                 eax
            //   488d1c40             | shl                 edx, 3

        $sequence_7 = { 722d 48ffc2 488b4d50 488bc1 483bd3 7219 4883c227 }
            // n = 7, score = 100
            //   722d                 | test                eax, eax
            //   48ffc2               | je                  0x222
            //   488b4d50             | dec                 eax
            //   488bc1               | lea                 edx, [0x1eeb3]
            //   483bd3               | dec                 eax
            //   7219                 | mov                 ecx, edi
            //   4883c227             | dec                 eax

        $sequence_8 = { 488b88f8000000 8b442428 7410 014124 b804000000 874358 e9???????? }
            // n = 7, score = 100
            //   488b88f8000000       | dec                 eax
            //   8b442428             | mov                 ecx, dword ptr [ecx - 8]
            //   7410                 | dec                 eax
            //   014124               | sub                 eax, ecx
            //   b804000000           | dec                 eax
            //   874358               | add                 eax, -8
            //   e9????????           |                     

        $sequence_9 = { 488b0a 488b4208 48894108 488b4a08 488b02 488901 48832200 }
            // n = 7, score = 100
            //   488b0a               | jne                 0x271
            //   488b4208             | inc                 ebp
            //   48894108             | lea                 eax, [ecx + 5]
            //   488b4a08             | dec                 esp
            //   488b02               | mov                 dword ptr [esp + 0x20], ebp
            //   488901               | inc                 esp
            //   48832200             | mov                 esi, eax

    condition:
        7 of them and filesize < 2537472
}