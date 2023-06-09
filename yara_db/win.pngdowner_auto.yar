rule win_pngdowner_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.pngdowner."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.pngdowner"
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
        $sequence_0 = { 8b048d40e64000 8d3c8d40e64000 c1e602 03c6 8a4804 f6c102 }
            // n = 6, score = 200
            //   8b048d40e64000       | mov                 eax, dword ptr [ecx*4 + 0x40e640]
            //   8d3c8d40e64000       | lea                 edi, [ecx*4 + 0x40e640]
            //   c1e602               | shl                 esi, 2
            //   03c6                 | add                 eax, esi
            //   8a4804               | mov                 cl, byte ptr [eax + 4]
            //   f6c102               | test                cl, 2

        $sequence_1 = { 8bcd 83e103 f3a4 e8???????? 50 e8???????? }
            // n = 6, score = 200
            //   8bcd                 | mov                 ecx, ebp
            //   83e103               | and                 ecx, 3
            //   f3a4                 | rep movsb           byte ptr es:[edi], byte ptr [esi]
            //   e8????????           |                     
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_2 = { 8a4c1ffd c1fa04 83e20f 83e103 c1e104 8d541410 45 }
            // n = 7, score = 200
            //   8a4c1ffd             | mov                 cl, byte ptr [edi + ebx - 3]
            //   c1fa04               | sar                 edx, 4
            //   83e20f               | and                 edx, 0xf
            //   83e103               | and                 ecx, 3
            //   c1e104               | shl                 ecx, 4
            //   8d541410             | lea                 edx, [esp + edx + 0x10]
            //   45                   | inc                 ebp

        $sequence_3 = { c1f802 83e03f 45 8a4c0410 8d443b01 884c2eff 8a143b }
            // n = 7, score = 200
            //   c1f802               | sar                 eax, 2
            //   83e03f               | and                 eax, 0x3f
            //   45                   | inc                 ebp
            //   8a4c0410             | mov                 cl, byte ptr [esp + eax + 0x10]
            //   8d443b01             | lea                 eax, [ebx + edi + 1]
            //   884c2eff             | mov                 byte ptr [esi + ebp - 1], cl
            //   8a143b               | mov                 dl, byte ptr [ebx + edi]

        $sequence_4 = { 50 a3???????? e8???????? 8db6bcdc4000 bf???????? a5 a5 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   a3????????           |                     
            //   e8????????           |                     
            //   8db6bcdc4000         | lea                 esi, [esi + 0x40dcbc]
            //   bf????????           |                     
            //   a5                   | movsd               dword ptr es:[edi], dword ptr [esi]
            //   a5                   | movsd               dword ptr es:[edi], dword ptr [esi]

        $sequence_5 = { 0f8547ffffff 8bc6 808801e5400008 40 3dff000000 72f1 53 }
            // n = 7, score = 200
            //   0f8547ffffff         | jne                 0xffffff4d
            //   8bc6                 | mov                 eax, esi
            //   808801e5400008       | or                  byte ptr [eax + 0x40e501], 8
            //   40                   | inc                 eax
            //   3dff000000           | cmp                 eax, 0xff
            //   72f1                 | jb                  0xfffffff3
            //   53                   | push                ebx

        $sequence_6 = { 83e01f 8b0c8d40e64000 8d04c0 8d0481 eb05 b8???????? f6400420 }
            // n = 7, score = 200
            //   83e01f               | and                 eax, 0x1f
            //   8b0c8d40e64000       | mov                 ecx, dword ptr [ecx*4 + 0x40e640]
            //   8d04c0               | lea                 eax, [eax + eax*8]
            //   8d0481               | lea                 eax, [ecx + eax*4]
            //   eb05                 | jmp                 7
            //   b8????????           |                     
            //   f6400420             | test                byte ptr [eax + 4], 0x20

        $sequence_7 = { 50 89542414 c644240d73 ff15???????? 85c0 7430 }
            // n = 6, score = 200
            //   50                   | push                eax
            //   89542414             | mov                 dword ptr [esp + 0x14], edx
            //   c644240d73           | mov                 byte ptr [esp + 0xd], 0x73
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7430                 | je                  0x32

        $sequence_8 = { a0???????? b931000000 88442458 33c0 }
            // n = 4, score = 200
            //   a0????????           |                     
            //   b931000000           | mov                 ecx, 0x31
            //   88442458             | mov                 byte ptr [esp + 0x58], al
            //   33c0                 | xor                 eax, eax

        $sequence_9 = { 57 55 55 55 55 68???????? ff15???????? }
            // n = 7, score = 200
            //   57                   | push                edi
            //   55                   | push                ebp
            //   55                   | push                ebp
            //   55                   | push                ebp
            //   55                   | push                ebp
            //   68????????           |                     
            //   ff15????????         |                     

    condition:
        7 of them and filesize < 131072
}