rule win_karma_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.karma."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.karma"
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
        $sequence_0 = { eb1e 0f1006 0f1107 0f104610 }
            // n = 4, score = 100
            //   eb1e                 | jmp                 0x20
            //   0f1006               | movups              xmm0, xmmword ptr [esi]
            //   0f1107               | movups              xmmword ptr [edi], xmm0
            //   0f104610             | movups              xmm0, xmmword ptr [esi + 0x10]

        $sequence_1 = { ba???????? 0f1f840000000000 0fb701 83c102 6685c0 75f5 83e904 }
            // n = 7, score = 100
            //   ba????????           |                     
            //   0f1f840000000000     | nop                 dword ptr [eax + eax]
            //   0fb701               | movzx               eax, word ptr [ecx]
            //   83c102               | add                 ecx, 2
            //   6685c0               | test                ax, ax
            //   75f5                 | jne                 0xfffffff7
            //   83e904               | sub                 ecx, 4

        $sequence_2 = { 894dfc b902000000 8b55fc 0f1f00 8d4010 0f104c18f0 0f1040f0 }
            // n = 7, score = 100
            //   894dfc               | mov                 dword ptr [ebp - 4], ecx
            //   b902000000           | mov                 ecx, 2
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]
            //   0f1f00               | nop                 dword ptr [eax]
            //   8d4010               | lea                 eax, [eax + 0x10]
            //   0f104c18f0           | movups              xmm1, xmmword ptr [eax + ebx - 0x10]
            //   0f1040f0             | movups              xmm0, xmmword ptr [eax - 0x10]

        $sequence_3 = { 8bca e8???????? 8d45b8 50 8bd0 8d4dd8 e8???????? }
            // n = 7, score = 100
            //   8bca                 | mov                 ecx, edx
            //   e8????????           |                     
            //   8d45b8               | lea                 eax, [ebp - 0x48]
            //   50                   | push                eax
            //   8bd0                 | mov                 edx, eax
            //   8d4dd8               | lea                 ecx, [ebp - 0x28]
            //   e8????????           |                     

        $sequence_4 = { 0f1006 0f114318 e8???????? 5f 5e 5b 8be5 }
            // n = 7, score = 100
            //   0f1006               | movups              xmm0, xmmword ptr [esi]
            //   0f114318             | movups              xmmword ptr [ebx + 0x18], xmm0
            //   e8????????           |                     
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx
            //   8be5                 | mov                 esp, ebp

        $sequence_5 = { 33c0 6690 0f104405dc 0f104c05bc 660fefc8 0f114c05dc }
            // n = 6, score = 100
            //   33c0                 | xor                 eax, eax
            //   6690                 | nop                 
            //   0f104405dc           | movups              xmm0, xmmword ptr [ebp + eax - 0x24]
            //   0f104c05bc           | movups              xmm1, xmmword ptr [ebp + eax - 0x44]
            //   660fefc8             | pxor                xmm1, xmm0
            //   0f114c05dc           | movups              xmmword ptr [ebp + eax - 0x24], xmm1

        $sequence_6 = { 314324 8b4b24 8d0439 c1c009 314334 8b5334 }
            // n = 6, score = 100
            //   314324               | xor                 dword ptr [ebx + 0x24], eax
            //   8b4b24               | mov                 ecx, dword ptr [ebx + 0x24]
            //   8d0439               | lea                 eax, [ecx + edi]
            //   c1c009               | rol                 eax, 9
            //   314334               | xor                 dword ptr [ebx + 0x34], eax
            //   8b5334               | mov                 edx, dword ptr [ebx + 0x34]

        $sequence_7 = { 8945f8 33db c645ff01 885dfe }
            // n = 4, score = 100
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   33db                 | xor                 ebx, ebx
            //   c645ff01             | mov                 byte ptr [ebp - 1], 1
            //   885dfe               | mov                 byte ptr [ebp - 2], bl

        $sequence_8 = { 0fb730 83c002 6685f6 75f5 }
            // n = 4, score = 100
            //   0fb730               | movzx               esi, word ptr [eax]
            //   83c002               | add                 eax, 2
            //   6685f6               | test                si, si
            //   75f5                 | jne                 0xfffffff7

        $sequence_9 = { 314338 8b4b38 8d0439 c1c009 314308 8b5308 8d040a }
            // n = 7, score = 100
            //   314338               | xor                 dword ptr [ebx + 0x38], eax
            //   8b4b38               | mov                 ecx, dword ptr [ebx + 0x38]
            //   8d0439               | lea                 eax, [ecx + edi]
            //   c1c009               | rol                 eax, 9
            //   314308               | xor                 dword ptr [ebx + 8], eax
            //   8b5308               | mov                 edx, dword ptr [ebx + 8]
            //   8d040a               | lea                 eax, [edx + ecx]

    condition:
        7 of them and filesize < 49208
}