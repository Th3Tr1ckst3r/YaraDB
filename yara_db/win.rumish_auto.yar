rule win_rumish_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.rumish."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rumish"
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
        $sequence_0 = { 3955b4 7d1c 8b45f0 83c001 50 8b4db4 51 }
            // n = 7, score = 100
            //   3955b4               | cmp                 dword ptr [ebp - 0x4c], edx
            //   7d1c                 | jge                 0x1e
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]
            //   83c001               | add                 eax, 1
            //   50                   | push                eax
            //   8b4db4               | mov                 ecx, dword ptr [ebp - 0x4c]
            //   51                   | push                ecx

        $sequence_1 = { 8b4dd4 8b5110 8b4510 8d0c82 8b55d4 894a10 8d45e0 }
            // n = 7, score = 100
            //   8b4dd4               | mov                 ecx, dword ptr [ebp - 0x2c]
            //   8b5110               | mov                 edx, dword ptr [ecx + 0x10]
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   8d0c82               | lea                 ecx, [edx + eax*4]
            //   8b55d4               | mov                 edx, dword ptr [ebp - 0x2c]
            //   894a10               | mov                 dword ptr [edx + 0x10], ecx
            //   8d45e0               | lea                 eax, [ebp - 0x20]

        $sequence_2 = { 8b8df8feffff 83c101 898de0feffff 8d8d18ffffff e8???????? 83e801 898530ffffff }
            // n = 7, score = 100
            //   8b8df8feffff         | mov                 ecx, dword ptr [ebp - 0x108]
            //   83c101               | add                 ecx, 1
            //   898de0feffff         | mov                 dword ptr [ebp - 0x120], ecx
            //   8d8d18ffffff         | lea                 ecx, [ebp - 0xe8]
            //   e8????????           |                     
            //   83e801               | sub                 eax, 1
            //   898530ffffff         | mov                 dword ptr [ebp - 0xd0], eax

        $sequence_3 = { 8b8db8feffff 898df0fdffff 81bdf0fdffff00010000 7733 81bdf0fdffff00010000 0f8497000000 83bdf0fdffff20 }
            // n = 7, score = 100
            //   8b8db8feffff         | mov                 ecx, dword ptr [ebp - 0x148]
            //   898df0fdffff         | mov                 dword ptr [ebp - 0x210], ecx
            //   81bdf0fdffff00010000     | cmp    dword ptr [ebp - 0x210], 0x100
            //   7733                 | ja                  0x35
            //   81bdf0fdffff00010000     | cmp    dword ptr [ebp - 0x210], 0x100
            //   0f8497000000         | je                  0x9d
            //   83bdf0fdffff20       | cmp                 dword ptr [ebp - 0x210], 0x20

        $sequence_4 = { e8???????? 8b16 8910 8b45c4 50 8d4dac e8???????? }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8b16                 | mov                 edx, dword ptr [esi]
            //   8910                 | mov                 dword ptr [eax], edx
            //   8b45c4               | mov                 eax, dword ptr [ebp - 0x3c]
            //   50                   | push                eax
            //   8d4dac               | lea                 ecx, [ebp - 0x54]
            //   e8????????           |                     

        $sequence_5 = { 6bd206 035510 52 8b45fc 8d8cc564ffffff 51 }
            // n = 6, score = 100
            //   6bd206               | imul                edx, edx, 6
            //   035510               | add                 edx, dword ptr [ebp + 0x10]
            //   52                   | push                edx
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   8d8cc564ffffff       | lea                 ecx, [ebp + eax*8 - 0x9c]
            //   51                   | push                ecx

        $sequence_6 = { dc0d???????? dc35???????? dc05???????? e8???????? 8945ec e8???????? 898518feffff }
            // n = 7, score = 100
            //   dc0d????????         |                     
            //   dc35????????         |                     
            //   dc05????????         |                     
            //   e8????????           |                     
            //   8945ec               | mov                 dword ptr [ebp - 0x14], eax
            //   e8????????           |                     
            //   898518feffff         | mov                 dword ptr [ebp - 0x1e8], eax

        $sequence_7 = { e8???????? 58 33c4 8903 83c304 83adc8feffff01 83bdc8feffff00 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   58                   | pop                 eax
            //   33c4                 | xor                 eax, esp
            //   8903                 | mov                 dword ptr [ebx], eax
            //   83c304               | add                 ebx, 4
            //   83adc8feffff01       | sub                 dword ptr [ebp - 0x138], 1
            //   83bdc8feffff00       | cmp                 dword ptr [ebp - 0x138], 0

        $sequence_8 = { 8d8d00feffff e8???????? 50 e8???????? 898518feffff 83bd18feffff00 7411 }
            // n = 7, score = 100
            //   8d8d00feffff         | lea                 ecx, [ebp - 0x200]
            //   e8????????           |                     
            //   50                   | push                eax
            //   e8????????           |                     
            //   898518feffff         | mov                 dword ptr [ebp - 0x1e8], eax
            //   83bd18feffff00       | cmp                 dword ptr [ebp - 0x1e8], 0
            //   7411                 | je                  0x13

        $sequence_9 = { db45f4 d9e8 dec9 83ec08 dd1c24 dd5de4 e8???????? }
            // n = 7, score = 100
            //   db45f4               | fild                dword ptr [ebp - 0xc]
            //   d9e8                 | fld1                
            //   dec9                 | fmulp               st(1)
            //   83ec08               | sub                 esp, 8
            //   dd1c24               | fstp                qword ptr [esp]
            //   dd5de4               | fstp                qword ptr [ebp - 0x1c]
            //   e8????????           |                     

    condition:
        7 of them and filesize < 770048
}