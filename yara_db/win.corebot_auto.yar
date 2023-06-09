rule win_corebot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.corebot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.corebot"
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
        $sequence_0 = { 8035????????e3 8035????????e4 8035????????e5 8035????????e6 8035????????e7 8035????????e8 }
            // n = 6, score = 1100
            //   8035????????e3       |                     
            //   8035????????e4       |                     
            //   8035????????e5       |                     
            //   8035????????e6       |                     
            //   8035????????e7       |                     
            //   8035????????e8       |                     

        $sequence_1 = { 0fb600 894110 c7411407000000 8d4910 89c6 01c0 }
            // n = 6, score = 1100
            //   0fb600               | movzx               eax, byte ptr [eax]
            //   894110               | mov                 dword ptr [ecx + 0x10], eax
            //   c7411407000000       | mov                 dword ptr [ecx + 0x14], 7
            //   8d4910               | lea                 ecx, [ecx + 0x10]
            //   89c6                 | mov                 esi, eax
            //   01c0                 | add                 eax, eax

        $sequence_2 = { 8d7001 8931 0fb600 894110 }
            // n = 4, score = 1100
            //   8d7001               | lea                 esi, [eax + 1]
            //   8931                 | mov                 dword ptr [ecx], esi
            //   0fb600               | movzx               eax, byte ptr [eax]
            //   894110               | mov                 dword ptr [ecx + 0x10], eax

        $sequence_3 = { 29c2 8a02 8801 41 894de0 e9???????? }
            // n = 6, score = 1100
            //   29c2                 | sub                 edx, eax
            //   8a02                 | mov                 al, byte ptr [edx]
            //   8801                 | mov                 byte ptr [ecx], al
            //   41                   | inc                 ecx
            //   894de0               | mov                 dword ptr [ebp - 0x20], ecx
            //   e9????????           |                     

        $sequence_4 = { 8d0412 84d2 8945e8 783f }
            // n = 4, score = 1100
            //   8d0412               | lea                 eax, [edx + edx]
            //   84d2                 | test                dl, dl
            //   8945e8               | mov                 dword ptr [ebp - 0x18], eax
            //   783f                 | js                  0x41

        $sequence_5 = { 7408 8b4110 83c110 eb24 }
            // n = 4, score = 1100
            //   7408                 | je                  0xa
            //   8b4110               | mov                 eax, dword ptr [ecx + 0x10]
            //   83c110               | add                 ecx, 0x10
            //   eb24                 | jmp                 0x26

        $sequence_6 = { 56 89ce 8b06 85c0 743d 8b4e04 85c9 }
            // n = 7, score = 1100
            //   56                   | push                esi
            //   89ce                 | mov                 esi, ecx
            //   8b06                 | mov                 eax, dword ptr [esi]
            //   85c0                 | test                eax, eax
            //   743d                 | je                  0x3f
            //   8b4e04               | mov                 ecx, dword ptr [esi + 4]
            //   85c9                 | test                ecx, ecx

        $sequence_7 = { 50 e8???????? 83c404 29f7 01f3 8b75ec }
            // n = 6, score = 1100
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   29f7                 | sub                 edi, esi
            //   01f3                 | add                 ebx, esi
            //   8b75ec               | mov                 esi, dword ptr [ebp - 0x14]

        $sequence_8 = { 807e5000 7509 ff764c ff15???????? }
            // n = 4, score = 1000
            //   807e5000             | cmp                 byte ptr [esi + 0x50], 0
            //   7509                 | jne                 0xb
            //   ff764c               | push                dword ptr [esi + 0x4c]
            //   ff15????????         |                     

        $sequence_9 = { ff7654 ff15???????? 807e5000 7509 }
            // n = 4, score = 1000
            //   ff7654               | push                dword ptr [esi + 0x54]
            //   ff15????????         |                     
            //   807e5000             | cmp                 byte ptr [esi + 0x50], 0
            //   7509                 | jne                 0xb

        $sequence_10 = { ff764c ff15???????? 8d4634 50 ff15???????? 8d4e0c }
            // n = 6, score = 1000
            //   ff764c               | push                dword ptr [esi + 0x4c]
            //   ff15????????         |                     
            //   8d4634               | lea                 eax, [esi + 0x34]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8d4e0c               | lea                 ecx, [esi + 0xc]

        $sequence_11 = { e8???????? 807e5800 7509 ff7654 ff15???????? }
            // n = 5, score = 1000
            //   e8????????           |                     
            //   807e5800             | cmp                 byte ptr [esi + 0x58], 0
            //   7509                 | jne                 0xb
            //   ff7654               | push                dword ptr [esi + 0x54]
            //   ff15????????         |                     

        $sequence_12 = { ff7010 ff7014 e8???????? 8b45e0 }
            // n = 4, score = 1000
            //   ff7010               | push                dword ptr [eax + 0x10]
            //   ff7014               | push                dword ptr [eax + 0x14]
            //   e8????????           |                     
            //   8b45e0               | mov                 eax, dword ptr [ebp - 0x20]

        $sequence_13 = { eb10 6800800000 6a00 56 ff15???????? }
            // n = 5, score = 1000
            //   eb10                 | jmp                 0x12
            //   6800800000           | push                0x8000
            //   6a00                 | push                0
            //   56                   | push                esi
            //   ff15????????         |                     

        $sequence_14 = { ff742428 e8???????? 8b442424 8d4c2410 }
            // n = 4, score = 1000
            //   ff742428             | push                dword ptr [esp + 0x28]
            //   e8????????           |                     
            //   8b442424             | mov                 eax, dword ptr [esp + 0x24]
            //   8d4c2410             | lea                 ecx, [esp + 0x10]

        $sequence_15 = { 85c0 7515 8b4624 3b4620 }
            // n = 4, score = 1000
            //   85c0                 | test                eax, eax
            //   7515                 | jne                 0x17
            //   8b4624               | mov                 eax, dword ptr [esi + 0x24]
            //   3b4620               | cmp                 eax, dword ptr [esi + 0x20]

    condition:
        7 of them and filesize < 1302528
}