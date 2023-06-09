rule win_emdivi_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.emdivi."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.emdivi"
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
        $sequence_0 = { 83fe04 7cce 83c3e0 53 e8???????? 59 8b4dfc }
            // n = 7, score = 300
            //   83fe04               | cmp                 esi, 4
            //   7cce                 | jl                  0xffffffd0
            //   83c3e0               | add                 ebx, -0x20
            //   53                   | push                ebx
            //   e8????????           |                     
            //   59                   | pop                 ecx
            //   8b4dfc               | mov                 ecx, dword ptr [ebp - 4]

        $sequence_1 = { 33fb 8bde c1e004 83e203 3355f8 c1eb03 33d8 }
            // n = 7, score = 300
            //   33fb                 | xor                 edi, ebx
            //   8bde                 | mov                 ebx, esi
            //   c1e004               | shl                 eax, 4
            //   83e203               | and                 edx, 3
            //   3355f8               | xor                 edx, dword ptr [ebp - 8]
            //   c1eb03               | shr                 ebx, 3
            //   33d8                 | xor                 ebx, eax

        $sequence_2 = { 8bc2 e8???????? 8bce e8???????? 8bcf e8???????? }
            // n = 6, score = 300
            //   8bc2                 | mov                 eax, edx
            //   e8????????           |                     
            //   8bce                 | mov                 ecx, esi
            //   e8????????           |                     
            //   8bcf                 | mov                 ecx, edi
            //   e8????????           |                     

        $sequence_3 = { 8bf0 8bf9 3bfe 7504 8bc7 eb16 }
            // n = 6, score = 300
            //   8bf0                 | mov                 esi, eax
            //   8bf9                 | mov                 edi, ecx
            //   3bfe                 | cmp                 edi, esi
            //   7504                 | jne                 6
            //   8bc7                 | mov                 eax, edi
            //   eb16                 | jmp                 0x18

        $sequence_4 = { 740f 8d73ff c1ee03 8d34f508000000 eb03 8d7308 }
            // n = 6, score = 300
            //   740f                 | je                  0x11
            //   8d73ff               | lea                 esi, [ebx - 1]
            //   c1ee03               | shr                 esi, 3
            //   8d34f508000000       | lea                 esi, [esi*8 + 8]
            //   eb03                 | jmp                 5
            //   8d7308               | lea                 esi, [ebx + 8]

        $sequence_5 = { 8b45f0 8bcf 750a e8???????? 83c404 eb13 }
            // n = 6, score = 300
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]
            //   8bcf                 | mov                 ecx, edi
            //   750a                 | jne                 0xc
            //   e8????????           |                     
            //   83c404               | add                 esp, 4
            //   eb13                 | jmp                 0x15

        $sequence_6 = { 0f8785000000 8a45ff c0fb04 c0e002 0ad8 881f }
            // n = 6, score = 300
            //   0f8785000000         | ja                  0x8b
            //   8a45ff               | mov                 al, byte ptr [ebp - 1]
            //   c0fb04               | sar                 bl, 4
            //   c0e002               | shl                 al, 2
            //   0ad8                 | or                  bl, al
            //   881f                 | mov                 byte ptr [edi], bl

        $sequence_7 = { ab ab ab ab 68???????? ab 8d45e4 }
            // n = 7, score = 300
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   68????????           |                     
            //   ab                   | stosd               dword ptr es:[edi], eax
            //   8d45e4               | lea                 eax, [ebp - 0x1c]

        $sequence_8 = { e8???????? eb1f 8bc6 e8???????? ff7508 }
            // n = 5, score = 300
            //   e8????????           |                     
            //   eb1f                 | jmp                 0x21
            //   8bc6                 | mov                 eax, esi
            //   e8????????           |                     
            //   ff7508               | push                dword ptr [ebp + 8]

        $sequence_9 = { 8975ec 8b03 8945f0 8b4304 8945f4 }
            // n = 5, score = 300
            //   8975ec               | mov                 dword ptr [ebp - 0x14], esi
            //   8b03                 | mov                 eax, dword ptr [ebx]
            //   8945f0               | mov                 dword ptr [ebp - 0x10], eax
            //   8b4304               | mov                 eax, dword ptr [ebx + 4]
            //   8945f4               | mov                 dword ptr [ebp - 0xc], eax

    condition:
        7 of them and filesize < 581632
}