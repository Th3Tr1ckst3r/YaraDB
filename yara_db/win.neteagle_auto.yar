rule win_neteagle_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.neteagle."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.neteagle"
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
        $sequence_0 = { a840 7409 f60640 0f84ee010000 f6c340 7409 }
            // n = 6, score = 100
            //   a840                 | test                al, 0x40
            //   7409                 | je                  0xb
            //   f60640               | test                byte ptr [esi], 0x40
            //   0f84ee010000         | je                  0x1f4
            //   f6c340               | test                bl, 0x40
            //   7409                 | je                  0xb

        $sequence_1 = { c644242404 e8???????? 8d4c242c 885c2420 e8???????? 56 e8???????? }
            // n = 7, score = 100
            //   c644242404           | mov                 byte ptr [esp + 0x24], 4
            //   e8????????           |                     
            //   8d4c242c             | lea                 ecx, [esp + 0x2c]
            //   885c2420             | mov                 byte ptr [esp + 0x20], bl
            //   e8????????           |                     
            //   56                   | push                esi
            //   e8????????           |                     

        $sequence_2 = { c744241001000000 85c0 754a 8b4a24 8b35???????? 51 ffd6 }
            // n = 7, score = 100
            //   c744241001000000     | mov                 dword ptr [esp + 0x10], 1
            //   85c0                 | test                eax, eax
            //   754a                 | jne                 0x4c
            //   8b4a24               | mov                 ecx, dword ptr [edx + 0x24]
            //   8b35????????         |                     
            //   51                   | push                ecx
            //   ffd6                 | call                esi

        $sequence_3 = { 8bf8 6804010000 897c2424 c744242804010000 c744242c01000000 e8???????? 8b8c2464010000 }
            // n = 7, score = 100
            //   8bf8                 | mov                 edi, eax
            //   6804010000           | push                0x104
            //   897c2424             | mov                 dword ptr [esp + 0x24], edi
            //   c744242804010000     | mov                 dword ptr [esp + 0x28], 0x104
            //   c744242c01000000     | mov                 dword ptr [esp + 0x2c], 1
            //   e8????????           |                     
            //   8b8c2464010000       | mov                 ecx, dword ptr [esp + 0x164]

        $sequence_4 = { 5e 83c40c c20c00 5f 888800010000 889001010000 5e }
            // n = 7, score = 100
            //   5e                   | pop                 esi
            //   83c40c               | add                 esp, 0xc
            //   c20c00               | ret                 0xc
            //   5f                   | pop                 edi
            //   888800010000         | mov                 byte ptr [eax + 0x100], cl
            //   889001010000         | mov                 byte ptr [eax + 0x101], dl
            //   5e                   | pop                 esi

        $sequence_5 = { 7407 3d4c270000 7507 8bce e8???????? 53 }
            // n = 6, score = 100
            //   7407                 | je                  9
            //   3d4c270000           | cmp                 eax, 0x274c
            //   7507                 | jne                 9
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   53                   | push                ebx

        $sequence_6 = { 8d4db0 c645fc09 e8???????? 6a00 6a00 6a00 6a00 }
            // n = 7, score = 100
            //   8d4db0               | lea                 ecx, [ebp - 0x50]
            //   c645fc09             | mov                 byte ptr [ebp - 4], 9
            //   e8????????           |                     
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   6a00                 | push                0

        $sequence_7 = { 8d4c2448 e8???????? 8d4c243c 889c2410020000 e8???????? }
            // n = 5, score = 100
            //   8d4c2448             | lea                 ecx, [esp + 0x48]
            //   e8????????           |                     
            //   8d4c243c             | lea                 ecx, [esp + 0x3c]
            //   889c2410020000       | mov                 byte ptr [esp + 0x210], bl
            //   e8????????           |                     

        $sequence_8 = { b978000000 2bc8 51 8d4e04 51 57 8bce }
            // n = 7, score = 100
            //   b978000000           | mov                 ecx, 0x78
            //   2bc8                 | sub                 ecx, eax
            //   51                   | push                ecx
            //   8d4e04               | lea                 ecx, [esi + 4]
            //   51                   | push                ecx
            //   57                   | push                edi
            //   8bce                 | mov                 ecx, esi

        $sequence_9 = { ffd7 8b542424 52 ffd3 8d442418 8d4c2410 50 }
            // n = 7, score = 100
            //   ffd7                 | call                edi
            //   8b542424             | mov                 edx, dword ptr [esp + 0x24]
            //   52                   | push                edx
            //   ffd3                 | call                ebx
            //   8d442418             | lea                 eax, [esp + 0x18]
            //   8d4c2410             | lea                 ecx, [esp + 0x10]
            //   50                   | push                eax

    condition:
        7 of them and filesize < 262144
}