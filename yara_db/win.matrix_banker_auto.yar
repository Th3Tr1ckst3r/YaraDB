rule win_matrix_banker_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.matrix_banker."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.matrix_banker"
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
        $sequence_0 = { ff15???????? e8???????? 85c0 740a e8???????? 83f8ff }
            // n = 6, score = 900
            //   ff15????????         |                     
            //   e8????????           |                     
            //   85c0                 | or                  eax, 0xffffffff
            //   740a                 | mov                 eax, dword ptr [edi + 0x30]
            //   e8????????           |                     
            //   83f8ff               | test                al, 0x40

        $sequence_1 = { eb16 8d489f 80f905 7704 04a9 eb0a }
            // n = 6, score = 900
            //   eb16                 | add                 ebp, 0x64
            //   8d489f               | jmp                 0xa70
            //   80f905               | sub                 esi, eax
            //   7704                 | jge                 0xa86
            //   04a9                 | lea                 ecx, [ebx + 0x64]
            //   eb0a                 | add                 esi, 0x64

        $sequence_2 = { 8d48bf 80f905 7702 04c9 8d4ad0 80f909 }
            // n = 6, score = 900
            //   8d48bf               | mov                 ecx, dword ptr [ebp - 4]
            //   80f905               | mov                 edx, dword ptr [ebp + 8]
            //   7702                 | movzx               eax, word ptr [ecx]
            //   04c9                 | mov                 ecx, dword ptr [ebp - 0x10]
            //   8d4ad0               | pop                 ebp
            //   80f909               | ret                 

        $sequence_3 = { 7704 04a9 eb0a 8d48bf 80f905 7702 }
            // n = 6, score = 900
            //   7704                 | mov                 eax, dword ptr [ebx + 0x2c]
            //   04a9                 | xor                 edx, edx
            //   eb0a                 | dec                 eax
            //   8d48bf               | mov                 edx, dword ptr [edi + 0x10]
            //   80f905               | dec                 eax
            //   7702                 | mov                 ecx, eax

        $sequence_4 = { 80c2a9 eb0b 8d4abf 80f905 }
            // n = 4, score = 900
            //   80c2a9               | call                eax
            //   eb0b                 | lea                 eax, [esi - 0x1c]
            //   8d4abf               | xor                 edx, edx
            //   80f905               | push                esp

        $sequence_5 = { 80f905 7704 04a9 eb0a 8d48bf }
            // n = 5, score = 900
            //   80f905               | dec                 eax
            //   7704                 | cmp                 dword ptr [ebx + 0x10], ecx
            //   04a9                 | dec                 eax
            //   eb0a                 | mov                 ecx, ebx
            //   8d48bf               | mov                 dword ptr [esp + 0x20], 0

        $sequence_6 = { 80c2a9 eb0b 8d4abf 80f905 7703 }
            // n = 5, score = 900
            //   80c2a9               | mov                 ebp, eax
            //   eb0b                 | dec                 eax
            //   8d4abf               | mov                 ebx, eax
            //   80f905               | dec                 eax
            //   7703                 | test                eax, eax

        $sequence_7 = { 7705 80c2a9 eb0b 8d4abf 80f905 }
            // n = 5, score = 900
            //   7705                 | dec                 ecx
            //   80c2a9               | mov                 ecx, eax
            //   eb0b                 | dec                 ebp
            //   8d4abf               | mov                 edi, ecx
            //   80f905               | dec                 ecx

        $sequence_8 = { 8d489f 80f905 7704 04a9 eb0a 8d48bf }
            // n = 6, score = 900
            //   8d489f               | mov                 ecx, dword ptr [ebp - 4]
            //   80f905               | add                 eax, -0x10
            //   7704                 | xor                 ecx, ebp
            //   04a9                 | pop                 esi
            //   eb0a                 | pop                 ebp
            //   8d48bf               | ret                 

        $sequence_9 = { 80f905 7704 04a9 eb0a 8d48bf 80f905 }
            // n = 6, score = 900
            //   80f905               | dec                 eax
            //   7704                 | test                ebp, ebp
            //   04a9                 | je                  0x1217
            //   eb0a                 | dec                 eax
            //   8d48bf               | mov                 edi, dword ptr [esp + 0x60]
            //   80f905               | dec                 eax

    condition:
        7 of them and filesize < 422912
}