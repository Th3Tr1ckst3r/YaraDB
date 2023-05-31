rule win_fancyfilter_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.fancyfilter."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.fancyfilter"
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
        $sequence_0 = { 85c0 740a 66833800 7404 b001 eb02 }
            // n = 6, score = 400
            //   85c0                 | test                eax, eax
            //   740a                 | je                  0xc
            //   66833800             | cmp                 word ptr [eax], 0
            //   7404                 | je                  6
            //   b001                 | mov                 al, 1
            //   eb02                 | jmp                 4

        $sequence_1 = { 81e3ffffff00 ff15???????? 50 ff15???????? 85c0 }
            // n = 5, score = 400
            //   81e3ffffff00         | and                 ebx, 0xffffff
            //   ff15????????         |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax

        $sequence_2 = { 8b07 83e810 50 83c610 56 }
            // n = 5, score = 400
            //   8b07                 | mov                 eax, dword ptr [edi]
            //   83e810               | sub                 eax, 0x10
            //   50                   | push                eax
            //   83c610               | add                 esi, 0x10
            //   56                   | push                esi

        $sequence_3 = { 83c420 83f803 7409 83f806 }
            // n = 4, score = 400
            //   83c420               | add                 esp, 0x20
            //   83f803               | cmp                 eax, 3
            //   7409                 | je                  0xb
            //   83f806               | cmp                 eax, 6

        $sequence_4 = { 750d 8b472c a801 7406 }
            // n = 4, score = 400
            //   750d                 | jne                 0xf
            //   8b472c               | mov                 eax, dword ptr [edi + 0x2c]
            //   a801                 | test                al, 1
            //   7406                 | je                  8

        $sequence_5 = { 740a 66833800 7404 b001 eb02 }
            // n = 5, score = 400
            //   740a                 | je                  0xc
            //   66833800             | cmp                 word ptr [eax], 0
            //   7404                 | je                  6
            //   b001                 | mov                 al, 1
            //   eb02                 | jmp                 4

        $sequence_6 = { e8???????? 8b07 83c40c 014610 }
            // n = 4, score = 400
            //   e8????????           |                     
            //   8b07                 | mov                 eax, dword ptr [edi]
            //   83c40c               | add                 esp, 0xc
            //   014610               | add                 dword ptr [esi + 0x10], eax

        $sequence_7 = { ff15???????? 85c0 750d 8b472c a801 }
            // n = 5, score = 400
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   750d                 | jne                 0xf
            //   8b472c               | mov                 eax, dword ptr [edi + 0x2c]
            //   a801                 | test                al, 1

        $sequence_8 = { 85c0 750d 8b472c a801 7406 83c804 89472c }
            // n = 7, score = 400
            //   85c0                 | test                eax, eax
            //   750d                 | jne                 0xf
            //   8b472c               | mov                 eax, dword ptr [edi + 0x2c]
            //   a801                 | test                al, 1
            //   7406                 | je                  8
            //   83c804               | or                  eax, 4
            //   89472c               | mov                 dword ptr [edi + 0x2c], eax

        $sequence_9 = { 740f 8d4f20 51 50 ff15???????? 8b36 }
            // n = 6, score = 400
            //   740f                 | je                  0x11
            //   8d4f20               | lea                 ecx, [edi + 0x20]
            //   51                   | push                ecx
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b36                 | mov                 esi, dword ptr [esi]

    condition:
        7 of them and filesize < 169984
}