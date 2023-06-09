rule win_floki_bot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.floki_bot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.floki_bot"
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
        $sequence_0 = { 6a02 8d75d4 58 e8???????? 68f4010000 6a1e 8bc6 }
            // n = 7, score = 1100
            //   6a02                 | push                2
            //   8d75d4               | lea                 esi, [ebp - 0x2c]
            //   58                   | pop                 eax
            //   e8????????           |                     
            //   68f4010000           | push                0x1f4
            //   6a1e                 | push                0x1e
            //   8bc6                 | mov                 eax, esi

        $sequence_1 = { 8b5f08 8b07 8bf1 2bf3 a804 743d }
            // n = 6, score = 1100
            //   8b5f08               | mov                 ebx, dword ptr [edi + 8]
            //   8b07                 | mov                 eax, dword ptr [edi]
            //   8bf1                 | mov                 esi, ecx
            //   2bf3                 | sub                 esi, ebx
            //   a804                 | test                al, 4
            //   743d                 | je                  0x3f

        $sequence_2 = { 750b 57 6a00 ff7508 e8???????? 5f 5e }
            // n = 7, score = 1100
            //   750b                 | jne                 0xd
            //   57                   | push                edi
            //   6a00                 | push                0
            //   ff7508               | push                dword ptr [ebp + 8]
            //   e8????????           |                     
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_3 = { 7218 eb05 83f932 7711 83c002 47 394508 }
            // n = 7, score = 1100
            //   7218                 | jb                  0x1a
            //   eb05                 | jmp                 7
            //   83f932               | cmp                 ecx, 0x32
            //   7711                 | ja                  0x13
            //   83c002               | add                 eax, 2
            //   47                   | inc                 edi
            //   394508               | cmp                 dword ptr [ebp + 8], eax

        $sequence_4 = { 50 51 ff742420 ff15???????? 8d442420 50 57 }
            // n = 7, score = 1100
            //   50                   | push                eax
            //   51                   | push                ecx
            //   ff742420             | push                dword ptr [esp + 0x20]
            //   ff15????????         |                     
            //   8d442420             | lea                 eax, [esp + 0x20]
            //   50                   | push                eax
            //   57                   | push                edi

        $sequence_5 = { 72f6 eb04 83248800 57 ff15???????? 0fb64604 }
            // n = 6, score = 1100
            //   72f6                 | jb                  0xfffffff8
            //   eb04                 | jmp                 6
            //   83248800             | and                 dword ptr [eax + ecx*4], 0
            //   57                   | push                edi
            //   ff15????????         |                     
            //   0fb64604             | movzx               eax, byte ptr [esi + 4]

        $sequence_6 = { 85ff 750a 80f931 7c3d 80f933 eb26 83ff02 }
            // n = 7, score = 1100
            //   85ff                 | test                edi, edi
            //   750a                 | jne                 0xc
            //   80f931               | cmp                 cl, 0x31
            //   7c3d                 | jl                  0x3f
            //   80f933               | cmp                 cl, 0x33
            //   eb26                 | jmp                 0x28
            //   83ff02               | cmp                 edi, 2

        $sequence_7 = { 6a10 ff742408 8930 83c004 50 e8???????? }
            // n = 6, score = 1100
            //   6a10                 | push                0x10
            //   ff742408             | push                dword ptr [esp + 8]
            //   8930                 | mov                 dword ptr [eax], esi
            //   83c004               | add                 eax, 4
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_8 = { 8d4508 50 6a00 6a00 6aff 897508 ff15???????? }
            // n = 7, score = 1100
            //   8d4508               | lea                 eax, [ebp + 8]
            //   50                   | push                eax
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6aff                 | push                -1
            //   897508               | mov                 dword ptr [ebp + 8], esi
            //   ff15????????         |                     

        $sequence_9 = { 85c0 0f84df000000 6a02 5a 39956cffffff 0f85d0000000 33c9 }
            // n = 7, score = 1100
            //   85c0                 | test                eax, eax
            //   0f84df000000         | je                  0xe5
            //   6a02                 | push                2
            //   5a                   | pop                 edx
            //   39956cffffff         | cmp                 dword ptr [ebp - 0x94], edx
            //   0f85d0000000         | jne                 0xd6
            //   33c9                 | xor                 ecx, ecx

    condition:
        7 of them and filesize < 286720
}