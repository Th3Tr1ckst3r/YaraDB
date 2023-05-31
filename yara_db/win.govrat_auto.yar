rule win_govrat_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.govrat."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.govrat"
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
        $sequence_0 = { 8b4508 ff750c ff30 ff15???????? 8b4dfc 8b5514 85c0 }
            // n = 7, score = 200
            //   8b4508               | mov                 eax, dword ptr [ebp + 8]
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   ff30                 | push                dword ptr [eax]
            //   ff15????????         |                     
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]
            //   8b5514               | mov                 edx, dword ptr [ebp + 0x14]
            //   85c0                 | test                eax, eax

        $sequence_1 = { 8b834c190300 8b0485d0264300 e9???????? 8b8b4c190300 }
            // n = 4, score = 200
            //   8b834c190300         | mov                 eax, dword ptr [ebx + 0x3194c]
            //   8b0485d0264300       | mov                 eax, dword ptr [eax*4 + 0x4326d0]
            //   e9????????           |                     
            //   8b8b4c190300         | mov                 ecx, dword ptr [ebx + 0x3194c]

        $sequence_2 = { ff15???????? 66399de4fdffff 754f 8bb570fdffff 68???????? e8???????? e9???????? }
            // n = 7, score = 200
            //   ff15????????         |                     
            //   66399de4fdffff       | cmp                 word ptr [ebp - 0x21c], bx
            //   754f                 | jne                 0x51
            //   8bb570fdffff         | mov                 esi, dword ptr [ebp - 0x290]
            //   68????????           |                     
            //   e8????????           |                     
            //   e9????????           |                     

        $sequence_3 = { 8b476c ff7728 8b08 50 }
            // n = 4, score = 200
            //   8b476c               | mov                 eax, dword ptr [edi + 0x6c]
            //   ff7728               | push                dword ptr [edi + 0x28]
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   50                   | push                eax

        $sequence_4 = { 6a01 6a64 ff15???????? 837d1808 8b4504 7303 8d4504 }
            // n = 7, score = 200
            //   6a01                 | push                1
            //   6a64                 | push                0x64
            //   ff15????????         |                     
            //   837d1808             | cmp                 dword ptr [ebp + 0x18], 8
            //   8b4504               | mov                 eax, dword ptr [ebp + 4]
            //   7303                 | jae                 5
            //   8d4504               | lea                 eax, [ebp + 4]

        $sequence_5 = { 7504 32c0 eb18 8b45f8 3b450c 75f4 }
            // n = 6, score = 200
            //   7504                 | jne                 6
            //   32c0                 | xor                 al, al
            //   eb18                 | jmp                 0x1a
            //   8b45f8               | mov                 eax, dword ptr [ebp - 8]
            //   3b450c               | cmp                 eax, dword ptr [ebp + 0xc]
            //   75f4                 | jne                 0xfffffff6

        $sequence_6 = { 8bec 51 8b450c 8b4d10 6a00 0588130000 }
            // n = 6, score = 200
            //   8bec                 | mov                 ebp, esp
            //   51                   | push                ecx
            //   8b450c               | mov                 eax, dword ptr [ebp + 0xc]
            //   8b4d10               | mov                 ecx, dword ptr [ebp + 0x10]
            //   6a00                 | push                0
            //   0588130000           | add                 eax, 0x1388

        $sequence_7 = { e8???????? 8b08 ff75b4 8b5594 ff7510 8b7d0c 894d28 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   8b08                 | mov                 ecx, dword ptr [eax]
            //   ff75b4               | push                dword ptr [ebp - 0x4c]
            //   8b5594               | mov                 edx, dword ptr [ebp - 0x6c]
            //   ff7510               | push                dword ptr [ebp + 0x10]
            //   8b7d0c               | mov                 edi, dword ptr [ebp + 0xc]
            //   894d28               | mov                 dword ptr [ebp + 0x28], ecx

        $sequence_8 = { 8d856cffffff 50 c68572ffffff01 c68573ffffff01 e8???????? 83c40c 399d6cffffff }
            // n = 7, score = 200
            //   8d856cffffff         | lea                 eax, [ebp - 0x94]
            //   50                   | push                eax
            //   c68572ffffff01       | mov                 byte ptr [ebp - 0x8e], 1
            //   c68573ffffff01       | mov                 byte ptr [ebp - 0x8d], 1
            //   e8????????           |                     
            //   83c40c               | add                 esp, 0xc
            //   399d6cffffff         | cmp                 dword ptr [ebp - 0x94], ebx

        $sequence_9 = { 394f38 0f85a6000000 33c0 eb14 8b4f28 8b573c 03d1 }
            // n = 7, score = 200
            //   394f38               | cmp                 dword ptr [edi + 0x38], ecx
            //   0f85a6000000         | jne                 0xac
            //   33c0                 | xor                 eax, eax
            //   eb14                 | jmp                 0x16
            //   8b4f28               | mov                 ecx, dword ptr [edi + 0x28]
            //   8b573c               | mov                 edx, dword ptr [edi + 0x3c]
            //   03d1                 | add                 edx, ecx

    condition:
        7 of them and filesize < 761856
}