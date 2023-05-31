rule win_gsecdump_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.gsecdump."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.gsecdump"
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
        $sequence_0 = { 83c601 56 8d44243c 50 8d4c245c e8???????? 50 }
            // n = 7, score = 100
            //   83c601               | add                 esi, 1
            //   56                   | push                esi
            //   8d44243c             | lea                 eax, [esp + 0x3c]
            //   50                   | push                eax
            //   8d4c245c             | lea                 ecx, [esp + 0x5c]
            //   e8????????           |                     
            //   50                   | push                eax

        $sequence_1 = { 8b7d34 8b4f04 33db 3bcb 740c 8b4708 }
            // n = 6, score = 100
            //   8b7d34               | mov                 edi, dword ptr [ebp + 0x34]
            //   8b4f04               | mov                 ecx, dword ptr [edi + 4]
            //   33db                 | xor                 ebx, ebx
            //   3bcb                 | cmp                 ecx, ebx
            //   740c                 | je                  0xe
            //   8b4708               | mov                 eax, dword ptr [edi + 8]

        $sequence_2 = { e8???????? 8b5604 3b542424 0f8444010000 8b06 83f8fe 7427 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8b5604               | mov                 edx, dword ptr [esi + 4]
            //   3b542424             | cmp                 edx, dword ptr [esp + 0x24]
            //   0f8444010000         | je                  0x14a
            //   8b06                 | mov                 eax, dword ptr [esi]
            //   83f8fe               | cmp                 eax, -2
            //   7427                 | je                  0x29

        $sequence_3 = { 68???????? 68???????? e8???????? 83c408 8bd8 6a0a 8bcb }
            // n = 7, score = 100
            //   68????????           |                     
            //   68????????           |                     
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   8bd8                 | mov                 ebx, eax
            //   6a0a                 | push                0xa
            //   8bcb                 | mov                 ecx, ebx

        $sequence_4 = { 897e1c 895e18 885e08 8b4c2414 64890d00000000 59 5f }
            // n = 7, score = 100
            //   897e1c               | mov                 dword ptr [esi + 0x1c], edi
            //   895e18               | mov                 dword ptr [esi + 0x18], ebx
            //   885e08               | mov                 byte ptr [esi + 8], bl
            //   8b4c2414             | mov                 ecx, dword ptr [esp + 0x14]
            //   64890d00000000       | mov                 dword ptr fs:[0], ecx
            //   59                   | pop                 ecx
            //   5f                   | pop                 edi

        $sequence_5 = { 33f6 89742414 8b7c242c 8bcf 89742424 e8???????? 894704 }
            // n = 7, score = 100
            //   33f6                 | xor                 esi, esi
            //   89742414             | mov                 dword ptr [esp + 0x14], esi
            //   8b7c242c             | mov                 edi, dword ptr [esp + 0x2c]
            //   8bcf                 | mov                 ecx, edi
            //   89742424             | mov                 dword ptr [esp + 0x24], esi
            //   e8????????           |                     
            //   894704               | mov                 dword ptr [edi + 4], eax

        $sequence_6 = { 50 52 50 8d4c243c e8???????? 8d4c2434 c644244800 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   52                   | push                edx
            //   50                   | push                eax
            //   8d4c243c             | lea                 ecx, [esp + 0x3c]
            //   e8????????           |                     
            //   8d4c2434             | lea                 ecx, [esp + 0x34]
            //   c644244800           | mov                 byte ptr [esp + 0x48], 0

        $sequence_7 = { c744242400000000 c744242800000000 7520 68???????? 68???????? ff15???????? 50 }
            // n = 7, score = 100
            //   c744242400000000     | mov                 dword ptr [esp + 0x24], 0
            //   c744242800000000     | mov                 dword ptr [esp + 0x28], 0
            //   7520                 | jne                 0x22
            //   68????????           |                     
            //   68????????           |                     
            //   ff15????????         |                     
            //   50                   | push                eax

        $sequence_8 = { c706???????? 837c243010 c644243c02 720d 8b44241c 50 }
            // n = 6, score = 100
            //   c706????????         |                     
            //   837c243010           | cmp                 dword ptr [esp + 0x30], 0x10
            //   c644243c02           | mov                 byte ptr [esp + 0x3c], 2
            //   720d                 | jb                  0xf
            //   8b44241c             | mov                 eax, dword ptr [esp + 0x1c]
            //   50                   | push                eax

        $sequence_9 = { 5f 5e c20400 56 8bf1 8b4e4c }
            // n = 6, score = 100
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   c20400               | ret                 4
            //   56                   | push                esi
            //   8bf1                 | mov                 esi, ecx
            //   8b4e4c               | mov                 ecx, dword ptr [esi + 0x4c]

    condition:
        7 of them and filesize < 630784
}