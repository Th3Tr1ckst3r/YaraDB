rule win_snslocker_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2018-11-23"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator 0.1a"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.snslocker"
        malpedia_version = "20180607"
        malpedia_license = "CC BY-SA 4.0"
        malpedia_sharing = "TLP:WHITE"

    /* DISCLAIMER
     * The strings used in this rule have been automatically selected from the
     * disassembly of memory dumps and unpacked files, using yara-signator.
     * The code and documentation / approach will be published in the near future here:
     * https://github.com/fxb-cocacoding/yara-signator
     * As Malpedia is used as data source, please note that for a given
     * number of families, only single samples are documented.
     * This likely impacts the degree of generalization these rules will offer.
     * Take the described generation method also into consideration when you
     * apply the rules in your use cases and assign them confidence levels.
     */

    strings:
        $sequence_0 = { 5f 006765 745f 436f }
            // n = 4, score = 1000
            //   5f                   | pop                 rdi
            //   006765               | add                 byte ptr [rdi + 0x65], ah
            //   745f                 | je                  0x42677c
            //   436f                 | outsd               dx, dword ptr [rsi]

        $sequence_1 = { 59 007661 6c 7565 }
            // n = 4, score = 1000
            //   59                   | pop                 rcx
            //   007661               | add                 byte ptr [rsi + 0x61], dh
            //   6c                   | insb                byte ptr [rdi], dx
            //   7565                 | jne                 0x42677b

        $sequence_2 = { 6c 7565 5f 5f }
            // n = 4, score = 1000
            //   6c                   | insb                byte ptr [rdi], dx
            //   7565                 | jne                 0x42677b
            //   5f                   | pop                 rdi
            //   5f                   | pop                 rdi

        $sequence_3 = { 4554 444553 4b57 414c4c50 }
            // n = 4, score = 1000
            //   4554                 | push                r12
            //   444553               | push                r11
            //   4b57                 | push                r15
            //   414c4c50             | push                rax

        $sequence_4 = { 7461 6e 676c 6546005369 }
            // n = 4, score = 1000
            //   7461                 | je                  0x4266ac
            //   6e                   | outsb               dx, byte ptr [rsi]
            //   676c                 | insb                byte ptr [edi], dx
            //   6546005369           | add                 byte ptr gs:[rbx + 0x69], r10b

        $sequence_5 = { 657249 44006765 745f 7061 }
            // n = 4, score = 1000
            //   657249               | jb                  0x4265c8
            //   44006765             | add                 byte ptr [rdi + 0x65], r12b
            //   745f                 | je                  0x4265e4
            //   7061                 | jo                  0x4265e8

        $sequence_6 = { 6e 676c 6546005369 7a65 }
            // n = 4, score = 1000
            //   6e                   | outsb               dx, byte ptr [rsi]
            //   676c                 | insb                byte ptr [edi], dx
            //   6546005369           | add                 byte ptr gs:[rbx + 0x69], r10b
            //   7a65                 | jp                  0x4266ba

        $sequence_7 = { 44007365 745f 7573 657249 }
            // n = 4, score = 1000
            //   44007365             | add                 byte ptr [rbx + 0x65], r14b
            //   745f                 | je                  0x4265d9
            //   7573                 | jne                 0x4265ef
            //   657249               | jb                  0x4265c8

        $sequence_8 = { 4944006765 745f 7573 657249 }
            // n = 4, score = 1000
            //   4944006765           | add                 byte ptr [rdi + 0x65], r12b
            //   745f                 | je                  0x4265ce
            //   7573                 | jne                 0x4265e4
            //   657249               | jb                  0x4265bd

        $sequence_9 = { 444553 4b57 414c4c50 4150 }
            // n = 4, score = 1000
            //   444553               | push                r11
            //   4b57                 | push                r15
            //   414c4c50             | push                rax
            //   4150                 | push                r8

    condition:
        7 of them
}