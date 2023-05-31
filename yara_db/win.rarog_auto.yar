rule win_rarog_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.rarog."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rarog"
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
        $sequence_0 = { 33db 68f4010000 8985c4fdffff 899dbcfdffff 8d85f8fdffff 53 }
            // n = 6, score = 100
            //   33db                 | xor                 ebx, ebx
            //   68f4010000           | push                0x1f4
            //   8985c4fdffff         | mov                 dword ptr [ebp - 0x23c], eax
            //   899dbcfdffff         | mov                 dword ptr [ebp - 0x244], ebx
            //   8d85f8fdffff         | lea                 eax, [ebp - 0x208]
            //   53                   | push                ebx

        $sequence_1 = { e8???????? 8bf0 59 89b558ffffff 3bf3 0f84a8000000 }
            // n = 6, score = 100
            //   e8????????           |                     
            //   8bf0                 | mov                 esi, eax
            //   59                   | pop                 ecx
            //   89b558ffffff         | mov                 dword ptr [ebp - 0xa8], esi
            //   3bf3                 | cmp                 esi, ebx
            //   0f84a8000000         | je                  0xae

        $sequence_2 = { 83611000 89a578fbffff c741140f000000 68???????? c60100 e8???????? e8???????? }
            // n = 7, score = 100
            //   83611000             | and                 dword ptr [ecx + 0x10], 0
            //   89a578fbffff         | mov                 dword ptr [ebp - 0x488], esp
            //   c741140f000000       | mov                 dword ptr [ecx + 0x14], 0xf
            //   68????????           |                     
            //   c60100               | mov                 byte ptr [ecx], 0
            //   e8????????           |                     
            //   e8????????           |                     

        $sequence_3 = { e8???????? 8bf8 8db5dcfbffff c645fc27 e8???????? 50 8d85f8fbffff }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax
            //   8db5dcfbffff         | lea                 esi, [ebp - 0x424]
            //   c645fc27             | mov                 byte ptr [ebp - 4], 0x27
            //   e8????????           |                     
            //   50                   | push                eax
            //   8d85f8fbffff         | lea                 eax, [ebp - 0x408]

        $sequence_4 = { 56 ff15???????? 56 ff15???????? 8d85e4fdffff 50 8db5c8fdffff }
            // n = 7, score = 100
            //   56                   | push                esi
            //   ff15????????         |                     
            //   56                   | push                esi
            //   ff15????????         |                     
            //   8d85e4fdffff         | lea                 eax, [ebp - 0x21c]
            //   50                   | push                eax
            //   8db5c8fdffff         | lea                 esi, [ebp - 0x238]

        $sequence_5 = { 53 46 56 8d4d08 e8???????? 53 56 }
            // n = 7, score = 100
            //   53                   | push                ebx
            //   46                   | inc                 esi
            //   56                   | push                esi
            //   8d4d08               | lea                 ecx, [ebp + 8]
            //   e8????????           |                     
            //   53                   | push                ebx
            //   56                   | push                esi

        $sequence_6 = { 0f8412000000 83a544fffffffe 8b8d50ffffff e9???????? c3 8d4dd4 e9???????? }
            // n = 7, score = 100
            //   0f8412000000         | je                  0x18
            //   83a544fffffffe       | and                 dword ptr [ebp - 0xbc], 0xfffffffe
            //   8b8d50ffffff         | mov                 ecx, dword ptr [ebp - 0xb0]
            //   e9????????           |                     
            //   c3                   | ret                 
            //   8d4dd4               | lea                 ecx, [ebp - 0x2c]
            //   e9????????           |                     

        $sequence_7 = { 8d8d60feffff e8???????? 53 57 8d8d0cfeffff e8???????? 53 }
            // n = 7, score = 100
            //   8d8d60feffff         | lea                 ecx, [ebp - 0x1a0]
            //   e8????????           |                     
            //   53                   | push                ebx
            //   57                   | push                edi
            //   8d8d0cfeffff         | lea                 ecx, [ebp - 0x1f4]
            //   e8????????           |                     
            //   53                   | push                ebx

        $sequence_8 = { 8d4db4 c645fc00 e8???????? 68???????? 83ec1c c645fc04 8d45b4 }
            // n = 7, score = 100
            //   8d4db4               | lea                 ecx, [ebp - 0x4c]
            //   c645fc00             | mov                 byte ptr [ebp - 4], 0
            //   e8????????           |                     
            //   68????????           |                     
            //   83ec1c               | sub                 esp, 0x1c
            //   c645fc04             | mov                 byte ptr [ebp - 4], 4
            //   8d45b4               | lea                 eax, [ebp - 0x4c]

        $sequence_9 = { c746140f000000 6a08 8bce c60600 e8???????? 84c0 7424 }
            // n = 7, score = 100
            //   c746140f000000       | mov                 dword ptr [esi + 0x14], 0xf
            //   6a08                 | push                8
            //   8bce                 | mov                 ecx, esi
            //   c60600               | mov                 byte ptr [esi], 0
            //   e8????????           |                     
            //   84c0                 | test                al, al
            //   7424                 | je                  0x26

    condition:
        7 of them and filesize < 598016
}