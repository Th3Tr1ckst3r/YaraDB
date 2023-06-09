rule win_pykspa_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.pykspa."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.pykspa"
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
        $sequence_0 = { 50 ff15???????? 50 8d8534f9ffff 50 ff75f8 ff15???????? }
            // n = 7, score = 100
            //   50                   | push                eax
            //   ff15????????         |                     
            //   50                   | push                eax
            //   8d8534f9ffff         | lea                 eax, [ebp - 0x6cc]
            //   50                   | push                eax
            //   ff75f8               | push                dword ptr [ebp - 8]
            //   ff15????????         |                     

        $sequence_1 = { 56 50 e8???????? 8b4510 8b7d18 8b4d14 8945d8 }
            // n = 7, score = 100
            //   56                   | push                esi
            //   50                   | push                eax
            //   e8????????           |                     
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   8b7d18               | mov                 edi, dword ptr [ebp + 0x18]
            //   8b4d14               | mov                 ecx, dword ptr [ebp + 0x14]
            //   8945d8               | mov                 dword ptr [ebp - 0x28], eax

        $sequence_2 = { c9 c3 55 8bec 81ec48030000 53 57 }
            // n = 7, score = 100
            //   c9                   | leave               
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   81ec48030000         | sub                 esp, 0x348
            //   53                   | push                ebx
            //   57                   | push                edi

        $sequence_3 = { 33c0 e9???????? 56 c60000 e8???????? 8b7d64 884571 }
            // n = 7, score = 100
            //   33c0                 | xor                 eax, eax
            //   e9????????           |                     
            //   56                   | push                esi
            //   c60000               | mov                 byte ptr [eax], 0
            //   e8????????           |                     
            //   8b7d64               | mov                 edi, dword ptr [ebp + 0x64]
            //   884571               | mov                 byte ptr [ebp + 0x71], al

        $sequence_4 = { 8b35???????? 6a32 ffd6 e8???????? 6a32 ffd6 ff75f0 }
            // n = 7, score = 100
            //   8b35????????         |                     
            //   6a32                 | push                0x32
            //   ffd6                 | call                esi
            //   e8????????           |                     
            //   6a32                 | push                0x32
            //   ffd6                 | call                esi
            //   ff75f0               | push                dword ptr [ebp - 0x10]

        $sequence_5 = { 0f84c3000000 68???????? ff7710 e8???????? 85c0 59 59 }
            // n = 7, score = 100
            //   0f84c3000000         | je                  0xc9
            //   68????????           |                     
            //   ff7710               | push                dword ptr [edi + 0x10]
            //   e8????????           |                     
            //   85c0                 | test                eax, eax
            //   59                   | pop                 ecx
            //   59                   | pop                 ecx

        $sequence_6 = { c9 c3 55 8bec 83ec38 803d????????00 56 }
            // n = 7, score = 100
            //   c9                   | leave               
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   83ec38               | sub                 esp, 0x38
            //   803d????????00       |                     
            //   56                   | push                esi

        $sequence_7 = { 50 ffd7 85c0 7517 837dfc01 7c11 8d8558f4ffff }
            // n = 7, score = 100
            //   50                   | push                eax
            //   ffd7                 | call                edi
            //   85c0                 | test                eax, eax
            //   7517                 | jne                 0x19
            //   837dfc01             | cmp                 dword ptr [ebp - 4], 1
            //   7c11                 | jl                  0x13
            //   8d8558f4ffff         | lea                 eax, [ebp - 0xba8]

        $sequence_8 = { ebec 55 8bec b804200000 e8???????? 53 56 }
            // n = 7, score = 100
            //   ebec                 | jmp                 0xffffffee
            //   55                   | push                ebp
            //   8bec                 | mov                 ebp, esp
            //   b804200000           | mov                 eax, 0x2004
            //   e8????????           |                     
            //   53                   | push                ebx
            //   56                   | push                esi

        $sequence_9 = { 6a04 53 53 6800000040 ff750c ffd6 }
            // n = 6, score = 100
            //   6a04                 | push                4
            //   53                   | push                ebx
            //   53                   | push                ebx
            //   6800000040           | push                0x40000000
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   ffd6                 | call                esi

    condition:
        7 of them and filesize < 835584
}