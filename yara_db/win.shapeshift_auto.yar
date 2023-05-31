rule win_shapeshift_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-29"
        version = "1"
        description = "Detects win.shapeshift."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.shapeshift"
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
        $sequence_0 = { 83ec1c 56 6a00 68???????? }
            // n = 4, score = 100
            //   83ec1c               | sub                 esp, 0x1c
            //   56                   | push                esi
            //   6a00                 | push                0
            //   68????????           |                     

        $sequence_1 = { 57 ff15???????? 6a1c 8bf0 e8???????? 8bc8 0f57c0 }
            // n = 7, score = 100
            //   57                   | push                edi
            //   ff15????????         |                     
            //   6a1c                 | push                0x1c
            //   8bf0                 | mov                 esi, eax
            //   e8????????           |                     
            //   8bc8                 | mov                 ecx, eax
            //   0f57c0               | xorps               xmm0, xmm0

        $sequence_2 = { f20f1005???????? 0f44de 895c2414 660f6ecb f30fe6c9 }
            // n = 5, score = 100
            //   f20f1005????????     |                     
            //   0f44de               | cmove               ebx, esi
            //   895c2414             | mov                 dword ptr [esp + 0x14], ebx
            //   660f6ecb             | movd                xmm1, ebx
            //   f30fe6c9             | cvtdq2pd            xmm1, xmm1

        $sequence_3 = { e8???????? 83c40c 6b45e430 8945e0 8d80e8f44100 8945e4 803800 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   6b45e430             | imul                eax, dword ptr [ebp - 0x1c], 0x30
            //   8945e0               | mov                 dword ptr [ebp - 0x20], eax
            //   8d80e8f44100         | lea                 eax, [eax + 0x41f4e8]
            //   8945e4               | mov                 dword ptr [ebp - 0x1c], eax
            //   803800               | cmp                 byte ptr [eax], 0

        $sequence_4 = { ff15???????? 6a00 6a00 6a00 8d45e4 50 ffd6 }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   8d45e4               | lea                 eax, [ebp - 0x1c]
            //   50                   | push                eax
            //   ffd6                 | call                esi

        $sequence_5 = { 8bec 81ec18020000 a1???????? 33c5 8945fc 837d0800 }
            // n = 6, score = 100
            //   8bec                 | mov                 ebp, esp
            //   81ec18020000         | sub                 esp, 0x218
            //   a1????????           |                     
            //   33c5                 | xor                 eax, ebp
            //   8945fc               | mov                 dword ptr [ebp - 4], eax
            //   837d0800             | cmp                 dword ptr [ebp + 8], 0

        $sequence_6 = { 7408 84820f9b4100 7528 d92d???????? 891424 c744240400000000 f20f11442408 }
            // n = 7, score = 100
            //   7408                 | je                  0xa
            //   84820f9b4100         | test                byte ptr [edx + 0x419b0f], al
            //   7528                 | jne                 0x2a
            //   d92d????????         |                     
            //   891424               | mov                 dword ptr [esp], edx
            //   c744240400000000     | mov                 dword ptr [esp + 4], 0
            //   f20f11442408         | movsd               qword ptr [esp + 8], xmm0

        $sequence_7 = { 833d????????00 0f8549aeffff 8d0d009c4100 ba1d000000 e9???????? 833d????????00 0f852caeffff }
            // n = 7, score = 100
            //   833d????????00       |                     
            //   0f8549aeffff         | jne                 0xffffae4f
            //   8d0d009c4100         | lea                 ecx, [0x419c00]
            //   ba1d000000           | mov                 edx, 0x1d
            //   e9????????           |                     
            //   833d????????00       |                     
            //   0f852caeffff         | jne                 0xffffae32

    condition:
        7 of them and filesize < 303104
}