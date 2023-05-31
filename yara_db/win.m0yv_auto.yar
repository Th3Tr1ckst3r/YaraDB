rule win_m0yv_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.m0yv."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.m0yv"
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
        $sequence_0 = { 4c89fb 4c8b8424d8000000 490fafd8 4801c3 488b442478 490fafc6 4801c3 }
            // n = 7, score = 100
            //   4c89fb               | inc                 esp
            //   4c8b8424d8000000     | mov                 dword ptr [esp + 4], ebx
            //   490fafd8             | inc                 esp
            //   4801c3               | add                 esi, dword ptr [edx + 0x20]
            //   488b442478           | inc                 esp
            //   490fafc6             | add                 eax, dword ptr [edx + 0x24]
            //   4801c3               | mov                 dword ptr [ecx], eax

        $sequence_1 = { 44885f0e 89c2 c1e206 c1e90f 09d1 884f0f }
            // n = 6, score = 100
            //   44885f0e             | add                 ecx, -1
            //   89c2                 | jle                 0x1c40
            //   c1e206               | cmp                 dword ptr [eax - 4], -1
            //   c1e90f               | add                 ebx, 1
            //   09d1                 | dec                 eax
            //   884f0f               | cmp                 edi, 0x40

        $sequence_2 = { 837c242000 7422 448b642424 660f1f840000000000 4889f1 4889ea }
            // n = 6, score = 100
            //   837c242000           | dec                 eax
            //   7422                 | mov                 edx, esi
            //   448b642424           | dec                 eax
            //   660f1f840000000000     | mov    edx, edi
            //   4889f1               | dec                 ecx
            //   4889ea               | mov                 eax, esi

        $sequence_3 = { 48034c2450 4c69de182d0700 4d01cb 4c69ce53c6f0ff 4d01f1 4c69fbd1150200 4c69f68390f5ff }
            // n = 7, score = 100
            //   48034c2450           | mov                 ecx, ebp
            //   4c69de182d0700       | nop                 
            //   4d01cb               | dec                 eax
            //   4c69ce53c6f0ff       | mov                 eax, dword ptr [eax]
            //   4d01f1               | dec                 eax
            //   4c69fbd1150200       | mov                 esi, dword ptr [eax + ebp*8]
            //   4c69f68390f5ff       | dec                 eax

        $sequence_4 = { 53 4883ec20 31ff 4885c9 745e 89d3 4889ce }
            // n = 7, score = 100
            //   53                   | and                 ebx, eax
            //   4883ec20             | inc                 esp
            //   31ff                 | and                 ebp, eax
            //   4885c9               | inc                 esp
            //   745e                 | and                 eax, eax
            //   89d3                 | inc                 esp
            //   4889ce               | and                 esi, eax

        $sequence_5 = { 4c69c5d1150200 4d01f0 4969fb132c0a00 48037c2478 4969c3182d0700 4801f0 4969f367fb0900 }
            // n = 7, score = 100
            //   4c69c5d1150200       | lea                 eax, [eax + ecx*2]
            //   4d01f0               | inc                 ecx
            //   4969fb132c0a00       | mov                 byte ptr [esp + 4], dl
            //   48037c2478           | mov                 eax, ebp
            //   4969c3182d0700       | and                 eax, 0x1fffff
            //   4801f0               | shr                 esi, 0x13
            //   4969f367fb0900       | lea                 edx, [esi + eax*4]

        $sequence_6 = { eb1d 488d050b000200 ffcb 488d0c9b 488d0cc8 ff15???????? ff0d???????? }
            // n = 7, score = 100
            //   eb1d                 | mov                 eax, edi
            //   488d050b000200       | dec                 eax
            //   ffcb                 | add                 esp, 0x48
            //   488d0c9b             | pop                 ebx
            //   488d0cc8             | pop                 edi
            //   ff15????????         |                     
            //   ff0d????????         |                     

        $sequence_7 = { 4881e50000e0ff 4829e8 4d69e967fb0900 4d01c5 4c03ac24b0000000 488b6c2430 }
            // n = 6, score = 100
            //   4881e50000e0ff       | je                  0x31e
            //   4829e8               | dec                 eax
            //   4d69e967fb0900       | lea                 eax, [0x1cf4d]
            //   4d01c5               | dec                 edx
            //   4c03ac24b0000000     | mov                 eax, dword ptr [eax + ebp*8]
            //   488b6c2430           | inc                 edx

        $sequence_8 = { 25ffff1f00 4889842468010000 488d4b17 e8???????? c1e805 }
            // n = 5, score = 100
            //   25ffff1f00           | dec                 esp
            //   4889842468010000     | imul                ebx, ebp, 0x72d18
            //   488d4b17             | and                 edi, 0x1fffff
            //   e8????????           |                     
            //   c1e805               | dec                 eax

        $sequence_9 = { 4c01f0 488d3cf6 488d347e 4989eb 4c0faffe 4c01f8 4989cf }
            // n = 7, score = 100
            //   4c01f0               | mov                 edx, edx
            //   488d3cf6             | dec                 ecx
            //   488d347e             | sar                 edx, 0x15
            //   4989eb               | dec                 ecx
            //   4c0faffe             | add                 edx, ecx
            //   4c01f8               | and                 edx, 0x1fffff
            //   4989cf               | dec                 ebp

    condition:
        7 of them and filesize < 779264
}