rule win_parallax_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.parallax."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.parallax"
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
        $sequence_0 = { ff9684000000 87fa 5f 5e 8be5 5d }
            // n = 6, score = 200
            //   ff9684000000         | call                dword ptr [esi + 0x84]
            //   87fa                 | xchg                edx, edi
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi
            //   8be5                 | mov                 esp, ebp
            //   5d                   | pop                 ebp

        $sequence_1 = { ff0d???????? 8b15???????? 6a0a ff92e0000000 833d????????00 75cb 8b35???????? }
            // n = 7, score = 200
            //   ff0d????????         |                     
            //   8b15????????         |                     
            //   6a0a                 | push                0xa
            //   ff92e0000000         | call                dword ptr [edx + 0xe0]
            //   833d????????00       |                     
            //   75cb                 | jne                 0xffffffcd
            //   8b35????????         |                     

        $sequence_2 = { ff0d???????? 8b15???????? 6a0a ff92e0000000 }
            // n = 4, score = 200
            //   ff0d????????         |                     
            //   8b15????????         |                     
            //   6a0a                 | push                0xa
            //   ff92e0000000         | call                dword ptr [edx + 0xe0]

        $sequence_3 = { ff35???????? 52 ff7508 e8???????? }
            // n = 4, score = 200
            //   ff35????????         |                     
            //   52                   | push                edx
            //   ff7508               | push                dword ptr [ebp + 8]
            //   e8????????           |                     

        $sequence_4 = { 6a00 e8???????? 8be5 5d c21400 }
            // n = 5, score = 200
            //   6a00                 | push                0
            //   e8????????           |                     
            //   8be5                 | mov                 esp, ebp
            //   5d                   | pop                 ebp
            //   c21400               | ret                 0x14

        $sequence_5 = { 6a00 ff35???????? ff5260 8b750c c7464401000000 8b763c }
            // n = 6, score = 200
            //   6a00                 | push                0
            //   ff35????????         |                     
            //   ff5260               | call                dword ptr [edx + 0x60]
            //   8b750c               | mov                 esi, dword ptr [ebp + 0xc]
            //   c7464401000000       | mov                 dword ptr [esi + 0x44], 1
            //   8b763c               | mov                 esi, dword ptr [esi + 0x3c]

        $sequence_6 = { 750f ff7514 6a00 ff7510 }
            // n = 4, score = 200
            //   750f                 | jne                 0x11
            //   ff7514               | push                dword ptr [ebp + 0x14]
            //   6a00                 | push                0
            //   ff7510               | push                dword ptr [ebp + 0x10]

        $sequence_7 = { 8b4838 2b4d14 894820 8b4d14 894868 5f 5e }
            // n = 7, score = 200
            //   8b4838               | mov                 ecx, dword ptr [eax + 0x38]
            //   2b4d14               | sub                 ecx, dword ptr [ebp + 0x14]
            //   894820               | mov                 dword ptr [eax + 0x20], ecx
            //   8b4d14               | mov                 ecx, dword ptr [ebp + 0x14]
            //   894868               | mov                 dword ptr [eax + 0x68], ecx
            //   5f                   | pop                 edi
            //   5e                   | pop                 esi

        $sequence_8 = { 51 ff7634 52 ff750c e8???????? }
            // n = 5, score = 200
            //   51                   | push                ecx
            //   ff7634               | push                dword ptr [esi + 0x34]
            //   52                   | push                edx
            //   ff750c               | push                dword ptr [ebp + 0xc]
            //   e8????????           |                     

        $sequence_9 = { b8ffffffff 8be5 5d c21800 ff7508 e8???????? }
            // n = 6, score = 200
            //   b8ffffffff           | mov                 eax, 0xffffffff
            //   8be5                 | mov                 esp, ebp
            //   5d                   | pop                 ebp
            //   c21800               | ret                 0x18
            //   ff7508               | push                dword ptr [ebp + 8]
            //   e8????????           |                     

    condition:
        7 of them and filesize < 352256
}