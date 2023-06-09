rule win_jasus_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.jasus."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.jasus"
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
        $sequence_0 = { 881f c645ff01 eb06 807dff00 7518 83fb63 }
            // n = 6, score = 200
            //   881f                 | mov                 byte ptr [edi], bl
            //   c645ff01             | mov                 byte ptr [ebp - 1], 1
            //   eb06                 | jmp                 8
            //   807dff00             | cmp                 byte ptr [ebp - 1], 0
            //   7518                 | jne                 0x1a
            //   83fb63               | cmp                 ebx, 0x63

        $sequence_1 = { 8955f8 8955e8 8955ec c745f0ffffffff 84c0 7410 8d642400 }
            // n = 7, score = 200
            //   8955f8               | mov                 dword ptr [ebp - 8], edx
            //   8955e8               | mov                 dword ptr [ebp - 0x18], edx
            //   8955ec               | mov                 dword ptr [ebp - 0x14], edx
            //   c745f0ffffffff       | mov                 dword ptr [ebp - 0x10], 0xffffffff
            //   84c0                 | test                al, al
            //   7410                 | je                  0x12
            //   8d642400             | lea                 esp, [esp]

        $sequence_2 = { 41 8990e30c4200 c680ed0c420000 890d???????? 8b8568ffffff 50 }
            // n = 6, score = 200
            //   41                   | inc                 ecx
            //   8990e30c4200         | mov                 dword ptr [eax + 0x420ce3], edx
            //   c680ed0c420000       | mov                 byte ptr [eax + 0x420ced], 0
            //   890d????????         |                     
            //   8b8568ffffff         | mov                 eax, dword ptr [ebp - 0x98]
            //   50                   | push                eax

        $sequence_3 = { 2bc7 03d0 33c0 895614 80393a 5f }
            // n = 6, score = 200
            //   2bc7                 | sub                 eax, edi
            //   03d0                 | add                 edx, eax
            //   33c0                 | xor                 eax, eax
            //   895614               | mov                 dword ptr [esi + 0x14], edx
            //   80393a               | cmp                 byte ptr [ecx], 0x3a
            //   5f                   | pop                 edi

        $sequence_4 = { 8d9b00000000 8b4508 50 6a01 8d4dfe 6a01 }
            // n = 6, score = 200
            //   8d9b00000000         | lea                 ebx, [ebx]
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   50                   | push                eax
            //   6a01                 | push                1
            //   8d4dfe               | lea                 ecx, [ebp - 2]
            //   6a01                 | push                1

        $sequence_5 = { 55 8bec 51 53 33db 885dff }
            // n = 6, score = 200
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   51                   | push                ecx
            //   53                   | push                ebx
            //   33db                 | xor                 ebx, ebx
            //   885dff               | mov                 byte ptr [ebp - 1], bl

        $sequence_6 = { 85f6 0f8555ffffff 5e 33c0 5b c3 8b4620 }
            // n = 7, score = 200
            //   85f6                 | test                esi, esi
            //   0f8555ffffff         | jne                 0xffffff5b
            //   5e                   | pop                 esi
            //   33c0                 | xor                 eax, eax
            //   5b                   | pop                 ebx
            //   c3                   | ret                 
            //   8b4620               | mov                 eax, dword ptr [esi + 0x20]

        $sequence_7 = { 83c408 eb0d 68???????? e8???????? 83c404 8b36 47 }
            // n = 7, score = 200
            //   83c408               | add                 esp, 8
            //   eb0d                 | jmp                 0xf
            //   68????????           |                     
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   8b36                 | mov                 esi, dword ptr [esi]
            //   47                   | inc                 edi

        $sequence_8 = { 8a19 ff4d0c 80fb3d 0f8497000000 0fb6d3 52 e8???????? }
            // n = 7, score = 200
            //   8a19                 | mov                 bl, byte ptr [ecx]
            //   ff4d0c               | dec                 dword ptr [ebp + 0xc]
            //   80fb3d               | cmp                 bl, 0x3d
            //   0f8497000000         | je                  0x9d
            //   0fb6d3               | movzx               edx, bl
            //   52                   | push                edx
            //   e8????????           |                     

        $sequence_9 = { e8???????? 84c0 7406 33ff 897c241c 8b4c2414 8bc3 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   7406                 | je                  8
            //   33ff                 | xor                 edi, edi
            //   897c241c             | mov                 dword ptr [esp + 0x1c], edi
            //   8b4c2414             | mov                 ecx, dword ptr [esp + 0x14]
            //   8bc3                 | mov                 eax, ebx

    condition:
        7 of them and filesize < 507904
}