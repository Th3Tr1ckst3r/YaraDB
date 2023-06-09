rule win_makadocs_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.makadocs."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.makadocs"
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
        $sequence_0 = { 8b08 8b41f4 51 8d54242c 52 e8???????? }
            // n = 6, score = 100
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   8b41f4               | mov                 eax, dword ptr [ecx - 0xc]
            //   51                   | push                ecx
            //   8d54242c             | lea                 edx, [esp + 0x2c]
            //   52                   | push                edx
            //   e8????????           |                     

        $sequence_1 = { 51 8d4c2450 c68424a800000041 e8???????? 83c404 8d542428 52 }
            // n = 7, score = 100
            //   51                   | push                ecx
            //   8d4c2450             | lea                 ecx, [esp + 0x50]
            //   c68424a800000041     | mov                 byte ptr [esp + 0xa8], 0x41
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   8d542428             | lea                 edx, [esp + 0x28]
            //   52                   | push                edx

        $sequence_2 = { e8???????? 83c404 8be8 c74424680f000000 c744246400000000 c644245400 8d5001 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   8be8                 | mov                 ebp, eax
            //   c74424680f000000     | mov                 dword ptr [esp + 0x68], 0xf
            //   c744246400000000     | mov                 dword ptr [esp + 0x64], 0
            //   c644245400           | mov                 byte ptr [esp + 0x54], 0
            //   8d5001               | lea                 edx, [eax + 1]

        $sequence_3 = { 89b42484000000 8bc4 89642424 50 b9???????? e8???????? 83cfff }
            // n = 7, score = 100
            //   89b42484000000       | mov                 dword ptr [esp + 0x84], esi
            //   8bc4                 | mov                 eax, esp
            //   89642424             | mov                 dword ptr [esp + 0x24], esp
            //   50                   | push                eax
            //   b9????????           |                     
            //   e8????????           |                     
            //   83cfff               | or                  edi, 0xffffffff

        $sequence_4 = { 50 8bcd e8???????? 8b08 8b5004 890f 895704 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   8bcd                 | mov                 ecx, ebp
            //   e8????????           |                     
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   8b5004               | mov                 edx, dword ptr [eax + 4]
            //   890f                 | mov                 dword ptr [edi], ecx
            //   895704               | mov                 dword ptr [edi + 4], edx

        $sequence_5 = { 8b542420 8b35???????? 85d2 7408 3b15???????? 740d e8???????? }
            // n = 7, score = 100
            //   8b542420             | mov                 edx, dword ptr [esp + 0x20]
            //   8b35????????         |                     
            //   85d2                 | test                edx, edx
            //   7408                 | je                  0xa
            //   3b15????????         |                     
            //   740d                 | je                  0xf
            //   e8????????           |                     

        $sequence_6 = { c7442424ffffffff 8b442434 83c0f0 8d480c 83caff f00fc111 4a }
            // n = 7, score = 100
            //   c7442424ffffffff     | mov                 dword ptr [esp + 0x24], 0xffffffff
            //   8b442434             | mov                 eax, dword ptr [esp + 0x34]
            //   83c0f0               | add                 eax, -0x10
            //   8d480c               | lea                 ecx, [eax + 0xc]
            //   83caff               | or                  edx, 0xffffffff
            //   f00fc111             | lock xadd           dword ptr [ecx], edx
            //   4a                   | dec                 edx

        $sequence_7 = { 8bf4 e8???????? 83c010 8906 c64424380a 8b442420 51 }
            // n = 7, score = 100
            //   8bf4                 | mov                 esi, esp
            //   e8????????           |                     
            //   83c010               | add                 eax, 0x10
            //   8906                 | mov                 dword ptr [esi], eax
            //   c64424380a           | mov                 byte ptr [esp + 0x38], 0xa
            //   8b442420             | mov                 eax, dword ptr [esp + 0x20]
            //   51                   | push                ecx

        $sequence_8 = { e8???????? c644243010 8b442420 83c0f0 8d500c 83c9ff f00fc10a }
            // n = 7, score = 100
            //   e8????????           |                     
            //   c644243010           | mov                 byte ptr [esp + 0x30], 0x10
            //   8b442420             | mov                 eax, dword ptr [esp + 0x20]
            //   83c0f0               | add                 eax, -0x10
            //   8d500c               | lea                 edx, [eax + 0xc]
            //   83c9ff               | or                  ecx, 0xffffffff
            //   f00fc10a             | lock xadd           dword ptr [edx], ecx

        $sequence_9 = { 85c0 7c75 8b0b 3b41f8 7f6e 8941f4 8b0b }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   7c75                 | jl                  0x77
            //   8b0b                 | mov                 ecx, dword ptr [ebx]
            //   3b41f8               | cmp                 eax, dword ptr [ecx - 8]
            //   7f6e                 | jg                  0x70
            //   8941f4               | mov                 dword ptr [ecx - 0xc], eax
            //   8b0b                 | mov                 ecx, dword ptr [ebx]

    condition:
        7 of them and filesize < 344064
}