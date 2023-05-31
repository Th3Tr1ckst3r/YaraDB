rule win_unidentified_070_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.unidentified_070."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_070"
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
        $sequence_0 = { 6a04 50 ff15???????? 8945fc 85c0 }
            // n = 5, score = 300
            //   6a04                 | push                4
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   85c0                 | test                eax, eax

        $sequence_1 = { 6a00 6a00 6a00 6a04 50 ff15???????? 8945fc }
            // n = 7, score = 300
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a04                 | push                4
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax

        $sequence_2 = { 6a00 6a00 6a04 50 ff15???????? 8945fc 85c0 }
            // n = 7, score = 300
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a04                 | push                4
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   85c0                 | test                eax, eax

        $sequence_3 = { 6a00 6a04 50 ff15???????? 8945fc }
            // n = 5, score = 300
            //   6a00                 | push                0
            //   6a04                 | push                4
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax

        $sequence_4 = { 33c0 c20400 3b0d???????? 7502 }
            // n = 4, score = 300
            //   33c0                 | xor                 eax, eax
            //   c20400               | ret                 4
            //   3b0d????????         |                     
            //   7502                 | jne                 4

        $sequence_5 = { 6a00 6a04 50 ff15???????? 8945fc 85c0 }
            // n = 6, score = 300
            //   6a00                 | push                0
            //   6a04                 | push                4
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   85c0                 | test                eax, eax

        $sequence_6 = { 6a00 6a00 6a04 50 ff15???????? 8945fc }
            // n = 6, score = 300
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a04                 | push                4
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8945fc               | mov                 dword ptr [ebp - 4], eax

        $sequence_7 = { ff7704 8d85f4fdffff 85f6 7511 }
            // n = 4, score = 200
            //   ff7704               | push                dword ptr [edi + 4]
            //   8d85f4fdffff         | lea                 eax, [ebp - 0x20c]
            //   85f6                 | test                esi, esi
            //   7511                 | jne                 0x13

        $sequence_8 = { 75dd e8???????? 68???????? ff15???????? 6808020000 8d85f4fdffff }
            // n = 6, score = 200
            //   75dd                 | jne                 0xffffffdf
            //   e8????????           |                     
            //   68????????           |                     
            //   ff15????????         |                     
            //   6808020000           | push                0x208
            //   8d85f4fdffff         | lea                 eax, [ebp - 0x20c]

        $sequence_9 = { eb17 68???????? 50 ff15???????? }
            // n = 4, score = 200
            //   eb17                 | jmp                 0x19
            //   68????????           |                     
            //   50                   | push                eax
            //   ff15????????         |                     

    condition:
        7 of them and filesize < 90112
}