rule win_ligsterac_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2020-10-14"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.5.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ligsterac"
        malpedia_rule_date = "20201014"
        malpedia_hash = "a7e3bd57eaf12bf3ea29a863c041091ba3af9ac9"
        malpedia_version = "20201014"
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
        $sequence_0 = { e8???????? 8907 833f00 742f 6a00 8d442404 }
            // n = 6, score = 100
            //   e8????????           |                     
            //   8907                 | mov                 dword ptr [edi], eax
            //   833f00               | cmp                 dword ptr [edi], 0
            //   742f                 | je                  0x31
            //   6a00                 | push                0
            //   8d442404             | lea                 eax, [esp + 4]

        $sequence_1 = { 47 807df612 75b5 e9???????? 8045f602 33c0 8a45f6 }
            // n = 7, score = 100
            //   47                   | inc                 edi
            //   807df612             | cmp                 byte ptr [ebp - 0xa], 0x12
            //   75b5                 | jne                 0xffffffb7
            //   e9????????           |                     
            //   8045f602             | add                 byte ptr [ebp - 0xa], 2
            //   33c0                 | xor                 eax, eax
            //   8a45f6               | mov                 al, byte ptr [ebp - 0xa]

        $sequence_2 = { 8b7d18 33c0 55 68???????? 64ff30 648920 8d9dfcefffff }
            // n = 7, score = 100
            //   8b7d18               | mov                 edi, dword ptr [ebp + 0x18]
            //   33c0                 | xor                 eax, eax
            //   55                   | push                ebp
            //   68????????           |                     
            //   64ff30               | push                dword ptr fs:[eax]
            //   648920               | mov                 dword ptr fs:[eax], esp
            //   8d9dfcefffff         | lea                 ebx, [ebp - 0x1004]

        $sequence_3 = { 42 807df614 75bd 803e12 0f829f010000 8b45f8 c70000000000 }
            // n = 7, score = 100
            //   42                   | inc                 edx
            //   807df614             | cmp                 byte ptr [ebp - 0xa], 0x14
            //   75bd                 | jne                 0xffffffbf
            //   803e12               | cmp                 byte ptr [esi], 0x12
            //   0f829f010000         | jb                  0x1a5
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   c70000000000         | mov                 dword ptr [eax], 0

        $sequence_4 = { 58 770d e9???????? 5a 58 0f8ebe000000 }
            // n = 6, score = 100
            //   58                   | pop                 eax
            //   770d                 | ja                  0xf
            //   e9????????           |                     
            //   5a                   | pop                 edx
            //   58                   | pop                 eax
            //   0f8ebe000000         | jle                 0xc4

        $sequence_5 = { eb0f b301 eb0b ba???????? 92 e8???????? b201 }
            // n = 7, score = 100
            //   eb0f                 | jmp                 0x11
            //   b301                 | mov                 bl, 1
            //   eb0b                 | jmp                 0xd
            //   ba????????           |                     
            //   92                   | xchg                eax, edx
            //   e8????????           |                     
            //   b201                 | mov                 dl, 1

        $sequence_6 = { 6a26 6a04 6a00 6a01 6800000040 56 e8???????? }
            // n = 7, score = 100
            //   6a26                 | push                0x26
            //   6a04                 | push                4
            //   6a00                 | push                0
            //   6a01                 | push                1
            //   6800000040           | push                0x40000000
            //   56                   | push                esi
            //   e8????????           |                     

        $sequence_7 = { eb05 c644241f00 6a05 33c9 8a4c2422 8d542428 8b07 }
            // n = 7, score = 100
            //   eb05                 | jmp                 7
            //   c644241f00           | mov                 byte ptr [esp + 0x1f], 0
            //   6a05                 | push                5
            //   33c9                 | xor                 ecx, ecx
            //   8a4c2422             | mov                 cl, byte ptr [esp + 0x22]
            //   8d542428             | lea                 edx, [esp + 0x28]
            //   8b07                 | mov                 eax, dword ptr [edi]

        $sequence_8 = { e8???????? 6a00 6a00 8d55f8 52 6a00 50 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   8d55f8               | lea                 edx, [ebp - 8]
            //   52                   | push                edx
            //   6a00                 | push                0
            //   50                   | push                eax

        $sequence_9 = { 8944240c a1???????? 0305???????? 2bc6 d1f8 7903 83d000 }
            // n = 7, score = 100
            //   8944240c             | mov                 dword ptr [esp + 0xc], eax
            //   a1????????           |                     
            //   0305????????         |                     
            //   2bc6                 | sub                 eax, esi
            //   d1f8                 | sar                 eax, 1
            //   7903                 | jns                 5
            //   83d000               | adc                 eax, 0

    condition:
        7 of them and filesize < 149504
}