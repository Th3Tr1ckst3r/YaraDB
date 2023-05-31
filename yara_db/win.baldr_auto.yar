rule win_baldr_auto {

    meta:
        author = "Felix Bilstein - yara-signator at cocacoding dot com"
        date = "2019-11-26"
        version = "1"
        description = "autogenerated rule brought to you by yara-signator"
        tool = "yara-signator 0.1a"
        malpedia_reference = "https://malpedia.caad.fkie.fraunhofer.de/details/win.baldr"
        malpedia_version = "20190204"
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
        $sequence_0 = { 3207 2915???????? 0e 0812 80e508 0808 081d???????? }
            // n = 7, score = 100
            //   3207                 | xor                 al, byte ptr [edi]
            //   2915????????         |                     
            //   0e                   | push                cs
            //   0812                 | or                  byte ptr [edx], dl
            //   80e508               | and                 ch, 8
            //   0808                 | or                  byte ptr [eax], cl
            //   081d????????         |                     

        $sequence_1 = { 0d0705125d 1280ad125d12 80b10848073115 126101 }
            // n = 4, score = 100
            //   0d0705125d           | or                  eax, 0x5d120507
            //   1280ad125d12         | adc                 al, byte ptr [eax + 0x125d12ad]
            //   80b10848073115       | xor                 byte ptr [ecx + 0x31074808], 0x15
            //   126101               | adc                 ah, byte ptr [ecx + 1]

        $sequence_2 = { 0808 0808 1107 0d0e11809d 0808 0808 }
            // n = 6, score = 100
            //   0808                 | or                  byte ptr [eax], cl
            //   0808                 | or                  byte ptr [eax], cl
            //   1107                 | adc                 dword ptr [edi], eax
            //   0d0e11809d           | or                  eax, 0x9d80110e
            //   0808                 | or                  byte ptr [eax], cl
            //   0808                 | or                  byte ptr [eax], cl

        $sequence_3 = { 0808 0d07071d05 0e 1d051280b5 0808 0832 07 }
            // n = 7, score = 100
            //   0808                 | or                  byte ptr [eax], cl
            //   0d07071d05           | or                  eax, 0x51d0707
            //   0e                   | push                cs
            //   1d051280b5           | sbb                 eax, 0xb5801205
            //   0808                 | or                  byte ptr [eax], cl
            //   0832                 | or                  byte ptr [edx], dh
            //   07                   | pop                 es

        $sequence_4 = { 1511650112 751d 127508 12751d 127508 }
            // n = 5, score = 100
            //   1511650112           | adc                 eax, 0x12016511
            //   751d                 | jne                 0x1f
            //   127508               | adc                 dh, byte ptr [ebp + 8]
            //   12751d               | adc                 dh, byte ptr [ebp + 0x1d]
            //   127508               | adc                 dh, byte ptr [ebp + 8]

        $sequence_5 = { 0812 7d08 0808 0808 0808 }
            // n = 5, score = 100
            //   0812                 | or                  byte ptr [edx], dl
            //   7d08                 | jge                 0xa
            //   0808                 | or                  byte ptr [eax], cl
            //   0808                 | or                  byte ptr [eax], cl
            //   0808                 | or                  byte ptr [eax], cl

        $sequence_6 = { 0820 07 181d???????? 0e }
            // n = 4, score = 100
            //   0820                 | or                  byte ptr [eax], ah
            //   07                   | pop                 es
            //   181d????????         |                     
            //   0e                   | push                cs

        $sequence_7 = { 0908 0807 07 0412 5d }
            // n = 5, score = 100
            //   0908                 | or                  dword ptr [eax], ecx
            //   0807                 | or                  byte ptr [edi], al
            //   07                   | pop                 es
            //   0412                 | add                 al, 0x12
            //   5d                   | pop                 ebp

        $sequence_8 = { 0807 0215???????? 081f 07 1415 126101 }
            // n = 6, score = 100
            //   0807                 | or                  byte ptr [edi], al
            //   0215????????         |                     
            //   081f                 | or                  byte ptr [edi], bl
            //   07                   | pop                 es
            //   1415                 | adc                 al, 0x15
            //   126101               | adc                 ah, byte ptr [ecx + 1]

        $sequence_9 = { 0808 41 07 2415 126101 }
            // n = 5, score = 100
            //   0808                 | or                  byte ptr [eax], cl
            //   41                   | inc                 ecx
            //   07                   | pop                 es
            //   2415                 | and                 al, 0x15
            //   126101               | adc                 ah, byte ptr [ecx + 1]

    condition:
        7 of them
}