rule win_rhino_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.rhino."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rhino"
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
        $sequence_0 = { 51 53 56 57 8bf9 33db 6a02 }
            // n = 7, score = 400
            //   51                   | push                ecx
            //   53                   | push                ebx
            //   56                   | push                esi
            //   57                   | push                edi
            //   8bf9                 | mov                 edi, ecx
            //   33db                 | xor                 ebx, ebx
            //   6a02                 | push                2

        $sequence_1 = { f7d8 83e00f 03c7 3bd8 }
            // n = 4, score = 400
            //   f7d8                 | neg                 eax
            //   83e00f               | and                 eax, 0xf
            //   03c7                 | add                 eax, edi
            //   3bd8                 | cmp                 ebx, eax

        $sequence_2 = { 0f8574010000 53 8bce e8???????? 84c0 0f8464010000 e8???????? }
            // n = 7, score = 400
            //   0f8574010000         | jne                 0x17a
            //   53                   | push                ebx
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   0f8464010000         | je                  0x16a
            //   e8????????           |                     

        $sequence_3 = { 751b 52 ff7710 e8???????? 50 e8???????? 83c40c }
            // n = 7, score = 400
            //   751b                 | jne                 0x1d
            //   52                   | push                edx
            //   ff7710               | push                dword ptr [edi + 0x10]
            //   e8????????           |                     
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc

        $sequence_4 = { 55 8bec 56 8b750c 3b7514 742d 57 }
            // n = 7, score = 400
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   56                   | push                esi
            //   8b750c               | mov                 esi, dword ptr [ebp + 0xc]
            //   3b7514               | cmp                 esi, dword ptr [ebp + 0x14]
            //   742d                 | je                  0x2f
            //   57                   | push                edi

        $sequence_5 = { 03f1 8b4c2424 8bda 83d300 0fa4c501 6a00 }
            // n = 6, score = 400
            //   03f1                 | add                 esi, ecx
            //   8b4c2424             | mov                 ecx, dword ptr [esp + 0x24]
            //   8bda                 | mov                 ebx, edx
            //   83d300               | adc                 ebx, 0
            //   0fa4c501             | shld                ebp, eax, 1
            //   6a00                 | push                0

        $sequence_6 = { 895de0 895de4 895de8 8d4de0 c745fc01000000 e8???????? 891e }
            // n = 7, score = 400
            //   895de0               | mov                 dword ptr [ebp - 0x20], ebx
            //   895de4               | mov                 dword ptr [ebp - 0x1c], ebx
            //   895de8               | mov                 dword ptr [ebp - 0x18], ebx
            //   8d4de0               | lea                 ecx, [ebp - 0x20]
            //   c745fc01000000       | mov                 dword ptr [ebp - 4], 1
            //   e8????????           |                     
            //   891e                 | mov                 dword ptr [esi], ebx

        $sequence_7 = { 8954241c 8bc5 2bc6 03c8 8bc5 2bc6 }
            // n = 6, score = 400
            //   8954241c             | mov                 dword ptr [esp + 0x1c], edx
            //   8bc5                 | mov                 eax, ebp
            //   2bc6                 | sub                 eax, esi
            //   03c8                 | add                 ecx, eax
            //   8bc5                 | mov                 eax, ebp
            //   2bc6                 | sub                 eax, esi

        $sequence_8 = { 5f 5e 64890d00000000 c9 c20c00 833900 7408 }
            // n = 7, score = 400
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   64890d00000000       | mov                 dword ptr fs:[0], ecx
            //   c9                   | leave               
            //   c20c00               | ret                 0xc
            //   833900               | cmp                 dword ptr [ecx], 0
            //   7408                 | je                  0xa

        $sequence_9 = { 83d500 f76704 8bf0 8b44241c 03f1 59 13d1 }
            // n = 7, score = 400
            //   83d500               | adc                 ebp, 0
            //   f76704               | mul                 dword ptr [edi + 4]
            //   8bf0                 | mov                 esi, eax
            //   8b44241c             | mov                 eax, dword ptr [esp + 0x1c]
            //   03f1                 | add                 esi, ecx
            //   59                   | pop                 ecx
            //   13d1                 | adc                 edx, ecx

    condition:
        7 of them and filesize < 1288192
}