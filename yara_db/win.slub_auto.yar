rule win_slub_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.slub."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.slub"
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
        $sequence_0 = { 53 8bce e8???????? 84c0 7449 8b750c 8d4dec }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   7449                 | je                  0x4b
            //   8b750c               | mov                 esi, dword ptr [ebp + 0xc]
            //   8d4dec               | lea                 ecx, [ebp - 0x14]

        $sequence_1 = { 888570ffffff c745fc01000000 8b8d6cffffff 85c9 7411 8b01 ff5008 }
            // n = 7, score = 100
            //   888570ffffff         | mov                 byte ptr [ebp - 0x90], al
            //   c745fc01000000       | mov                 dword ptr [ebp - 4], 1
            //   8b8d6cffffff         | mov                 ecx, dword ptr [ebp - 0x94]
            //   85c9                 | test                ecx, ecx
            //   7411                 | je                  0x13
            //   8b01                 | mov                 eax, dword ptr [ecx]
            //   ff5008               | call                dword ptr [eax + 8]

        $sequence_2 = { 894750 8901 8d97f4020000 52 8d4758 50 51 }
            // n = 7, score = 100
            //   894750               | mov                 dword ptr [edi + 0x50], eax
            //   8901                 | mov                 dword ptr [ecx], eax
            //   8d97f4020000         | lea                 edx, [edi + 0x2f4]
            //   52                   | push                edx
            //   8d4758               | lea                 eax, [edi + 0x58]
            //   50                   | push                eax
            //   51                   | push                ecx

        $sequence_3 = { 83c404 85f6 7438 ffb5a4f7ffff 6a00 56 e8???????? }
            // n = 7, score = 100
            //   83c404               | add                 esp, 4
            //   85f6                 | test                esi, esi
            //   7438                 | je                  0x3a
            //   ffb5a4f7ffff         | push                dword ptr [ebp - 0x85c]
            //   6a00                 | push                0
            //   56                   | push                esi
            //   e8????????           |                     

        $sequence_4 = { ffd0 83c40c c745b000000000 c645fc05 8b8570ffffff 85c0 7426 }
            // n = 7, score = 100
            //   ffd0                 | call                eax
            //   83c40c               | add                 esp, 0xc
            //   c745b000000000       | mov                 dword ptr [ebp - 0x50], 0
            //   c645fc05             | mov                 byte ptr [ebp - 4], 5
            //   8b8570ffffff         | mov                 eax, dword ptr [ebp - 0x90]
            //   85c0                 | test                eax, eax
            //   7426                 | je                  0x28

        $sequence_5 = { c7441828e8da8f00 8b4328 8b4804 8d41f8 89441924 8d4714 f7df }
            // n = 7, score = 100
            //   c7441828e8da8f00     | mov                 dword ptr [eax + ebx + 0x28], 0x8fdae8
            //   8b4328               | mov                 eax, dword ptr [ebx + 0x28]
            //   8b4804               | mov                 ecx, dword ptr [eax + 4]
            //   8d41f8               | lea                 eax, [ecx - 8]
            //   89441924             | mov                 dword ptr [ecx + ebx + 0x24], eax
            //   8d4714               | lea                 eax, [edi + 0x14]
            //   f7df                 | neg                 edi

        $sequence_6 = { 83c408 c3 8b442424 8b08 85c9 0f88b3090000 }
            // n = 6, score = 100
            //   83c408               | add                 esp, 8
            //   c3                   | ret                 
            //   8b442424             | mov                 eax, dword ptr [esp + 0x24]
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   85c9                 | test                ecx, ecx
            //   0f88b3090000         | js                  0x9b9

        $sequence_7 = { 50 53 e8???????? eb18 80bec900000000 7514 ff742414 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   53                   | push                ebx
            //   e8????????           |                     
            //   eb18                 | jmp                 0x1a
            //   80bec900000000       | cmp                 byte ptr [esi + 0xc9], 0
            //   7514                 | jne                 0x16
            //   ff742414             | push                dword ptr [esp + 0x14]

        $sequence_8 = { e8???????? c745fc02000000 8d7314 8b4328 c703???????? c706???????? 8b4004 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   c745fc02000000       | mov                 dword ptr [ebp - 4], 2
            //   8d7314               | lea                 esi, [ebx + 0x14]
            //   8b4328               | mov                 eax, dword ptr [ebx + 0x28]
            //   c703????????         |                     
            //   c706????????         |                     
            //   8b4004               | mov                 eax, dword ptr [eax + 4]

        $sequence_9 = { c7863c07000000000000 c7864007000000000000 c7864407000000000000 c7864807000000000000 c7864c07000000000000 c7861007000000000000 c7861407000000000000 }
            // n = 7, score = 100
            //   c7863c07000000000000     | mov    dword ptr [esi + 0x73c], 0
            //   c7864007000000000000     | mov    dword ptr [esi + 0x740], 0
            //   c7864407000000000000     | mov    dword ptr [esi + 0x744], 0
            //   c7864807000000000000     | mov    dword ptr [esi + 0x748], 0
            //   c7864c07000000000000     | mov    dword ptr [esi + 0x74c], 0
            //   c7861007000000000000     | mov    dword ptr [esi + 0x710], 0
            //   c7861407000000000000     | mov    dword ptr [esi + 0x714], 0

    condition:
        7 of them and filesize < 1785856
}