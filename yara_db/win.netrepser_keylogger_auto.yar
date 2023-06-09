rule win_netrepser_keylogger_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.netrepser_keylogger."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.netrepser_keylogger"
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
        $sequence_0 = { 7311 0fb655ef 8b45e0 0fb608 03d1 8855ef }
            // n = 6, score = 200
            //   7311                 | jae                 0x13
            //   0fb655ef             | movzx               edx, byte ptr [ebp - 0x11]
            //   8b45e0               | mov                 eax, dword ptr [ebp - 0x20]
            //   0fb608               | movzx               ecx, byte ptr [eax]
            //   03d1                 | add                 edx, ecx
            //   8855ef               | mov                 byte ptr [ebp - 0x11], dl

        $sequence_1 = { c645e969 c645ea6e c645eb64 c645ec43 c645ed65 }
            // n = 5, score = 200
            //   c645e969             | mov                 byte ptr [ebp - 0x17], 0x69
            //   c645ea6e             | mov                 byte ptr [ebp - 0x16], 0x6e
            //   c645eb64             | mov                 byte ptr [ebp - 0x15], 0x64
            //   c645ec43             | mov                 byte ptr [ebp - 0x14], 0x43
            //   c645ed65             | mov                 byte ptr [ebp - 0x13], 0x65

        $sequence_2 = { c645f874 c645f961 c645fa74 c645fb65 c645fc00 8d45ec }
            // n = 6, score = 200
            //   c645f874             | mov                 byte ptr [ebp - 8], 0x74
            //   c645f961             | mov                 byte ptr [ebp - 7], 0x61
            //   c645fa74             | mov                 byte ptr [ebp - 6], 0x74
            //   c645fb65             | mov                 byte ptr [ebp - 5], 0x65
            //   c645fc00             | mov                 byte ptr [ebp - 4], 0
            //   8d45ec               | lea                 eax, [ebp - 0x14]

        $sequence_3 = { 751a 8b45f4 6bc00c 837c05b005 750d }
            // n = 5, score = 200
            //   751a                 | jne                 0x1c
            //   8b45f4               | mov                 eax, dword ptr [ebp - 0xc]
            //   6bc00c               | imul                eax, eax, 0xc
            //   837c05b005           | cmp                 dword ptr [ebp + eax - 0x50], 5
            //   750d                 | jne                 0xf

        $sequence_4 = { c745f800000000 c745f402000000 c745f000000000 c745d001000000 8d45f0 8945d4 }
            // n = 6, score = 200
            //   c745f800000000       | mov                 dword ptr [ebp - 8], 0
            //   c745f402000000       | mov                 dword ptr [ebp - 0xc], 2
            //   c745f000000000       | mov                 dword ptr [ebp - 0x10], 0
            //   c745d001000000       | mov                 dword ptr [ebp - 0x30], 1
            //   8d45f0               | lea                 eax, [ebp - 0x10]
            //   8945d4               | mov                 dword ptr [ebp - 0x2c], eax

        $sequence_5 = { 51 e8???????? 83c404 e9???????? 833d????????00 7409 833d????????00 }
            // n = 7, score = 200
            //   51                   | push                ecx
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   e9????????           |                     
            //   833d????????00       |                     
            //   7409                 | je                  0xb
            //   833d????????00       |                     

        $sequence_6 = { c645ef00 c645f043 c645f165 c645f272 c645f374 }
            // n = 5, score = 200
            //   c645ef00             | mov                 byte ptr [ebp - 0x11], 0
            //   c645f043             | mov                 byte ptr [ebp - 0x10], 0x43
            //   c645f165             | mov                 byte ptr [ebp - 0xf], 0x65
            //   c645f272             | mov                 byte ptr [ebp - 0xe], 0x72
            //   c645f374             | mov                 byte ptr [ebp - 0xd], 0x74

        $sequence_7 = { 03c1 99 b918000000 f7f9 83c241 8b4508 }
            // n = 6, score = 200
            //   03c1                 | add                 eax, ecx
            //   99                   | cdq                 
            //   b918000000           | mov                 ecx, 0x18
            //   f7f9                 | idiv                ecx
            //   83c241               | add                 edx, 0x41
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]

        $sequence_8 = { e8???????? 8b8c241c010000 83c414 5e 33cc e8???????? 81c408010000 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   8b8c241c010000       | mov                 ecx, dword ptr [esp + 0x11c]
            //   83c414               | add                 esp, 0x14
            //   5e                   | pop                 esi
            //   33cc                 | xor                 ecx, esp
            //   e8????????           |                     
            //   81c408010000         | add                 esp, 0x108

        $sequence_9 = { 7546 c745c400000000 33c0 8945c8 8945cc 8945d0 }
            // n = 6, score = 100
            //   7546                 | jne                 0x48
            //   c745c400000000       | mov                 dword ptr [ebp - 0x3c], 0
            //   33c0                 | xor                 eax, eax
            //   8945c8               | mov                 dword ptr [ebp - 0x38], eax
            //   8945cc               | mov                 dword ptr [ebp - 0x34], eax
            //   8945d0               | mov                 dword ptr [ebp - 0x30], eax

        $sequence_10 = { 68???????? 68???????? e8???????? 83c40c e9???????? 8bfb }
            // n = 6, score = 100
            //   68????????           |                     
            //   68????????           |                     
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   e9????????           |                     
            //   8bfb                 | mov                 edi, ebx

        $sequence_11 = { 83c40c 33c0 5b 8b8c2498000000 33cc }
            // n = 5, score = 100
            //   83c40c               | add                 esp, 0xc
            //   33c0                 | xor                 eax, eax
            //   5b                   | pop                 ebx
            //   8b8c2498000000       | mov                 ecx, dword ptr [esp + 0x98]
            //   33cc                 | xor                 ecx, esp

        $sequence_12 = { 5d 83c428 c3 5e 33c0 }
            // n = 5, score = 100
            //   5d                   | pop                 ebp
            //   83c428               | add                 esp, 0x28
            //   c3                   | ret                 
            //   5e                   | pop                 esi
            //   33c0                 | xor                 eax, eax

        $sequence_13 = { 7524 55 50 e8???????? 8b0d???????? 83c408 }
            // n = 6, score = 100
            //   7524                 | jne                 0x26
            //   55                   | push                ebp
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b0d????????         |                     
            //   83c408               | add                 esp, 8

        $sequence_14 = { ff15???????? a3???????? 56 ffd0 8b4c2440 }
            // n = 5, score = 100
            //   ff15????????         |                     
            //   a3????????           |                     
            //   56                   | push                esi
            //   ffd0                 | call                eax
            //   8b4c2440             | mov                 ecx, dword ptr [esp + 0x40]

        $sequence_15 = { 7544 33c0 8d542414 52 c744241800000000 }
            // n = 5, score = 100
            //   7544                 | jne                 0x46
            //   33c0                 | xor                 eax, eax
            //   8d542414             | lea                 edx, [esp + 0x14]
            //   52                   | push                edx
            //   c744241800000000     | mov                 dword ptr [esp + 0x18], 0

    condition:
        7 of them and filesize < 303104
}