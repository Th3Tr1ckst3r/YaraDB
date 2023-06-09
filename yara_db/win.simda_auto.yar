rule win_simda_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.simda."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.simda"
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
        $sequence_0 = { 8955ec 897de0 3bce 0f8278feffff 5b }
            // n = 5, score = 700
            //   8955ec               | mov                 dword ptr [ebp - 0x14], edx
            //   897de0               | mov                 dword ptr [ebp - 0x20], edi
            //   3bce                 | cmp                 ecx, esi
            //   0f8278feffff         | jb                  0xfffffe7e
            //   5b                   | pop                 ebx

        $sequence_1 = { 8d642400 8a13 33c0 33c9 668945f8 8845fa 66894dfc }
            // n = 7, score = 700
            //   8d642400             | lea                 esp, [esp]
            //   8a13                 | mov                 dl, byte ptr [ebx]
            //   33c0                 | xor                 eax, eax
            //   33c9                 | xor                 ecx, ecx
            //   668945f8             | mov                 word ptr [ebp - 8], ax
            //   8845fa               | mov                 byte ptr [ebp - 6], al
            //   66894dfc             | mov                 word ptr [ebp - 4], cx

        $sequence_2 = { 51 c685f8feffff00 e8???????? 8b35???????? }
            // n = 4, score = 700
            //   51                   | push                ecx
            //   c685f8feffff00       | mov                 byte ptr [ebp - 0x108], 0
            //   e8????????           |                     
            //   8b35????????         |                     

        $sequence_3 = { 33f6 68ff000000 8d85f1feffff 56 50 }
            // n = 5, score = 700
            //   33f6                 | xor                 esi, esi
            //   68ff000000           | push                0xff
            //   8d85f1feffff         | lea                 eax, [ebp - 0x10f]
            //   56                   | push                esi
            //   50                   | push                eax

        $sequence_4 = { 8b7510 57 e8???????? 57 8bf3 e8???????? }
            // n = 6, score = 700
            //   8b7510               | mov                 esi, dword ptr [ebp + 0x10]
            //   57                   | push                edi
            //   e8????????           |                     
            //   57                   | push                edi
            //   8bf3                 | mov                 esi, ebx
            //   e8????????           |                     

        $sequence_5 = { 52 ffd7 85c0 740c 68???????? }
            // n = 5, score = 700
            //   52                   | push                edx
            //   ffd7                 | call                edi
            //   85c0                 | test                eax, eax
            //   740c                 | je                  0xe
            //   68????????           |                     

        $sequence_6 = { 7518 d1e8 85d0 7515 d1e8 85d0 }
            // n = 6, score = 700
            //   7518                 | jne                 0x1a
            //   d1e8                 | shr                 eax, 1
            //   85d0                 | test                eax, edx
            //   7515                 | jne                 0x17
            //   d1e8                 | shr                 eax, 1
            //   85d0                 | test                eax, edx

        $sequence_7 = { b910000000 be???????? 8d7db4 f3a5 66a5 }
            // n = 5, score = 700
            //   b910000000           | mov                 ecx, 0x10
            //   be????????           |                     
            //   8d7db4               | lea                 edi, [ebp - 0x4c]
            //   f3a5                 | rep movsd           dword ptr es:[edi], dword ptr [esi]
            //   66a5                 | movsw               word ptr es:[edi], word ptr [esi]

        $sequence_8 = { 81ec08010000 56 8d45fc 33f6 }
            // n = 4, score = 700
            //   81ec08010000         | sub                 esp, 0x108
            //   56                   | push                esi
            //   8d45fc               | lea                 eax, [ebp - 4]
            //   33f6                 | xor                 esi, esi

        $sequence_9 = { 6a08 ffd3 8bf0 83feff }
            // n = 4, score = 700
            //   6a08                 | push                8
            //   ffd3                 | call                ebx
            //   8bf0                 | mov                 esi, eax
            //   83feff               | cmp                 esi, -1

    condition:
        7 of them and filesize < 1581056
}