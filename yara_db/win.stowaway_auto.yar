rule win_stowaway_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.stowaway."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.stowaway"
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
        $sequence_0 = { 09c0 7407 8903 83c304 }
            // n = 4, score = 300
            //   09c0                 | or                  eax, eax
            //   7407                 | je                  9
            //   8903                 | mov                 dword ptr [ebx], eax
            //   83c304               | add                 ebx, 4

        $sequence_1 = { 57 ffd5 8d879f010000 80207f }
            // n = 4, score = 300
            //   57                   | push                edi
            //   ffd5                 | call                ebp
            //   8d879f010000         | lea                 eax, [edi + 0x19f]
            //   80207f               | and                 byte ptr [eax], 0x7f

        $sequence_2 = { 8a07 47 08c0 74dc 89f9 57 48 }
            // n = 7, score = 300
            //   8a07                 | mov                 al, byte ptr [edi]
            //   47                   | inc                 edi
            //   08c0                 | or                  al, al
            //   74dc                 | je                  0xffffffde
            //   89f9                 | mov                 ecx, edi
            //   57                   | push                edi
            //   48                   | dec                 eax

        $sequence_3 = { 8b07 09c0 743c 8b5f04 }
            // n = 4, score = 300
            //   8b07                 | mov                 eax, dword ptr [edi]
            //   09c0                 | or                  eax, eax
            //   743c                 | je                  0x3e
            //   8b5f04               | mov                 ebx, dword ptr [edi + 4]

        $sequence_4 = { 57 48 f2ae 55 }
            // n = 4, score = 300
            //   57                   | push                edi
            //   48                   | dec                 eax
            //   f2ae                 | repne scasb         al, byte ptr es:[edi]
            //   55                   | push                ebp

        $sequence_5 = { 8d879f010000 80207f 8060287f 58 }
            // n = 4, score = 300
            //   8d879f010000         | lea                 eax, [edi + 0x19f]
            //   80207f               | and                 byte ptr [eax], 0x7f
            //   8060287f             | and                 byte ptr [eax + 0x28], 0x7f
            //   58                   | pop                 eax

        $sequence_6 = { a3???????? 4e fb b501 2a37 }
            // n = 5, score = 200
            //   a3????????           |                     
            //   4e                   | dec                 esi
            //   fb                   | sti                 
            //   b501                 | mov                 ch, 1
            //   2a37                 | sub                 dh, byte ptr [edi]

        $sequence_7 = { 7ae8 ce f67be8 7ce8 }
            // n = 4, score = 200
            //   7ae8                 | jp                  0xffffffea
            //   ce                   | into                
            //   f67be8               | idiv                byte ptr [ebx - 0x18]
            //   7ce8                 | jl                  0xffffffea

        $sequence_8 = { f9 ffb31599e660 92 677fd9 }
            // n = 4, score = 200
            //   f9                   | stc                 
            //   ffb31599e660         | push                dword ptr [ebx + 0x60e69915]
            //   92                   | xchg                eax, edx
            //   677fd9               | jg                  0xffffffdc

        $sequence_9 = { 78e8 79e8 7ae8 ce }
            // n = 4, score = 200
            //   78e8                 | js                  0xffffffea
            //   79e8                 | jns                 0xffffffea
            //   7ae8                 | jp                  0xffffffea
            //   ce                   | into                

    condition:
        7 of them and filesize < 8003584
}