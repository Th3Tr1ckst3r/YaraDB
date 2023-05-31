rule win_multigrain_pos_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.multigrain_pos."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.multigrain_pos"
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
        $sequence_0 = { eb2c 8bce 50 8d145a e8???????? eb1f }
            // n = 6, score = 200
            //   eb2c                 | jmp                 0x2e
            //   8bce                 | mov                 ecx, esi
            //   50                   | push                eax
            //   8d145a               | lea                 edx, [edx + ebx*2]
            //   e8????????           |                     
            //   eb1f                 | jmp                 0x21

        $sequence_1 = { 6800040000 8d870c040000 50 ffd3 8db724040000 c745fc00000000 6a08 }
            // n = 7, score = 200
            //   6800040000           | push                0x400
            //   8d870c040000         | lea                 eax, [edi + 0x40c]
            //   50                   | push                eax
            //   ffd3                 | call                ebx
            //   8db724040000         | lea                 esi, [edi + 0x424]
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   6a08                 | push                8

        $sequence_2 = { 730d 0fb64c1e01 c1e905 894df4 }
            // n = 4, score = 200
            //   730d                 | jae                 0xf
            //   0fb64c1e01           | movzx               ecx, byte ptr [esi + ebx + 1]
            //   c1e905               | shr                 ecx, 5
            //   894df4               | mov                 dword ptr [ebp - 0xc], ecx

        $sequence_3 = { 8d4dd8 c645fc03 e8???????? 83c408 837dbc08 720b ff75a8 }
            // n = 7, score = 200
            //   8d4dd8               | lea                 ecx, [ebp - 0x28]
            //   c645fc03             | mov                 byte ptr [ebp - 4], 3
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   837dbc08             | cmp                 dword ptr [ebp - 0x44], 8
            //   720b                 | jb                  0xd
            //   ff75a8               | push                dword ptr [ebp - 0x58]

        $sequence_4 = { c7854cffffff00000000 c6853cffffff00 83bd20ffffff10 720e }
            // n = 4, score = 200
            //   c7854cffffff00000000     | mov    dword ptr [ebp - 0xb4], 0
            //   c6853cffffff00       | mov                 byte ptr [ebp - 0xc4], 0
            //   83bd20ffffff10       | cmp                 dword ptr [ebp - 0xe0], 0x10
            //   720e                 | jb                  0x10

        $sequence_5 = { c6041000 8931 5e 8be5 5d c3 }
            // n = 6, score = 200
            //   c6041000             | mov                 byte ptr [eax + edx], 0
            //   8931                 | mov                 dword ptr [ecx], esi
            //   5e                   | pop                 esi
            //   8be5                 | mov                 esp, ebp
            //   5d                   | pop                 ebp
            //   c3                   | ret                 

        $sequence_6 = { 84d2 742c 3b33 751d ff7514 8d45e4 }
            // n = 6, score = 200
            //   84d2                 | test                dl, dl
            //   742c                 | je                  0x2e
            //   3b33                 | cmp                 esi, dword ptr [ebx]
            //   751d                 | jne                 0x1f
            //   ff7514               | push                dword ptr [ebp + 0x14]
            //   8d45e4               | lea                 eax, [ebp - 0x1c]

        $sequence_7 = { 46 83c702 3b01 0f823efeffff 8b55f8 }
            // n = 5, score = 200
            //   46                   | inc                 esi
            //   83c702               | add                 edi, 2
            //   3b01                 | cmp                 eax, dword ptr [ecx]
            //   0f823efeffff         | jb                  0xfffffe44
            //   8b55f8               | mov                 edx, dword ptr [ebp - 8]

        $sequence_8 = { e9???????? 8d558c 8d4a01 8a02 42 84c0 75f9 }
            // n = 7, score = 200
            //   e9????????           |                     
            //   8d558c               | lea                 edx, [ebp - 0x74]
            //   8d4a01               | lea                 ecx, [edx + 1]
            //   8a02                 | mov                 al, byte ptr [edx]
            //   42                   | inc                 edx
            //   84c0                 | test                al, al
            //   75f9                 | jne                 0xfffffffb

        $sequence_9 = { c784243c04000000000000 c784246804000000000000 c784246c04000000000000 c784247004000000000000 c784247404000000000000 e8???????? 8b3d???????? }
            // n = 7, score = 200
            //   c784243c04000000000000     | mov    dword ptr [esp + 0x43c], 0
            //   c784246804000000000000     | mov    dword ptr [esp + 0x468], 0
            //   c784246c04000000000000     | mov    dword ptr [esp + 0x46c], 0
            //   c784247004000000000000     | mov    dword ptr [esp + 0x470], 0
            //   c784247404000000000000     | mov    dword ptr [esp + 0x474], 0
            //   e8????????           |                     
            //   8b3d????????         |                     

    condition:
        7 of them and filesize < 286720
}