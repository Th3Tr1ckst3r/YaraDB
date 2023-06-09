rule win_shimrat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.shimrat."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.shimrat"
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
        $sequence_0 = { 8d85b0e7ffff 50 6a03 68???????? ff15???????? }
            // n = 5, score = 100
            //   8d85b0e7ffff         | lea                 eax, [ebp - 0x1850]
            //   50                   | push                eax
            //   6a03                 | push                3
            //   68????????           |                     
            //   ff15????????         |                     

        $sequence_1 = { 6a04 6a00 8d45a8 50 8d4df0 e8???????? 50 }
            // n = 7, score = 100
            //   6a04                 | push                4
            //   6a00                 | push                0
            //   8d45a8               | lea                 eax, [ebp - 0x58]
            //   50                   | push                eax
            //   8d4df0               | lea                 ecx, [ebp - 0x10]
            //   e8????????           |                     
            //   50                   | push                eax

        $sequence_2 = { 68???????? 50 e8???????? 83661c00 59 59 ff15???????? }
            // n = 7, score = 100
            //   68????????           |                     
            //   50                   | push                eax
            //   e8????????           |                     
            //   83661c00             | and                 dword ptr [esi + 0x1c], 0
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx
            //   ff15????????         |                     

        $sequence_3 = { c9 c20c00 6a08 8d4d08 e8???????? 0fbef0 }
            // n = 6, score = 100
            //   c9                   | leave               
            //   c20c00               | ret                 0xc
            //   6a08                 | push                8
            //   8d4d08               | lea                 ecx, [ebp + 8]
            //   e8????????           |                     
            //   0fbef0               | movsx               esi, al

        $sequence_4 = { 8b7510 40 50 891e e8???????? 59 8906 }
            // n = 7, score = 100
            //   8b7510               | mov                 esi, dword ptr [ebp + 0x10]
            //   40                   | inc                 eax
            //   50                   | push                eax
            //   891e                 | mov                 dword ptr [esi], ebx
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   8906                 | mov                 dword ptr [esi], eax

        $sequence_5 = { ff37 ff15???????? 85c0 741b ff37 }
            // n = 5, score = 100
            //   ff37                 | push                dword ptr [edi]
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   741b                 | je                  0x1d
            //   ff37                 | push                dword ptr [edi]

        $sequence_6 = { 0f8512fdffff 83ec0c 8d45f0 8bcc 50 e8???????? }
            // n = 6, score = 100
            //   0f8512fdffff         | jne                 0xfffffd18
            //   83ec0c               | sub                 esp, 0xc
            //   8d45f0               | lea                 eax, [ebp - 0x10]
            //   8bcc                 | mov                 ecx, esp
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_7 = { 83ec30 53 56 57 8bf9 8d4df4 e8???????? }
            // n = 7, score = 100
            //   83ec30               | sub                 esp, 0x30
            //   53                   | push                ebx
            //   56                   | push                esi
            //   57                   | push                edi
            //   8bf9                 | mov                 edi, ecx
            //   8d4df4               | lea                 ecx, [ebp - 0xc]
            //   e8????????           |                     

        $sequence_8 = { e8???????? 8d45d8 50 8bcb e8???????? 50 8d4d08 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8d45d8               | lea                 eax, [ebp - 0x28]
            //   50                   | push                eax
            //   8bcb                 | mov                 ecx, ebx
            //   e8????????           |                     
            //   50                   | push                eax
            //   8d4d08               | lea                 ecx, [ebp + 8]

        $sequence_9 = { ff37 8b3d???????? ffd7 53 }
            // n = 4, score = 100
            //   ff37                 | push                dword ptr [edi]
            //   8b3d????????         |                     
            //   ffd7                 | call                edi
            //   53                   | push                ebx

    condition:
        7 of them and filesize < 65536
}