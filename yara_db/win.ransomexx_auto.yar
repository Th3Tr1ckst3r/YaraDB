rule win_ransomexx_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.ransomexx."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.ransomexx"
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
        $sequence_0 = { ba???????? 894de8 c60600 8d4601 85d2 0f845f010000 c60002 }
            // n = 7, score = 100
            //   ba????????           |                     
            //   894de8               | mov                 dword ptr [ebp - 0x18], ecx
            //   c60600               | mov                 byte ptr [esi], 0
            //   8d4601               | lea                 eax, [esi + 1]
            //   85d2                 | test                edx, edx
            //   0f845f010000         | je                  0x165
            //   c60002               | mov                 byte ptr [eax], 2

        $sequence_1 = { bf01000000 8bc7 8da5e0fcffff 5f 5e }
            // n = 5, score = 100
            //   bf01000000           | mov                 edi, 1
            //   8bc7                 | mov                 eax, edi
            //   8da5e0fcffff         | lea                 esp, [ebp - 0x320]
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_2 = { 85c0 0f84a3000000 68???????? 50 ffd6 57 ff15???????? }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   0f84a3000000         | je                  0xa9
            //   68????????           |                     
            //   50                   | push                eax
            //   ffd6                 | call                esi
            //   57                   | push                edi
            //   ff15????????         |                     

        $sequence_3 = { 85c0 0f8595000000 8b75fc 57 33ff 85f6 }
            // n = 6, score = 100
            //   85c0                 | test                eax, eax
            //   0f8595000000         | jne                 0x9b
            //   8b75fc               | mov                 esi, dword ptr [ebp - 4]
            //   57                   | push                edi
            //   33ff                 | xor                 edi, edi
            //   85f6                 | test                esi, esi

        $sequence_4 = { 83c40c 51 ff15???????? 83c404 8b4dd8 85c9 7425 }
            // n = 7, score = 100
            //   83c40c               | add                 esp, 0xc
            //   51                   | push                ecx
            //   ff15????????         |                     
            //   83c404               | add                 esp, 4
            //   8b4dd8               | mov                 ecx, dword ptr [ebp - 0x28]
            //   85c9                 | test                ecx, ecx
            //   7425                 | je                  0x27

        $sequence_5 = { 0fbed0 83ea57 83fa10 7328 8b5d08 }
            // n = 5, score = 100
            //   0fbed0               | movsx               edx, al
            //   83ea57               | sub                 edx, 0x57
            //   83fa10               | cmp                 edx, 0x10
            //   7328                 | jae                 0x2a
            //   8b5d08               | mov                 ebx, dword ptr [ebp + 8]

        $sequence_6 = { 830d????????01 8d4310 e8???????? 8bcc 3bcb 0f84e8000000 8bd1 }
            // n = 7, score = 100
            //   830d????????01       |                     
            //   8d4310               | lea                 eax, [ebx + 0x10]
            //   e8????????           |                     
            //   8bcc                 | mov                 ecx, esp
            //   3bcb                 | cmp                 ecx, ebx
            //   0f84e8000000         | je                  0xee
            //   8bd1                 | mov                 edx, ecx

        $sequence_7 = { 0fb6501e 0fb69288614200 c1e108 33ca 0fb6501d 0fb69288614200 c1e108 }
            // n = 7, score = 100
            //   0fb6501e             | movzx               edx, byte ptr [eax + 0x1e]
            //   0fb69288614200       | movzx               edx, byte ptr [edx + 0x426188]
            //   c1e108               | shl                 ecx, 8
            //   33ca                 | xor                 ecx, edx
            //   0fb6501d             | movzx               edx, byte ptr [eax + 0x1d]
            //   0fb69288614200       | movzx               edx, byte ptr [edx + 0x426188]
            //   c1e108               | shl                 ecx, 8

        $sequence_8 = { 8bec 51 56 57 6884010000 6a08 33ff }
            // n = 7, score = 100
            //   8bec                 | mov                 ebp, esp
            //   51                   | push                ecx
            //   56                   | push                esi
            //   57                   | push                edi
            //   6884010000           | push                0x184
            //   6a08                 | push                8
            //   33ff                 | xor                 edi, edi

        $sequence_9 = { e8???????? 85c0 0f8592030000 ff15???????? 8945f8 }
            // n = 5, score = 100
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   0f8592030000         | jne                 0x398
            //   ff15????????         |                     
            //   8945f8               | mov                 dword ptr [ebp - 8], eax

    condition:
        7 of them and filesize < 372736
}