rule win_winmm_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.winmm."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.winmm"
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
        $sequence_0 = { e8???????? 52 50 8d432a 68???????? 50 }
            // n = 6, score = 200
            //   e8????????           |                     
            //   52                   | push                edx
            //   50                   | push                eax
            //   8d432a               | lea                 eax, [ebx + 0x2a]
            //   68????????           |                     
            //   50                   | push                eax

        $sequence_1 = { 66837c47fe5c 7508 57 ffd3 }
            // n = 4, score = 200
            //   66837c47fe5c         | cmp                 word ptr [edi + eax*2 - 2], 0x5c
            //   7508                 | jne                 0xa
            //   57                   | push                edi
            //   ffd3                 | call                ebx

        $sequence_2 = { 33c0 33d2 c3 55 8bec 56 ff7514 }
            // n = 7, score = 200
            //   33c0                 | xor                 eax, eax
            //   33d2                 | xor                 edx, edx
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   56                   | push                esi
            //   ff7514               | push                dword ptr [ebp + 0x14]

        $sequence_3 = { 8be8 668b06 6685c0 74c9 50 e8???????? }
            // n = 6, score = 200
            //   8be8                 | mov                 ebp, eax
            //   668b06               | mov                 ax, word ptr [esi]
            //   6685c0               | test                ax, ax
            //   74c9                 | je                  0xffffffcb
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_4 = { 03f5 ebe9 33ed 66833e2e }
            // n = 4, score = 200
            //   03f5                 | add                 esi, ebp
            //   ebe9                 | jmp                 0xffffffeb
            //   33ed                 | xor                 ebp, ebp
            //   66833e2e             | cmp                 word ptr [esi], 0x2e

        $sequence_5 = { c9 c3 8bc1 6a01 59 33d2 }
            // n = 6, score = 200
            //   c9                   | leave               
            //   c3                   | ret                 
            //   8bc1                 | mov                 eax, ecx
            //   6a01                 | push                1
            //   59                   | pop                 ecx
            //   33d2                 | xor                 edx, edx

        $sequence_6 = { 8b5c241c 56 8b74241c 57 8bf9 895c2418 66833e00 }
            // n = 7, score = 200
            //   8b5c241c             | mov                 ebx, dword ptr [esp + 0x1c]
            //   56                   | push                esi
            //   8b74241c             | mov                 esi, dword ptr [esp + 0x1c]
            //   57                   | push                edi
            //   8bf9                 | mov                 edi, ecx
            //   895c2418             | mov                 dword ptr [esp + 0x18], ebx
            //   66833e00             | cmp                 word ptr [esi], 0

        $sequence_7 = { ffd3 66837c47fe5c 7508 57 ffd3 }
            // n = 5, score = 200
            //   ffd3                 | call                ebx
            //   66837c47fe5c         | cmp                 word ptr [edi + eax*2 - 2], 0x5c
            //   7508                 | jne                 0xa
            //   57                   | push                edi
            //   ffd3                 | call                ebx

        $sequence_8 = { e8???????? 59 89442428 668b06 6685c0 }
            // n = 5, score = 200
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   89442428             | mov                 dword ptr [esp + 0x28], eax
            //   668b06               | mov                 ax, word ptr [esi]
            //   6685c0               | test                ax, ax

        $sequence_9 = { c20c00 55 8bec 83ec24 83790800 7519 dd01 }
            // n = 7, score = 200
            //   c20c00               | ret                 0xc
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   83ec24               | sub                 esp, 0x24
            //   83790800             | cmp                 dword ptr [ecx + 8], 0
            //   7519                 | jne                 0x1b
            //   dd01                 | fld                 qword ptr [ecx]

    condition:
        7 of them and filesize < 278528
}