rule win_nagini_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.nagini."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.nagini"
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
        $sequence_0 = { 341f 0332 2003 3422 0536240538 27 }
            // n = 6, score = 100
            //   341f                 | xor                 al, 0x1f
            //   0332                 | add                 esi, dword ptr [edx]
            //   2003                 | and                 byte ptr [ebx], al
            //   3422                 | xor                 al, 0x22
            //   0536240538           | add                 eax, 0x38052436
            //   27                   | daa                 

        $sequence_1 = { 83e11f c1f805 c1e106 030c85c0914200 eb02 }
            // n = 5, score = 100
            //   83e11f               | and                 ecx, 0x1f
            //   c1f805               | sar                 eax, 5
            //   c1e106               | shl                 ecx, 6
            //   030c85c0914200       | add                 ecx, dword ptr [eax*4 + 0x4291c0]
            //   eb02                 | jmp                 4

        $sequence_2 = { 09040506060606 06 06 0806 }
            // n = 4, score = 100
            //   09040506060606       | or                  dword ptr [eax + 0x6060606], eax
            //   06                   | push                es
            //   06                   | push                es
            //   0806                 | or                  byte ptr [esi], al

        $sequence_3 = { 0f84b9020000 8b95ecefffff 8b9de8efffff 6a00 8b0495c0914200 }
            // n = 5, score = 100
            //   0f84b9020000         | je                  0x2bf
            //   8b95ecefffff         | mov                 edx, dword ptr [ebp - 0x1014]
            //   8b9de8efffff         | mov                 ebx, dword ptr [ebp - 0x1018]
            //   6a00                 | push                0
            //   8b0495c0914200       | mov                 eax, dword ptr [edx*4 + 0x4291c0]

        $sequence_4 = { fe80b48b4200 890c858c8b4200 8d4dfc e8???????? }
            // n = 4, score = 100
            //   fe80b48b4200         | inc                 byte ptr [eax + 0x428bb4]
            //   890c858c8b4200       | mov                 dword ptr [eax*4 + 0x428b8c], ecx
            //   8d4dfc               | lea                 ecx, [ebp - 4]
            //   e8????????           |                     

        $sequence_5 = { 3bfb 7ed0 83c8ff eb07 8b04f564f64100 }
            // n = 5, score = 100
            //   3bfb                 | cmp                 edi, ebx
            //   7ed0                 | jle                 0xffffffd2
            //   83c8ff               | or                  eax, 0xffffffff
            //   eb07                 | jmp                 9
            //   8b04f564f64100       | mov                 eax, dword ptr [esi*8 + 0x41f664]

        $sequence_6 = { 2a11 46 2a12 44 291442 27 }
            // n = 6, score = 100
            //   2a11                 | sub                 dl, byte ptr [ecx]
            //   46                   | inc                 esi
            //   2a12                 | sub                 dl, byte ptr [edx]
            //   44                   | inc                 esp
            //   291442               | sub                 dword ptr [edx + eax*2], edx
            //   27                   | daa                 

        $sequence_7 = { 888670784200 46 ebe5 a1???????? 83c9ff f00fc108 }
            // n = 6, score = 100
            //   888670784200         | mov                 byte ptr [esi + 0x427870], al
            //   46                   | inc                 esi
            //   ebe5                 | jmp                 0xffffffe7
            //   a1????????           |                     
            //   83c9ff               | or                  ecx, 0xffffffff
            //   f00fc108             | lock xadd           dword ptr [eax], ecx

        $sequence_8 = { a3???????? c705????????4d134100 c705????????c11c4100 c705????????291c4100 c705????????141d4100 c3 a1???????? }
            // n = 7, score = 100
            //   a3????????           |                     
            //   c705????????4d134100     |     
            //   c705????????c11c4100     |     
            //   c705????????291c4100     |     
            //   c705????????141d4100     |     
            //   c3                   | ret                 
            //   a1????????           |                     

        $sequence_9 = { 8b0495c0914200 f644180448 7423 6a0a 58 6a0d }
            // n = 6, score = 100
            //   8b0495c0914200       | mov                 eax, dword ptr [edx*4 + 0x4291c0]
            //   f644180448           | test                byte ptr [eax + ebx + 4], 0x48
            //   7423                 | je                  0x25
            //   6a0a                 | push                0xa
            //   58                   | pop                 eax
            //   6a0d                 | push                0xd

    condition:
        7 of them and filesize < 12820480
}