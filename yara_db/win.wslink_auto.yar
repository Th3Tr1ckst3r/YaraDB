rule win_wslink_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2023-03-28"
        version = "1"
        description = "Detects win.wslink."
        info = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator v0.6.0"
        signator_config = "callsandjumps;datarefs;binvalue"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.wslink"
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
        $sequence_0 = { c78483d0010000ffffffff ff8b10020000 8b8310020000 83f8ff 0f44c6 898310020000 398314020000 }
            // n = 7, score = 100
            //   c78483d0010000ffffffff     | dec    eax
            //   ff8b10020000         | mov                 edi, edx
            //   8b8310020000         | dec                 eax
            //   83f8ff               | mov                 ebp, ecx
            //   0f44c6               | inc                 ebp
            //   898310020000         | test                eax, eax
            //   398314020000         | jg                  0xd39

        $sequence_1 = { e9???????? 488bc6 4c896c2438 498bf5 4c8be8 895c2430 488b5c2440 }
            // n = 7, score = 100
            //   e9????????           |                     
            //   488bc6               | dec                 eax
            //   4c896c2438           | mov                 edi, ecx
            //   498bf5               | inc                 esp
            //   4c8be8               | lea                 eax, [eax + 0x65]
            //   895c2430             | dec                 eax
            //   488b5c2440           | lea                 edx, [0x6f39f]

        $sequence_2 = { e9???????? 4863c7 807c18ffbc 7427 ba95000000 4c8d0d58bf0600 b904000000 }
            // n = 7, score = 100
            //   e9????????           |                     
            //   4863c7               | lea                 eax, [eax - 0xc]
            //   807c18ffbc           | dec                 eax
            //   7427                 | add                 ecx, eax
            //   ba95000000           | or                  edx, 0xffffffff
            //   4c8d0d58bf0600       | mov                 dword ptr [esp + 0x20], 0x9f
            //   b904000000           | dec                 eax

        $sequence_3 = { 81e100ff0000 4433c1 418b4b08 4433c7 4133c0 45894320 41894324 }
            // n = 7, score = 100
            //   81e100ff0000         | xor                 eax, eax
            //   4433c1               | dec                 eax
            //   418b4b08             | add                 esp, 0x90
            //   4433c7               | inc                 ecx
            //   4133c0               | pop                 ebp
            //   45894320             | pop                 edi
            //   41894324             | pop                 ebx

        $sequence_4 = { 410fb6c0 33ac8690f00800 418bc1 336f10 48c1e810 0fb6d0 8bc3 }
            // n = 7, score = 100
            //   410fb6c0             | cmp                 byte ptr [eax], dh
            //   33ac8690f00800       | jne                 0xe45
            //   418bc1               | btr                 ebx, 0x1f
            //   336f10               | mov                 eax, dword ptr [esp + 0xe0]
            //   48c1e810             | dec                 eax
            //   0fb6d0               | inc                 eax
            //   8bc3                 | inc                 ebx

        $sequence_5 = { e8???????? 488bf8 4885c0 7518 c74424202b010000 4c8d0dc3ee0800 448d4041 }
            // n = 7, score = 100
            //   e8????????           |                     
            //   488bf8               | dec                 eax
            //   4885c0               | test                eax, eax
            //   7518                 | je                  0x452
            //   c74424202b010000     | dec                 eax
            //   4c8d0dc3ee0800       | mov                 ecx, eax
            //   448d4041             | inc                 ebp

        $sequence_6 = { 85c9 75ed 85d2 7528 4c8d054a5c0a00 498bc3 4d2bc3 }
            // n = 7, score = 100
            //   85c9                 | dec                 eax
            //   75ed                 | lea                 ecx, [0x36005]
            //   85d2                 | dec                 eax
            //   7528                 | test                eax, eax
            //   4c8d054a5c0a00       | je                  0x1a3e
            //   498bc3               | inc                 eax
            //   4d2bc3               | push                ebx

        $sequence_7 = { 4c896c2450 7417 488d5360 488d4b40 e8???????? c7837401000000000000 0fb6430d }
            // n = 7, score = 100
            //   4c896c2450           | mov                 ecx, ecx
            //   7417                 | dec                 ebp
            //   488d5360             | mov                 ebp, ecx
            //   488d4b40             | dec                 ebp
            //   e8????????           |                     
            //   c7837401000000000000     | mov    edi, eax
            //   0fb6430d             | dec                 eax

        $sequence_8 = { ba96000000 c74424207e000000 e8???????? 488d059bd10700 4c8d0d9cd10700 488d159dd10700 e9???????? }
            // n = 7, score = 100
            //   ba96000000           | mov                 ecx, esi
            //   c74424207e000000     | dec                 eax
            //   e8????????           |                     
            //   488d059bd10700       | mov                 ebp, eax
            //   4c8d0d9cd10700       | dec                 eax
            //   488d159dd10700       | test                eax, eax
            //   e9????????           |                     

        $sequence_9 = { c1c11e c1c013 33c8 418bc2 897d9b c1c00a 418bd9 }
            // n = 7, score = 100
            //   c1c11e               | je                  0x1143
            //   c1c013               | dec                 ecx
            //   33c8                 | mov                 ecx, edi
            //   418bc2               | dec                 eax
            //   897d9b               | mov                 ebx, dword ptr [esp + 0x80]
            //   c1c00a               | mov                 ecx, esi
            //   418bd9               | inc                 ecx

    condition:
        7 of them and filesize < 2007040
}