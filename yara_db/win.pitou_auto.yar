rule win_pitou_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.pitou."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.pitou"
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
        $sequence_0 = { 8a6201 80f457 8acc 80e103 8aec c0ed03 }
            // n = 6, score = 700
            //   8a6201               | mov                 ecx, dword ptr [ebp + 0xc]
            //   80f457               | mov                 eax, dword ptr [ecx + 0x60]
            //   8acc                 | push                ebx
            //   80e103               | push                esi
            //   8aec                 | sub                 esp, 0x28
            //   c0ed03               | push                ebx

        $sequence_1 = { 8bda c1e305 03c3 8bda c1eb02 03c3 }
            // n = 6, score = 700
            //   8bda                 | mov                 dword ptr [ebp - 8], ebx
            //   c1e305               | mov                 al, byte ptr [ebx + 0x1f]
            //   03c3                 | test                al, al
            //   8bda                 | je                  0xfffef583
            //   c1eb02               | dec                 al
            //   03c3                 | mov                 byte ptr [ebx + 0x1f], al

        $sequence_2 = { 8bc2 5e 5a 59 5b }
            // n = 5, score = 700
            //   8bc2                 | jbe                 0xffff5943
            //   5e                   | push                ebx
            //   5a                   | push                ebx
            //   59                   | mov                 eax, dword ptr [esi + 8]
            //   5b                   | cmp                 eax, 2

        $sequence_3 = { 8a6201 80f457 8acc 80e103 8aec c0ed03 80e507 }
            // n = 7, score = 700
            //   8a6201               | add                 esp, 0xc
            //   80f457               | sub                 esp, 0x44
            //   8acc                 | push                ebx
            //   80e103               | push                esi
            //   8aec                 | push                edi
            //   c0ed03               | mov                 dword ptr [ebp - 0x18], esp
            //   80e507               | mov                 edi, ecx

        $sequence_4 = { 80e103 8aec c0ed03 80e507 }
            // n = 4, score = 700
            //   80e103               | lcall               0x1f9c:0x3321210
            //   8aec                 | xchg                eax, ecx
            //   c0ed03               | sal                 esp, 0x69
            //   80e507               | pop                 esi

        $sequence_5 = { 8acc 80e103 8aec c0ed03 }
            // n = 4, score = 700
            //   8acc                 | jge                 0x1d2cb
            //   80e103               | inc                 ecx
            //   8aec                 | dec                 eax
            //   c0ed03               | inc                 ecx

        $sequence_6 = { 33c0 ac 8bda c1e305 03c3 8bda }
            // n = 6, score = 700
            //   33c0                 | add                 ebx, dword ptr [edx + 0x5f539f16]
            //   ac                   | adc                 eax, 0x145a143e
            //   8bda                 | push                ss
            //   c1e305               | add                 ebx, dword ptr [edx + 0x175a1417]
            //   03c3                 | add                 ebx, dword ptr [edx + 0x579f1417]
            //   8bda                 | push                edi

        $sequence_7 = { 33c0 ac 8bda c1e305 03c3 }
            // n = 5, score = 700
            //   33c0                 | int1                
            //   ac                   | imul                eax, esi, 0xfa5029e8
            //   8bda                 | sbb                 eax, 0x9c03102a
            //   c1e305               | das                 
            //   03c3                 | push                cs

        $sequence_8 = { 8bda c1e305 03c3 8bda }
            // n = 4, score = 700
            //   8bda                 | mov                 ecx, dword ptr [ebp - 4]
            //   c1e305               | mov                 ebx, eax
            //   03c3                 | lea                 eax, [ebp - 4]
            //   8bda                 | push                eax

        $sequence_9 = { 80f457 8acc 80e103 8aec c0ed03 80e507 }
            // n = 6, score = 700
            //   80f457               | imul                eax, dword ptr [edi], 0x13a91795
            //   8acc                 | push                edi
            //   80e103               | push                ebx
            //   8aec                 | sub                 al, 0x32
            //   c0ed03               | add                 ebx, dword ptr [edx + 0x1415da16]
            //   80e507               | movups              xmm0, xmmword ptr [ebx]

    condition:
        7 of them and filesize < 1106944
}