rule win_aperetif_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.aperetif."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.aperetif"
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
        $sequence_0 = { e9???????? 894de0 c745e4ec438a00 e9???????? c745e4e8438a00 e9???????? 894de0 }
            // n = 7, score = 100
            //   e9????????           |                     
            //   894de0               | mov                 dword ptr [ebp - 0x20], ecx
            //   c745e4ec438a00       | mov                 dword ptr [ebp - 0x1c], 0x8a43ec
            //   e9????????           |                     
            //   c745e4e8438a00       | mov                 dword ptr [ebp - 0x1c], 0x8a43e8
            //   e9????????           |                     
            //   894de0               | mov                 dword ptr [ebp - 0x20], ecx

        $sequence_1 = { e9???????? 55 8bec 8b450c 56 ff7510 ff30 }
            // n = 7, score = 100
            //   e9????????           |                     
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   56                   | push                esi
            //   ff7510               | push                dword ptr [ebp + 0x10]
            //   ff30                 | push                dword ptr [eax]

        $sequence_2 = { ff750c 50 8b07 ff9084000000 8b7508 8bcf 56 }
            // n = 7, score = 100
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   50                   | push                eax
            //   8b07                 | mov                 eax, dword ptr [edi]
            //   ff9084000000         | call                dword ptr [eax + 0x84]
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   8bcf                 | mov                 ecx, edi
            //   56                   | push                esi

        $sequence_3 = { 8bcb 895c2424 1144242c 33ca 8b54242c 33db 8b44244c }
            // n = 7, score = 100
            //   8bcb                 | mov                 ecx, ebx
            //   895c2424             | mov                 dword ptr [esp + 0x24], ebx
            //   1144242c             | adc                 dword ptr [esp + 0x2c], eax
            //   33ca                 | xor                 ecx, edx
            //   8b54242c             | mov                 edx, dword ptr [esp + 0x2c]
            //   33db                 | xor                 ebx, ebx
            //   8b44244c             | mov                 eax, dword ptr [esp + 0x4c]

        $sequence_4 = { f0ff4704 8bb8ac000000 8bb0a8000000 8b80b0000000 8975dc 897de0 8945e4 }
            // n = 7, score = 100
            //   f0ff4704             | lock inc            dword ptr [edi + 4]
            //   8bb8ac000000         | mov                 edi, dword ptr [eax + 0xac]
            //   8bb0a8000000         | mov                 esi, dword ptr [eax + 0xa8]
            //   8b80b0000000         | mov                 eax, dword ptr [eax + 0xb0]
            //   8975dc               | mov                 dword ptr [ebp - 0x24], esi
            //   897de0               | mov                 dword ptr [ebp - 0x20], edi
            //   8945e4               | mov                 dword ptr [ebp - 0x1c], eax

        $sequence_5 = { ff742414 e8???????? 83c408 eb02 33c0 8986080b0000 8b4508 }
            // n = 7, score = 100
            //   ff742414             | push                dword ptr [esp + 0x14]
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   eb02                 | jmp                 4
            //   33c0                 | xor                 eax, eax
            //   8986080b0000         | mov                 dword ptr [esi + 0xb08], eax
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]

        $sequence_6 = { f20f114540 697528100b0000 68000b0000 6a00 c7452400000000 03f0 56 }
            // n = 7, score = 100
            //   f20f114540           | movsd               qword ptr [ebp + 0x40], xmm0
            //   697528100b0000       | imul                esi, dword ptr [ebp + 0x28], 0xb10
            //   68000b0000           | push                0xb00
            //   6a00                 | push                0
            //   c7452400000000       | mov                 dword ptr [ebp + 0x24], 0
            //   03f0                 | add                 esi, eax
            //   56                   | push                esi

        $sequence_7 = { ff5004 8b7ddc 85ff 741e 8bc6 f00fc14704 7515 }
            // n = 7, score = 100
            //   ff5004               | call                dword ptr [eax + 4]
            //   8b7ddc               | mov                 edi, dword ptr [ebp - 0x24]
            //   85ff                 | test                edi, edi
            //   741e                 | je                  0x20
            //   8bc6                 | mov                 eax, esi
            //   f00fc14704           | lock xadd           dword ptr [edi + 4], eax
            //   7515                 | jne                 0x17

        $sequence_8 = { eb06 85c9 7406 8b01 6a01 ff10 ff75ac }
            // n = 7, score = 100
            //   eb06                 | jmp                 8
            //   85c9                 | test                ecx, ecx
            //   7406                 | je                  8
            //   8b01                 | mov                 eax, dword ptr [ecx]
            //   6a01                 | push                1
            //   ff10                 | call                dword ptr [eax]
            //   ff75ac               | push                dword ptr [ebp - 0x54]

        $sequence_9 = { f0ff4004 89470c ff7310 8d7710 c645fc01 8bce 897508 }
            // n = 7, score = 100
            //   f0ff4004             | lock inc            dword ptr [eax + 4]
            //   89470c               | mov                 dword ptr [edi + 0xc], eax
            //   ff7310               | push                dword ptr [ebx + 0x10]
            //   8d7710               | lea                 esi, [edi + 0x10]
            //   c645fc01             | mov                 byte ptr [ebp - 4], 1
            //   8bce                 | mov                 ecx, esi
            //   897508               | mov                 dword ptr [ebp + 8], esi

    condition:
        7 of them and filesize < 10500096
}