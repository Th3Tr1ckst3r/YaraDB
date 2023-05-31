rule win_ave_maria_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.ave_maria."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ave_maria"
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
        $sequence_0 = { e8???????? 8b4d08 8bf0 e8???????? 8d4df0 e8???????? 85f6 }
            // n = 7, score = 400
            //   e8????????           |                     
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]
            //   8bf0                 | mov                 esi, eax
            //   e8????????           |                     
            //   8d4df0               | lea                 ecx, [ebp - 0x10]
            //   e8????????           |                     
            //   85f6                 | test                esi, esi

        $sequence_1 = { ff15???????? 51 8d45f8 8975f8 50 68???????? 8d4dfc }
            // n = 7, score = 400
            //   ff15????????         |                     
            //   51                   | push                ecx
            //   8d45f8               | lea                 eax, [ebp - 8]
            //   8975f8               | mov                 dword ptr [ebp - 8], esi
            //   50                   | push                eax
            //   68????????           |                     
            //   8d4dfc               | lea                 ecx, [ebp - 4]

        $sequence_2 = { 33d6 3355d0 03c1 8bf0 d1c2 8b45c4 }
            // n = 6, score = 400
            //   33d6                 | xor                 edx, esi
            //   3355d0               | xor                 edx, dword ptr [ebp - 0x30]
            //   03c1                 | add                 eax, ecx
            //   8bf0                 | mov                 esi, eax
            //   d1c2                 | rol                 edx, 1
            //   8b45c4               | mov                 eax, dword ptr [ebp - 0x3c]

        $sequence_3 = { 56 8b7508 8bce 57 668b9604010000 }
            // n = 5, score = 400
            //   56                   | push                esi
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   8bce                 | mov                 ecx, esi
            //   57                   | push                edi
            //   668b9604010000       | mov                 dx, word ptr [esi + 0x104]

        $sequence_4 = { c3 55 8bec 8b5508 56 8bf1 8d4d08 }
            // n = 7, score = 400
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   56                   | push                esi
            //   8bf1                 | mov                 esi, ecx
            //   8d4d08               | lea                 ecx, [ebp + 8]

        $sequence_5 = { 55 8bec 53 56 33db 8bf1 57 }
            // n = 7, score = 400
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   53                   | push                ebx
            //   56                   | push                esi
            //   33db                 | xor                 ebx, ebx
            //   8bf1                 | mov                 esi, ecx
            //   57                   | push                edi

        $sequence_6 = { 3b7e08 0f92c1 e8???????? c1e704 033e 8b7508 8bce }
            // n = 7, score = 400
            //   3b7e08               | cmp                 edi, dword ptr [esi + 8]
            //   0f92c1               | setb                cl
            //   e8????????           |                     
            //   c1e704               | shl                 edi, 4
            //   033e                 | add                 edi, dword ptr [esi]
            //   8b7508               | mov                 esi, dword ptr [ebp + 8]
            //   8bce                 | mov                 ecx, esi

        $sequence_7 = { 03f0 83d100 0facce10 8bcf 668933 5e 2bd6 }
            // n = 7, score = 400
            //   03f0                 | add                 esi, eax
            //   83d100               | adc                 ecx, 0
            //   0facce10             | shrd                esi, ecx, 0x10
            //   8bcf                 | mov                 ecx, edi
            //   668933               | mov                 word ptr [ebx], si
            //   5e                   | pop                 esi
            //   2bd6                 | sub                 edx, esi

        $sequence_8 = { c20400 55 8bec b810100000 e8???????? 53 56 }
            // n = 7, score = 400
            //   c20400               | ret                 4
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   b810100000           | mov                 eax, 0x1010
            //   e8????????           |                     
            //   53                   | push                ebx
            //   56                   | push                esi

        $sequence_9 = { 8b401c 83c020 50 e8???????? }
            // n = 4, score = 400
            //   8b401c               | mov                 eax, dword ptr [eax + 0x1c]
            //   83c020               | add                 eax, 0x20
            //   50                   | push                eax
            //   e8????????           |                     

    condition:
        7 of them and filesize < 237568
}