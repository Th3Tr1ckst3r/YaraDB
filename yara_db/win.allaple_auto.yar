rule win_allaple_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.allaple."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.allaple"
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
        $sequence_0 = { 8a4429b4 8b55fc 88442a98 ff45fc 837dfc1c 7ce9 }
            // n = 6, score = 300
            //   8a4429b4             | mov                 al, byte ptr [ecx + ebp - 0x4c]
            //   8b55fc               | mov                 edx, dword ptr [ebp - 4]
            //   88442a98             | mov                 byte ptr [edx + ebp - 0x68], al
            //   ff45fc               | inc                 dword ptr [ebp - 4]
            //   837dfc1c             | cmp                 dword ptr [ebp - 4], 0x1c
            //   7ce9                 | jl                  0xffffffeb

        $sequence_1 = { 66894616 83c618 ff7518 ff7514 56 e8???????? 037518 }
            // n = 7, score = 300
            //   66894616             | mov                 word ptr [esi + 0x16], ax
            //   83c618               | add                 esi, 0x18
            //   ff7518               | push                dword ptr [ebp + 0x18]
            //   ff7514               | push                dword ptr [ebp + 0x14]
            //   56                   | push                esi
            //   e8????????           |                     
            //   037518               | add                 esi, dword ptr [ebp + 0x18]

        $sequence_2 = { 6a01 6a00 68???????? 6a00 6a00 e8???????? c785a4fdffff01000000 }
            // n = 7, score = 300
            //   6a01                 | push                1
            //   6a00                 | push                0
            //   68????????           |                     
            //   6a00                 | push                0
            //   6a00                 | push                0
            //   e8????????           |                     
            //   c785a4fdffff01000000     | mov    dword ptr [ebp - 0x25c], 1

        $sequence_3 = { 8bec 81c4b8faffff 57 56 53 68???????? }
            // n = 6, score = 300
            //   8bec                 | mov                 ebp, esp
            //   81c4b8faffff         | add                 esp, 0xfffffab8
            //   57                   | push                edi
            //   56                   | push                esi
            //   53                   | push                ebx
            //   68????????           |                     

        $sequence_4 = { 8b4de0 33c8 894de0 8b55dc d1ca 8955dc }
            // n = 6, score = 300
            //   8b4de0               | mov                 ecx, dword ptr [ebp - 0x20]
            //   33c8                 | xor                 ecx, eax
            //   894de0               | mov                 dword ptr [ebp - 0x20], ecx
            //   8b55dc               | mov                 edx, dword ptr [ebp - 0x24]
            //   d1ca                 | ror                 edx, 1
            //   8955dc               | mov                 dword ptr [ebp - 0x24], edx

        $sequence_5 = { eb0f 8b9520ffffff 83c201 899520ffffff 8b8520ffffff 3b450c }
            // n = 6, score = 300
            //   eb0f                 | jmp                 0x11
            //   8b9520ffffff         | mov                 edx, dword ptr [ebp - 0xe0]
            //   83c201               | add                 edx, 1
            //   899520ffffff         | mov                 dword ptr [ebp - 0xe0], edx
            //   8b8520ffffff         | mov                 eax, dword ptr [ebp - 0xe0]
            //   3b450c               | cmp                 eax, dword ptr [ebp + 0xc]

        $sequence_6 = { 43 81fb00040000 7504 33ff eb2a 83c604 }
            // n = 6, score = 300
            //   43                   | inc                 ebx
            //   81fb00040000         | cmp                 ebx, 0x400
            //   7504                 | jne                 6
            //   33ff                 | xor                 edi, edi
            //   eb2a                 | jmp                 0x2c
            //   83c604               | add                 esi, 4

        $sequence_7 = { 56 53 8b7d08 c745f4ffffffff 0bff 0f8430010000 6a00 }
            // n = 7, score = 300
            //   56                   | push                esi
            //   53                   | push                ebx
            //   8b7d08               | mov                 edi, dword ptr [ebp + 8]
            //   c745f4ffffffff       | mov                 dword ptr [ebp - 0xc], 0xffffffff
            //   0bff                 | or                  edi, edi
            //   0f8430010000         | je                  0x136
            //   6a00                 | push                0

        $sequence_8 = { 8b55cc 8b4dec 8b45f0 83c001 8945f0 e8???????? }
            // n = 6, score = 300
            //   8b55cc               | mov                 edx, dword ptr [ebp - 0x34]
            //   8b4dec               | mov                 ecx, dword ptr [ebp - 0x14]
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]
            //   83c001               | add                 eax, 1
            //   8945f0               | mov                 dword ptr [ebp - 0x10], eax
            //   e8????????           |                     

        $sequence_9 = { 8b55e0 d1c2 8955e0 8b45f0 0345ec 038554ffffff 8b4ddc }
            // n = 7, score = 300
            //   8b55e0               | mov                 edx, dword ptr [ebp - 0x20]
            //   d1c2                 | rol                 edx, 1
            //   8955e0               | mov                 dword ptr [ebp - 0x20], edx
            //   8b45f0               | mov                 eax, dword ptr [ebp - 0x10]
            //   0345ec               | add                 eax, dword ptr [ebp - 0x14]
            //   038554ffffff         | add                 eax, dword ptr [ebp - 0xac]
            //   8b4ddc               | mov                 ecx, dword ptr [ebp - 0x24]

    condition:
        7 of them and filesize < 253952
}