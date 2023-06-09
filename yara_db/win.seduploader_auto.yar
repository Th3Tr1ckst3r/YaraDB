rule win_seduploader_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.seduploader."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.seduploader"
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
        $sequence_0 = { ff763c e8???????? 83c40c 3b4508 }
            // n = 4, score = 2400
            //   ff763c               | push                dword ptr [esi + 0x3c]
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   3b4508               | cmp                 eax, dword ptr [ebp + 8]

        $sequence_1 = { 50 ff7630 e8???????? 83c40c 3b4508 }
            // n = 5, score = 2400
            //   50                   | push                eax
            //   ff7630               | push                dword ptr [esi + 0x30]
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   3b4508               | cmp                 eax, dword ptr [ebp + 8]

        $sequence_2 = { 8b4510 83c6fe 8930 8d4601 }
            // n = 4, score = 2400
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   83c6fe               | add                 esi, -2
            //   8930                 | mov                 dword ptr [eax], esi
            //   8d4601               | lea                 eax, [esi + 1]

        $sequence_3 = { c6411001 c3 55 8bec }
            // n = 4, score = 2400
            //   c6411001             | mov                 byte ptr [ecx + 0x10], 1
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp

        $sequence_4 = { e8???????? 8b4510 83c6fe 8930 8d4601 50 e8???????? }
            // n = 7, score = 2400
            //   e8????????           |                     
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   83c6fe               | add                 esi, -2
            //   8930                 | mov                 dword ptr [eax], esi
            //   8d4601               | lea                 eax, [esi + 1]
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_5 = { 50 e8???????? 8b4510 83c6fe 8930 8d4601 50 }
            // n = 7, score = 2400
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   83c6fe               | add                 esi, -2
            //   8930                 | mov                 dword ptr [eax], esi
            //   8d4601               | lea                 eax, [esi + 1]
            //   50                   | push                eax

        $sequence_6 = { 56 6a3e 8bf1 e8???????? }
            // n = 4, score = 2400
            //   56                   | push                esi
            //   6a3e                 | push                0x3e
            //   8bf1                 | mov                 esi, ecx
            //   e8????????           |                     

        $sequence_7 = { 50 e8???????? 8b4510 83c6fe 8930 8d4601 }
            // n = 6, score = 2400
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   83c6fe               | add                 esi, -2
            //   8930                 | mov                 dword ptr [eax], esi
            //   8d4601               | lea                 eax, [esi + 1]

        $sequence_8 = { 50 e8???????? 8b4510 83c6fe 8930 }
            // n = 5, score = 2400
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   83c6fe               | add                 esi, -2
            //   8930                 | mov                 dword ptr [eax], esi

        $sequence_9 = { 83c6fe 8930 8d4601 50 e8???????? }
            // n = 5, score = 2400
            //   83c6fe               | add                 esi, -2
            //   8930                 | mov                 dword ptr [eax], esi
            //   8d4601               | lea                 eax, [esi + 1]
            //   50                   | push                eax
            //   e8????????           |                     

    condition:
        7 of them and filesize < 401408
}