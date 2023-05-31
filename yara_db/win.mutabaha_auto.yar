rule win_mutabaha_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.mutabaha."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mutabaha"
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
        $sequence_0 = { 766b 8d7308 6690 f60610 7406 c7060d000000 ffb598feffff }
            // n = 7, score = 100
            //   766b                 | jbe                 0x6d
            //   8d7308               | lea                 esi, [ebx + 8]
            //   6690                 | nop                 
            //   f60610               | test                byte ptr [esi], 0x10
            //   7406                 | je                  8
            //   c7060d000000         | mov                 dword ptr [esi], 0xd
            //   ffb598feffff         | push                dword ptr [ebp - 0x168]

        $sequence_1 = { 69f6000031f2 2bc8 c1e910 69c197605b40 2bf0 8d0437 8b7dfc }
            // n = 7, score = 100
            //   69f6000031f2         | imul                esi, esi, 0xf2310000
            //   2bc8                 | sub                 ecx, eax
            //   c1e910               | shr                 ecx, 0x10
            //   69c197605b40         | imul                eax, ecx, 0x405b6097
            //   2bf0                 | sub                 esi, eax
            //   8d0437               | lea                 eax, [edi + esi]
            //   8b7dfc               | mov                 edi, dword ptr [ebp - 4]

        $sequence_2 = { 3bc8 7512 8b4d18 8bc6 890e 8b4d1c 894e04 }
            // n = 7, score = 100
            //   3bc8                 | cmp                 ecx, eax
            //   7512                 | jne                 0x14
            //   8b4d18               | mov                 ecx, dword ptr [ebp + 0x18]
            //   8bc6                 | mov                 eax, esi
            //   890e                 | mov                 dword ptr [esi], ecx
            //   8b4d1c               | mov                 ecx, dword ptr [ebp + 0x1c]
            //   894e04               | mov                 dword ptr [esi + 4], ecx

        $sequence_3 = { 8bce e8???????? 84c0 0f84c5feffff 8b55b8 85ff 7410 }
            // n = 7, score = 100
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   0f84c5feffff         | je                  0xfffffecb
            //   8b55b8               | mov                 edx, dword ptr [ebp - 0x48]
            //   85ff                 | test                edi, edi
            //   7410                 | je                  0x12

        $sequence_4 = { 8d8570ffffff c645fc0f 50 8d8568ffffff 50 8d4de8 e8???????? }
            // n = 7, score = 100
            //   8d8570ffffff         | lea                 eax, [ebp - 0x90]
            //   c645fc0f             | mov                 byte ptr [ebp - 4], 0xf
            //   50                   | push                eax
            //   8d8568ffffff         | lea                 eax, [ebp - 0x98]
            //   50                   | push                eax
            //   8d4de8               | lea                 ecx, [ebp - 0x18]
            //   e8????????           |                     

        $sequence_5 = { 68ffffff7f 68???????? 51 8d8c246c060000 2bd0 8d0c41 }
            // n = 6, score = 100
            //   68ffffff7f           | push                0x7fffffff
            //   68????????           |                     
            //   51                   | push                ecx
            //   8d8c246c060000       | lea                 ecx, [esp + 0x66c]
            //   2bd0                 | sub                 edx, eax
            //   8d0c41               | lea                 ecx, [ecx + eax*2]

        $sequence_6 = { 83bdd8fbffff08 8d8dc4fbffff ba58020000 0f438dc4fbffff e8???????? 84c0 7504 }
            // n = 7, score = 100
            //   83bdd8fbffff08       | cmp                 dword ptr [ebp - 0x428], 8
            //   8d8dc4fbffff         | lea                 ecx, [ebp - 0x43c]
            //   ba58020000           | mov                 edx, 0x258
            //   0f438dc4fbffff       | cmovae              ecx, dword ptr [ebp - 0x43c]
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   7504                 | jne                 6

        $sequence_7 = { 8945d0 8d4598 50 8d45d0 c745c800000000 50 c645b800 }
            // n = 7, score = 100
            //   8945d0               | mov                 dword ptr [ebp - 0x30], eax
            //   8d4598               | lea                 eax, [ebp - 0x68]
            //   50                   | push                eax
            //   8d45d0               | lea                 eax, [ebp - 0x30]
            //   c745c800000000       | mov                 dword ptr [ebp - 0x38], 0
            //   50                   | push                eax
            //   c645b800             | mov                 byte ptr [ebp - 0x48], 0

        $sequence_8 = { 8d8d00fdffff 50 ffb500fdffff e8???????? 8bbd38fdffff 8b45ec 83f808 }
            // n = 7, score = 100
            //   8d8d00fdffff         | lea                 ecx, [ebp - 0x300]
            //   50                   | push                eax
            //   ffb500fdffff         | push                dword ptr [ebp - 0x300]
            //   e8????????           |                     
            //   8bbd38fdffff         | mov                 edi, dword ptr [ebp - 0x2c8]
            //   8b45ec               | mov                 eax, dword ptr [ebp - 0x14]
            //   83f808               | cmp                 eax, 8

        $sequence_9 = { e9???????? 8d8d54ffffff e9???????? e8???????? c3 8b542408 8d420c }
            // n = 7, score = 100
            //   e9????????           |                     
            //   8d8d54ffffff         | lea                 ecx, [ebp - 0xac]
            //   e9????????           |                     
            //   e8????????           |                     
            //   c3                   | ret                 
            //   8b542408             | mov                 edx, dword ptr [esp + 8]
            //   8d420c               | lea                 eax, [edx + 0xc]

    condition:
        7 of them and filesize < 1220608
}