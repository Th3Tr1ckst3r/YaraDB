rule win_flagpro_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.flagpro."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.flagpro"
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
        $sequence_0 = { c684249400000003 8b44242c 3bc3 7408 8b10 50 }
            // n = 6, score = 100
            //   c684249400000003     | mov                 byte ptr [esp + 0x94], 3
            //   8b44242c             | mov                 eax, dword ptr [esp + 0x2c]
            //   3bc3                 | cmp                 eax, ebx
            //   7408                 | je                  0xa
            //   8b10                 | mov                 edx, dword ptr [eax]
            //   50                   | push                eax

        $sequence_1 = { 8bb42488000000 83ec10 8bc4 8930 8bb4249c000000 897004 }
            // n = 6, score = 100
            //   8bb42488000000       | mov                 esi, dword ptr [esp + 0x88]
            //   83ec10               | sub                 esp, 0x10
            //   8bc4                 | mov                 eax, esp
            //   8930                 | mov                 dword ptr [eax], esi
            //   8bb4249c000000       | mov                 esi, dword ptr [esp + 0x9c]
            //   897004               | mov                 dword ptr [eax + 4], esi

        $sequence_2 = { c744243802000000 e8???????? c746180f000000 897e14 c6460400 8b4c2420 8b6c241c }
            // n = 7, score = 100
            //   c744243802000000     | mov                 dword ptr [esp + 0x38], 2
            //   e8????????           |                     
            //   c746180f000000       | mov                 dword ptr [esi + 0x18], 0xf
            //   897e14               | mov                 dword ptr [esi + 0x14], edi
            //   c6460400             | mov                 byte ptr [esi + 4], 0
            //   8b4c2420             | mov                 ecx, dword ptr [esp + 0x20]
            //   8b6c241c             | mov                 ebp, dword ptr [esp + 0x1c]

        $sequence_3 = { c1e006 030495c0cf4500 eb05 b8???????? f6400420 7414 }
            // n = 6, score = 100
            //   c1e006               | shl                 eax, 6
            //   030495c0cf4500       | add                 eax, dword ptr [edx*4 + 0x45cfc0]
            //   eb05                 | jmp                 7
            //   b8????????           |                     
            //   f6400420             | test                byte ptr [eax + 4], 0x20
            //   7414                 | je                  0x16

        $sequence_4 = { 6a01 55 57 e8???????? 56 e8???????? 83c414 }
            // n = 7, score = 100
            //   6a01                 | push                1
            //   55                   | push                ebp
            //   57                   | push                edi
            //   e8????????           |                     
            //   56                   | push                esi
            //   e8????????           |                     
            //   83c414               | add                 esp, 0x14

        $sequence_5 = { e8???????? 83c418 396c2448 720d 8b542434 52 e8???????? }
            // n = 7, score = 100
            //   e8????????           |                     
            //   83c418               | add                 esp, 0x18
            //   396c2448             | cmp                 dword ptr [esp + 0x48], ebp
            //   720d                 | jb                  0xf
            //   8b542434             | mov                 edx, dword ptr [esp + 0x34]
            //   52                   | push                edx
            //   e8????????           |                     

        $sequence_6 = { 8d4604 8b6c2424 c6043800 8b44241c }
            // n = 4, score = 100
            //   8d4604               | lea                 eax, [esi + 4]
            //   8b6c2424             | mov                 ebp, dword ptr [esp + 0x24]
            //   c6043800             | mov                 byte ptr [eax + edi], 0
            //   8b44241c             | mov                 eax, dword ptr [esp + 0x1c]

        $sequence_7 = { 6603c9 6603c9 66898c44300c0000 40 83f825 7ce4 }
            // n = 6, score = 100
            //   6603c9               | add                 cx, cx
            //   6603c9               | add                 cx, cx
            //   66898c44300c0000     | mov                 word ptr [esp + eax*2 + 0xc30], cx
            //   40                   | inc                 eax
            //   83f825               | cmp                 eax, 0x25
            //   7ce4                 | jl                  0xffffffe6

        $sequence_8 = { 51 88442414 e8???????? 88443c14 }
            // n = 4, score = 100
            //   51                   | push                ecx
            //   88442414             | mov                 byte ptr [esp + 0x14], al
            //   e8????????           |                     
            //   88443c14             | mov                 byte ptr [esp + edi + 0x14], al

        $sequence_9 = { 89bc2494000000 899c2490000000 889c2480000000 39ac24b0000000 7210 }
            // n = 5, score = 100
            //   89bc2494000000       | mov                 dword ptr [esp + 0x94], edi
            //   899c2490000000       | mov                 dword ptr [esp + 0x90], ebx
            //   889c2480000000       | mov                 byte ptr [esp + 0x80], bl
            //   39ac24b0000000       | cmp                 dword ptr [esp + 0xb0], ebp
            //   7210                 | jb                  0x12

    condition:
        7 of them and filesize < 1411072
}