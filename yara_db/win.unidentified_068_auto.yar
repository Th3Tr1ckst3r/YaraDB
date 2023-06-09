rule win_unidentified_068_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.unidentified_068."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.unidentified_068"
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
        $sequence_0 = { 660f56fa 25ff000000 83c001 25fe010000 f20f593c8538b14400 660f122c8538b14400 03c0 }
            // n = 7, score = 100
            //   660f56fa             | orpd                xmm7, xmm2
            //   25ff000000           | and                 eax, 0xff
            //   83c001               | add                 eax, 1
            //   25fe010000           | and                 eax, 0x1fe
            //   f20f593c8538b14400     | mulsd    xmm7, qword ptr [eax*4 + 0x44b138]
            //   660f122c8538b14400     | movlpd    xmm5, qword ptr [eax*4 + 0x44b138]
            //   03c0                 | add                 eax, eax

        $sequence_1 = { 57 8b7d0c 57 8d4e3c e8???????? 897e58 33c0 }
            // n = 7, score = 100
            //   57                   | push                edi
            //   8b7d0c               | mov                 edi, dword ptr [ebp + 0xc]
            //   57                   | push                edi
            //   8d4e3c               | lea                 ecx, [esi + 0x3c]
            //   e8????????           |                     
            //   897e58               | mov                 dword ptr [esi + 0x58], edi
            //   33c0                 | xor                 eax, eax

        $sequence_2 = { 7705 394d18 763f 8b5de8 8b75e4 8b4f38 e8???????? }
            // n = 7, score = 100
            //   7705                 | ja                  7
            //   394d18               | cmp                 dword ptr [ebp + 0x18], ecx
            //   763f                 | jbe                 0x41
            //   8b5de8               | mov                 ebx, dword ptr [ebp - 0x18]
            //   8b75e4               | mov                 esi, dword ptr [ebp - 0x1c]
            //   8b4f38               | mov                 ecx, dword ptr [edi + 0x38]
            //   e8????????           |                     

        $sequence_3 = { c1ea04 03d1 3944240c 7543 3bd1 723f 8b442434 }
            // n = 7, score = 100
            //   c1ea04               | shr                 edx, 4
            //   03d1                 | add                 edx, ecx
            //   3944240c             | cmp                 dword ptr [esp + 0xc], eax
            //   7543                 | jne                 0x45
            //   3bd1                 | cmp                 edx, ecx
            //   723f                 | jb                  0x41
            //   8b442434             | mov                 eax, dword ptr [esp + 0x34]

        $sequence_4 = { 41 894804 33c0 5d c20c00 55 8bec }
            // n = 7, score = 100
            //   41                   | inc                 ecx
            //   894804               | mov                 dword ptr [eax + 4], ecx
            //   33c0                 | xor                 eax, eax
            //   5d                   | pop                 ebp
            //   c20c00               | ret                 0xc
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp

        $sequence_5 = { 56 8b7510 8bce 57 8b7d18 8965f0 89758c }
            // n = 7, score = 100
            //   56                   | push                esi
            //   8b7510               | mov                 esi, dword ptr [ebp + 0x10]
            //   8bce                 | mov                 ecx, esi
            //   57                   | push                edi
            //   8b7d18               | mov                 edi, dword ptr [ebp + 0x18]
            //   8965f0               | mov                 dword ptr [ebp - 0x10], esp
            //   89758c               | mov                 dword ptr [ebp - 0x74], esi

        $sequence_6 = { 894708 ff7518 8b45e4 89470c 8d45f3 50 51 }
            // n = 7, score = 100
            //   894708               | mov                 dword ptr [edi + 8], eax
            //   ff7518               | push                dword ptr [ebp + 0x18]
            //   8b45e4               | mov                 eax, dword ptr [ebp - 0x1c]
            //   89470c               | mov                 dword ptr [edi + 0xc], eax
            //   8d45f3               | lea                 eax, [ebp - 0xd]
            //   50                   | push                eax
            //   51                   | push                ecx

        $sequence_7 = { 3d01010300 751d 85c9 7519 83fa05 7514 8b4738 }
            // n = 7, score = 100
            //   3d01010300           | cmp                 eax, 0x30101
            //   751d                 | jne                 0x1f
            //   85c9                 | test                ecx, ecx
            //   7519                 | jne                 0x1b
            //   83fa05               | cmp                 edx, 5
            //   7514                 | jne                 0x16
            //   8b4738               | mov                 eax, dword ptr [edi + 0x38]

        $sequence_8 = { 8bc8 8b450c 2b45f4 d1f8 3b45f8 7407 b857000780 }
            // n = 7, score = 100
            //   8bc8                 | mov                 ecx, eax
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   2b45f4               | sub                 eax, dword ptr [ebp - 0xc]
            //   d1f8                 | sar                 eax, 1
            //   3b45f8               | cmp                 eax, dword ptr [ebp - 8]
            //   7407                 | je                  9
            //   b857000780           | mov                 eax, 0x80070057

        $sequence_9 = { 8d4a0c 8b5208 e8???????? 8b4510 59 59 5d }
            // n = 7, score = 100
            //   8d4a0c               | lea                 ecx, [edx + 0xc]
            //   8b5208               | mov                 edx, dword ptr [edx + 8]
            //   e8????????           |                     
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx
            //   5d                   | pop                 ebp

    condition:
        7 of them and filesize < 862208
}