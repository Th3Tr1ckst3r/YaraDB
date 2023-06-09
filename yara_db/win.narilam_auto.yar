rule win_narilam_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.narilam."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.narilam"
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
        $sequence_0 = { e8???????? 68???????? ff33 68???????? 8bc3 ba03000000 e8???????? }
            // n = 7, score = 100
            //   e8????????           |                     
            //   68????????           |                     
            //   ff33                 | push                dword ptr [ebx]
            //   68????????           |                     
            //   8bc3                 | mov                 eax, ebx
            //   ba03000000           | mov                 edx, 3
            //   e8????????           |                     

        $sequence_1 = { 8d9558ffffff 8bc3 e8???????? 8b8558ffffff e8???????? 59 55 }
            // n = 7, score = 100
            //   8d9558ffffff         | lea                 edx, [ebp - 0xa8]
            //   8bc3                 | mov                 eax, ebx
            //   e8????????           |                     
            //   8b8558ffffff         | mov                 eax, dword ptr [ebp - 0xa8]
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   55                   | push                ebp

        $sequence_2 = { 648920 66813b0001 752d 8d45fc 8bd3 e8???????? 8d45fc }
            // n = 7, score = 100
            //   648920               | mov                 dword ptr fs:[eax], esp
            //   66813b0001           | cmp                 word ptr [ebx], 0x100
            //   752d                 | jne                 0x2f
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   8bd3                 | mov                 edx, ebx
            //   e8????????           |                     
            //   8d45fc               | lea                 eax, [ebp - 4]

        $sequence_3 = { ff4368 8bc3 e8???????? 5b c3 ff4368 5b }
            // n = 7, score = 100
            //   ff4368               | inc                 dword ptr [ebx + 0x68]
            //   8bc3                 | mov                 eax, ebx
            //   e8????????           |                     
            //   5b                   | pop                 ebx
            //   c3                   | ret                 
            //   ff4368               | inc                 dword ptr [ebx + 0x68]
            //   5b                   | pop                 ebx

        $sequence_4 = { 85c0 741d 8b5508 8b52fc 8b5248 85d2 7410 }
            // n = 7, score = 100
            //   85c0                 | test                eax, eax
            //   741d                 | je                  0x1f
            //   8b5508               | mov                 edx, dword ptr [ebp + 8]
            //   8b52fc               | mov                 edx, dword ptr [edx - 4]
            //   8b5248               | mov                 edx, dword ptr [edx + 0x48]
            //   85d2                 | test                edx, edx
            //   7410                 | je                  0x12

        $sequence_5 = { b8???????? e8???????? 66c745e80800 33d2 8b45fc e8???????? 8345f404 }
            // n = 7, score = 100
            //   b8????????           |                     
            //   e8????????           |                     
            //   66c745e80800         | mov                 word ptr [ebp - 0x18], 8
            //   33d2                 | xor                 edx, edx
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   e8????????           |                     
            //   8345f404             | add                 dword ptr [ebp - 0xc], 4

        $sequence_6 = { 83f803 0f94c2 83e201 52 ff8df0fdffff 8d855cfeffff ba02000000 }
            // n = 7, score = 100
            //   83f803               | cmp                 eax, 3
            //   0f94c2               | sete                dl
            //   83e201               | and                 edx, 1
            //   52                   | push                edx
            //   ff8df0fdffff         | dec                 dword ptr [ebp - 0x210]
            //   8d855cfeffff         | lea                 eax, [ebp - 0x1a4]
            //   ba02000000           | mov                 edx, 2

        $sequence_7 = { 8b85fcfdffff 8b18 ff530c 8d45d0 50 ba???????? 8d45cc }
            // n = 7, score = 100
            //   8b85fcfdffff         | mov                 eax, dword ptr [ebp - 0x204]
            //   8b18                 | mov                 ebx, dword ptr [eax]
            //   ff530c               | call                dword ptr [ebx + 0xc]
            //   8d45d0               | lea                 eax, [ebp - 0x30]
            //   50                   | push                eax
            //   ba????????           |                     
            //   8d45cc               | lea                 eax, [ebp - 0x34]

        $sequence_8 = { 5b 59 5d c20400 55 8bec 8b4510 }
            // n = 7, score = 100
            //   5b                   | pop                 ebx
            //   59                   | pop                 ecx
            //   5d                   | pop                 ebp
            //   c20400               | ret                 4
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]

        $sequence_9 = { ba???????? 8d45dc e8???????? ff852cffffff 8d55dc 8d45fc e8???????? }
            // n = 7, score = 100
            //   ba????????           |                     
            //   8d45dc               | lea                 eax, [ebp - 0x24]
            //   e8????????           |                     
            //   ff852cffffff         | inc                 dword ptr [ebp - 0xd4]
            //   8d55dc               | lea                 edx, [ebp - 0x24]
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   e8????????           |                     

    condition:
        7 of them and filesize < 3325952
}