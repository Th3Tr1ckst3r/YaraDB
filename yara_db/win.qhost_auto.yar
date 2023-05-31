rule win_qhost_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.qhost."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.qhost"
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
        $sequence_0 = { 8d45a8 50 8b4d0c 51 ff15???????? 83c408 }
            // n = 6, score = 100
            //   8d45a8               | lea                 eax, [ebp - 0x58]
            //   50                   | push                eax
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   83c408               | add                 esp, 8

        $sequence_1 = { 52 8b45f4 50 e8???????? 83c408 c745fc00000000 }
            // n = 6, score = 100
            //   52                   | push                edx
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0

        $sequence_2 = { 837dfcff 7442 66c745e80200 8b4508 8945ec 668b4d0c 66894dea }
            // n = 7, score = 100
            //   837dfcff             | cmp                 dword ptr [ebp - 4], -1
            //   7442                 | je                  0x44
            //   66c745e80200         | mov                 word ptr [ebp - 0x18], 2
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   8945ec               | mov                 dword ptr [ebp - 0x14], eax
            //   668b4d0c             | mov                 cx, word ptr [ebp + 0xc]
            //   66894dea             | mov                 word ptr [ebp - 0x16], cx

        $sequence_3 = { c745f400000000 c78540beffffff000000 c785d8beffffff3f0000 c745f080000000 c785e4beffff00000000 }
            // n = 5, score = 100
            //   c745f400000000       | mov                 dword ptr [ebp - 0xc], 0
            //   c78540beffffff000000     | mov    dword ptr [ebp - 0x41c0], 0xff
            //   c785d8beffffff3f0000     | mov    dword ptr [ebp - 0x4128], 0x3fff
            //   c745f080000000       | mov                 dword ptr [ebp - 0x10], 0x80
            //   c785e4beffff00000000     | mov    dword ptr [ebp - 0x411c], 0

        $sequence_4 = { 68???????? ff15???????? 83c40c ff15???????? 99 b919000000 f7f9 }
            // n = 7, score = 100
            //   68????????           |                     
            //   ff15????????         |                     
            //   83c40c               | add                 esp, 0xc
            //   ff15????????         |                     
            //   99                   | cdq                 
            //   b919000000           | mov                 ecx, 0x19
            //   f7f9                 | idiv                ecx

        $sequence_5 = { 83c404 50 68???????? 8d8508feffff 50 ff15???????? 83c40c }
            // n = 7, score = 100
            //   83c404               | add                 esp, 4
            //   50                   | push                eax
            //   68????????           |                     
            //   8d8508feffff         | lea                 eax, [ebp - 0x1f8]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   83c40c               | add                 esp, 0xc

        $sequence_6 = { 8d459c 50 6a00 ff15???????? 83c408 898578ffffff }
            // n = 6, score = 100
            //   8d459c               | lea                 eax, [ebp - 0x64]
            //   50                   | push                eax
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   83c408               | add                 esp, 8
            //   898578ffffff         | mov                 dword ptr [ebp - 0x88], eax

        $sequence_7 = { 884594 8b4584 25ff000000 85c0 745e 8d4d9c 51 }
            // n = 7, score = 100
            //   884594               | mov                 byte ptr [ebp - 0x6c], al
            //   8b4584               | mov                 eax, dword ptr [ebp - 0x7c]
            //   25ff000000           | and                 eax, 0xff
            //   85c0                 | test                eax, eax
            //   745e                 | je                  0x60
            //   8d4d9c               | lea                 ecx, [ebp - 0x64]
            //   51                   | push                ecx

        $sequence_8 = { 837d1802 7523 8b45f8 50 8b4df4 51 6a02 }
            // n = 7, score = 100
            //   837d1802             | cmp                 dword ptr [ebp + 0x18], 2
            //   7523                 | jne                 0x25
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   50                   | push                eax
            //   8b4df4               | mov                 ecx, dword ptr [ebp - 0xc]
            //   51                   | push                ecx
            //   6a02                 | push                2

        $sequence_9 = { 83bdc4fcffff00 7407 b802000000 eb18 }
            // n = 4, score = 100
            //   83bdc4fcffff00       | cmp                 dword ptr [ebp - 0x33c], 0
            //   7407                 | je                  9
            //   b802000000           | mov                 eax, 2
            //   eb18                 | jmp                 0x1a

    condition:
        7 of them and filesize < 286720
}