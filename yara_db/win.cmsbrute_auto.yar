rule win_cmsbrute_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.cmsbrute."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.cmsbrute"
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
        $sequence_0 = { e8???????? 59 59 8b7d9c 53 ff75ac 8d5db8 }
            // n = 7, score = 500
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx
            //   8b7d9c               | mov                 edi, dword ptr [ebp - 0x64]
            //   53                   | push                ebx
            //   ff75ac               | push                dword ptr [ebp - 0x54]
            //   8d5db8               | lea                 ebx, [ebp - 0x48]

        $sequence_1 = { ff7514 8d83d0010000 50 81c3d4010000 53 e8???????? eb19 }
            // n = 7, score = 500
            //   ff7514               | push                dword ptr [ebp + 0x14]
            //   8d83d0010000         | lea                 eax, [ebx + 0x1d0]
            //   50                   | push                eax
            //   81c3d4010000         | add                 ebx, 0x1d4
            //   53                   | push                ebx
            //   e8????????           |                     
            //   eb19                 | jmp                 0x1b

        $sequence_2 = { e8???????? 59 8a07 47 88458f 84c0 0f84b8000000 }
            // n = 7, score = 500
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   8a07                 | mov                 al, byte ptr [edi]
            //   47                   | inc                 edi
            //   88458f               | mov                 byte ptr [ebp - 0x71], al
            //   84c0                 | test                al, al
            //   0f84b8000000         | je                  0xbe

        $sequence_3 = { e9???????? 399d70ffffff 7408 57 e8???????? eb0c ff750c }
            // n = 7, score = 500
            //   e9????????           |                     
            //   399d70ffffff         | cmp                 dword ptr [ebp - 0x90], ebx
            //   7408                 | je                  0xa
            //   57                   | push                edi
            //   e8????????           |                     
            //   eb0c                 | jmp                 0xe
            //   ff750c               | push                dword ptr [ebp + 0xc]

        $sequence_4 = { dc65dc 51 51 dd1c24 e8???????? dd45ec e9???????? }
            // n = 7, score = 500
            //   dc65dc               | fsub                qword ptr [ebp - 0x24]
            //   51                   | push                ecx
            //   51                   | push                ecx
            //   dd1c24               | fstp                qword ptr [esp]
            //   e8????????           |                     
            //   dd45ec               | fld                 qword ptr [ebp - 0x14]
            //   e9????????           |                     

        $sequence_5 = { ff7008 8b5d08 57 ff7510 68???????? e8???????? 83c410 }
            // n = 7, score = 500
            //   ff7008               | push                dword ptr [eax + 8]
            //   8b5d08               | mov                 ebx, dword ptr [ebp + 8]
            //   57                   | push                edi
            //   ff7510               | push                dword ptr [ebp + 0x10]
            //   68????????           |                     
            //   e8????????           |                     
            //   83c410               | add                 esp, 0x10

        $sequence_6 = { eb10 e8???????? 8b450c c700???????? 6afe 5f 8bde }
            // n = 7, score = 500
            //   eb10                 | jmp                 0x12
            //   e8????????           |                     
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   c700????????         |                     
            //   6afe                 | push                -2
            //   5f                   | pop                 edi
            //   8bde                 | mov                 ebx, esi

        $sequence_7 = { eb02 33c0 c1e004 8d8fdc000000 3301 83e010 3101 }
            // n = 7, score = 500
            //   eb02                 | jmp                 4
            //   33c0                 | xor                 eax, eax
            //   c1e004               | shl                 eax, 4
            //   8d8fdc000000         | lea                 ecx, [edi + 0xdc]
            //   3301                 | xor                 eax, dword ptr [ecx]
            //   83e010               | and                 eax, 0x10
            //   3101                 | xor                 dword ptr [ecx], eax

        $sequence_8 = { e9???????? 8d45d8 68???????? 50 e8???????? 59 59 }
            // n = 7, score = 500
            //   e9????????           |                     
            //   8d45d8               | lea                 eax, [ebp - 0x28]
            //   68????????           |                     
            //   50                   | push                eax
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx

        $sequence_9 = { ff7704 8b75f8 ff37 68???????? e8???????? 8b7f08 83c40c }
            // n = 7, score = 500
            //   ff7704               | push                dword ptr [edi + 4]
            //   8b75f8               | mov                 esi, dword ptr [ebp - 8]
            //   ff37                 | push                dword ptr [edi]
            //   68????????           |                     
            //   e8????????           |                     
            //   8b7f08               | mov                 edi, dword ptr [edi + 8]
            //   83c40c               | add                 esp, 0xc

    condition:
        7 of them and filesize < 5275648
}