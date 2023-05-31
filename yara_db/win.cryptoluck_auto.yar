rule win_cryptoluck_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.cryptoluck."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cryptoluck"
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
        $sequence_0 = { 8d8de8fbffff 51 6a00 ff15???????? 8b95f8efffff 52 ff15???????? }
            // n = 7, score = 100
            //   8d8de8fbffff         | lea                 ecx, [ebp - 0x418]
            //   51                   | push                ecx
            //   6a00                 | push                0
            //   ff15????????         |                     
            //   8b95f8efffff         | mov                 edx, dword ptr [ebp - 0x1008]
            //   52                   | push                edx
            //   ff15????????         |                     

        $sequence_1 = { 8985d0fbffff 6a00 6a00 6a00 6a02 6a00 }
            // n = 6, score = 100
            //   8985d0fbffff         | mov                 dword ptr [ebp - 0x430], eax
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a02                 | push                2
            //   6a00                 | push                0

        $sequence_2 = { 89857cffffff 83bd78ffffff00 7429 8b8d7cffffff c60100 8b957cffffff 83c201 }
            // n = 7, score = 100
            //   89857cffffff         | mov                 dword ptr [ebp - 0x84], eax
            //   83bd78ffffff00       | cmp                 dword ptr [ebp - 0x88], 0
            //   7429                 | je                  0x2b
            //   8b8d7cffffff         | mov                 ecx, dword ptr [ebp - 0x84]
            //   c60100               | mov                 byte ptr [ecx], 0
            //   8b957cffffff         | mov                 edx, dword ptr [ebp - 0x84]
            //   83c201               | add                 edx, 1

        $sequence_3 = { ff15???????? 8b4d0c 8b55e0 3b11 7325 c745f401000000 8b45e0 }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   8b4d0c               | mov                 ecx, dword ptr [ebp + 0xc]
            //   8b55e0               | mov                 edx, dword ptr [ebp - 0x20]
            //   3b11                 | cmp                 edx, dword ptr [ecx]
            //   7325                 | jae                 0x27
            //   c745f401000000       | mov                 dword ptr [ebp - 0xc], 1
            //   8b45e0               | mov                 eax, dword ptr [ebp - 0x20]

        $sequence_4 = { 8d45e8 50 8b4d14 51 6a08 8b5510 }
            // n = 6, score = 100
            //   8d45e8               | lea                 eax, [ebp - 0x18]
            //   50                   | push                eax
            //   8b4d14               | mov                 ecx, dword ptr [ebp + 0x14]
            //   51                   | push                ecx
            //   6a08                 | push                8
            //   8b5510               | mov                 edx, dword ptr [ebp + 0x10]

        $sequence_5 = { 52 68ff0f0000 a1???????? 50 ff15???????? }
            // n = 5, score = 100
            //   52                   | push                edx
            //   68ff0f0000           | push                0xfff
            //   a1????????           |                     
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_6 = { ff15???????? 8985a8feffff 83bda8feffff00 0f84ef010000 833d????????00 7429 }
            // n = 6, score = 100
            //   ff15????????         |                     
            //   8985a8feffff         | mov                 dword ptr [ebp - 0x158], eax
            //   83bda8feffff00       | cmp                 dword ptr [ebp - 0x158], 0
            //   0f84ef010000         | je                  0x1f5
            //   833d????????00       |                     
            //   7429                 | je                  0x2b

        $sequence_7 = { 85c0 0f84ea010000 c785ecfaffff34040000 8b95ecfaffff 03950cfbffff 8995f4faffff 8b85f4faffff }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   0f84ea010000         | je                  0x1f0
            //   c785ecfaffff34040000     | mov    dword ptr [ebp - 0x514], 0x434
            //   8b95ecfaffff         | mov                 edx, dword ptr [ebp - 0x514]
            //   03950cfbffff         | add                 edx, dword ptr [ebp - 0x4f4]
            //   8995f4faffff         | mov                 dword ptr [ebp - 0x50c], edx
            //   8b85f4faffff         | mov                 eax, dword ptr [ebp - 0x50c]

        $sequence_8 = { 0f8441020000 8d55fc 52 6801000008 6a01 8b45f8 }
            // n = 6, score = 100
            //   0f8441020000         | je                  0x247
            //   8d55fc               | lea                 edx, [ebp - 4]
            //   52                   | push                edx
            //   6801000008           | push                0x8000001
            //   6a01                 | push                1
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]

        $sequence_9 = { 741a 8b4ddc c60100 8b55dc 83c201 8955dc 8b45d8 }
            // n = 7, score = 100
            //   741a                 | je                  0x1c
            //   8b4ddc               | mov                 ecx, dword ptr [ebp - 0x24]
            //   c60100               | mov                 byte ptr [ecx], 0
            //   8b55dc               | mov                 edx, dword ptr [ebp - 0x24]
            //   83c201               | add                 edx, 1
            //   8955dc               | mov                 dword ptr [ebp - 0x24], edx
            //   8b45d8               | mov                 eax, dword ptr [ebp - 0x28]

    condition:
        7 of them and filesize < 229376
}