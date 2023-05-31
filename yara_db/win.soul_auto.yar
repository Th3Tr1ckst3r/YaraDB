rule win_soul_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-29"
        version = "1"
        description = "Detects win.soul."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.soul"
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
        $sequence_0 = { 51 57 ff15???????? 8bf0 85f6 7508 6a64 }
            // n = 7, score = 400
            //   51                   | mov                 dword ptr [esp + 0x10], esi
            //   57                   | push                edi
            //   ff15????????         |                     
            //   8bf0                 | dec                 eax
            //   85f6                 | sub                 esp, 0x30
            //   7508                 | dec                 eax
            //   6a64                 | mov                 ebx, ecx

        $sequence_1 = { be???????? 743a 8da42400000000 837e0400 }
            // n = 4, score = 400
            //   be????????           |                     
            //   743a                 | dec                 eax
            //   8da42400000000       | mov                 dword ptr [esp + 0x10], esi
            //   837e0400             | push                edi

        $sequence_2 = { 7506 837dfc04 7cda 8b55f8 52 }
            // n = 5, score = 400
            //   7506                 | dec                 eax
            //   837dfc04             | mov                 dword ptr [esp + 8], ebx
            //   7cda                 | dec                 eax
            //   8b55f8               | mov                 dword ptr [esp + 0x10], esi
            //   52                   | push                edi

        $sequence_3 = { 5b 8be5 5d c3 837b0400 0f85e6000000 }
            // n = 6, score = 400
            //   5b                   | mov                 dword ptr [esp + 8], ebx
            //   8be5                 | dec                 eax
            //   5d                   | mov                 dword ptr [esp + 0x10], esi
            //   c3                   | dec                 eax
            //   837b0400             | mov                 dword ptr [esp + 8], ebx
            //   0f85e6000000         | dec                 eax

        $sequence_4 = { ff15???????? 8bf8 85ff 7508 6a64 ff15???????? ff45fc }
            // n = 7, score = 400
            //   ff15????????         |                     
            //   8bf8                 | mov                 dword ptr [esp + 0x10], esi
            //   85ff                 | push                edi
            //   7508                 | dec                 eax
            //   6a64                 | sub                 esp, 0x30
            //   ff15????????         |                     
            //   ff45fc               | dec                 eax

        $sequence_5 = { 5f 897304 8bc6 5e }
            // n = 4, score = 400
            //   5f                   | dec                 eax
            //   897304               | sub                 esp, 0x30
            //   8bc6                 | dec                 eax
            //   5e                   | mov                 ebx, ecx

        $sequence_6 = { 803f00 8bc7 740e 8d9b00000000 fe08 }
            // n = 5, score = 400
            //   803f00               | dec                 eax
            //   8bc7                 | sub                 esp, 0x30
            //   740e                 | dec                 eax
            //   8d9b00000000         | mov                 dword ptr [esp + 8], ebx
            //   fe08                 | dec                 eax

        $sequence_7 = { d3e2 8515???????? 7405 e8???????? }
            // n = 4, score = 400
            //   d3e2                 | shl                 edx, cl
            //   8515????????         |                     
            //   7405                 | je                  7
            //   e8????????           |                     

        $sequence_8 = { 90 fe08 40 803800 75f8 c745fc00000000 90 }
            // n = 7, score = 400
            //   90                   | mov                 ebx, ecx
            //   fe08                 | dec                 eax
            //   40                   | mov                 dword ptr [esp + 8], ebx
            //   803800               | dec                 eax
            //   75f8                 | mov                 dword ptr [esp + 0x10], esi
            //   c745fc00000000       | push                edi
            //   90                   | dec                 eax

        $sequence_9 = { ff25???????? ff25???????? ff25???????? 48895c2408 4889742410 }
            // n = 5, score = 400
            //   ff25????????         |                     
            //   ff25????????         |                     
            //   ff25????????         |                     
            //   48895c2408           | dec                 eax
            //   4889742410           | mov                 dword ptr [esp + 8], ebx

        $sequence_10 = { 4883ec20 488d05b3610000 8bda 488bf9 }
            // n = 4, score = 200
            //   4883ec20             | pop                 ebp
            //   488d05b3610000       | ret                 
            //   8bda                 | cmp                 dword ptr [ebx + 4], 0
            //   488bf9               | jne                 0xf4

        $sequence_11 = { e8???????? 90 4c8d442438 488d9510020000 488d4c2460 }
            // n = 5, score = 200
            //   e8????????           |                     
            //   90                   | dec                 eax
            //   4c8d442438           | mov                 dword ptr [esp + 0x10], esi
            //   488d9510020000       | dec                 eax
            //   488d4c2460           | mov                 dword ptr [esp + 8], ebx

        $sequence_12 = { 48c745b807000000 4c8975b0 66448975a0 e9???????? 458bfe 488b4c2450 }
            // n = 6, score = 200
            //   48c745b807000000     | dec                 eax
            //   4c8975b0             | test                ecx, ecx
            //   66448975a0           | dec                 eax
            //   e9????????           |                     
            //   458bfe               | mov                 dword ptr [esp + 8], ebx
            //   488b4c2450           | dec                 eax

        $sequence_13 = { 7508 ff15???????? eb09 48c7442458ffffffff 85db 745c }
            // n = 6, score = 200
            //   7508                 | dec                 eax
            //   ff15????????         |                     
            //   eb09                 | sub                 esp, 0x30
            //   48c7442458ffffffff     | dec    eax
            //   85db                 | mov                 ebx, ecx
            //   745c                 | dec                 eax

        $sequence_14 = { 48895c2408 57 4883ec20 488d1d4fa00000 488d3d48a00000 }
            // n = 5, score = 200
            //   48895c2408           | nop                 
            //   57                   | dec                 byte ptr [eax]
            //   4883ec20             | inc                 eax
            //   488d1d4fa00000       | cmp                 byte ptr [eax], 0
            //   488d3d48a00000       | jne                 0

        $sequence_15 = { 488d542460 488d4c2438 e8???????? 4883f8ff 7450 }
            // n = 5, score = 200
            //   488d542460           | mov                 dword ptr [ebp - 4], 0
            //   488d4c2438           | nop                 
            //   e8????????           |                     
            //   4883f8ff             | pop                 ebx
            //   7450                 | mov                 esp, ebp

        $sequence_16 = { 48d1fb 4883fbff 0f84a4000000 b85c000000 6689442448 4883feff }
            // n = 6, score = 200
            //   48d1fb               | mov                 dword ptr [esp + 8], ebx
            //   4883fbff             | dec                 eax
            //   0f84a4000000         | mov                 dword ptr [esp + 0x10], esi
            //   b85c000000           | push                edi
            //   6689442448           | dec                 eax
            //   4883feff             | mov                 dword ptr [esp + 8], ebx

        $sequence_17 = { 8bc1 442bca 442bc2 c1e805 }
            // n = 4, score = 200
            //   8bc1                 | push                ecx
            //   442bca               | push                edi
            //   442bc2               | mov                 esi, eax
            //   c1e805               | test                esi, esi

        $sequence_18 = { e9???????? 4183c3fc 4181f900000001 7313 410fb60424 41c1e008 41c1e108 }
            // n = 7, score = 200
            //   e9????????           |                     
            //   4183c3fc             | jl                  0xffffffe0
            //   4181f900000001       | mov                 edx, dword ptr [ebp - 8]
            //   7313                 | push                edx
            //   410fb60424           | cmp                 byte ptr [edi], 0
            //   41c1e008             | mov                 eax, edi
            //   41c1e108             | je                  0x12

        $sequence_19 = { 83ff10 0f878a030000 488d15f90bffff 8b8cbaa4f80000 4803ca ffe1 488d542458 }
            // n = 7, score = 200
            //   83ff10               | dec                 eax
            //   0f878a030000         | mov                 dword ptr [esp + 0x10], esi
            //   488d15f90bffff       | push                edi
            //   8b8cbaa4f80000       | dec                 eax
            //   4803ca               | sub                 esp, 0x30
            //   ffe1                 | dec                 eax
            //   488d542458           | mov                 ebx, ecx

        $sequence_20 = { 48837dd710 7209 488b4dbf e8???????? b801000000 eb32 48837dff10 }
            // n = 7, score = 200
            //   48837dd710           | mov                 dword ptr [esp + 0x10], esi
            //   7209                 | push                edi
            //   488b4dbf             | dec                 eax
            //   e8????????           |                     
            //   b801000000           | sub                 esp, 0x30
            //   eb32                 | dec                 eax
            //   48837dff10           | mov                 dword ptr [esp + 8], ebx

        $sequence_21 = { 66897df6 e8???????? 4c8d45c0 8d4f04 }
            // n = 4, score = 200
            //   66897df6             | jne                 0xf
            //   e8????????           |                     
            //   4c8d45c0             | push                0x64
            //   8d4f04               | je                  0xaa

        $sequence_22 = { 49ffc4 418bc1 c1e80b 0fafc1 443bc0 7322 448bc8 }
            // n = 7, score = 200
            //   49ffc4               | lea                 ebx, [ebx]
            //   418bc1               | dec                 byte ptr [eax]
            //   c1e80b               | mov                 edi, eax
            //   0fafc1               | test                edi, edi
            //   443bc0               | jne                 0xc
            //   7322                 | push                0x64
            //   448bc8               | inc                 dword ptr [ebp - 4]

    condition:
        7 of them and filesize < 1400832
}