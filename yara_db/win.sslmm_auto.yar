rule win_sslmm_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.sslmm."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.sslmm"
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
        $sequence_0 = { 8b442450 50 e8???????? 8b4c2470 }
            // n = 4, score = 400
            //   8b442450             | mov                 eax, dword ptr [esp + 0x50]
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b4c2470             | mov                 ecx, dword ptr [esp + 0x70]

        $sequence_1 = { 8b9370010000 8944245c 8d44245c 55 89442448 8d83e4000000 51 }
            // n = 7, score = 400
            //   8b9370010000         | mov                 edx, dword ptr [ebx + 0x170]
            //   8944245c             | mov                 dword ptr [esp + 0x5c], eax
            //   8d44245c             | lea                 eax, [esp + 0x5c]
            //   55                   | push                ebp
            //   89442448             | mov                 dword ptr [esp + 0x48], eax
            //   8d83e4000000         | lea                 eax, [ebx + 0xe4]
            //   51                   | push                ecx

        $sequence_2 = { 51 56 51 894c2454 ff15???????? 85c0 0f8423010000 }
            // n = 7, score = 400
            //   51                   | push                ecx
            //   56                   | push                esi
            //   51                   | push                ecx
            //   894c2454             | mov                 dword ptr [esp + 0x54], ecx
            //   ff15????????         |                     
            //   85c0                 | test                eax, eax
            //   0f8423010000         | je                  0x129

        $sequence_3 = { 89742404 c706???????? 8b8edc000000 8d86dc000000 85c9 c744241000000000 7411 }
            // n = 7, score = 400
            //   89742404             | mov                 dword ptr [esp + 4], esi
            //   c706????????         |                     
            //   8b8edc000000         | mov                 ecx, dword ptr [esi + 0xdc]
            //   8d86dc000000         | lea                 eax, [esi + 0xdc]
            //   85c9                 | test                ecx, ecx
            //   c744241000000000     | mov                 dword ptr [esp + 0x10], 0
            //   7411                 | je                  0x13

        $sequence_4 = { 85c0 7509 32c0 81c490010000 c3 }
            // n = 5, score = 400
            //   85c0                 | test                eax, eax
            //   7509                 | jne                 0xb
            //   32c0                 | xor                 al, al
            //   81c490010000         | add                 esp, 0x190
            //   c3                   | ret                 

        $sequence_5 = { 7e3a 8d41ff 85c0 7c33 803c105c 7405 48 }
            // n = 7, score = 400
            //   7e3a                 | jle                 0x3c
            //   8d41ff               | lea                 eax, [ecx - 1]
            //   85c0                 | test                eax, eax
            //   7c33                 | jl                  0x35
            //   803c105c             | cmp                 byte ptr [eax + edx], 0x5c
            //   7405                 | je                  7
            //   48                   | dec                 eax

        $sequence_6 = { 6a01 52 ff15???????? 53 898694000000 e8???????? 8b8694000000 }
            // n = 7, score = 400
            //   6a01                 | push                1
            //   52                   | push                edx
            //   ff15????????         |                     
            //   53                   | push                ebx
            //   898694000000         | mov                 dword ptr [esi + 0x94], eax
            //   e8????????           |                     
            //   8b8694000000         | mov                 eax, dword ptr [esi + 0x94]

        $sequence_7 = { c786c800000050000000 89bed4000000 ff96fc000000 8bf8 85ff 7512 5f }
            // n = 7, score = 400
            //   c786c800000050000000     | mov    dword ptr [esi + 0xc8], 0x50
            //   89bed4000000         | mov                 dword ptr [esi + 0xd4], edi
            //   ff96fc000000         | call                dword ptr [esi + 0xfc]
            //   8bf8                 | mov                 edi, eax
            //   85ff                 | test                edi, edi
            //   7512                 | jne                 0x14
            //   5f                   | pop                 edi

        $sequence_8 = { 8d8c2480000000 57 51 57 }
            // n = 4, score = 400
            //   8d8c2480000000       | lea                 ecx, [esp + 0x80]
            //   57                   | push                edi
            //   51                   | push                ecx
            //   57                   | push                edi

        $sequence_9 = { 57 ffd0 8bd8 3bdf 740a 8b542454 8995d0000000 }
            // n = 7, score = 400
            //   57                   | push                edi
            //   ffd0                 | call                eax
            //   8bd8                 | mov                 ebx, eax
            //   3bdf                 | cmp                 ebx, edi
            //   740a                 | je                  0xc
            //   8b542454             | mov                 edx, dword ptr [esp + 0x54]
            //   8995d0000000         | mov                 dword ptr [ebp + 0xd0], edx

    condition:
        7 of them and filesize < 188416
}