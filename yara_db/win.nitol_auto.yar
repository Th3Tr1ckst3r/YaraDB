rule win_nitol_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.nitol."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.nitol"
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
        $sequence_0 = { ff7508 ff15???????? 8b3d???????? 6a04 6800300000 }
            // n = 5, score = 200
            //   ff7508               | push                dword ptr [ebp + 8]
            //   ff15????????         |                     
            //   8b3d????????         |                     
            //   6a04                 | push                4
            //   6800300000           | push                0x3000

        $sequence_1 = { 50 8d8570f9ffff 50 e8???????? 83c414 833d????????01 744a }
            // n = 7, score = 200
            //   50                   | push                eax
            //   8d8570f9ffff         | lea                 eax, [ebp - 0x690]
            //   50                   | push                eax
            //   e8????????           |                     
            //   83c414               | add                 esp, 0x14
            //   833d????????01       |                     
            //   744a                 | je                  0x4c

        $sequence_2 = { 8bf8 8bcf 8b07 ff5068 85c0 8945e8 7457 }
            // n = 7, score = 200
            //   8bf8                 | mov                 edi, eax
            //   8bcf                 | mov                 ecx, edi
            //   8b07                 | mov                 eax, dword ptr [edi]
            //   ff5068               | call                dword ptr [eax + 0x68]
            //   85c0                 | test                eax, eax
            //   8945e8               | mov                 dword ptr [ebp - 0x18], eax
            //   7457                 | je                  0x59

        $sequence_3 = { 83c104 57 55 43 894c2418 8901 ffd6 }
            // n = 7, score = 200
            //   83c104               | add                 ecx, 4
            //   57                   | push                edi
            //   55                   | push                ebp
            //   43                   | inc                 ebx
            //   894c2418             | mov                 dword ptr [esp + 0x18], ecx
            //   8901                 | mov                 dword ptr [ecx], eax
            //   ffd6                 | call                esi

        $sequence_4 = { 8b3d???????? ffd7 6a14 99 59 f7f9 8955e8 }
            // n = 7, score = 200
            //   8b3d????????         |                     
            //   ffd7                 | call                edi
            //   6a14                 | push                0x14
            //   99                   | cdq                 
            //   59                   | pop                 ecx
            //   f7f9                 | idiv                ecx
            //   8955e8               | mov                 dword ptr [ebp - 0x18], edx

        $sequence_5 = { 50 ff15???????? 8b45e8 83c40c 8b04859c704000 53 53 }
            // n = 7, score = 200
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8b45e8               | mov                 eax, dword ptr [ebp - 0x18]
            //   83c40c               | add                 esp, 0xc
            //   8b04859c704000       | mov                 eax, dword ptr [eax*4 + 0x40709c]
            //   53                   | push                ebx
            //   53                   | push                ebx

        $sequence_6 = { 53 53 53 53 50 e8???????? 5f }
            // n = 7, score = 200
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   50                   | push                eax
            //   e8????????           |                     
            //   5f                   | pop                 edi

        $sequence_7 = { 837dec00 75a9 837de800 7585 837de400 0f855bffffff 834dfcff }
            // n = 7, score = 200
            //   837dec00             | cmp                 dword ptr [ebp - 0x14], 0
            //   75a9                 | jne                 0xffffffab
            //   837de800             | cmp                 dword ptr [ebp - 0x18], 0
            //   7585                 | jne                 0xffffff87
            //   837de400             | cmp                 dword ptr [ebp - 0x1c], 0
            //   0f855bffffff         | jne                 0xffffff61
            //   834dfcff             | or                  dword ptr [ebp - 4], 0xffffffff

        $sequence_8 = { 53 ff15???????? e9???????? 6a40 33c0 }
            // n = 5, score = 200
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   e9????????           |                     
            //   6a40                 | push                0x40
            //   33c0                 | xor                 eax, eax

        $sequence_9 = { ffd6 99 b9e8030000 f7f9 8bda 83bd38ffffff01 }
            // n = 6, score = 200
            //   ffd6                 | call                esi
            //   99                   | cdq                 
            //   b9e8030000           | mov                 ecx, 0x3e8
            //   f7f9                 | idiv                ecx
            //   8bda                 | mov                 ebx, edx
            //   83bd38ffffff01       | cmp                 dword ptr [ebp - 0xc8], 1

    condition:
        7 of them and filesize < 139264
}