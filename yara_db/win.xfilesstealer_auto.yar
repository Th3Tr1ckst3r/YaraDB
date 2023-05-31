rule win_xfilesstealer_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.xfilesstealer."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.xfilesstealer"
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
        $sequence_0 = { f70700008000 0f859fb90100 4885c9 7405 e8???????? 4889742448 89742450 }
            // n = 7, score = 100
            //   f70700008000         | test                esp, esp
            //   0f859fb90100         | jne                 0x14f8
            //   4885c9               | mov                 edx, ebp
            //   7405                 | mov                 eax, edx
            //   e8????????           |                     
            //   4889742448           | dec                 eax
            //   89742450             | mov                 esi, ecx

        $sequence_1 = { 7408 488bcf e8???????? 4885f6 0f8558682400 8bc3 488b9c2498000000 }
            // n = 7, score = 100
            //   7408                 | cmp                 dword ptr [edi], edi
            //   488bcf               | je                  0x12f
            //   e8????????           |                     
            //   4885f6               | dec                 eax
            //   0f8558682400         | mov                 ecx, dword ptr [edi + 0x10]
            //   8bc3                 | dec                 eax
            //   488b9c2498000000     | mov                 edx, ecx

        $sequence_2 = { b9e9fd0000 ff15???????? 33c9 894dd0 49893e 488b5540 4885d2 }
            // n = 7, score = 100
            //   b9e9fd0000           | mov                 ecx, esi
            //   ff15????????         |                     
            //   33c9                 | dec                 esp
            //   894dd0               | mov                 eax, edi
            //   49893e               | dec                 eax
            //   488b5540             | test                ebx, ebx
            //   4885d2               | je                  0x63b

        $sequence_3 = { c740b0e50000c0 4c896890 4c896888 4c896898 44896820 e8???????? 84c0 }
            // n = 7, score = 100
            //   c740b0e50000c0       | dec                 ecx
            //   4c896890             | mov                 ecx, dword ptr [esi]
            //   4c896888             | mov                 edx, esi
            //   4c896898             | inc                 ecx
            //   44896820             | mov                 eax, 0x100
            //   e8????????           |                     
            //   84c0                 | or                  edx, 0xe000000

        $sequence_4 = { ffd3 4889442458 488b7c2438 418bce 0f57c0 f2480f2ac1 f20f5e05???????? }
            // n = 7, score = 100
            //   ffd3                 | dec                 eax
            //   4889442458           | mov                 ebx, dword ptr [eax + 0x58]
            //   488b7c2438           | dec                 eax
            //   418bce               | mov                 ecx, ebx
            //   0f57c0               | dec                 ecx
            //   f2480f2ac1           | mov                 ecx, esi
            //   f20f5e05????????     |                     

        $sequence_5 = { e8???????? 4883630800 83631000 488b4b18 4885c9 740a e8???????? }
            // n = 7, score = 100
            //   e8????????           |                     
            //   4883630800           | cmp                 eax, 2
            //   83631000             | jle                 0x1df0
            //   488b4b18             | cmp                 eax, 4
            //   4885c9               | je                  0x1df0
            //   740a                 | cmp                 eax, 5
            //   e8????????           |                     

        $sequence_6 = { e8???????? 4885c0 7429 488b4c2460 488901 488b4c2420 ff15???????? }
            // n = 7, score = 100
            //   e8????????           |                     
            //   4885c0               | je                  0x1f27c6
            //   7429                 | test                edx, edx
            //   488b4c2460           | je                  0x12cb
            //   488901               | mov                 cl, byte ptr [ebx]
            //   488b4c2420           | lea                 eax, [ecx - 0x1f]
            //   ff15????????         |                     

        $sequence_7 = { ffd3 85c0 488d0530d52600 7507 488d050fd52600 488b5c2430 4883c420 }
            // n = 7, score = 100
            //   ffd3                 | mov                 edi, ecx
            //   85c0                 | mov                 dword ptr [esp + 0x30], ecx
            //   488d0530d52600       | dec                 ebp
            //   7507                 | test                eax, eax
            //   488d050fd52600       | je                  0x1e27
            //   488b5c2430           | dec                 ecx
            //   4883c420             | mov                 eax, dword ptr [eax]

        $sequence_8 = { ffc5 f605????????02 7417 e8???????? 4885c0 740d 8b4808 }
            // n = 7, score = 100
            //   ffc5                 | lea                 ecx, [ebp + 0x460]
            //   f605????????02       |                     
            //   7417                 | test                esi, esi
            //   e8????????           |                     
            //   4885c0               | jns                 0x3dd
            //   740d                 | mov                 edx, 0x447
            //   8b4808               | mov                 ecx, esi

        $sequence_9 = { ff15???????? 4c8bc7 8bd6 498bce ffd3 85c0 782d }
            // n = 7, score = 100
            //   ff15????????         |                     
            //   4c8bc7               | or                  eax, 0xffffffff
            //   8bd6                 | mov                 ebx, eax
            //   498bce               | dec                 esp
            //   ffd3                 | lea                 eax, [0x1a556a]
            //   85c0                 | mov                 edx, edi
            //   782d                 | dec                 eax

    condition:
        7 of them and filesize < 20821780
}