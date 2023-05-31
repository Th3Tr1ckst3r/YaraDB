rule win_catb_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.catb."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.catb"
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
        $sequence_0 = { 488bd0 48d3ca 4933d0 4b8794fe203d0400 eb2d 4c8b15???????? ebb8 }
            // n = 7, score = 100
            //   488bd0               | dec                 eax
            //   48d3ca               | lea                 ebx, [0x14b7f]
            //   4933d0               | dec                 eax
            //   4b8794fe203d0400     | lea                 edi, [0x14b78]
            //   eb2d                 | jmp                 0x19e4
            //   4c8b15????????       |                     
            //   ebb8                 | dec                 eax

        $sequence_1 = { eb1f be07000000 488d15ef9e0000 448bc6 488bcf e8???????? 85c0 }
            // n = 7, score = 100
            //   eb1f                 | dec                 ebx
            //   be07000000           | mov                 eax, dword ptr [edi + 0x43e40]
            //   488d15ef9e0000       | dec                 esp
            //   448bc6               | mov                 eax, dword ptr [ebp - 0x51]
            //   488bcf               | dec                 esp
            //   e8????????           |                     
            //   85c0                 | sub                 eax, edi

        $sequence_2 = { b903000000 4c8d05907f0000 488d15f9750000 e8???????? 4885c0 740f 488bcb }
            // n = 7, score = 100
            //   b903000000           | sub                 eax, ebx
            //   4c8d05907f0000       | dec                 eax
            //   488d15f9750000       | lea                 ecx, [0xffff5669]
            //   e8????????           |                     
            //   4885c0               | dec                 eax
            //   740f                 | mov                 ecx, dword ptr [ecx + ebp*8 + 0x43e40]
            //   488bcb               | and                 byte ptr [ecx + edi*8 + 0x3d], 0xfd

        $sequence_3 = { 4c8d0da47f0000 b903000000 4c8d05907f0000 488d15f9750000 }
            // n = 4, score = 100
            //   4c8d0da47f0000       | je                  0x388
            //   b903000000           | dec                 eax
            //   4c8d05907f0000       | lea                 eax, [0x10ec2]
            //   488d15f9750000       | dec                 eax

        $sequence_4 = { 488d0d6a190400 e8???????? 85c0 742e 32c0 eb33 }
            // n = 6, score = 100
            //   488d0d6a190400       | dec                 ebp
            //   e8????????           |                     
            //   85c0                 | xchg                dword ptr [edi + edi*8 + 0x43818], esi
            //   742e                 | xor                 eax, eax
            //   32c0                 | dec                 eax
            //   eb33                 | mov                 ebx, dword ptr [esp + 0x50]

        $sequence_5 = { 4c8d0d6bab0300 4c8bc6 488bd7 488bcb e8???????? }
            // n = 5, score = 100
            //   4c8d0d6bab0300       | mov                 eax, 0x12
            //   4c8bc6               | dec                 eax
            //   488bd7               | lea                 edx, [0x15569]
            //   488bcb               | dec                 eax
            //   e8????????           |                     

        $sequence_6 = { 488bd8 4885c0 0f84a1010000 33d2 }
            // n = 4, score = 100
            //   488bd8               | dec                 eax
            //   4885c0               | mov                 ebx, edx
            //   0f84a1010000         | dec                 esp
            //   33d2                 | lea                 ecx, [0xcfd0]

        $sequence_7 = { 4c8d05117f0000 488d1592750000 e8???????? 8bcb }
            // n = 4, score = 100
            //   4c8d05117f0000       | lea                 eax, [0x3cb07]
            //   488d1592750000       | dec                 ebx
            //   e8????????           |                     
            //   8bcb                 | dec                 eax

        $sequence_8 = { 4983ceff 33db 4c8d25e8a10300 895c2420 }
            // n = 4, score = 100
            //   4983ceff             | xchg                dword ptr [edi + esi*8 + 0x43800], eax
            //   33db                 | dec                 eax
            //   4c8d25e8a10300       | test                eax, eax
            //   895c2420             | dec                 eax

        $sequence_9 = { 488bc3 498784f6803c0400 4885c0 7409 }
            // n = 4, score = 100
            //   488bc3               | dec                 eax
            //   498784f6803c0400     | lea                 ecx, [0xbc90]
            //   4885c0               | dec                 eax
            //   7409                 | sub                 esp, 0x18

    condition:
        7 of them and filesize < 593920
}