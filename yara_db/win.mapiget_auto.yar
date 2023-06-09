rule win_mapiget_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.mapiget."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.mapiget"
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
        $sequence_0 = { 56 57 b920000000 33c0 8dbdf0fdffff f3ab b920000000 }
            // n = 7, score = 100
            //   56                   | push                esi
            //   57                   | push                edi
            //   b920000000           | mov                 ecx, 0x20
            //   33c0                 | xor                 eax, eax
            //   8dbdf0fdffff         | lea                 edi, [ebp - 0x210]
            //   f3ab                 | rep stosd           dword ptr es:[edi], eax
            //   b920000000           | mov                 ecx, 0x20

        $sequence_1 = { 8d45c8 c745c870c24000 50 e8???????? }
            // n = 4, score = 100
            //   8d45c8               | lea                 eax, [ebp - 0x38]
            //   c745c870c24000       | mov                 dword ptr [ebp - 0x38], 0x40c270
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_2 = { ff25???????? c3 8b4104 83f8ff }
            // n = 4, score = 100
            //   ff25????????         |                     
            //   c3                   | ret                 
            //   8b4104               | mov                 eax, dword ptr [ecx + 4]
            //   83f8ff               | cmp                 eax, -1

        $sequence_3 = { e8???????? e9???????? 8b450c 85c0 7409 }
            // n = 5, score = 100
            //   e8????????           |                     
            //   e9????????           |                     
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   85c0                 | test                eax, eax
            //   7409                 | je                  0xb

        $sequence_4 = { 3b1d???????? 0f8315010000 8bc3 8bcb c1f805 83e11f 8b048520174100 }
            // n = 7, score = 100
            //   3b1d????????         |                     
            //   0f8315010000         | jae                 0x11b
            //   8bc3                 | mov                 eax, ebx
            //   8bcb                 | mov                 ecx, ebx
            //   c1f805               | sar                 eax, 5
            //   83e11f               | and                 ecx, 0x1f
            //   8b048520174100       | mov                 eax, dword ptr [eax*4 + 0x411720]

        $sequence_5 = { 51 56 8b35???????? 6a00 8d442408 6a00 50 }
            // n = 7, score = 100
            //   51                   | push                ecx
            //   56                   | push                esi
            //   8b35????????         |                     
            //   6a00                 | push                0
            //   8d442408             | lea                 eax, [esp + 8]
            //   6a00                 | push                0
            //   50                   | push                eax

        $sequence_6 = { e8???????? 83c404 6689bc45eefdffff 8d9570ffffff }
            // n = 4, score = 100
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   6689bc45eefdffff     | mov                 word ptr [ebp + eax*2 - 0x212], di
            //   8d9570ffffff         | lea                 edx, [ebp - 0x90]

        $sequence_7 = { 83c404 6683bc45eefdffff0a 7517 8d8df0fdffff }
            // n = 4, score = 100
            //   83c404               | add                 esp, 4
            //   6683bc45eefdffff0a     | cmp    word ptr [ebp + eax*2 - 0x212], 0xa
            //   7517                 | jne                 0x19
            //   8d8df0fdffff         | lea                 ecx, [ebp - 0x210]

        $sequence_8 = { 81ec20040000 53 57 33db b97f000000 33c0 }
            // n = 6, score = 100
            //   81ec20040000         | sub                 esp, 0x420
            //   53                   | push                ebx
            //   57                   | push                edi
            //   33db                 | xor                 ebx, ebx
            //   b97f000000           | mov                 ecx, 0x7f
            //   33c0                 | xor                 eax, eax

        $sequence_9 = { c1f805 83e61f 8d1c8520174100 c1e603 8b03 f644300401 }
            // n = 6, score = 100
            //   c1f805               | sar                 eax, 5
            //   83e61f               | and                 esi, 0x1f
            //   8d1c8520174100       | lea                 ebx, [eax*4 + 0x411720]
            //   c1e603               | shl                 esi, 3
            //   8b03                 | mov                 eax, dword ptr [ebx]
            //   f644300401           | test                byte ptr [eax + esi + 4], 1

    condition:
        7 of them and filesize < 163840
}