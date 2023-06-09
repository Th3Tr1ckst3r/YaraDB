rule win_logpos_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.logpos."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.logpos"
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
        $sequence_0 = { c3 55 89e5 83ec04 c745fc00000000 eb33 ff45fc }
            // n = 7, score = 100
            //   c3                   | ret                 
            //   55                   | push                ebp
            //   89e5                 | mov                 ebp, esp
            //   83ec04               | sub                 esp, 4
            //   c745fc00000000       | mov                 dword ptr [ebp - 4], 0
            //   eb33                 | jmp                 0x35
            //   ff45fc               | inc                 dword ptr [ebp - 4]

        $sequence_1 = { 0f856cffffff 8b45fc 5b 89ec }
            // n = 4, score = 100
            //   0f856cffffff         | jne                 0xffffff72
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   5b                   | pop                 ebx
            //   89ec                 | mov                 esp, ebp

        $sequence_2 = { 837c241000 7507 b801000000 eb05 b800000000 }
            // n = 5, score = 100
            //   837c241000           | cmp                 dword ptr [esp + 0x10], 0
            //   7507                 | jne                 9
            //   b801000000           | mov                 eax, 1
            //   eb05                 | jmp                 7
            //   b800000000           | mov                 eax, 0

        $sequence_3 = { e8???????? 5f 81ef1f030000 8d9fe6090000 ff7368 ff5358 61 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   5f                   | pop                 edi
            //   81ef1f030000         | sub                 edi, 0x31f
            //   8d9fe6090000         | lea                 ebx, [edi + 0x9e6]
            //   ff7368               | push                dword ptr [ebx + 0x68]
            //   ff5358               | call                dword ptr [ebx + 0x58]
            //   61                   | popal               

        $sequence_4 = { 837d0c00 0f8462000000 6a40 6800300000 8b4510 50 }
            // n = 6, score = 100
            //   837d0c00             | cmp                 dword ptr [ebp + 0xc], 0
            //   0f8462000000         | je                  0x68
            //   6a40                 | push                0x40
            //   6800300000           | push                0x3000
            //   8b4510               | mov                 eax, dword ptr [ebp + 0x10]
            //   50                   | push                eax

        $sequence_5 = { 8945f8 8d870a060000 894304 8d8739060000 8903 8d8701070000 894308 }
            // n = 7, score = 100
            //   8945f8               | mov                 dword ptr [ebp - 8], eax
            //   8d870a060000         | lea                 eax, [edi + 0x60a]
            //   894304               | mov                 dword ptr [ebx + 4], eax
            //   8d8739060000         | lea                 eax, [edi + 0x639]
            //   8903                 | mov                 dword ptr [ebx], eax
            //   8d8701070000         | lea                 eax, [edi + 0x701]
            //   894308               | mov                 dword ptr [ebx + 8], eax

        $sequence_6 = { ff5360 8944241c 61 c9 c20400 55 }
            // n = 6, score = 100
            //   ff5360               | call                dword ptr [ebx + 0x60]
            //   8944241c             | mov                 dword ptr [esp + 0x1c], eax
            //   61                   | popal               
            //   c9                   | leave               
            //   c20400               | ret                 4
            //   55                   | push                ebp

        $sequence_7 = { 837dfc0f 0f8c05000000 8b45fc eb05 b800000000 89ec 5d }
            // n = 7, score = 100
            //   837dfc0f             | cmp                 dword ptr [ebp - 4], 0xf
            //   0f8c05000000         | jl                  0xb
            //   8b45fc               | mov                 eax, dword ptr [ebp - 4]
            //   eb05                 | jmp                 7
            //   b800000000           | mov                 eax, 0
            //   89ec                 | mov                 esp, ebp
            //   5d                   | pop                 ebp

        $sequence_8 = { 0f8409000000 83f860 0f8513000000 c78568ffffff01000000 8345f802 e9???????? }
            // n = 6, score = 100
            //   0f8409000000         | je                  0xf
            //   83f860               | cmp                 eax, 0x60
            //   0f8513000000         | jne                 0x19
            //   c78568ffffff01000000     | mov    dword ptr [ebp - 0x98], 1
            //   8345f802             | add                 dword ptr [ebp - 8], 2
            //   e9????????           |                     

        $sequence_9 = { 89450c 8d75c0 47 0fb607 85c0 7406 8806 }
            // n = 7, score = 100
            //   89450c               | mov                 dword ptr [ebp + 0xc], eax
            //   8d75c0               | lea                 esi, [ebp - 0x40]
            //   47                   | inc                 edi
            //   0fb607               | movzx               eax, byte ptr [edi]
            //   85c0                 | test                eax, eax
            //   7406                 | je                  8
            //   8806                 | mov                 byte ptr [esi], al

    condition:
        7 of them and filesize < 57344
}