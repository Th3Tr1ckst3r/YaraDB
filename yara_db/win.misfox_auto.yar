rule win_misfox_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.misfox."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.misfox"
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
        $sequence_0 = { 743c 8bc7 c1f805 8bf7 83e61f c1e606 03348550870110 }
            // n = 7, score = 300
            //   743c                 | sar                 edx, 7
            //   8bc7                 | inc                 esp
            //   c1f805               | mov                 eax, edx
            //   8bf7                 | add                 edx, ecx
            //   83e61f               | inc                 ecx
            //   c1e606               | shr                 eax, 0x1f
            //   03348550870110       | inc                 eax

        $sequence_1 = { b80a000000 5e 8be5 5d c3 53 }
            // n = 6, score = 300
            //   b80a000000           | imul                eax, eax, 0
            //   5e                   | dec                 eax
            //   8be5                 | lea                 ecx, [0x1912e]
            //   5d                   | dec                 eax
            //   c3                   | mov                 dword ptr [ecx + eax], 2
            //   53                   | mov                 eax, 8

        $sequence_2 = { 8b049d50870110 f644380401 740b 56 e8???????? 59 }
            // n = 6, score = 300
            //   8b049d50870110       | add                 eax, 8
            //   f644380401           | cmp                 ebx, eax
            //   740b                 | jl                  0xffffffb1
            //   56                   | dec                 esp
            //   e8????????           |                     
            //   59                   | lea                 ecx, [esp + 0x44]

        $sequence_3 = { b80d000000 5f 5e 5b 8b4df8 33cd }
            // n = 6, score = 300
            //   b80d000000           | mov                 dword ptr [ebp - 0x20], eax
            //   5f                   | lea                 eax, [eax + 0x10017720]
            //   5e                   | mov                 eax, 0xa
            //   5b                   | pop                 esi
            //   8b4df8               | mov                 esp, ebp
            //   33cd                 | pop                 ebp

        $sequence_4 = { c745dc00000000 c747140f000000 c7471000000000 897dd8 }
            // n = 4, score = 300
            //   c745dc00000000       | dec                 eax
            //   c747140f000000       | mov                 ecx, edi
            //   c7471000000000       | add                 esp, 0xc
            //   897dd8               | imul                eax, dword ptr [ebp - 0x1c], 0x30

        $sequence_5 = { 83e71f c1e706 8b049d50870110 0fbe443804 83e001 750a e8???????? }
            // n = 7, score = 300
            //   83e71f               | ret                 
            //   c1e706               | push                ebx
            //   8b049d50870110       | je                  0x3e
            //   0fbe443804           | mov                 eax, edi
            //   83e001               | sar                 eax, 5
            //   750a                 | mov                 esi, edi
            //   e8????????           |                     

        $sequence_6 = { 83e71f c1f905 c1e706 8b0c8d50870110 }
            // n = 4, score = 300
            //   83e71f               | inc                 ecx
            //   c1f905               | mov                 eax, 0x1000
            //   c1e706               | dec                 eax
            //   8b0c8d50870110       | lea                 edx, [ebp + 0x4b0]

        $sequence_7 = { 83c40c 6b45e430 8945e0 8d8020770110 }
            // n = 4, score = 300
            //   83c40c               | dec                 ecx
            //   6b45e430             | mov                 eax, esp
            //   8945e0               | cmp                 dword ptr [eax], edi
            //   8d8020770110         | dec                 eax

        $sequence_8 = { 4883c010 4883c428 c3 4c8d1551560100 33d2 }
            // n = 5, score = 100
            //   4883c010             | dec                 eax
            //   4883c428             | mov                 ecx, dword ptr [ebp - 0x18]
            //   c3                   | dec                 eax
            //   4c8d1551560100       | inc                 edi
            //   33d2                 | jmp                 0x17

        $sequence_9 = { 41f7e9 b81f85eb51 c1fa07 448bc2 03d1 }
            // n = 5, score = 100
            //   41f7e9               | inc                 ecx
            //   b81f85eb51           | imul                ecx
            //   c1fa07               | mov                 eax, 0x51eb851f
            //   448bc2               | sar                 edx, 7
            //   03d1                 | inc                 esp

        $sequence_10 = { 4c8d25af510100 8bee 41bf01000000 498bc4 3938 }
            // n = 5, score = 100
            //   4c8d25af510100       | dec                 eax
            //   8bee                 | lea                 eax, [0xe0a4]
            //   41bf01000000         | dec                 eax
            //   498bc4               | mov                 eax, dword ptr [eax + edi*8]
            //   3938                 | inc                 ecx

        $sequence_11 = { ffc0 83c008 3bd8 7ca8 }
            // n = 4, score = 100
            //   ffc0                 | lea                 ecx, [0xdd62]
            //   83c008               | dec                 ecx
            //   3bd8                 | mov                 ecx, dword ptr [ecx + edi*8]
            //   7ca8                 | dec                 esp

        $sequence_12 = { 486bc000 488d0d2e910100 48c7040102000000 b808000000 }
            // n = 4, score = 100
            //   486bc000             | test                byte ptr [ebp + eax + 8], 0x80
            //   488d0d2e910100       | dec                 eax
            //   48c7040102000000     | mov                 edi, dword ptr [esp + 0x48]
            //   b808000000           | jmp                 0xe

        $sequence_13 = { 488b7c2448 85c0 0f8440030000 488d05a4e00000 488b04f8 41f644050880 }
            // n = 6, score = 100
            //   488b7c2448           | dec                 eax
            //   85c0                 | add                 eax, 0x10
            //   0f8440030000         | dec                 eax
            //   488d05a4e00000       | add                 esp, 0x28
            //   488b04f8             | ret                 
            //   41f644050880         | dec                 esp

        $sequence_14 = { e9???????? 488b7c2448 eb07 488b7c2448 33c0 4c8d0d62dd0000 498b0cf9 }
            // n = 7, score = 100
            //   e9????????           |                     
            //   488b7c2448           | lea                 edx, [0x15651]
            //   eb07                 | xor                 edx, edx
            //   488b7c2448           | dec                 eax
            //   33c0                 | mov                 edi, dword ptr [esp + 0x48]
            //   4c8d0d62dd0000       | test                eax, eax
            //   498b0cf9             | je                  0x346

        $sequence_15 = { 0fb64531 66410fafdd 6603d8 488b4de8 48ffc7 eb12 }
            // n = 6, score = 100
            //   0fb64531             | mov                 eax, edx
            //   66410fafdd           | add                 edx, ecx
            //   6603d8               | movzx               eax, byte ptr [ebp + 0x31]
            //   488b4de8             | inc                 cx
            //   48ffc7               | imul                ebx, ebp
            //   eb12                 | add                 bx, ax

    condition:
        7 of them and filesize < 266240
}