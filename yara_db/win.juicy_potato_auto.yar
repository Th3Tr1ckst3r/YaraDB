rule win_juicy_potato_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.juicy_potato."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.juicy_potato"
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
        $sequence_0 = { 4c8bf1 4c8d054add0200 488d157bc80200 b901000000 e8???????? 488bd8 4885c0 }
            // n = 7, score = 100
            //   4c8bf1               | dec                 ecx
            //   4c8d054add0200       | cmp                 dword ptr [eax + 0x10], 0
            //   488d157bc80200       | je                  0xbf
            //   b901000000           | inc                 ecx
            //   e8????????           |                     
            //   488bd8               | mov                 eax, 2
            //   4885c0               | dec                 eax

        $sequence_1 = { 8bd0 488d0d442c0400 e8???????? eb24 ff15???????? 8bd0 }
            // n = 6, score = 100
            //   8bd0                 | mov                 eax, edx
            //   488d0d442c0400       | dec                 eax
            //   e8????????           |                     
            //   eb24                 | lea                 ecx, [0x19545]
            //   ff15????????         |                     
            //   8bd0                 | dec                 eax

        $sequence_2 = { 488bcb 488905???????? ff15???????? 483305???????? 488d15aa3b0300 488bcb 488905???????? }
            // n = 7, score = 100
            //   488bcb               | lea                 edx, [ebx + 8]
            //   488905????????       |                     
            //   ff15????????         |                     
            //   483305????????       |                     
            //   488d15aa3b0300       | xor                 ecx, ecx
            //   488bcb               | dec                 eax
            //   488905????????       |                     

        $sequence_3 = { 488d054ab1ffff 4889442438 488d4c2428 e8???????? }
            // n = 4, score = 100
            //   488d054ab1ffff       | mov                 dword ptr [ebp + 0x30], eax
            //   4889442438           | dec                 eax
            //   488d4c2428           | mov                 dword ptr [ebp + 0x38], eax
            //   e8????????           |                     

        $sequence_4 = { 0fb7d0 488d4c2420 81ca00000780 85c0 0f4ed0 e8???????? 488d15bd3a0300 }
            // n = 7, score = 100
            //   0fb7d0               | xor                 ecx, ecx
            //   488d4c2420           | test                eax, eax
            //   81ca00000780         | jne                 0xf94
            //   85c0                 | dec                 eax
            //   0f4ed0               | lea                 ecx, [0x42288]
            //   e8????????           |                     
            //   488d15bd3a0300       | dec                 eax

        $sequence_5 = { 488bcd 488d1515460400 83e13f 488bc5 48c1f806 48c1e106 }
            // n = 6, score = 100
            //   488bcd               | dec                 eax
            //   488d1515460400       | lea                 ecx, [0x421dc]
            //   83e13f               | jmp                 0x72c
            //   488bc5               | dec                 eax
            //   48c1f806             | lea                 ecx, [0x4216b]
            //   48c1e106             | jmp                 0x745

        $sequence_6 = { eb1e 488bc3 498784f7201e0500 4885c0 7409 488bcb ff15???????? }
            // n = 7, score = 100
            //   eb1e                 | lea                 edx, [ebx + 8]
            //   488bc3               | xor                 ecx, ecx
            //   498784f7201e0500     | mov                 byte ptr [esp + 0x28], 1
            //   4885c0               | dec                 eax
            //   7409                 | mov                 eax, edx
            //   488bcb               | dec                 eax
            //   ff15????????         |                     

        $sequence_7 = { 75f6 488d0dbffe0400 e8???????? eb2e ffcf 4883c308 488b03 }
            // n = 7, score = 100
            //   75f6                 | inc                 esp
            //   488d0dbffe0400       | mov                 esp, dword ptr [esp + 0x78]
            //   e8????????           |                     
            //   eb2e                 | inc                 esp
            //   ffcf                 | movzx               ebp, si
            //   4883c308             | dec                 eax
            //   488b03               | lea                 ecx, [0xc19d]

        $sequence_8 = { 4863c2 488d1448 488d05d1be0100 8b0490 85c0 7436 7e22 }
            // n = 7, score = 100
            //   4863c2               | jmp                 0x710
            //   488d1448             | je                  0x727
            //   488d05d1be0100       | dec                 eax
            //   8b0490               | mov                 edx, dword ptr [ebp + 0x740]
            //   85c0                 | dec                 esp
            //   7436                 | lea                 eax, [0x2b2b0]
            //   7e22                 | dec                 ecx

        $sequence_9 = { 488d4f60 ba02000000 e8???????? 4883a7b800000000 488d054fd60100 488907 488bc7 }
            // n = 7, score = 100
            //   488d4f60             | dec                 eax
            //   ba02000000           | mov                 dword ptr [esp + 0x18], edi
            //   e8????????           |                     
            //   4883a7b800000000     | inc                 ecx
            //   488d054fd60100       | push                esi
            //   488907               | dec                 eax
            //   488bc7               | sub                 esp, 0x20

    condition:
        7 of them and filesize < 736256
}