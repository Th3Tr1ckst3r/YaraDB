YARA�          �       `            &      P  v         �      �  4      o   �        �         �         �      �   �                                     ��������                         ��������������������������������������������   !      -                     ]      d                     q      {                     �      �                     �      �                     /     5                    v     |                    �     �                    �     �                K     �ں�ں��    O      �  ��������           �  K    �ں�ں��          4  ��������           0  K    �ں�ں��    �      V  ��������           R  K    �ں�ں��    k      �  ��������           �  K    �ں�ں��    A      `  ��������           \  K    �ں�ں��        ����������������           �      ��������������������default MAL_PowerPool_Jul_2021_2 description Detect PowerPool malware (ALPC exploit variant) author Arkbird_SOLG reference https://www.welivesecurity.com/2018/09/05/powerpool-malware-exploits-zero-day-vulnerability/ date 2021-07-09 hash1 035f97af0def906fbd8f7f15fb8107a9e852a69160669e7c0781888180cd46d5 hash2 a72cdb6be7a967d3aa0021d2331b61af84455539e6f127720c9aac9b8392ec24 hash3 df7b9d972ac83cc4a590f09d74cb242de3442cc9c1f19ed08f62bd6ebc9fc0fd tlp White adversary IAmTheKing $s1 \ S t r i n g F i l e I n f o \ % 0 4 x % 0 4 x \ F i l e D e s c r i p t i o n $s2 / ? i d = % s & i n f o = % s $s3 r a r . e x e   a   - r   % s . r a r   - t a % 0 4 d % 0 2 d % 0 2 d % 0 2 d % 0 2 d % 0 2 d   - t b % 0 4 d % 0 2 d % 0 2 d % 0 2 d % 0 2 d % 0 2 d $s4 c m d   / c   p o w e r s h e l l . e x e   $ P S V e r s i o n T a b l e . P S V e r s i o n   >   " % s " $s5 c m d   / c   p o w e r s h e l l . e x e   " % s "   >   " % s " $s6 n       ? �@MZd/   %A � g/H   ?B          8      p      �      �                        ����Ģ�S�V�h�  �B� ���Ƞ�C� �蠢��������Ģ�V�h�  �B� ���Ƞ�C� �蠢��������Ģ���|�$� � �h�@�� � �t�a�3���U�h����C� �蠢�� � ���P��B� ���Ģ���Тf���������f�;�͢u��������C� �+�¢��Ǣ����d�$� �f���O����Ǣ�f�;�͢u�����Ȣ�������󢥢��Ȣ����h����B� �󢤢�  � � ���Ģ�3�����t�$� ��f�j� �h����C� �蠢�� � ����B� ���Ģ���Тf���������f���ɢu��������C� �+�¢��Ǣ����d�$� �f���O����Ǣ�f���ɢu�����Ȣ�������󢥢��Ȣ����h����B� �󢤢蠢�� � �ǢD�$�$�� � � ���t�$�$���Ģ�3���h�Т� � ���Ԡ�B� �� �B��Ԣ�� � ��Тh���3��Ģ��$�$�t��� � � ��$�$�D�Ǣ � ����袤�� �B����h��ᢃ�Ȣ�����򢋢����Ȣ����u�ɢ��f��Ǣ���O���f� �$�d�����Ǣ��¢+� �C��������u�ɢ��f���������f�Т���Ģ�� �B��𢸢 � ����� �C����h� �j�f�� �$�t�����3��Ģ�� � �  �袤�� �B����h��ᢃ�Ȣ�����򢋢����Ȣ����u�͢;�f��Ǣ���O���f� �$�d�����Ǣ��¢+� �C��������u�͢;�f���������f�Т���Ģ�� �B��P��� � ����� �C����h�U���3�a�t� � ��@�h� � �$�|����Ģ���������� �C��Ȣ�� �B�  �h�V��Ģ���������� �C��Ȣ�� �B�  �h�V�S��Ģ��    
                     
      $      	      &      (      ,   
   
   
       
                                                                    #          &                  0                              &.      &2                                      10          @                                                                                                           ]                                                                                                                                                  }*          �                                                                                                                                                                                                                                          �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ������������������������!          8   ������������������������          p   ������������������������1          �   ������������������������g          �   ����������������
   x   /               N      �  ��������                                                    (                          (      @      H      `      h      �      �      �      �      �      �      �      �                 0                
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
   �           �         
   �   
   �   
   �   
   �      H     0     8  
   �   
   �   
   �   
   �      &      /      8      A      J      S   