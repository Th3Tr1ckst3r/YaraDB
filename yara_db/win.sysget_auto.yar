rule win_sysget_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.sysget."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sysget"
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
        $sequence_0 = { 0f84de000000 8d45e0 50 53 53 6803800000 }
            // n = 6, score = 400
            //   0f84de000000         | je                  0xe4
            //   8d45e0               | lea                 eax, [ebp - 0x20]
            //   50                   | push                eax
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   6803800000           | push                0x8003

        $sequence_1 = { 8bd3 59 2bd0 8a08 880c02 }
            // n = 5, score = 400
            //   8bd3                 | mov                 edx, ebx
            //   59                   | pop                 ecx
            //   2bd0                 | sub                 edx, eax
            //   8a08                 | mov                 cl, byte ptr [eax]
            //   880c02               | mov                 byte ptr [edx + eax], cl

        $sequence_2 = { 88140f 41 84d2 75f6 8d7801 56 }
            // n = 6, score = 400
            //   88140f               | mov                 byte ptr [edi + ecx], dl
            //   41                   | inc                 ecx
            //   84d2                 | test                dl, dl
            //   75f6                 | jne                 0xfffffff8
            //   8d7801               | lea                 edi, [eax + 1]
            //   56                   | push                esi

        $sequence_3 = { ffd6 682b010000 8d85d5fdffff 53 50 }
            // n = 5, score = 400
            //   ffd6                 | call                esi
            //   682b010000           | push                0x12b
            //   8d85d5fdffff         | lea                 eax, [ebp - 0x22b]
            //   53                   | push                ebx
            //   50                   | push                eax

        $sequence_4 = { 59 8d85ecf9ffff 50 ff15???????? 33ff }
            // n = 5, score = 400
            //   59                   | pop                 ecx
            //   8d85ecf9ffff         | lea                 eax, [ebp - 0x614]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   33ff                 | xor                 edi, edi

        $sequence_5 = { 8d85ecf1ffff 83e103 50 f3a4 }
            // n = 4, score = 400
            //   8d85ecf1ffff         | lea                 eax, [ebp - 0xe14]
            //   83e103               | and                 ecx, 3
            //   50                   | push                eax
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]

        $sequence_6 = { 8d85d4f9ffff 50 6aff 57 53 }
            // n = 5, score = 400
            //   8d85d4f9ffff         | lea                 eax, [ebp - 0x62c]
            //   50                   | push                eax
            //   6aff                 | push                -1
            //   57                   | push                edi
            //   53                   | push                ebx

        $sequence_7 = { 50 8d85e8f1ffff 33f6 50 89b5e8f1ffff 89b5e0f1ffff }
            // n = 6, score = 400
            //   50                   | push                eax
            //   8d85e8f1ffff         | lea                 eax, [ebp - 0xe18]
            //   33f6                 | xor                 esi, esi
            //   50                   | push                eax
            //   89b5e8f1ffff         | mov                 dword ptr [ebp - 0xe18], esi
            //   89b5e0f1ffff         | mov                 dword ptr [ebp - 0xe20], esi

        $sequence_8 = { 66a5 e8???????? 59 85c0 }
            // n = 4, score = 400
            //   66a5                 | movsw               word ptr es:[edi], word ptr [esi]
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   85c0                 | test                eax, eax

        $sequence_9 = { 75f5 53 53 68fa000000 2bc1 8d8d00ffffff }
            // n = 6, score = 400
            //   75f5                 | jne                 0xfffffff7
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   68fa000000           | push                0xfa
            //   2bc1                 | sub                 eax, ecx
            //   8d8d00ffffff         | lea                 ecx, [ebp - 0x100]

    condition:
        7 of them and filesize < 352256
}