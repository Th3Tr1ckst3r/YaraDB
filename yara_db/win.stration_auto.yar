rule win_stration_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.stration."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.stration"
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
        $sequence_0 = { 85c0 757c a1???????? 8b0d???????? 8b15???????? 89442404 }
            // n = 6, score = 100
            //   85c0                 | test                eax, eax
            //   757c                 | jne                 0x7e
            //   a1????????           |                     
            //   8b0d????????         |                     
            //   8b15????????         |                     
            //   89442404             | mov                 dword ptr [esp + 4], eax

        $sequence_1 = { 8b4c2434 c1e908 32c8 884c2435 8b542434 c1ea10 }
            // n = 6, score = 100
            //   8b4c2434             | mov                 ecx, dword ptr [esp + 0x34]
            //   c1e908               | shr                 ecx, 8
            //   32c8                 | xor                 cl, al
            //   884c2435             | mov                 byte ptr [esp + 0x35], cl
            //   8b542434             | mov                 edx, dword ptr [esp + 0x34]
            //   c1ea10               | shr                 edx, 0x10

        $sequence_2 = { 8a0d???????? 80c187 6a00 880d???????? 6a01 }
            // n = 5, score = 100
            //   8a0d????????         |                     
            //   80c187               | add                 cl, 0x87
            //   6a00                 | push                0
            //   880d????????         |                     
            //   6a01                 | push                1

        $sequence_3 = { 8a4c2418 32d1 8854040c 40 83f80d 7cec 8d4c240c }
            // n = 7, score = 100
            //   8a4c2418             | mov                 cl, byte ptr [esp + 0x18]
            //   32d1                 | xor                 dl, cl
            //   8854040c             | mov                 byte ptr [esp + eax + 0xc], dl
            //   40                   | inc                 eax
            //   83f80d               | cmp                 eax, 0xd
            //   7cec                 | jl                  0xffffffee
            //   8d4c240c             | lea                 ecx, [esp + 0xc]

        $sequence_4 = { 83ec1c 85c0 757c a1???????? }
            // n = 4, score = 100
            //   83ec1c               | sub                 esp, 0x1c
            //   85c0                 | test                eax, eax
            //   757c                 | jne                 0x7e
            //   a1????????           |                     

        $sequence_5 = { 5f 7512 a1???????? 03db 85c0 7407 }
            // n = 6, score = 100
            //   5f                   | pop                 edi
            //   7512                 | jne                 0x14
            //   a1????????           |                     
            //   03db                 | add                 ebx, ebx
            //   85c0                 | test                eax, eax
            //   7407                 | je                  9

        $sequence_6 = { 894c2410 89542414 33c0 8d9b00000000 }
            // n = 4, score = 100
            //   894c2410             | mov                 dword ptr [esp + 0x10], ecx
            //   89542414             | mov                 dword ptr [esp + 0x14], edx
            //   33c0                 | xor                 eax, eax
            //   8d9b00000000         | lea                 ebx, [ebx]

        $sequence_7 = { bb62750400 803f00 75b3 33c0 5e 5f }
            // n = 6, score = 100
            //   bb62750400           | mov                 ebx, 0x47562
            //   803f00               | cmp                 byte ptr [edi], 0
            //   75b3                 | jne                 0xffffffb5
            //   33c0                 | xor                 eax, eax
            //   5e                   | pop                 esi
            //   5f                   | pop                 edi

        $sequence_8 = { 884c245c 33c0 8d9b00000000 8b542458 }
            // n = 4, score = 100
            //   884c245c             | mov                 byte ptr [esp + 0x5c], cl
            //   33c0                 | xor                 eax, eax
            //   8d9b00000000         | lea                 ebx, [ebx]
            //   8b542458             | mov                 edx, dword ptr [esp + 0x58]

        $sequence_9 = { 83f813 7ce9 8d4c240c b81f85eb51 f7e9 }
            // n = 5, score = 100
            //   83f813               | cmp                 eax, 0x13
            //   7ce9                 | jl                  0xffffffeb
            //   8d4c240c             | lea                 ecx, [esp + 0xc]
            //   b81f85eb51           | mov                 eax, 0x51eb851f
            //   f7e9                 | imul                ecx

    condition:
        7 of them and filesize < 49152
}