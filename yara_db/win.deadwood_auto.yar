rule win_deadwood_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.deadwood."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.deadwood"
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
        $sequence_0 = { 8b4598 83e004 0f840f000000 836598fb 8b4d9c 83c128 e9???????? }
            // n = 7, score = 100
            //   8b4598               | mov                 eax, dword ptr [ebp - 0x68]
            //   83e004               | and                 eax, 4
            //   0f840f000000         | je                  0x15
            //   836598fb             | and                 dword ptr [ebp - 0x68], 0xfffffffb
            //   8b4d9c               | mov                 ecx, dword ptr [ebp - 0x64]
            //   83c128               | add                 ecx, 0x28
            //   e9????????           |                     

        $sequence_1 = { 885c2448 e8???????? c706???????? eb02 33f6 8b5c2450 56 }
            // n = 7, score = 100
            //   885c2448             | mov                 byte ptr [esp + 0x48], bl
            //   e8????????           |                     
            //   c706????????         |                     
            //   eb02                 | jmp                 4
            //   33f6                 | xor                 esi, esi
            //   8b5c2450             | mov                 ebx, dword ptr [esp + 0x50]
            //   56                   | push                esi

        $sequence_2 = { 8bec 83ec50 53 8b5d10 56 57 8b7d0c }
            // n = 7, score = 100
            //   8bec                 | mov                 ebp, esp
            //   83ec50               | sub                 esp, 0x50
            //   53                   | push                ebx
            //   8b5d10               | mov                 ebx, dword ptr [ebp + 0x10]
            //   56                   | push                esi
            //   57                   | push                edi
            //   8b7d0c               | mov                 edi, dword ptr [ebp + 0xc]

        $sequence_3 = { 89442434 85f6 743b 6a00 8d4c241c e8???????? 8b4604 }
            // n = 7, score = 100
            //   89442434             | mov                 dword ptr [esp + 0x34], eax
            //   85f6                 | test                esi, esi
            //   743b                 | je                  0x3d
            //   6a00                 | push                0
            //   8d4c241c             | lea                 ecx, [esp + 0x1c]
            //   e8????????           |                     
            //   8b4604               | mov                 eax, dword ptr [esi + 4]

        $sequence_4 = { be08000000 83c408 3975a4 720c 8b5590 52 e8???????? }
            // n = 7, score = 100
            //   be08000000           | mov                 esi, 8
            //   83c408               | add                 esp, 8
            //   3975a4               | cmp                 dword ptr [ebp - 0x5c], esi
            //   720c                 | jb                  0xe
            //   8b5590               | mov                 edx, dword ptr [ebp - 0x70]
            //   52                   | push                edx
            //   e8????????           |                     

        $sequence_5 = { 8b4920 ff01 eb07 8b11 8b421c ffd0 8305????????01 }
            // n = 7, score = 100
            //   8b4920               | mov                 ecx, dword ptr [ecx + 0x20]
            //   ff01                 | inc                 dword ptr [ecx]
            //   eb07                 | jmp                 9
            //   8b11                 | mov                 edx, dword ptr [ecx]
            //   8b421c               | mov                 eax, dword ptr [edx + 0x1c]
            //   ffd0                 | call                eax
            //   8305????????01       |                     

        $sequence_6 = { ff15???????? 85c0 7512 68???????? 8d8de8fdffff 51 ff15???????? }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7512                 | jne                 0x14
            //   68????????           |                     
            //   8d8de8fdffff         | lea                 ecx, [ebp - 0x218]
            //   51                   | push                ecx
            //   ff15????????         |                     

        $sequence_7 = { 8b4d08 2bc1 c1f803 83c40c a801 7513 d1e8 }
            // n = 7, score = 100
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   2bc1                 | sub                 eax, ecx
            //   c1f803               | sar                 eax, 3
            //   83c40c               | add                 esp, 0xc
            //   a801                 | test                al, 1
            //   7513                 | jne                 0x15
            //   d1e8                 | shr                 eax, 1

        $sequence_8 = { c645fcb8 e8???????? c645fcb9 68???????? b9???????? e8???????? 68???????? }
            // n = 7, score = 100
            //   c645fcb8             | mov                 byte ptr [ebp - 4], 0xb8
            //   e8????????           |                     
            //   c645fcb9             | mov                 byte ptr [ebp - 4], 0xb9
            //   68????????           |                     
            //   b9????????           |                     
            //   e8????????           |                     
            //   68????????           |                     

        $sequence_9 = { 7417 40 83c10c 3bc2 72f4 57 ff15???????? }
            // n = 7, score = 100
            //   7417                 | je                  0x19
            //   40                   | inc                 eax
            //   83c10c               | add                 ecx, 0xc
            //   3bc2                 | cmp                 eax, edx
            //   72f4                 | jb                  0xfffffff6
            //   57                   | push                edi
            //   ff15????????         |                     

    condition:
        7 of them and filesize < 1055744
}