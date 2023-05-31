rule win_nemim_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.nemim."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.nemim"
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
        $sequence_0 = { 83fd0a 7c0c c705????????00000000 eb06 }
            // n = 4, score = 200
            //   83fd0a               | cmp                 ebp, 0xa
            //   7c0c                 | jl                  0xe
            //   c705????????00000000     |     
            //   eb06                 | jmp                 8

        $sequence_1 = { 49 8bf1 8d4c2460 56 51 }
            // n = 5, score = 200
            //   49                   | dec                 ecx
            //   8bf1                 | mov                 esi, ecx
            //   8d4c2460             | lea                 ecx, [esp + 0x60]
            //   56                   | push                esi
            //   51                   | push                ecx

        $sequence_2 = { 5e 5b c9 c20400 8bc1 c700???????? c3 }
            // n = 7, score = 200
            //   5e                   | pop                 esi
            //   5b                   | pop                 ebx
            //   c9                   | leave               
            //   c20400               | ret                 4
            //   8bc1                 | mov                 eax, ecx
            //   c700????????         |                     
            //   c3                   | ret                 

        $sequence_3 = { a1???????? 66894c2458 89442454 b906000000 }
            // n = 4, score = 200
            //   a1????????           |                     
            //   66894c2458           | mov                 word ptr [esp + 0x58], cx
            //   89442454             | mov                 dword ptr [esp + 0x54], eax
            //   b906000000           | mov                 ecx, 6

        $sequence_4 = { 03d1 33f2 23f7 33f1 03f5 8b6c2428 }
            // n = 6, score = 200
            //   03d1                 | add                 edx, ecx
            //   33f2                 | xor                 esi, edx
            //   23f7                 | and                 esi, edi
            //   33f1                 | xor                 esi, ecx
            //   03f5                 | add                 esi, ebp
            //   8b6c2428             | mov                 ebp, dword ptr [esp + 0x28]

        $sequence_5 = { 0fb6f8 f687a172430004 741e 8a5101 41 84d2 7412 }
            // n = 7, score = 200
            //   0fb6f8               | movzx               edi, al
            //   f687a172430004       | test                byte ptr [edi + 0x4372a1], 4
            //   741e                 | je                  0x20
            //   8a5101               | mov                 dl, byte ptr [ecx + 1]
            //   41                   | inc                 ecx
            //   84d2                 | test                dl, dl
            //   7412                 | je                  0x14

        $sequence_6 = { 68???????? 6819000200 6a00 50 6802000080 }
            // n = 5, score = 200
            //   68????????           |                     
            //   6819000200           | push                0x20019
            //   6a00                 | push                0
            //   50                   | push                eax
            //   6802000080           | push                0x80000002

        $sequence_7 = { f7d7 03f2 0bfe 33fa 03fd 8b6c2430 8dbc39d15d8485 }
            // n = 7, score = 200
            //   f7d7                 | not                 edi
            //   03f2                 | add                 esi, edx
            //   0bfe                 | or                  edi, esi
            //   33fa                 | xor                 edi, edx
            //   03fd                 | add                 edi, ebp
            //   8b6c2430             | mov                 ebp, dword ptr [esp + 0x30]
            //   8dbc39d15d8485       | lea                 edi, [ecx + edi - 0x7a7ba22f]

        $sequence_8 = { e8???????? 83f801 742e 8b54240c 6a10 8d4c2410 ff5238 }
            // n = 7, score = 200
            //   e8????????           |                     
            //   83f801               | cmp                 eax, 1
            //   742e                 | je                  0x30
            //   8b54240c             | mov                 edx, dword ptr [esp + 0xc]
            //   6a10                 | push                0x10
            //   8d4c2410             | lea                 ecx, [esp + 0x10]
            //   ff5238               | call                dword ptr [edx + 0x38]

        $sequence_9 = { c1e602 8b8628274300 eb09 c1e602 }
            // n = 4, score = 200
            //   c1e602               | shl                 esi, 2
            //   8b8628274300         | mov                 eax, dword ptr [esi + 0x432728]
            //   eb09                 | jmp                 0xb
            //   c1e602               | shl                 esi, 2

    condition:
        7 of them and filesize < 499712
}