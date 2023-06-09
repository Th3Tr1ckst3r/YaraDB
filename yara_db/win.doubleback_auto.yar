rule win_doubleback_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.doubleback."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.doubleback"
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
        $sequence_0 = { eb3b b90b070000 eb34 2d63450000 7428 2d57020000 }
            // n = 6, score = 400
            //   eb3b                 | pop                 edi
            //   b90b070000           | mov                 word ptr [ebx + esi*2 + 0xe], di
            //   eb34                 | mov                 word ptr [ebx + esi*2 + 0x10], ax
            //   2d63450000           | mov                 word ptr [ebx + esi*2 + 0x12], cx
            //   7428                 | xor                 ecx, ecx
            //   2d57020000           | mov                 word ptr [ebx + esi*2 + 0x14], ax

        $sequence_1 = { 3dd73a0000 740e 3dab3f0000 755e b9ad060000 eb57 b9a7060000 }
            // n = 7, score = 400
            //   3dd73a0000           | lea                 eax, [edx - 1]
            //   740e                 | cmp                 byte ptr [eax + ebx], 0x7d
            //   3dab3f0000           | cmp                 byte ptr [eax + ebx], 0x7d
            //   755e                 | je                  0xa1f
            //   b9ad060000           | mov                 edi, edx
            //   eb57                 | inc                 edi
            //   b9a7060000           | mov                 byte ptr [edx + ebx], 0x2c

        $sequence_2 = { eb57 b9a7060000 eb50 b947060000 eb49 }
            // n = 5, score = 400
            //   eb57                 | test                ecx, ecx
            //   b9a7060000           | je                  0xecd
            //   eb50                 | je                  0xedb
            //   b947060000           | dec                 ecx
            //   eb49                 | mov                 edx, ecx

        $sequence_3 = { 740e 3dab3f0000 755e b9ad060000 eb57 }
            // n = 5, score = 400
            //   740e                 | je                  0x1ddd
            //   3dab3f0000           | mov                 dword ptr [eax], 0x6c0047
            //   755e                 | dec                 eax
            //   b9ad060000           | lea                 edx, [ebx + 0xe]
            //   eb57                 | mov                 dword ptr [eax + 4], 0x62006f

        $sequence_4 = { eb13 b975070000 eb0c b96f070000 eb05 }
            // n = 5, score = 400
            //   eb13                 | cmp                 eax, 0x2a6
            //   b975070000           | jne                 0xcd4
            //   eb0c                 | mov                 ecx, 0x7d4
            //   b96f070000           | jmp                 0xcd4
            //   eb05                 | je                  0xcd1

        $sequence_5 = { b9ad060000 eb57 b9a7060000 eb50 }
            // n = 4, score = 400
            //   b9ad060000           | add                 eax, eax
            //   eb57                 | mov                 dword ptr [edi + eax*8], ecx
            //   b9a7060000           | mov                 ecx, edi
            //   eb50                 | add                 eax, 5

        $sequence_6 = { 3d00280000 7438 3d5a290000 742a 3d39380000 741c 3dd73a0000 }
            // n = 7, score = 400
            //   3d00280000           | jge                 0x830
            //   7438                 | jmp                 0x7d1
            //   3d5a290000           | mov                 ebx, 2
            //   742a                 | xor                 edx, edx
            //   3d39380000           | inc                 ecx
            //   741c                 | mov                 eax, 0x8000
            //   3dd73a0000           | dec                 eax

        $sequence_7 = { 740e 3dab3f0000 755e b9ad060000 eb57 b9a7060000 }
            // n = 6, score = 400
            //   740e                 | mov                 dword ptr [ebp + 0xd0], 0x104
            //   3dab3f0000           | inc                 esp
            //   755e                 | mov                 eax, edi
            //   b9ad060000           | mov                 al, byte ptr [esi + ecx - 0x210]
            //   eb57                 | xor                 al, dl
            //   b9a7060000           | inc                 dl

        $sequence_8 = { 742a 3d39380000 741c 3dd73a0000 740e }
            // n = 5, score = 400
            //   742a                 | dec                 eax
            //   3d39380000           | mov                 ecx, esi
            //   741c                 | dec                 eax
            //   3dd73a0000           | mov                 dword ptr [eax], ebx
            //   740e                 | dec                 esp

        $sequence_9 = { eb42 b9e3050000 eb3b b90b070000 eb34 2d63450000 7428 }
            // n = 7, score = 400
            //   eb42                 | inc                 ecx
            //   b9e3050000           | inc                 cl
            //   eb3b                 | mov                 byte ptr [ecx], al
            //   b90b070000           | dec                 eax
            //   eb34                 | inc                 ecx
            //   2d63450000           | dec                 ecx
            //   7428                 | sub                 ebx, ebx

    condition:
        7 of them and filesize < 106496
}