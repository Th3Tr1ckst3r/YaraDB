rule win_rover_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.rover."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.rover"
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
        $sequence_0 = { 50 e8???????? 8b442430 8b542458 2beb 8d4c2801 8b44243c }
            // n = 7, score = 100
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b442430             | mov                 eax, dword ptr [esp + 0x30]
            //   8b542458             | mov                 edx, dword ptr [esp + 0x58]
            //   2beb                 | sub                 ebp, ebx
            //   8d4c2801             | lea                 ecx, [eax + ebp + 1]
            //   8b44243c             | mov                 eax, dword ptr [esp + 0x3c]

        $sequence_1 = { 8b742418 8d5001 8911 83c104 894c242c 803800 0f8549fcffff }
            // n = 7, score = 100
            //   8b742418             | mov                 esi, dword ptr [esp + 0x18]
            //   8d5001               | lea                 edx, [eax + 1]
            //   8911                 | mov                 dword ptr [ecx], edx
            //   83c104               | add                 ecx, 4
            //   894c242c             | mov                 dword ptr [esp + 0x2c], ecx
            //   803800               | cmp                 byte ptr [eax], 0
            //   0f8549fcffff         | jne                 0xfffffc4f

        $sequence_2 = { 50 8d8c2480000000 ff15???????? 50 8d4c2478 c68424e009000003 ff15???????? }
            // n = 7, score = 100
            //   50                   | push                eax
            //   8d8c2480000000       | lea                 ecx, [esp + 0x80]
            //   ff15????????         |                     
            //   50                   | push                eax
            //   8d4c2478             | lea                 ecx, [esp + 0x78]
            //   c68424e009000003     | mov                 byte ptr [esp + 0x9e0], 3
            //   ff15????????         |                     

        $sequence_3 = { 83fe63 750a 68???????? e9???????? 83fe64 750f 68???????? }
            // n = 7, score = 100
            //   83fe63               | cmp                 esi, 0x63
            //   750a                 | jne                 0xc
            //   68????????           |                     
            //   e9????????           |                     
            //   83fe64               | cmp                 esi, 0x64
            //   750f                 | jne                 0x11
            //   68????????           |                     

        $sequence_4 = { 837e1400 7423 8bc6 e8???????? 8bf8 85ff 7431 }
            // n = 7, score = 100
            //   837e1400             | cmp                 dword ptr [esi + 0x14], 0
            //   7423                 | je                  0x25
            //   8bc6                 | mov                 eax, esi
            //   e8????????           |                     
            //   8bf8                 | mov                 edi, eax
            //   85ff                 | test                edi, edi
            //   7431                 | je                  0x33

        $sequence_5 = { 8bf0 85c0 746f 6a3f 50 ffd3 8bf8 }
            // n = 7, score = 100
            //   8bf0                 | mov                 esi, eax
            //   85c0                 | test                eax, eax
            //   746f                 | je                  0x71
            //   6a3f                 | push                0x3f
            //   50                   | push                eax
            //   ffd3                 | call                ebx
            //   8bf8                 | mov                 edi, eax

        $sequence_6 = { 50 51 ffd5 8b4c241c 83c40c 3b4c2414 7409 }
            // n = 7, score = 100
            //   50                   | push                eax
            //   51                   | push                ecx
            //   ffd5                 | call                ebp
            //   8b4c241c             | mov                 ecx, dword ptr [esp + 0x1c]
            //   83c40c               | add                 esp, 0xc
            //   3b4c2414             | cmp                 ecx, dword ptr [esp + 0x14]
            //   7409                 | je                  0xb

        $sequence_7 = { eb7c 8bd5 0b542414 744c 55 68???????? 53 }
            // n = 7, score = 100
            //   eb7c                 | jmp                 0x7e
            //   8bd5                 | mov                 edx, ebp
            //   0b542414             | or                  edx, dword ptr [esp + 0x14]
            //   744c                 | je                  0x4e
            //   55                   | push                ebp
            //   68????????           |                     
            //   53                   | push                ebx

        $sequence_8 = { 81ec14010000 a1???????? 33c4 89842410010000 56 57 6803010000 }
            // n = 7, score = 100
            //   81ec14010000         | sub                 esp, 0x114
            //   a1????????           |                     
            //   33c4                 | xor                 eax, esp
            //   89842410010000       | mov                 dword ptr [esp + 0x110], eax
            //   56                   | push                esi
            //   57                   | push                edi
            //   6803010000           | push                0x103

        $sequence_9 = { 894c2458 8954245c e8???????? 8bf0 8bfa 83feff 7451 }
            // n = 7, score = 100
            //   894c2458             | mov                 dword ptr [esp + 0x58], ecx
            //   8954245c             | mov                 dword ptr [esp + 0x5c], edx
            //   e8????????           |                     
            //   8bf0                 | mov                 esi, eax
            //   8bfa                 | mov                 edi, edx
            //   83feff               | cmp                 esi, -1
            //   7451                 | je                  0x53

    condition:
        7 of them and filesize < 704512
}