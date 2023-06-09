rule win_velso_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.velso."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.velso"
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
        $sequence_0 = { 8d749004 8d5c8f14 8d5714 39da 7331 89c1 8db600000000 }
            // n = 7, score = 200
            //   8d749004             | lea                 esi, [eax + edx*4 + 4]
            //   8d5c8f14             | lea                 ebx, [edi + ecx*4 + 0x14]
            //   8d5714               | lea                 edx, [edi + 0x14]
            //   39da                 | cmp                 edx, ebx
            //   7331                 | jae                 0x33
            //   89c1                 | mov                 ecx, eax
            //   8db600000000         | lea                 esi, [esi]

        $sequence_1 = { f6421001 752a c785a8feffffffffffff e8???????? 8b9d98feffff 85db 7420 }
            // n = 7, score = 200
            //   f6421001             | test                byte ptr [edx + 0x10], 1
            //   752a                 | jne                 0x2c
            //   c785a8feffffffffffff     | mov    dword ptr [ebp - 0x158], 0xffffffff
            //   e8????????           |                     
            //   8b9d98feffff         | mov                 ebx, dword ptr [ebp - 0x168]
            //   85db                 | test                ebx, ebx
            //   7420                 | je                  0x22

        $sequence_2 = { 8b5db0 8b40f4 3d0000803f 894320 0f87cb010000 01c0 890424 }
            // n = 7, score = 200
            //   8b5db0               | mov                 ebx, dword ptr [ebp - 0x50]
            //   8b40f4               | mov                 eax, dword ptr [eax - 0xc]
            //   3d0000803f           | cmp                 eax, 0x3f800000
            //   894320               | mov                 dword ptr [ebx + 0x20], eax
            //   0f87cb010000         | ja                  0x1d1
            //   01c0                 | add                 eax, eax
            //   890424               | mov                 dword ptr [esp], eax

        $sequence_3 = { e8???????? 85c0 8944241c 0f8475080000 8b44241c 8b00 83f831 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   8944241c             | mov                 dword ptr [esp + 0x1c], eax
            //   0f8475080000         | je                  0x87b
            //   8b44241c             | mov                 eax, dword ptr [esp + 0x1c]
            //   8b00                 | mov                 eax, dword ptr [eax]
            //   83f831               | cmp                 eax, 0x31

        $sequence_4 = { 8bbc24a0000000 8b4c2424 8bb424a0000000 8807 8b442428 8b510c 83c601 }
            // n = 7, score = 200
            //   8bbc24a0000000       | mov                 edi, dword ptr [esp + 0xa0]
            //   8b4c2424             | mov                 ecx, dword ptr [esp + 0x24]
            //   8bb424a0000000       | mov                 esi, dword ptr [esp + 0xa0]
            //   8807                 | mov                 byte ptr [edi], al
            //   8b442428             | mov                 eax, dword ptr [esp + 0x28]
            //   8b510c               | mov                 edx, dword ptr [ecx + 0xc]
            //   83c601               | add                 esi, 1

        $sequence_5 = { c3 8b44241c 890424 e8???????? 83ec04 837c244402 0f851effffff }
            // n = 7, score = 200
            //   c3                   | ret                 
            //   8b44241c             | mov                 eax, dword ptr [esp + 0x1c]
            //   890424               | mov                 dword ptr [esp], eax
            //   e8????????           |                     
            //   83ec04               | sub                 esp, 4
            //   837c244402           | cmp                 dword ptr [esp + 0x44], 2
            //   0f851effffff         | jne                 0xffffff24

        $sequence_6 = { c744240800000000 c744240404000000 c70424???????? e8???????? a3???????? e9???????? a1???????? }
            // n = 7, score = 200
            //   c744240800000000     | mov                 dword ptr [esp + 8], 0
            //   c744240404000000     | mov                 dword ptr [esp + 4], 4
            //   c70424????????       |                     
            //   e8????????           |                     
            //   a3????????           |                     
            //   e9????????           |                     
            //   a1????????           |                     

        $sequence_7 = { 8b7604 89742418 e9???????? 8b4c2428 8b01 8b4028 c744244001000000 }
            // n = 7, score = 200
            //   8b7604               | mov                 esi, dword ptr [esi + 4]
            //   89742418             | mov                 dword ptr [esp + 0x18], esi
            //   e9????????           |                     
            //   8b4c2428             | mov                 ecx, dword ptr [esp + 0x28]
            //   8b01                 | mov                 eax, dword ptr [ecx]
            //   8b4028               | mov                 eax, dword ptr [eax + 0x28]
            //   c744244001000000     | mov                 dword ptr [esp + 0x40], 1

        $sequence_8 = { e8???????? 8b4368 83ec04 890424 e8???????? 83ec04 8b7c241c }
            // n = 7, score = 200
            //   e8????????           |                     
            //   8b4368               | mov                 eax, dword ptr [ebx + 0x68]
            //   83ec04               | sub                 esp, 4
            //   890424               | mov                 dword ptr [esp], eax
            //   e8????????           |                     
            //   83ec04               | sub                 esp, 4
            //   8b7c241c             | mov                 edi, dword ptr [esp + 0x1c]

        $sequence_9 = { c70424???????? e8???????? 83c508 8b45cc 8945c0 8b4508 }
            // n = 6, score = 200
            //   c70424????????       |                     
            //   e8????????           |                     
            //   83c508               | add                 ebp, 8
            //   8b45cc               | mov                 eax, dword ptr [ebp - 0x34]
            //   8945c0               | mov                 dword ptr [ebp - 0x40], eax
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]

    condition:
        7 of them and filesize < 1736704
}