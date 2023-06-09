rule win_webc2_greencat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.webc2_greencat."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.webc2_greencat"
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
        $sequence_0 = { 68???????? 50 ffd7 8b1d???????? 83c40c 8d45b4 }
            // n = 6, score = 100
            //   68????????           |                     
            //   50                   | push                eax
            //   ffd7                 | call                edi
            //   8b1d????????         |                     
            //   83c40c               | add                 esp, 0xc
            //   8d45b4               | lea                 eax, [ebp - 0x4c]

        $sequence_1 = { 85c0 741b 68???????? ff7508 e8???????? 59 }
            // n = 6, score = 100
            //   85c0                 | test                eax, eax
            //   741b                 | je                  0x1d
            //   68????????           |                     
            //   ff7508               | push                dword ptr [ebp + 8]
            //   e8????????           |                     
            //   59                   | pop                 ecx

        $sequence_2 = { 40 80f922 75e9 80243a00 8a0430 }
            // n = 5, score = 100
            //   40                   | inc                 eax
            //   80f922               | cmp                 cl, 0x22
            //   75e9                 | jne                 0xffffffeb
            //   80243a00             | and                 byte ptr [edx + edi], 0
            //   8a0430               | mov                 al, byte ptr [eax + esi]

        $sequence_3 = { 41 83f97a 7ef7 6a41 }
            // n = 4, score = 100
            //   41                   | inc                 ecx
            //   83f97a               | cmp                 ecx, 0x7a
            //   7ef7                 | jle                 0xfffffff9
            //   6a41                 | push                0x41

        $sequence_4 = { 59 8bd8 59 eb03 8b75f0 ff75f4 }
            // n = 6, score = 100
            //   59                   | pop                 ecx
            //   8bd8                 | mov                 ebx, eax
            //   59                   | pop                 ecx
            //   eb03                 | jmp                 5
            //   8b75f0               | mov                 esi, dword ptr [ebp - 0x10]
            //   ff75f4               | push                dword ptr [ebp - 0xc]

        $sequence_5 = { 7554 8d45f4 c745f404000000 50 8d45fc 50 }
            // n = 6, score = 100
            //   7554                 | jne                 0x56
            //   8d45f4               | lea                 eax, [ebp - 0xc]
            //   c745f404000000       | mov                 dword ptr [ebp - 0xc], 4
            //   50                   | push                eax
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   50                   | push                eax

        $sequence_6 = { 50 6a1f ff760c ff15???????? 85c0 7421 }
            // n = 6, score = 100
            //   50                   | push                eax
            //   6a1f                 | push                0x1f
            //   ff760c               | push                dword ptr [esi + 0xc]
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7421                 | je                  0x23

        $sequence_7 = { 68???????? ff7508 e8???????? 59 59 56 8b35???????? }
            // n = 7, score = 100
            //   68????????           |                     
            //   ff7508               | push                dword ptr [ebp + 8]
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx
            //   56                   | push                esi
            //   8b35????????         |                     

        $sequence_8 = { 8d45e0 50 ff75f0 ff15???????? 8bd8 83fbff 0f840f010000 }
            // n = 7, score = 100
            //   8d45e0               | lea                 eax, [ebp - 0x20]
            //   50                   | push                eax
            //   ff75f0               | push                dword ptr [ebp - 0x10]
            //   ff15????????         |                     
            //   8bd8                 | mov                 ebx, eax
            //   83fbff               | cmp                 ebx, -1
            //   0f840f010000         | je                  0x115

        $sequence_9 = { 53 55 57 55 ff7614 68???????? 50 }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   55                   | push                ebp
            //   57                   | push                edi
            //   55                   | push                ebp
            //   ff7614               | push                dword ptr [esi + 0x14]
            //   68????????           |                     
            //   50                   | push                eax

    condition:
        7 of them and filesize < 57344
}