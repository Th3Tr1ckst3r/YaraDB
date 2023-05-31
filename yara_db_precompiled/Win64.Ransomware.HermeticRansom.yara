YARA�          �       `         @  F      �   &         >      x  �      ]         `  s         s"         s*      �   +                                        (                            ��������������������������������������������   @      G                     U      G                     \      c                     l      t                     ~      �                     �      �                     �      �                     �      �                                              "  ��������             K     �ں�ں��        ����������������           6  K    �ں�ں��        ����������������           H  K    �ں�ں��        ����������������           Z  K    �ں�ں��        ����������������           l      ��������������������default Win64_Ransomware_HermeticRansom tc_detection malicious  author ReversingLabs source status RELEASED sharing TLP:WHITE category MALWARE malware HERMETICRANSOM description Yara rule that detects HermeticRansom ransomware. tc_detection_type Ransomware tc_detection_name HermeticRansom tc_detection_factor $drop_ransom_note $encrypt_files_p1 $encrypt_files_p2 $find_files \       ? �@MZd/      �   /#   BB   8      p           /                  ��e�H����%�����H���������H�����$�����H�;�A���������H���젠���H�����$�����H�����$�����蠠������$���D�$����D�$����D�$����D�$�����$�蠠���H���D�$��H���L�$��H�����$�����H���5�����H���l�$��H���l�$��蠠���H���m��H�����$�����H�����$�����H��������H��������H�����$�����H�����$�����H��������H��������H�����$�����H�����$�����H�Ǣ�$�����H�����$�����H���D�$��H�ǢD�$������H�ǢD�$������蠠���H���D�$��H���D�$��H���L�$��H�����$�����H��������H����$�H�ǢD�$������蠠���H���D�$��H���L�$��H�����$�����H����$�H���L�$��H���D�$��H��������H���D�$��H�ǢD�$������蠠���H���D�$��H���L�$��H�Ǣ�$�����H���D�$��H���L�$��H��������H���D�$��H�ǢD�$������蠠���H���D�$��H���L�$��H����$�H���D�$��H�ǢD�$������ǢD�$������蠠���H���D�$��H�����$�����H���L�$��H�����$�����H���D�$��Ǣ�$�����H��������H���T�$��蠠��������������H�����$�����H��H�����$�����H����������������蠢$�T���H��������H�����$��Ǡ�$�D���H�����$�����H��$�L���H�����$�����H��$�D���H�����蠠����$�D�Ǡ�����$�D�ǢH��$�D���H�$����H��$�L���H��$�D���H�����蠠����$�D�ǢH��$�D���H��������H��$�L���H��$�D���H�����$��ǢH��$�L���H��$�D���H�����蠠����$�D�ǢH��$�D���H��������H��$�D���H��$�L���H�$����H�����$�����H��$�L���H��$�D���H�����蠠����$�D�ǢH�$����H��������H�����$�����H��$�L���H��$�D���H��$�D���H�����蠠����$�D�ǢH������$�D�ǢH��$�D���H�����$�����H�����$��ǢH�����$�����H�����$�����H��������H��������H�����$�����H�����$�����H��������H��������H�����$�����H�����$�����H��m���H�����蠢$�l���H��$�l���H�����5���H�����$�����H��$�L���H��$�D���H������$�����$�D����$�D����$�D����$�D���$��������蠠���$�����H�����$�����H�����좁�H���������A�;�H�����$�����H���������H�����%����H�e��蠠���H���D�$��H�����$�����H���L�$��H�����$�����H��������H��������H���5�����H����$�H���t�$��H���\�$��H��������H���T�$��H�ǢD�$������H��������H��������H���\�$��H���T�$��蠠���H���D�$��H���L�$��H���T�$��H�����$�����H���ۢ�������H���D�$��H���L�$��H�����$�����H��������H����$�H�ǢD�$������H�ǢD�$������蠠���H��������H����$�H���D�$��H�����H������H���蠢H��ȢH������H�����$�����H���ࠢH�)���H���L�$��H���L�$��蠠���H�����$�����H����$��W�����D�$��蠠���H�����$�����H������~��������H�����$�����1�ɢ렢H�����$�����H�����$�����H�9����������H���ʢH���ᠢH���¢H���ӢH���⠢H�9�Ѣ�������H���t�$��H�9���������H�����$�����H��������H��������H���=�����H���<�$�H������H�$�<���H�����=���H��������H��������H�����$�����H���������9�H��$�t���H��������Ѣ9�H�����H�Ӣ��H�¢��H�����H�ʢ��H����������9�H�����$�����H�����$�����H���ɢ1�����$�����H��������~������H�����$�����H�����蠢$�D�����W��$����H�����$�����H�����蠢$�L���H��$�L���H���)�H�����H�����$�����H������H�Ȣ�H�����H������H�����H��$�D���H�$����H��������H�����蠠����$�D�ǢH������$�D�ǢH�$����H��������H�����$�����H��$�L���H��$�D���H��������ۢ��H�����$�����H��$�T���H��$�L���H��$�D���H�����蠢$�T���H��$�\���H��������H��������H������$�D�ǢH��$�T���H��������H��$�\���H��$�t���H�$����H�����5���H��������H��������H�����$�����H��$�L���H�����$�����H��$�D���H�����譢\�$��H���D�$��H�)�΢H����H���ޢH������H�!�΢H�����$�����H����H���t�$��H�)�ʢH���T�$��H���\�$��蠠���H���D�$��H���L�$��H���T�$��H���\�$��H���ۢ�������H�����$�����H����$�H���D�$��H���L�$��H���T�$��蠠���頠���H�������������H���ࠢH���L�$��H�9�Ȣ�������H��������H��������H���5�����H����$�H���\�$��H���t�$��H���T�$��H�)�¢H���ӢH���ڢH������H�!�¢H�����$�����H���H���T�$��H�)���H���L�$��H���\�$��蠠���H���D�$��H���L�$��H���T�$��H���\�$��H���ۢt��H�����$�����H�����$�����H�����$�����H�����$�����H�����$�����H���Ġ����âH�����$�����H����$�H���D�$��H���L�$��H���T�$��蠠���H�����$��$�����H�����蠢$�T���H��$�L���H��$�D���H�$����H�����$�����H�à����Ģ��H�����$�����H�����$�����H�����$�����H�����$�����H�����$�����H��t�ۢ��H��$�\���H��$�T���H��$�L���H��$�D���H�����蠢$�\���H��$�L���H���)�H��$�T���H���H�����$�����H�¢!�H������H�ڢ��H�Ӣ��H�¢)�H��$�T���H��$�t���H��$�\���H�$����H�����5���H��������H��������H��������Ȣ9�H��$�L���H�����H�������������H�����頠���蠢$�T���H��$�L���H��$�D���H�$����H�����$�����H��������ۢ��H��$�\���H��$�T���H��$�L���H��$�D���H�����蠢$�\���H��$�T���H�ʢ)�H��$�t���H����H�����$�����H�΢!�H������H�ޢ��H�󢉢H�΢)�H��$�D���H��$�\��e�H����%�����H���������H�;�a���������H���젢H���l�$��H���l�$��H�Ǣ�$�����H�����$�����H���D�$��H�����$�����H���L�$��H��������H���T�$��H�ǢD�$������H��������H��������H���T�$��H���\�$��H��������H���T�$��H�ǢD�$������蠠���H���D�$��H���D�$��H���L�$��H���L�$��H�����$�����H����$�H�����$�����H���\�$��H���D�$��H���L�$��蠠���H���D�$��H������������H�����$�����H�����$�����H����$�H���L�$��H�ǢD�$������ǢD�$������蠠���H���D�$��H���L�$��H���ɢu��H���D�$��H����$�蠠���H���D�$��H�����t��H���D�$��H����$�蠠���Ƣ��$������H���l�$��H���Ġ�âH���D�$��H����$�蠠���Ƣ��$������H���l�$��H���Ġ�âH����$�蠠���Ƣ��$������H���l�$��H���Ġ�âH���D�$��$�D���H�à�Ģ��H��$�l���H������$���Ơ�����$����H�à�Ģ��H��$�l���H������$���Ơ�����$����H��$�D���H�à�Ģ��H��$�l���H������$���Ơ�����$����H��$�D���H��t�����H��$�D���H������$����H��$�D���H��u�ɢ��H��$�L���H��$�D���H�����蠠����$�D�Ǡ�����$�D�ǢH��$�L���H�$����H�����$�����H�����$�����H������������H��$�D���H�����蠢$�L���H��$�D���H��$�\���H�����$�����H�$����H�����$�����H��$�L���H��$�L���H��$�D���H��$�D���H�����蠠����$�D�ǢH��$�T���H��������H��$�\���H��$�T���H��������H��������H������$�D�ǢH��$�T���H��������H��$�L���H�����$�����H��$�D���H�����$�����H�����$��ǢH��$�l���H��$�l���H��좃�H���������a�;�H���������H�����%����H�e�                                
                                                                 $                                                      %                              %&                              :                                                                                                                                                                                                                                                                                                              �              �                  �              �"                                                                                                                                                                                          �                                  �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        [      "  ��������          8      2     	
  ��������          p      �     a  ��������          �      �       ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                       (     0                
       
      
      
         h      P      X   
   (   
   0   
   8   
   @      �      �      �   
   P   
   X   
   `   
   h      �      �      �   
   x   
   �   
   �   
   �            (      1      I   