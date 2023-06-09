rule win_remsec_strider_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.remsec_strider."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.remsec_strider"
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
        $sequence_0 = { 8d85e8fdffff 50 ff15???????? 894628 }
            // n = 4, score = 200
            //   8d85e8fdffff         | lea                 eax, [ebp - 0x218]
            //   50                   | push                eax
            //   ff15????????         |                     
            //   894628               | mov                 dword ptr [esi + 0x28], eax

        $sequence_1 = { e8???????? ff761c ff15???????? 83c410 83661c00 83661400 8bce }
            // n = 7, score = 200
            //   e8????????           |                     
            //   ff761c               | push                dword ptr [esi + 0x1c]
            //   ff15????????         |                     
            //   83c410               | add                 esp, 0x10
            //   83661c00             | and                 dword ptr [esi + 0x1c], 0
            //   83661400             | and                 dword ptr [esi + 0x14], 0
            //   8bce                 | mov                 ecx, esi

        $sequence_2 = { 85c0 7444 8b4818 85c9 7405 }
            // n = 5, score = 200
            //   85c0                 | test                eax, eax
            //   7444                 | je                  0x46
            //   8b4818               | mov                 ecx, dword ptr [eax + 0x18]
            //   85c9                 | test                ecx, ecx
            //   7405                 | je                  7

        $sequence_3 = { c20800 55 8bec 8b5508 83ec1c }
            // n = 5, score = 200
            //   c20800               | ret                 8
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   83ec1c               | sub                 esp, 0x1c

        $sequence_4 = { 85c9 740f 39481c 720a 68???????? e9???????? 8b4814 }
            // n = 7, score = 200
            //   85c9                 | test                ecx, ecx
            //   740f                 | je                  0x11
            //   39481c               | cmp                 dword ptr [eax + 0x1c], ecx
            //   720a                 | jb                  0xc
            //   68????????           |                     
            //   e9????????           |                     
            //   8b4814               | mov                 ecx, dword ptr [eax + 0x14]

        $sequence_5 = { c20800 33c0 ebf5 8b432c ff30 68???????? }
            // n = 6, score = 200
            //   c20800               | ret                 8
            //   33c0                 | xor                 eax, eax
            //   ebf5                 | jmp                 0xfffffff7
            //   8b432c               | mov                 eax, dword ptr [ebx + 0x2c]
            //   ff30                 | push                dword ptr [eax]
            //   68????????           |                     

        $sequence_6 = { 33c0 c701???????? 394118 7509 894104 894108 89410c }
            // n = 7, score = 200
            //   33c0                 | xor                 eax, eax
            //   c701????????         |                     
            //   394118               | cmp                 dword ptr [ecx + 0x18], eax
            //   7509                 | jne                 0xb
            //   894104               | mov                 dword ptr [ecx + 4], eax
            //   894108               | mov                 dword ptr [ecx + 8], eax
            //   89410c               | mov                 dword ptr [ecx + 0xc], eax

        $sequence_7 = { 6800040000 50 ff15???????? 83c410 33c0 5f 5e }
            // n = 7, score = 200
            //   6800040000           | push                0x400
            //   50                   | push                eax
            //   ff15????????         |                     
            //   83c410               | add                 esp, 0x10
            //   33c0                 | xor                 eax, eax
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_8 = { 83661c00 83661400 8bce 5e e9???????? }
            // n = 5, score = 200
            //   83661c00             | and                 dword ptr [esi + 0x1c], 0
            //   83661400             | and                 dword ptr [esi + 0x14], 0
            //   8bce                 | mov                 ecx, esi
            //   5e                   | pop                 esi
            //   e9????????           |                     

        $sequence_9 = { ff772c ff15???????? 85c0 7512 }
            // n = 4, score = 200
            //   ff772c               | push                dword ptr [edi + 0x2c]
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   7512                 | jne                 0x14

    condition:
        7 of them and filesize < 344064
}