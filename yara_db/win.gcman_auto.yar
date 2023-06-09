rule win_gcman_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.gcman."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.gcman"
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
        $sequence_0 = { 890424 e8???????? c744241400000000 8d85f0efffff 89442410 }
            // n = 5, score = 100
            //   890424               | mov                 dword ptr [esp], eax
            //   e8????????           |                     
            //   c744241400000000     | mov                 dword ptr [esp + 0x14], 0
            //   8d85f0efffff         | lea                 eax, [ebp - 0x1010]
            //   89442410             | mov                 dword ptr [esp + 0x10], eax

        $sequence_1 = { 09de 31c6 0375c0 01f1 }
            // n = 4, score = 100
            //   09de                 | or                  esi, ebx
            //   31c6                 | xor                 esi, eax
            //   0375c0               | add                 esi, dword ptr [ebp - 0x40]
            //   01f1                 | add                 ecx, esi

        $sequence_2 = { 8b4510 89442404 8b45e8 890424 e8???????? 83ec20 }
            // n = 6, score = 100
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   89442404             | mov                 dword ptr [esp + 4], eax
            //   8b45e8               | mov                 eax, dword ptr [ebp - 0x18]
            //   890424               | mov                 dword ptr [esp], eax
            //   e8????????           |                     
            //   83ec20               | sub                 esp, 0x20

        $sequence_3 = { 83e23f a1???????? 0fb60410 8801 83450803 8d45fc 830004 }
            // n = 7, score = 100
            //   83e23f               | and                 edx, 0x3f
            //   a1????????           |                     
            //   0fb60410             | movzx               eax, byte ptr [eax + edx]
            //   8801                 | mov                 byte ptr [ecx], al
            //   83450803             | add                 dword ptr [ebp + 8], 3
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   830004               | add                 dword ptr [eax], 4

        $sequence_4 = { 89442404 8b45e8 890424 e8???????? 8945ec 8b45ec 890424 }
            // n = 7, score = 100
            //   89442404             | mov                 dword ptr [esp + 4], eax
            //   8b45e8               | mov                 eax, dword ptr [ebp - 0x18]
            //   890424               | mov                 dword ptr [esp], eax
            //   e8????????           |                     
            //   8945ec               | mov                 dword ptr [ebp - 0x14], eax
            //   8b45ec               | mov                 eax, dword ptr [ebp - 0x14]
            //   890424               | mov                 dword ptr [esp], eax

        $sequence_5 = { 7e3b 8b45f4 3b45f8 7e33 }
            // n = 4, score = 100
            //   7e3b                 | jle                 0x3d
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   3b45f8               | cmp                 eax, dword ptr [ebp - 8]
            //   7e33                 | jle                 0x35

        $sequence_6 = { 8d45f4 ff00 ebe7 8b45f4 803800 751e }
            // n = 6, score = 100
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   ff00                 | inc                 dword ptr [eax]
            //   ebe7                 | jmp                 0xffffffe9
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   803800               | cmp                 byte ptr [eax], 0
            //   751e                 | jne                 0x20

        $sequence_7 = { 0500040000 89442404 8b85f4efffff 890424 e8???????? 8985f4efffff 8b85f4efffff }
            // n = 7, score = 100
            //   0500040000           | add                 eax, 0x400
            //   89442404             | mov                 dword ptr [esp + 4], eax
            //   8b85f4efffff         | mov                 eax, dword ptr [ebp - 0x100c]
            //   890424               | mov                 dword ptr [esp], eax
            //   e8????????           |                     
            //   8985f4efffff         | mov                 dword ptr [ebp - 0x100c], eax
            //   8b85f4efffff         | mov                 eax, dword ptr [ebp - 0x100c]

        $sequence_8 = { 03450c 83c002 0fb600 c1e010 }
            // n = 4, score = 100
            //   03450c               | add                 eax, dword ptr [ebp + 0xc]
            //   83c002               | add                 eax, 2
            //   0fb600               | movzx               eax, byte ptr [eax]
            //   c1e010               | shl                 eax, 0x10

        $sequence_9 = { 8d45ec ff00 803a00 7410 8b45ec 803820 75e9 }
            // n = 7, score = 100
            //   8d45ec               | lea                 eax, [ebp - 0x14]
            //   ff00                 | inc                 dword ptr [eax]
            //   803a00               | cmp                 byte ptr [edx], 0
            //   7410                 | je                  0x12
            //   8b45ec               | mov                 eax, dword ptr [ebp - 0x14]
            //   803820               | cmp                 byte ptr [eax], 0x20
            //   75e9                 | jne                 0xffffffeb

    condition:
        7 of them and filesize < 81920
}