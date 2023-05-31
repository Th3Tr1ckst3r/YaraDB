rule win_grandsteal_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2020-05-30"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.4.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.grandsteal"
        malpedia_rule_date = "20200529"
        malpedia_hash = "92c362319514e5a6da26204961446caa3a8b32a8"
        malpedia_version = "20200529"
        malpedia_license = "CC BY-SA 4.0"
        malpedia_sharing = "TLP:WHITE"

    /* DISCLAIMER
     * The strings used in this rule have been automatically selected from the
     * disassembly of memory dumps and unpacked files, using yara-signator.
     * The code and documentation / approach is published here:
     * https://github.com/fxb-cocacoding/yara-signator
     * As Malpedia is used as data source, please note that for a given
     * number of families, only single samples are documented.
     * This likely impacts the degree of generalization these rules will offer.
     * Take the described generation method also into consideration when you
     * apply the rules in your use cases and assign them confidence levels.
     */


    strings:
        $sequence_0 = { e9???????? 0918 ac 0100 0000 }
            // n = 5, score = 100
            //   e9????????           |                     
            //   0918                 | or                  dword ptr [eax], ebx
            //   ac                   | lodsb               al, byte ptr [esi]
            //   0100                 | add                 dword ptr [eax], eax
            //   0000                 | add                 byte ptr [eax], al

        $sequence_1 = { 00c6 0181689526b7 0ada e8???????? c60181 }
            // n = 5, score = 100
            //   00c6                 | add                 dh, al
            //   0181689526b7         | add                 dword ptr [ecx - 0x48d96a98], eax
            //   0ada                 | or                  bl, dl
            //   e8????????           |                     
            //   c60181               | mov                 byte ptr [ecx], 0x81

        $sequence_2 = { 00740061 006700 650000 1b4e00 }
            // n = 4, score = 100
            //   00740061             | add                 byte ptr [eax + eax + 0x61], dh
            //   006700               | add                 byte ptr [edi], ah
            //   650000               | add                 byte ptr gs:[eax], al
            //   1b4e00               | sbb                 ecx, dword ptr [esi]

        $sequence_3 = { 65007300 7300 6f 007200 49 00640000 }
            // n = 6, score = 100
            //   65007300             | add                 byte ptr gs:[ebx], dh
            //   7300                 | jae                 2
            //   6f                   | outsd               dx, dword ptr [esi]
            //   007200               | add                 byte ptr [edx], dh
            //   49                   | dec                 ecx
            //   00640000             | add                 byte ptr [eax + eax], ah

        $sequence_4 = { 006900 6e 0033 0032 005f00 }
            // n = 5, score = 100
            //   006900               | add                 byte ptr [ecx], ch
            //   6e                   | outsb               dx, byte ptr [esi]
            //   0033                 | add                 byte ptr [ebx], dh
            //   0032                 | add                 byte ptr [edx], dh
            //   005f00               | add                 byte ptr [edi], bl

        $sequence_5 = { 6d 006200 65007200 4f 006600 43 006f00 }
            // n = 7, score = 100
            //   6d                   | insd                dword ptr es:[edi], dx
            //   006200               | add                 byte ptr [edx], ah
            //   65007200             | add                 byte ptr gs:[edx], dh
            //   4f                   | dec                 edi
            //   006600               | add                 byte ptr [esi], ah
            //   43                   | inc                 ebx
            //   006f00               | add                 byte ptr [edi], ch

        $sequence_6 = { 0918 ac 0100 0000 }
            // n = 4, score = 100
            //   0918                 | or                  dword ptr [eax], ebx
            //   ac                   | lodsb               al, byte ptr [esi]
            //   0100                 | add                 dword ptr [eax], eax
            //   0000                 | add                 byte ptr [eax], al

        $sequence_7 = { 006900 6e 0033 0032 005f00 50 006800 }
            // n = 7, score = 100
            //   006900               | add                 byte ptr [ecx], ch
            //   6e                   | outsb               dx, byte ptr [esi]
            //   0033                 | add                 byte ptr [ebx], dh
            //   0032                 | add                 byte ptr [edx], dh
            //   005f00               | add                 byte ptr [edi], bl
            //   50                   | push                eax
            //   006800               | add                 byte ptr [eax], ch

        $sequence_8 = { 7200 65006e00 7400 43 }
            // n = 4, score = 100
            //   7200                 | jb                  2
            //   65006e00             | add                 byte ptr gs:[esi], ch
            //   7400                 | je                  2
            //   43                   | inc                 ebx

        $sequence_9 = { 7500 6d 006200 65007200 4f 006600 43 }
            // n = 7, score = 100
            //   7500                 | jne                 2
            //   6d                   | insd                dword ptr es:[edi], dx
            //   006200               | add                 byte ptr [edx], ah
            //   65007200             | add                 byte ptr gs:[edx], dh
            //   4f                   | dec                 edi
            //   006600               | add                 byte ptr [esi], ah
            //   43                   | inc                 ebx

    condition:
        7 of them and filesize < 885760
}