rule win_kronos_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.kronos."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.kronos"
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
        $sequence_0 = { 8b7704 85f6 744e 53 8d642400 8b4604 85c0 }
            // n = 7, score = 2800
            //   8b7704               | mov                 esi, dword ptr [edi + 4]
            //   85f6                 | test                esi, esi
            //   744e                 | je                  0x50
            //   53                   | push                ebx
            //   8d642400             | lea                 esp, [esp]
            //   8b4604               | mov                 eax, dword ptr [esi + 4]
            //   85c0                 | test                eax, eax

        $sequence_1 = { 1bc0 83d8ff 85c0 7510 85ff }
            // n = 5, score = 2800
            //   1bc0                 | sbb                 eax, eax
            //   83d8ff               | sbb                 eax, -1
            //   85c0                 | test                eax, eax
            //   7510                 | jne                 0x12
            //   85ff                 | test                edi, edi

        $sequence_2 = { e8???????? 8d4dd0 c6471900 33f6 e8???????? 8d4dc0 e8???????? }
            // n = 7, score = 2800
            //   e8????????           |                     
            //   8d4dd0               | lea                 ecx, [ebp - 0x30]
            //   c6471900             | mov                 byte ptr [edi + 0x19], 0
            //   33f6                 | xor                 esi, esi
            //   e8????????           |                     
            //   8d4dc0               | lea                 ecx, [ebp - 0x40]
            //   e8????????           |                     

        $sequence_3 = { 0fb711 6685d2 740e 6683fa5c 7408 6683fa2f 7402 }
            // n = 7, score = 2800
            //   0fb711               | movzx               edx, word ptr [ecx]
            //   6685d2               | test                dx, dx
            //   740e                 | je                  0x10
            //   6683fa5c             | cmp                 dx, 0x5c
            //   7408                 | je                  0xa
            //   6683fa2f             | cmp                 dx, 0x2f
            //   7402                 | je                  4

        $sequence_4 = { c7457401000000 85f6 7435 8d4514 50 e8???????? }
            // n = 6, score = 2800
            //   c7457401000000       | mov                 dword ptr [ebp + 0x74], 1
            //   85f6                 | test                esi, esi
            //   7435                 | je                  0x37
            //   8d4514               | lea                 eax, [ebp + 0x14]
            //   50                   | push                eax
            //   e8????????           |                     

        $sequence_5 = { 7528 53 ff15???????? ff15???????? 8b742410 8bf8 8b442414 }
            // n = 7, score = 2800
            //   7528                 | jne                 0x2a
            //   53                   | push                ebx
            //   ff15????????         |                     
            //   ff15????????         |                     
            //   8b742410             | mov                 esi, dword ptr [esp + 0x10]
            //   8bf8                 | mov                 edi, eax
            //   8b442414             | mov                 eax, dword ptr [esp + 0x14]

        $sequence_6 = { 83c428 85f6 752c 85c0 7528 }
            // n = 5, score = 2800
            //   83c428               | add                 esp, 0x28
            //   85f6                 | test                esi, esi
            //   752c                 | jne                 0x2e
            //   85c0                 | test                eax, eax
            //   7528                 | jne                 0x2a

        $sequence_7 = { 2b5f0c 3bd8 7202 8bd8 8b576c 85d2 }
            // n = 6, score = 2800
            //   2b5f0c               | sub                 ebx, dword ptr [edi + 0xc]
            //   3bd8                 | cmp                 ebx, eax
            //   7202                 | jb                  4
            //   8bd8                 | mov                 ebx, eax
            //   8b576c               | mov                 edx, dword ptr [edi + 0x6c]
            //   85d2                 | test                edx, edx

        $sequence_8 = { 83c404 85c0 0f95c0 84c0 7449 8d7b08 8bcf }
            // n = 7, score = 2800
            //   83c404               | add                 esp, 4
            //   85c0                 | test                eax, eax
            //   0f95c0               | setne               al
            //   84c0                 | test                al, al
            //   7449                 | je                  0x4b
            //   8d7b08               | lea                 edi, [ebx + 8]
            //   8bcf                 | mov                 ecx, edi

        $sequence_9 = { 56 8b35???????? 8b4618 57 8d7e18 50 ff15???????? }
            // n = 7, score = 2800
            //   56                   | push                esi
            //   8b35????????         |                     
            //   8b4618               | mov                 eax, dword ptr [esi + 0x18]
            //   57                   | push                edi
            //   8d7e18               | lea                 edi, [esi + 0x18]
            //   50                   | push                eax
            //   ff15????????         |                     

    condition:
        7 of them and filesize < 1302528
}