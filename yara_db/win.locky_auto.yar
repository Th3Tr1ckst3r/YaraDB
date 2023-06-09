rule win_locky_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.locky."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.locky"
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
        $sequence_0 = { 8906 85c0 7505 e8???????? 8bc6 c9 c20800 }
            // n = 7, score = 2100
            //   8906                 | mov                 dword ptr [esi], eax
            //   85c0                 | test                eax, eax
            //   7505                 | jne                 7
            //   e8????????           |                     
            //   8bc6                 | mov                 eax, esi
            //   c9                   | leave               
            //   c20800               | ret                 8

        $sequence_1 = { 55 8bec 51 51 ff30 8b4508 }
            // n = 6, score = 2100
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   51                   | push                ecx
            //   51                   | push                ecx
            //   ff30                 | push                dword ptr [eax]
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]

        $sequence_2 = { e8???????? 8d45d4 50 8bc6 c645fc03 e8???????? }
            // n = 6, score = 2100
            //   e8????????           |                     
            //   8d45d4               | lea                 eax, [ebp - 0x2c]
            //   50                   | push                eax
            //   8bc6                 | mov                 eax, esi
            //   c645fc03             | mov                 byte ptr [ebp - 4], 3
            //   e8????????           |                     

        $sequence_3 = { 8d45d4 50 8b450c e8???????? 8b45d0 83c010 50 }
            // n = 7, score = 2100
            //   8d45d4               | lea                 eax, [ebp - 0x2c]
            //   50                   | push                eax
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   e8????????           |                     
            //   8b45d0               | mov                 eax, dword ptr [ebp - 0x30]
            //   83c010               | add                 eax, 0x10
            //   50                   | push                eax

        $sequence_4 = { 68???????? 8d45f8 50 e8???????? 3bc7 5f 7210 }
            // n = 7, score = 2100
            //   68????????           |                     
            //   8d45f8               | lea                 eax, [ebp - 8]
            //   50                   | push                eax
            //   e8????????           |                     
            //   3bc7                 | cmp                 eax, edi
            //   5f                   | pop                 edi
            //   7210                 | jb                  0x12

        $sequence_5 = { 68???????? 8d45ec e9???????? c645fc03 3bf3 7407 }
            // n = 6, score = 2100
            //   68????????           |                     
            //   8d45ec               | lea                 eax, [ebp - 0x14]
            //   e9????????           |                     
            //   c645fc03             | mov                 byte ptr [ebp - 4], 3
            //   3bf3                 | cmp                 esi, ebx
            //   7407                 | je                  9

        $sequence_6 = { ff15???????? 85c0 747c 8d45f8 50 6a02 ff75fc }
            // n = 7, score = 2100
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   747c                 | je                  0x7e
            //   8d45f8               | lea                 eax, [ebp - 8]
            //   50                   | push                eax
            //   6a02                 | push                2
            //   ff75fc               | push                dword ptr [ebp - 4]

        $sequence_7 = { 74b2 53 8d45c4 50 8d45d4 50 }
            // n = 6, score = 2100
            //   74b2                 | je                  0xffffffb4
            //   53                   | push                ebx
            //   8d45c4               | lea                 eax, [ebp - 0x3c]
            //   50                   | push                eax
            //   8d45d4               | lea                 eax, [ebp - 0x2c]
            //   50                   | push                eax

        $sequence_8 = { f7e1 03d3 5b c21000 e9???????? 8bff 55 }
            // n = 7, score = 1400
            //   f7e1                 | mul                 ecx
            //   03d3                 | add                 edx, ebx
            //   5b                   | pop                 ebx
            //   c21000               | ret                 0x10
            //   e9????????           |                     
            //   8bff                 | mov                 edi, edi
            //   55                   | push                ebp

        $sequence_9 = { 5e c21000 8bff 55 8bec 33c0 8b4d08 }
            // n = 7, score = 700
            //   5e                   | pop                 esi
            //   c21000               | ret                 0x10
            //   8bff                 | mov                 edi, edi
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   33c0                 | xor                 eax, eax
            //   8b4d08               | mov                 ecx, dword ptr [ebp + 8]

        $sequence_10 = { 59 e9???????? 90 8d36 90 }
            // n = 5, score = 700
            //   59                   | pop                 ecx
            //   e9????????           |                     
            //   90                   | nop                 
            //   8d36                 | lea                 esi, [esi]
            //   90                   | nop                 

        $sequence_11 = { 66ab e9???????? 66ab 90 e9???????? 90 }
            // n = 6, score = 700
            //   66ab                 | stosw               word ptr es:[edi], ax
            //   e9????????           |                     
            //   66ab                 | stosw               word ptr es:[edi], ax
            //   90                   | nop                 
            //   e9????????           |                     
            //   90                   | nop                 

        $sequence_12 = { 58 e9???????? 8d36 90 }
            // n = 4, score = 700
            //   58                   | pop                 eax
            //   e9????????           |                     
            //   8d36                 | lea                 esi, [esi]
            //   90                   | nop                 

        $sequence_13 = { 6a01 e9???????? 90 50 90 e9???????? }
            // n = 6, score = 700
            //   6a01                 | push                1
            //   e9????????           |                     
            //   90                   | nop                 
            //   50                   | push                eax
            //   90                   | nop                 
            //   e9????????           |                     

        $sequence_14 = { 58 e9???????? 8d6d00 e9???????? 90 }
            // n = 5, score = 700
            //   58                   | pop                 eax
            //   e9????????           |                     
            //   8d6d00               | lea                 ebp, [ebp]
            //   e9????????           |                     
            //   90                   | nop                 

        $sequence_15 = { 59 90 e9???????? 8d3f e9???????? }
            // n = 5, score = 700
            //   59                   | pop                 ecx
            //   90                   | nop                 
            //   e9????????           |                     
            //   8d3f                 | lea                 edi, [edi]
            //   e9????????           |                     

        $sequence_16 = { 58 e9???????? 90 89d0 }
            // n = 4, score = 700
            //   58                   | pop                 eax
            //   e9????????           |                     
            //   90                   | nop                 
            //   89d0                 | mov                 eax, edx

    condition:
        7 of them and filesize < 1122304
}