rule win_badcall_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.badcall."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.badcall"
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
        $sequence_0 = { a3???????? a1???????? 50 c705????????04000000 }
            // n = 4, score = 300
            //   a3????????           |                     
            //   a1????????           |                     
            //   50                   | push                eax
            //   c705????????04000000     |     

        $sequence_1 = { c705????????01000000 a1???????? 68???????? 50 }
            // n = 4, score = 300
            //   c705????????01000000     |     
            //   a1????????           |                     
            //   68????????           |                     
            //   50                   | push                eax

        $sequence_2 = { 50 c705????????04000000 ff15???????? c20400 a1???????? }
            // n = 5, score = 300
            //   50                   | push                eax
            //   c705????????04000000     |     
            //   ff15????????         |                     
            //   c20400               | ret                 4
            //   a1????????           |                     

        $sequence_3 = { 8b442404 48 7455 48 }
            // n = 4, score = 300
            //   8b442404             | mov                 eax, dword ptr [esp + 4]
            //   48                   | dec                 eax
            //   7455                 | je                  0x57
            //   48                   | dec                 eax

        $sequence_4 = { 0bc8 6a16 6a00 890e 57 56 8bcb }
            // n = 7, score = 300
            //   0bc8                 | or                  ecx, eax
            //   6a16                 | push                0x16
            //   6a00                 | push                0
            //   890e                 | mov                 dword ptr [esi], ecx
            //   57                   | push                edi
            //   56                   | push                esi
            //   8bcb                 | mov                 ecx, ebx

        $sequence_5 = { e8???????? 83c408 8bce 6a17 6a01 }
            // n = 5, score = 300
            //   e8????????           |                     
            //   83c408               | add                 esp, 8
            //   8bce                 | mov                 ecx, esi
            //   6a17                 | push                0x17
            //   6a01                 | push                1

        $sequence_6 = { 6a17 6a01 57 53 }
            // n = 4, score = 300
            //   6a17                 | push                0x17
            //   6a01                 | push                1
            //   57                   | push                edi
            //   53                   | push                ebx

        $sequence_7 = { 7557 33c0 68???????? a3???????? a3???????? a3???????? a1???????? }
            // n = 7, score = 300
            //   7557                 | jne                 0x59
            //   33c0                 | xor                 eax, eax
            //   68????????           |                     
            //   a3????????           |                     
            //   a3????????           |                     
            //   a3????????           |                     
            //   a1????????           |                     

        $sequence_8 = { ff15???????? c20400 c705????????01000000 a1???????? }
            // n = 4, score = 300
            //   ff15????????         |                     
            //   c20400               | ret                 4
            //   c705????????01000000     |     
            //   a1????????           |                     

        $sequence_9 = { 6a00 50 68???????? 6a00 6a00 ffd6 6aff }
            // n = 7, score = 300
            //   6a00                 | push                0
            //   50                   | push                eax
            //   68????????           |                     
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   ffd6                 | call                esi
            //   6aff                 | push                -1

        $sequence_10 = { 51 6a01 8d542420 53 52 50 ff15???????? }
            // n = 7, score = 300
            //   51                   | push                ecx
            //   6a01                 | push                1
            //   8d542420             | lea                 edx, [esp + 0x20]
            //   53                   | push                ebx
            //   52                   | push                edx
            //   50                   | push                eax
            //   ff15????????         |                     

        $sequence_11 = { c744241810000000 e8???????? 50 ff15???????? 8bf0 83feff }
            // n = 6, score = 300
            //   c744241810000000     | mov                 dword ptr [esp + 0x18], 0x10
            //   e8????????           |                     
            //   50                   | push                eax
            //   ff15????????         |                     
            //   8bf0                 | mov                 esi, eax
            //   83feff               | cmp                 esi, -1

        $sequence_12 = { 7455 48 7434 83e803 }
            // n = 4, score = 300
            //   7455                 | je                  0x57
            //   48                   | dec                 eax
            //   7434                 | je                  0x36
            //   83e803               | sub                 eax, 3

        $sequence_13 = { 83feff 7450 6a14 6a40 ffd3 8930 }
            // n = 6, score = 300
            //   83feff               | cmp                 esi, -1
            //   7450                 | je                  0x52
            //   6a14                 | push                0x14
            //   6a40                 | push                0x40
            //   ffd3                 | call                ebx
            //   8930                 | mov                 dword ptr [eax], esi

        $sequence_14 = { 7434 83e803 7557 33c0 }
            // n = 4, score = 300
            //   7434                 | je                  0x36
            //   83e803               | sub                 eax, 3
            //   7557                 | jne                 0x59
            //   33c0                 | xor                 eax, eax

        $sequence_15 = { 7415 8b542408 8b0e 8d44240c 52 50 }
            // n = 6, score = 300
            //   7415                 | je                  0x17
            //   8b542408             | mov                 edx, dword ptr [esp + 8]
            //   8b0e                 | mov                 ecx, dword ptr [esi]
            //   8d44240c             | lea                 eax, [esp + 0xc]
            //   52                   | push                edx
            //   50                   | push                eax

    condition:
        7 of them and filesize < 483328
}