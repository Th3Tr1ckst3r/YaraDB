rule win_client_maximus_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.client_maximus."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.client_maximus"
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
        $sequence_0 = { ff5320 ff15???????? 895c2408 c744240400000000 890424 ff15???????? }
            // n = 6, score = 300
            //   ff5320               | call                dword ptr [ebx + 0x20]
            //   ff15????????         |                     
            //   895c2408             | mov                 dword ptr [esp + 8], ebx
            //   c744240400000000     | mov                 dword ptr [esp + 4], 0
            //   890424               | mov                 dword ptr [esp], eax
            //   ff15????????         |                     

        $sequence_1 = { e9???????? c704247e000000 ff15???????? 83ec04 e9???????? }
            // n = 5, score = 300
            //   e9????????           |                     
            //   c704247e000000       | mov                 dword ptr [esp], 0x7e
            //   ff15????????         |                     
            //   83ec04               | sub                 esp, 4
            //   e9????????           |                     

        $sequence_2 = { 837c242401 7515 8b442420 c70424???????? a3???????? e8???????? b801000000 }
            // n = 7, score = 300
            //   837c242401           | cmp                 dword ptr [esp + 0x24], 1
            //   7515                 | jne                 0x17
            //   8b442420             | mov                 eax, dword ptr [esp + 0x20]
            //   c70424????????       |                     
            //   a3????????           |                     
            //   e8????????           |                     
            //   b801000000           | mov                 eax, 1

        $sequence_3 = { 7418 8b5014 85d2 7511 8b5034 }
            // n = 5, score = 300
            //   7418                 | je                  0x1a
            //   8b5014               | mov                 edx, dword ptr [eax + 0x14]
            //   85d2                 | test                edx, edx
            //   7511                 | jne                 0x13
            //   8b5034               | mov                 edx, dword ptr [eax + 0x34]

        $sequence_4 = { c7042417070000 ff15???????? 31c0 83ec04 }
            // n = 4, score = 300
            //   c7042417070000       | mov                 dword ptr [esp], 0x717
            //   ff15????????         |                     
            //   31c0                 | xor                 eax, eax
            //   83ec04               | sub                 esp, 4

        $sequence_5 = { c744240800800000 c744240400000000 890424 8954240c }
            // n = 4, score = 300
            //   c744240800800000     | mov                 dword ptr [esp + 8], 0x8000
            //   c744240400000000     | mov                 dword ptr [esp + 4], 0
            //   890424               | mov                 dword ptr [esp], eax
            //   8954240c             | mov                 dword ptr [esp + 0xc], edx

        $sequence_6 = { ff15???????? 31c0 83ec04 e9???????? c704245a040000 ff15???????? }
            // n = 6, score = 300
            //   ff15????????         |                     
            //   31c0                 | xor                 eax, eax
            //   83ec04               | sub                 esp, 4
            //   e9????????           |                     
            //   c704245a040000       | mov                 dword ptr [esp], 0x45a
            //   ff15????????         |                     

        $sequence_7 = { 89f8 02441500 01c6 89f0 0fb6c0 0fb61403 88140b }
            // n = 7, score = 300
            //   89f8                 | mov                 eax, edi
            //   02441500             | add                 al, byte ptr [ebp + edx]
            //   01c6                 | add                 esi, eax
            //   89f0                 | mov                 eax, esi
            //   0fb6c0               | movzx               eax, al
            //   0fb61403             | movzx               edx, byte ptr [ebx + eax]
            //   88140b               | mov                 byte ptr [ebx + ecx], dl

        $sequence_8 = { 56 53 83ec10 8b1d???????? c70424???????? }
            // n = 5, score = 300
            //   56                   | push                esi
            //   53                   | push                ebx
            //   83ec10               | sub                 esp, 0x10
            //   8b1d????????         |                     
            //   c70424????????       |                     

        $sequence_9 = { 837c242401 7515 8b442420 c70424???????? a3???????? e8???????? }
            // n = 6, score = 300
            //   837c242401           | cmp                 dword ptr [esp + 0x24], 1
            //   7515                 | jne                 0x17
            //   8b442420             | mov                 eax, dword ptr [esp + 0x20]
            //   c70424????????       |                     
            //   a3????????           |                     
            //   e8????????           |                     

    condition:
        7 of them and filesize < 106496
}