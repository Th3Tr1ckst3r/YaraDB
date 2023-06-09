rule win_dadjoke_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.dadjoke."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.dadjoke"
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
        $sequence_0 = { 56 57 6800081000 6a00 }
            // n = 4, score = 500
            //   56                   | push                esi
            //   57                   | push                edi
            //   6800081000           | push                0x100800
            //   6a00                 | push                0

        $sequence_1 = { 8b4dec 51 6a00 8d5508 52 8b4d28 }
            // n = 6, score = 400
            //   8b4dec               | mov                 ecx, dword ptr [ebp - 0x14]
            //   51                   | push                ecx
            //   6a00                 | push                0
            //   8d5508               | lea                 edx, [ebp + 8]
            //   52                   | push                edx
            //   8b4d28               | mov                 ecx, dword ptr [ebp + 0x28]

        $sequence_2 = { 8b4d08 e8???????? 8b55f0 83ca01 8955f0 c645fc02 8d4dd0 }
            // n = 7, score = 400
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   e8????????           |                     
            //   8b55f0               | mov                 edx, dword ptr [ebp - 0x10]
            //   83ca01               | or                  edx, 1
            //   8955f0               | mov                 dword ptr [ebp - 0x10], edx
            //   c645fc02             | mov                 byte ptr [ebp - 4], 2
            //   8d4dd0               | lea                 ecx, [ebp - 0x30]

        $sequence_3 = { 8b8224020000 83781800 7652 8b4d08 }
            // n = 4, score = 400
            //   8b8224020000         | mov                 eax, dword ptr [edx + 0x224]
            //   83781800             | cmp                 dword ptr [eax + 0x18], 0
            //   7652                 | jbe                 0x54
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]

        $sequence_4 = { 895110 8b45fc 8b4dec 894814 }
            // n = 4, score = 400
            //   895110               | mov                 dword ptr [ecx + 0x10], edx
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   8b4dec               | mov                 ecx, dword ptr [ebp - 0x14]
            //   894814               | mov                 dword ptr [eax + 0x14], ecx

        $sequence_5 = { 8bec 83ec2c c745ec00000000 8d45d4 50 e8???????? 83c404 }
            // n = 7, score = 400
            //   8bec                 | mov                 ebp, esp
            //   83ec2c               | sub                 esp, 0x2c
            //   c745ec00000000       | mov                 dword ptr [ebp - 0x14], 0
            //   8d45d4               | lea                 eax, [ebp - 0x2c]
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c404               | add                 esp, 4

        $sequence_6 = { 8b02 8b4df4 51 8b5018 ffd2 8945f8 8b45f4 }
            // n = 7, score = 400
            //   8b02                 | mov                 eax, dword ptr [edx]
            //   8b4df4               | mov                 ecx, dword ptr [ebp - 0xc]
            //   51                   | push                ecx
            //   8b5018               | mov                 edx, dword ptr [eax + 0x18]
            //   ffd2                 | call                edx
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]

        $sequence_7 = { 83ec18 8bcc 8965c4 8b5508 81c228021000 }
            // n = 5, score = 400
            //   83ec18               | sub                 esp, 0x18
            //   8bcc                 | mov                 ecx, esp
            //   8965c4               | mov                 dword ptr [ebp - 0x3c], esp
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   81c228021000         | add                 edx, 0x100228

        $sequence_8 = { 0f94c1 8bc1 c3 a1???????? c3 8bff 55 }
            // n = 7, score = 300
            //   0f94c1               | sete                cl
            //   8bc1                 | mov                 eax, ecx
            //   c3                   | ret                 
            //   a1????????           |                     
            //   c3                   | ret                 
            //   8bff                 | mov                 edi, edi
            //   55                   | push                ebp

        $sequence_9 = { 5e c3 8bff 55 8bec 83ec10 33c0 }
            // n = 7, score = 300
            //   5e                   | pop                 esi
            //   c3                   | ret                 
            //   8bff                 | mov                 edi, edi
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   83ec10               | sub                 esp, 0x10
            //   33c0                 | xor                 eax, eax

        $sequence_10 = { ff15???????? 85c0 7417 b920000000 }
            // n = 4, score = 300
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7417                 | je                  0x19
            //   b920000000           | mov                 ecx, 0x20

        $sequence_11 = { e8???????? c3 6a04 e8???????? 59 c3 6a0c }
            // n = 7, score = 300
            //   e8????????           |                     
            //   c3                   | ret                 
            //   6a04                 | push                4
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   c3                   | ret                 
            //   6a0c                 | push                0xc

        $sequence_12 = { 83fe04 7ce7 8d45f4 c645f800 33db 8d7001 33d2 }
            // n = 7, score = 200
            //   83fe04               | cmp                 esi, 4
            //   7ce7                 | jl                  0xffffffe9
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   c645f800             | mov                 byte ptr [ebp - 8], 0
            //   33db                 | xor                 ebx, ebx
            //   8d7001               | lea                 esi, [eax + 1]
            //   33d2                 | xor                 edx, edx

        $sequence_13 = { 8d458c c7458c80330000 50 6a1f 57 }
            // n = 5, score = 200
            //   8d458c               | lea                 eax, [ebp - 0x74]
            //   c7458c80330000       | mov                 dword ptr [ebp - 0x74], 0x3380
            //   50                   | push                eax
            //   6a1f                 | push                0x1f
            //   57                   | push                edi

        $sequence_14 = { 75f9 8d7d90 2bd6 4f 90 8a4701 47 }
            // n = 7, score = 200
            //   75f9                 | jne                 0xfffffffb
            //   8d7d90               | lea                 edi, [ebp - 0x70]
            //   2bd6                 | sub                 edx, esi
            //   4f                   | dec                 edi
            //   90                   | nop                 
            //   8a4701               | mov                 al, byte ptr [edi + 1]
            //   47                   | inc                 edi

        $sequence_15 = { 8b08 ff5150 8b85e4faffff 68???????? 50 }
            // n = 5, score = 200
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   ff5150               | call                dword ptr [ecx + 0x50]
            //   8b85e4faffff         | mov                 eax, dword ptr [ebp - 0x51c]
            //   68????????           |                     
            //   50                   | push                eax

        $sequence_16 = { 83c404 50 68???????? 56 ff15???????? 8bd8 85db }
            // n = 7, score = 200
            //   83c404               | add                 esp, 4
            //   50                   | push                eax
            //   68????????           |                     
            //   56                   | push                esi
            //   ff15????????         |                     
            //   8bd8                 | mov                 ebx, eax
            //   85db                 | test                ebx, ebx

        $sequence_17 = { ff5108 8b3d???????? 8b1d???????? 51 }
            // n = 4, score = 200
            //   ff5108               | call                dword ptr [ecx + 8]
            //   8b3d????????         |                     
            //   8b1d????????         |                     
            //   51                   | push                ecx

        $sequence_18 = { 6a00 6a00 ff15???????? 8b85e0faffff 8d95e8faffff 6a01 }
            // n = 6, score = 200
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   8b85e0faffff         | mov                 eax, dword ptr [ebp - 0x520]
            //   8d95e8faffff         | lea                 edx, [ebp - 0x518]
            //   6a01                 | push                1

        $sequence_19 = { ff15???????? 8d85f8feffff 50 ff15???????? 85c0 0f85b5000000 50 }
            // n = 7, score = 200
            //   ff15????????         |                     
            //   8d85f8feffff         | lea                 eax, [ebp - 0x108]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f85b5000000         | jne                 0xbb
            //   50                   | push                eax

        $sequence_20 = { c1f806 83e13f 6bc930 8b048558047500 80640828fe ff36 e8???????? }
            // n = 7, score = 100
            //   c1f806               | sar                 eax, 6
            //   83e13f               | and                 ecx, 0x3f
            //   6bc930               | imul                ecx, ecx, 0x30
            //   8b048558047500       | mov                 eax, dword ptr [eax*4 + 0x750458]
            //   80640828fe           | and                 byte ptr [eax + ecx + 0x28], 0xfe
            //   ff36                 | push                dword ptr [esi]
            //   e8????????           |                     

        $sequence_21 = { ba???????? c605????????00 33db 33c0 8d7201 6690 }
            // n = 6, score = 100
            //   ba????????           |                     
            //   c605????????00       |                     
            //   33db                 | xor                 ebx, ebx
            //   33c0                 | xor                 eax, eax
            //   8d7201               | lea                 esi, [edx + 1]
            //   6690                 | nop                 

        $sequence_22 = { 85c9 7446 8b450c 83c00f 8d04c1 85c0 }
            // n = 6, score = 100
            //   85c9                 | test                ecx, ecx
            //   7446                 | je                  0x48
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   83c00f               | add                 eax, 0xf
            //   8d04c1               | lea                 eax, [ecx + eax*8]
            //   85c0                 | test                eax, eax

    condition:
        7 of them and filesize < 344064
}