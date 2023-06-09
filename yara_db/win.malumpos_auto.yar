rule win_malumpos_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.malumpos."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.malumpos"
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
        $sequence_0 = { ff15???????? 894504 8b4564 894508 33c0 }
            // n = 5, score = 100
            //   ff15????????         |                     
            //   894504               | mov                 dword ptr [ebp + 4], eax
            //   8b4564               | mov                 eax, dword ptr [ebp + 0x64]
            //   894508               | mov                 dword ptr [ebp + 8], eax
            //   33c0                 | xor                 eax, eax

        $sequence_1 = { 53 8b5d0c 56 7513 be???????? e8???????? }
            // n = 6, score = 100
            //   53                   | push                ebx
            //   8b5d0c               | mov                 ebx, dword ptr [ebp + 0xc]
            //   56                   | push                esi
            //   7513                 | jne                 0x15
            //   be????????           |                     
            //   e8????????           |                     

        $sequence_2 = { 50 ff35???????? ff15???????? 8b7624 33c0 f7c600000004 }
            // n = 6, score = 100
            //   50                   | push                eax
            //   ff35????????         |                     
            //   ff15????????         |                     
            //   8b7624               | mov                 esi, dword ptr [esi + 0x24]
            //   33c0                 | xor                 eax, eax
            //   f7c600000004         | test                esi, 0x4000000

        $sequence_3 = { 4b 5b 52 7106 }
            // n = 4, score = 100
            //   4b                   | dec                 ebx
            //   5b                   | pop                 ebx
            //   52                   | push                edx
            //   7106                 | jno                 8

        $sequence_4 = { 5b 52 7106 81f300000000 }
            // n = 4, score = 100
            //   5b                   | pop                 ebx
            //   52                   | push                edx
            //   7106                 | jno                 8
            //   81f300000000         | xor                 ebx, 0

        $sequence_5 = { ff15???????? 894504 8b4564 894508 }
            // n = 4, score = 100
            //   ff15????????         |                     
            //   894504               | mov                 dword ptr [ebp + 4], eax
            //   8b4564               | mov                 eax, dword ptr [ebp + 0x64]
            //   894508               | mov                 dword ptr [ebp + 8], eax

        $sequence_6 = { 5b f9 90 7806 }
            // n = 4, score = 100
            //   5b                   | pop                 ebx
            //   f9                   | stc                 
            //   90                   | nop                 
            //   7806                 | js                  8

        $sequence_7 = { 59 7806 7404 50 83c404 51 7a03 }
            // n = 7, score = 100
            //   59                   | pop                 ecx
            //   7806                 | js                  8
            //   7404                 | je                  6
            //   50                   | push                eax
            //   83c404               | add                 esp, 4
            //   51                   | push                ecx
            //   7a03                 | jp                  5

        $sequence_8 = { 2d00000000 6683ca00 c1ea20 7105 7103 83ea00 }
            // n = 6, score = 100
            //   2d00000000           | sub                 eax, 0
            //   6683ca00             | or                  dx, 0
            //   c1ea20               | shr                 edx, 0x20
            //   7105                 | jno                 7
            //   7103                 | jno                 5
            //   83ea00               | sub                 edx, 0

        $sequence_9 = { 8b0d???????? c745fc00000000 33c0 64a118000000 a3???????? }
            // n = 5, score = 100
            //   8b0d????????         |                     
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   33c0                 | xor                 eax, eax
            //   64a118000000         | mov                 eax, dword ptr fs:[0x18]
            //   a3????????           |                     

    condition:
        7 of them and filesize < 542720
}