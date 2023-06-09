rule win_zerot_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.zerot."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.zerot"
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
        $sequence_0 = { 66894324 8d8520fdffff 50 8d8518fdffff c78518fdffff00000000 }
            // n = 5, score = 200
            //   66894324             | mov                 word ptr [ebx + 0x24], ax
            //   8d8520fdffff         | lea                 eax, [ebp - 0x2e0]
            //   50                   | push                eax
            //   8d8518fdffff         | lea                 eax, [ebp - 0x2e8]
            //   c78518fdffff00000000     | mov    dword ptr [ebp - 0x2e8], 0

        $sequence_1 = { 66c745f90000 8b560c 8945e8 0f1f440000 2bd1 8a4209 }
            // n = 6, score = 200
            //   66c745f90000         | mov                 word ptr [ebp - 7], 0
            //   8b560c               | mov                 edx, dword ptr [esi + 0xc]
            //   8945e8               | mov                 dword ptr [ebp - 0x18], eax
            //   0f1f440000           | nop                 dword ptr [eax + eax]
            //   2bd1                 | sub                 edx, ecx
            //   8a4209               | mov                 al, byte ptr [edx + 9]

        $sequence_2 = { 50 50 ffb52cf6ffff ff15???????? }
            // n = 4, score = 200
            //   50                   | push                eax
            //   50                   | push                eax
            //   ffb52cf6ffff         | push                dword ptr [ebp - 0x9d4]
            //   ff15????????         |                     

        $sequence_3 = { a1???????? 0f57c0 8945bc a1???????? }
            // n = 4, score = 200
            //   a1????????           |                     
            //   0f57c0               | xorps               xmm0, xmm0
            //   8945bc               | mov                 dword ptr [ebp - 0x44], eax
            //   a1????????           |                     

        $sequence_4 = { 8d853cfcffff 6a00 50 e8???????? 83c414 8d853cfcffff 6800020000 }
            // n = 7, score = 200
            //   8d853cfcffff         | lea                 eax, [ebp - 0x3c4]
            //   6a00                 | push                0
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c414               | add                 esp, 0x14
            //   8d853cfcffff         | lea                 eax, [ebp - 0x3c4]
            //   6800020000           | push                0x200

        $sequence_5 = { ff15???????? 8d45dc 50 ffb534f6ffff }
            // n = 4, score = 200
            //   ff15????????         |                     
            //   8d45dc               | lea                 eax, [ebp - 0x24]
            //   50                   | push                eax
            //   ffb534f6ffff         | push                dword ptr [ebp - 0x9cc]

        $sequence_6 = { 0f2805???????? 6a40 0f1145cc 6a00 0f2805???????? }
            // n = 5, score = 200
            //   0f2805????????       |                     
            //   6a40                 | push                0x40
            //   0f1145cc             | movups              xmmword ptr [ebp - 0x34], xmm0
            //   6a00                 | push                0
            //   0f2805????????       |                     

        $sequence_7 = { 6a59 0f44f7 ff15???????? 8b8d34fdffff 85c0 bf???????? 0f44fe }
            // n = 7, score = 200
            //   6a59                 | push                0x59
            //   0f44f7               | cmove               esi, edi
            //   ff15????????         |                     
            //   8b8d34fdffff         | mov                 ecx, dword ptr [ebp - 0x2cc]
            //   85c0                 | test                eax, eax
            //   bf????????           |                     
            //   0f44fe               | cmove               edi, esi

        $sequence_8 = { 8d8510fdffff 51 8b8d30cdffff 8d9700020000 50 }
            // n = 5, score = 200
            //   8d8510fdffff         | lea                 eax, [ebp - 0x2f0]
            //   51                   | push                ecx
            //   8b8d30cdffff         | mov                 ecx, dword ptr [ebp - 0x32d0]
            //   8d9700020000         | lea                 edx, [edi + 0x200]
            //   50                   | push                eax

        $sequence_9 = { 81bd34fcffffc8000000 7421 8b8530fcffff 40 898530fcffff }
            // n = 5, score = 200
            //   81bd34fcffffc8000000     | cmp    dword ptr [ebp - 0x3cc], 0xc8
            //   7421                 | je                  0x23
            //   8b8530fcffff         | mov                 eax, dword ptr [ebp - 0x3d0]
            //   40                   | inc                 eax
            //   898530fcffff         | mov                 dword ptr [ebp - 0x3d0], eax

    condition:
        7 of them and filesize < 303104
}