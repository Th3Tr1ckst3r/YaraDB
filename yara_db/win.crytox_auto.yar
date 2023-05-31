rule win_crytox_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.crytox."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.crytox"
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
        $sequence_0 = { c744240420000000 8944243c 053cc00700 8944242c 8b442440 8944240c 8b442444 }
            // n = 7, score = 100
            //   c744240420000000     | je                  0x11c
            //   8944243c             | imul                edx, dword ptr [eax + 4], 0xa
            //   053cc00700           | mov                 dword ptr [esp + 4], 8
            //   8944242c             | mov                 dword ptr [esp], eax
            //   8b442440             | mov                 eax, dword ptr [esp + 0x28]
            //   8944240c             | mov                 edx, dword ptr [esp + 0x2c]
            //   8b442444             | add                 esp, 0x38

        $sequence_1 = { e8???????? 035c2440 3b6c2454 75e3 83c42c 5b 5e }
            // n = 7, score = 100
            //   e8????????           |                     
            //   035c2440             | fucomip             st(1)
            //   3b6c2454             | fstp                st(0)
            //   75e3                 | ja                  0x1d52
            //   83c42c               | fld                 qword ptr [esp + 0x48]
            //   5b                   | fxch                st(1)
            //   5e                   | fucomip             st(1)

        $sequence_2 = { c744241001000000 8b442410 8b3c24 8b742414 0fb688d06f6900 8d44ad00 c646060b }
            // n = 7, score = 100
            //   c744241001000000     | mov                 byte ptr [esp + 0x49], al
            //   8b442410             | mov                 eax, dword ptr [esp + 0x2c]
            //   8b3c24               | mov                 dword ptr [esp + 0xc], 0x181
            //   8b742414             | mov                 eax, dword ptr [esp + 0x30]
            //   0fb688d06f6900       | mov                 dword ptr [esp + 8], 0x683924
            //   8d44ad00             | mov                 dword ptr [esp + 4], 4
            //   c646060b             | mov                 dword ptr [esp], eax

        $sequence_3 = { eb01 90 837d0800 751e c744240856000000 c744240440cd6a00 c7042478cd6a00 }
            // n = 7, score = 100
            //   eb01                 | je                  0x422
            //   90                   | xor                 ecx, ecx
            //   837d0800             | xor                 ecx, ecx
            //   751e                 | mov                 dword ptr [ebx + 0x23d30], 2
            //   c744240856000000     | mov                 dword ptr [ebx + 0x23d2c], 1
            //   c744240440cd6a00     | xor                 ecx, ecx
            //   c7042478cd6a00       | test                eax, eax

        $sequence_4 = { eb19 e8???????? 83f806 7e14 c7442404622b6800 c704246f2d6800 e8???????? }
            // n = 7, score = 100
            //   eb19                 | fstp                st(0)
            //   e8????????           |                     
            //   83f806               | add                 esp, 0xa0
            //   7e14                 | jmp                 0x338
            //   c7442404622b6800     | fstp                st(0)
            //   c704246f2d6800       | fstp                st(0)
            //   e8????????           |                     

        $sequence_5 = { ff10 0fbf5c2428 0fbf0f 0fbf74242c 89442430 894c2424 89c8 }
            // n = 7, score = 100
            //   ff10                 | test                edx, edx
            //   0fbf5c2428           | jne                 0xf9
            //   0fbf0f               | mov                 dword ptr [esp + 0x48], 0x120e
            //   0fbf74242c           | shl                 ebx, 3
            //   89442430             | xor                 edx, edx
            //   894c2424             | div                 ebx
            //   89c8                 | test                edx, edx

        $sequence_6 = { dddb ddd8 d9c9 eb08 dddb ddd8 d9c9 }
            // n = 7, score = 100
            //   dddb                 | fld                 st(0)
            //   ddd8                 | fxch                st(2)
            //   d9c9                 | fst                 dword ptr [esp + 0x28]
            //   eb08                 | fxch                st(1)
            //   dddb                 | fstp                st(1)
            //   ddd8                 | fld                 st(0)
            //   d9c9                 | fstp                dword ptr [esp + 0x18]

        $sequence_7 = { eb03 83c137 8848fe 8a0a 83e10f 8d7937 8d5930 }
            // n = 7, score = 100
            //   eb03                 | jle                 0x679
            //   83c137               | mov                 eax, dword ptr [ebp - 0x44]
            //   8848fe               | mov                 dword ptr [esp + 4], 0x66cdd7
            //   8a0a                 | mov                 dword ptr [esp], 0x66d003
            //   83e10f               | mov                 dword ptr [esp + 8], eax
            //   8d7937               | dec                 eax
            //   8d5930               | jle                 0x693

        $sequence_8 = { e8???????? 2b4330 1b5334 83fa00 0f8794010000 3df3010000 0f8789010000 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   2b4330               | movzx               eax, word ptr [ebp - 0x1c]
            //   1b5334               | mov                 dword ptr [ebp + 0x10], edi
            //   83fa00               | mov                 dword ptr [ebp + 8], ebx
            //   0f8794010000         | mov                 dword ptr [ebp + 0x1c], 0
            //   3df3010000           | mov                 dword ptr [ebp + 0xc], 1
            //   0f8789010000         | movzx               esi, word ptr [ebp - 0x1c]

        $sequence_9 = { f7ea 8b8510130200 29ca 89442440 89f0 89d1 99 }
            // n = 7, score = 100
            //   f7ea                 | mov                 eax, dword ptr [esp + 0x18]
            //   8b8510130200         | mul                 ecx
            //   29ca                 | add                 edx, ebx
            //   89442440             | mov                 ebx, esi
            //   89f0                 | mov                 esi, edi
            //   89d1                 | add                 ebx, eax
            //   99                   | mov                 edi, dword ptr [esp + 0xf0]

    condition:
        7 of them and filesize < 6156288
}