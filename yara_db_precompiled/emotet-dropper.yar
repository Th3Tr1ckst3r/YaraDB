YARA�          �          �         �      �  ~         �      �  N!         n&          n&        r2        zB      H  �J                            	         ��������                                  ��������   �      �                    
  ��������   @     X                    �  ��������   �     8                    �  ��������   �     �
             ��������������������������������������������         $                     H      O                     _      i                     �      �                     �      �                                              H      O                     _      i                     �      �                     �      6                                             H      O                     _      i                     �      �                     �      >                         	                    H      O                     _      i                     �      4	                    �      ?	                         �                    H      O                     _      i                     �      4	                    �                      	      �ں�ں��    <      �   ��������           �   �     �ں�ں��    J      (  ��������           $  �     �ں�ں��    [      w  ��������           s  �     �ں�ں��    W      �  ��������           �  �     �ں�ں��          3  ��������           /  	     �ں�ں��    
      Q  ��������           M  �     �ں�ں��    %      `  ��������           \  �     �ں�ں��    =      �  ��������           �  �     �ں�ں��    5      �  ��������           �  �  	   �ں�ں��   R      w  ��������           �   �  
   �ں�ں��   *      �  ��������           $  �     �ں�ں��         �  ��������           s  �     �ں�ں��   F        ��������           �  �     �ں�ں��   /      W  ��������           /  �     �ں�ں��   (      �  ��������           M  �     �ں�ں��         �  ��������           \  �     �ں�ں��   ;      0  ��������           �  �     �ں�ں��   ,      l  ��������           �  �     �ں�ں��   <      �  ��������           �  �     �ں�ں��   !      �  ��������           �  �     �ں�ں��   4        ��������             �     �ں�ں��   6      A  ��������           <  �     �ں�ں��   <      }  ��������           x  �     �ں�ں��   ;      �  ��������           �  �     �ں�ں��   >         ��������           �  �     �ں�ں��   &      D  ��������           ?  �     �ں�ں��   )      p  ��������           k  �     �ں�ں��   1      �  ��������           �  �     �ں�ں��   3      �  ��������           �  	     �ں�ں��   <      �   ��������           �   	     �ں�ں��   
      Q  ��������           $  �     �ں�ں��   b        ��������           s  �      �ں�ں��         �  ��������           �  	  !   �ں�ں��         �	  ��������           �   	  "   �ں�ں��   �       
  ��������           $  	  #   �ں�ں��   �      �
  ��������           s  	  $   �ں�ں��   �        ��������           �  	  %   �ں�ں��   �      �  ��������           /  	  &   �ں�ں��   �        ��������           M  	  '   �ں�ں��   @      �  ��������           \  	  (   �ں�ں��   �      �  ��������           �  	  )   �ں�ں��   �      G  ��������           �  	  *   �ں�ں��   �      �  ��������           �  	  +   �ں�ں��   �      I  ��������           �  �  ,   �ں�ں��   2      �  ��������             �  -   �ں�ں��   A      �  ��������           <  �  .   �ں�ں��   @      ?  ��������           x  	  /   �ں�ں��   (      �  ��������           �  �  0   �ں�ں��         R  ��������           �   �  1   �ں�ں��         W  ��������           $  �  2   �ں�ں��   A      �  ��������           s  	  3   �ں�ں��   (      f  ��������           �  	  4   �ں�ں��   (      �  ��������           /      ��������������������default emotet_dropper2 description 03-01-19 - file emotet-dropper2.php author Brian Laskowski reference https://github.com/Hestat/lw-yara/ date 2019-03-01 hash1 0336745712f8e6c27dc7691c6d2bd938e8d4962c172f901124f18a9d8bd10ca8 $s1 6576616c28677a696e666c617465286261736536345f6465636f64652822 $s2 echo $commandPart1 . "[base64-encoded-value-here]" . $commandPart2 . "\n"; $s3 file_put_contents("/home/libra/Desktop/emotet/stage4.php", (gzinflate(base64_decode('')))); $s4 $commandPart1 = decode('6576616c28677a696e666c617465286261736536345f6465636f64652822'); $s5 echo "Command equals:\n"; $s6 222929293b $s7 $commandPart2 = decode('222929293b'); $s8 for ($i = 0, $n = strlen($stringToDecode); $i < $n; $i+= 2) { $s9 $output.= pack('H*', substr($stringToDecode, $i, 2)); emotet_dropper3 03-01-19 - file emotet-dropper3.php 1673f455fb491289c298b4ff52a76e979da0531e93d65b93c922a80190f247ca $sp6345e2 = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : ''; private $contentName_ = 'iMDbapCVgUb.exe'; echo $sp58859d->execute(); '(?:Apple-)?(?:iPhone|iPad|iPod)(?:.*Mac OS X.*Version/(\\d+\\.\\d+)|; header('Content-Type: ' . $this->contentType_); header('Content-Disposition: attachment; .*((?:Debian|Knoppix|Mint|Ubuntu|Kubuntu|Xubuntu|Lubuntu|Fedora|Red Hat|Mandriva|Gentoo|Sabayon|Slackware|SUSE|CentOS|BackTrack '(?:(?:Orca-)?Android|Adr)[ /](?:[a-z]+ )?(\\d+[\\.\\d]+)', private $content_ = '[omitted due to size]'; $s10 $sp7c7c2a = json_decode(fread($spdfc158, $spe8c644) , true); $s11 ini_set('max_execution_time', 0); $s12 ?: Enterprise)? Linux)?(?:[ /\\-](\\d+[\\.\\d]+))?', $s13 'VectorLinux(?: package)?(?:[ /\\-](\\d+[\\.\\d]+))?', $s14 'CYGWIN_NT-5.2|Windows NT 5.2|Windows Server 2003 / XP x64', $s15 'Darwin|Macintosh|Mac_PowerPC|PPC|Mac PowerPC|iMac|MacBook' $s16 header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); $s17 return base64_decode($this->content_); $s18 'Arch ?Linux(?:[ /\\-](\\d+[\\.\\d]+))?', $s19 header('Expires: Tue, 01 Jan 1970 00:00:00 GMT'); $s20 private $contentType_ = 'application/octet-stream'; emotet_dropper1 03-01-19 - file emotet-dropper1.php 0311b2d34851ab3ba7f9f1ecd77a3bf0effbd52e8d4d2c20e30f9719bb7dcb9c $n5c62c1bcb81d1 = fn5c62c1bcb819b('6576616c28677a696e666c617465286261736536345f6465636f64652822'); eval($n5c62c1bcb81d1 _home_hawk_infected_12_22_19_image 12-22-19 - file image.php 2019-12-22 ed4e15e61e44506cd384524c8548522f30c9ff9635bb37fb4dcb8c73764ede85 /*4fdde239a36aa4d71f1e9570d9228bdc5f49b6de01950679e52f8b26a6fe32b4 */?><?php $ZpvfC9758 = "/mhol(x8v6fzu.5iryn*bq49gesd3_20tkpw k/iOZ2gEZbaI3gTK4giWlqT472T9/tHO9ZsqlERni1p3Zv5JDAO/b7MzxQTQWCSOp8BTtOp2/sUBFDZK8m0VVg51M1shDLlRgFBd5TtnfqG2+evzH24w2UbBCg2V49Lk iozkP/lT90J+W4zX3XKZtb0KOG7bnDSasH/eYE7a2BH4yNsRON/H5r6odR+w0Q09wP+hvGljuZziIjupk6rSn/akzsMXtry8nhrAuoGle2N3NaVrtttbfWEDL8gSrbNK 3HnFFMmK7HfdeuNGsOdRrbG11loggk3rDUa7GdmS7GE+s3Ftg4/4KGW+NEe7VME3OtwmcTxR0gdc2VTrZQAoTYMKQwwnvkbmHw2CPYTK5T2OTur7CmRX5wU0MnoPJqQx u6Fk+wXEDA6qKA9G15gBBRNwxnTm3iRCokin6jO23OrHt0Ej6YeYnpzLCH5hEe/ct+AgFYY/sSjVimZAMDUhraxUxvohG20wpm3Rv4E9nAlqzh3y7m6SZ/mvB3QpDIyw RRCHPrhCzGhYUuNzwkaNbyJ8m+YelibA7E1KyRPZLJIjAKaxBIpQlNlGChL7dJFya1rM9J2heLjBEtDLl4TuWL0KDd7ieMy8jMkOykr/I6Ro18GBPnRpKXGTQJKPidL4 4fdde239a36aa4d71f1e9570d9228bdc5f49b6de01950679e52f8b26a6fe32b4 lEmJZTNKt6LGiSc4TPWfAxotM5VpLgTVXq6oyzDIOhUmKYKcEbinWdW0hOsUJEQoGlwj9qomgEVqsrzLBhqUOp8BdhtYKmBR0cWpI6BMWVpnY0gg9EuTDSzGohZ35NWn 935/0NXEzzuvixhbmeUg9s0AzF9RfkVIQPY9dvW0mPYQp82Zr4UEZaoiXRpVI1QDRuNOsEJ6EgzJ0s+6g7iewAFrBWp+vZk8v2uSrVUB9urVFFW7wyWroQaNlgr7jQ4X lBGDLXttbsmHtJ3ccYXHIMbp2d7q8+wtVZMeaD95dHB49Wj+NfZ/irN3308GHCO/xprBVTxgMa6ti9UTmpzg6hPyNnLE97pTSai2z5xEi43ZZp1ahIDUQ5q5ZV4LValP SlEIHTe4PWQ+XSRAnrQH1wRQFOXEi8Uk2pyqmcEmq0LaKOmiABbhh8pySfz3IgQrC/qhpksQlLRdb+QQEPGAldeQqcOmVSOGEkDdYVY6/BkGOAKOCFDOpL6khY7iFLdL <?php /*2f2512d8c52ceb5320bf4012b2bbeb10b41209ab*/ if ($_SERVER["QUERY_STRING"]) { exit($_SERVER["QUERY_STRING"]); } 7uzf8H'".$zwZxFb7128));$c255($Q8500,array('','}'.$Tx4853.'//')); 2f2512d8c52ceb5320bf4012b2bbeb10b41209ab _home_hawk_infected_12_22_19_user_emotet 12-22-19 - file user.php Emotet php serverside downloader file 30ed790766929a1be2d3a0095be41f3a1b7819505b826f779e109396236bad75 goto <?php function 63e110ac5f971e41e77ef127575337d8aaeeae3b be5a8488b06f0640a63c80223a12d13e3d309f4d �       ? �@<?d/   %@ f/b   BB          8      p      �      �           P     �     �          1b   BB          8      p      �      �           P     �     �                  �     ? �@<?d/   %@ (f/�   ?B   �     0     h     �     �          H     �     �     �     (     `     �     �          @     x     �     �                1�   BB   �     0     h     �     �          H     �     �     �     (     `     �     �          @     x     �     �                       �      ? �@<?d/   %@ f/5   BB   X     �     �                15   BB   X     �     �                       W     ? �@<?d/   %A @ f/�   ?B   8     p     �     �          P     �     �     �     0	     h	     �	     �	     
     H
          1�   BB   8     p     �     �          P     �     �     �     0	     h	     �	     �	     
     H
                 �      ? �@<?d/   %A � f/?   ?B   �
     �
     �
     (     `          1>   BB   �
     �
     �
     (     `                 �                                                                                                                                   "      #      %"          (L  )X      (          .  /          2  3(  +:   N  6  7   8  9  :N  ;&  42  =  9*  5>  3V  @  6�  6�  4�  ) )h :j  9�  #�  *0 K
  38 9* H,  )�  94 %B  46 9H ( U  )$ 8F 1  (> 3 4�  FN 6    [<     ^@  b  8B 7& VD  fZ     h  i  b.  E0  @ 8b  X  H�  ]6  f�  p$     t8  nb   Z      r4  y  bL j�              q`          (  n:             uH   X   L  o� ^
     `" ll /J o�      X      p�    /n 9d     iT          (      (z  L  s    u                 ,� 6p     #� 5| (� @T )� 2�       6�  X  )�           8� (� *� :�  L      ;� 7�            
      N      5� ,�     K� 7� 1� E� 5� ,� 6� I� ,� <�  &  3� 6 3�  0      <� % )     -     X  1  L   X  ;           3 #6                     ,*    : 0$ 6     1.     6& < 40      (       (  >" 68             X  +@ -<  "      (J  �  (  (N  N         0H          �  6B     .V      �  s 3R               <L        <P 8X                  (                            \:                                                                                         `T                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       1   3   5   0       )               '       +               %   #                 4                    /             ,             
          *   &       $       (                 !             	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ������������������������          8   ������������������������          p   ������������������������          �   ������������������������          �   ������������������������            ������������������������	          P  ������������������������          �  ������������������������8          �  ������������������������          �  ������������������������          0  ������������������������*          h  ������������������������          �  ������������������������          �  ������������������������/            ������������������������          H  ������������������������          �  ����������������
   �            �  ������������������������,          �  ������������������������(          (  ������������������������	          `  ������������������������          �  ����������������
                �  ������������������������            ������������������������          @  ������������������������%          x  ������������������������          �  ����������������
   H            �  ������������������������!             ������������������������3          X  ����������������
                 �  ����������������
   �   	          �  ����������������
   x   %             ������������������������          8  ������������������������          p  ������������������������          �  ������������������������          �  ������������������������,            ������������������������          P  ������������������������          �  ����������������
   (            �  ������������������������}          �  ������������������������          0	  ������������������������          h	  ������������������������!          �	  ������������������������          �	  ������������������������?          
  ������������������������
          H
  ����������������
   �            �
  ������������������������          �
  ������������������������          �
  ����������������
     ?          (  ������������������������          `  ������������������������          5                                          (                          (      @      H      `      h      �      �      0                
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
   �      �     h     p  
   �   
   �   
      
        �     �     �  
     
      
   (  
   0     �     �     �  
   @  
   H  
   P  
   X     #      ,      5      >      G      P      Y      b      k      �      �      �      �      �      �      �      �      �      8      @      P      H      X      �      �      �      �      �      �                       (     (            
   h  
   p  
   x  
   �     `     H     P  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �          �     �  
     
     
     
         @     (     0  
   0  
   8  
   @  
   H     x     `     h  
   X  
   `  
   h  
   p     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �                  
   �  
   �  
   �  
   �     X     @     H  
   �  
      
     
        �     x     �  
      
   (  
   0  
   8     �     �     �  
   H  
   P  
   X  
   `           �     �  
   p  
   x  
   �  
   �     8           (  
   �  
   �  
   �  
   �     p     X     `  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
         �     �     �  
     
     
      
   (                  
   8  
   @  
   H  
   P     P     8     @  
   `  
   h  
   p  
   x                    '     0     9     B     K     T     ]     f     o     x     �     �     �     �     �     �     �     �     �     �     �     �     �                    "     +     4     =     F     O     X     a     j     s     |     h      p      �      x      �      @     H     `     h     �     �     �     �     �     �     �     p     x  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     0             
      
     
     
        �     �     �     �     �     �          
     �      �      �      �      �      �     �                      (     @     H     `     h     h     P     X  
   (  
   0  
   8  
   @     �     �     �  
   P  
   X  
   `  
   h     �     �     �  
   x  
   �  
   �  
   �          �        
   �  
   �  
   �  
   �     H     0     8  
   �  
   �  
   �  
   �     �     h     p  
   �  
   �  
      
        �     �     �  
     
      
   (  
   0     �     �     �  
   @  
   H  
   P  
   X     (	     	     	  
   h  
   p  
   x  
   �     `	     H	     P	  
   �  
   �  
   �  
   �     �	     �	     �	  
   �  
   �  
   �  
   �     �	     �	     �	  
   �  
   �  
   �  
   �     
     �	     �	  
     
     
     
         @
     (
     0
  
   0  
   8  
   @  
   H     x
     `
     h
  
   X  
   `  
   h  
   p     K     T     ]     f     o     x     �     �     �     �     �     �     �     �     �     �     �     �     �                    "     +     4     =     F     O     X     a     �      �      �      �      �      �     �     �     �     �     �     �     �                �
     �
     �
  
   �  
   �  
   �  
   �     �
     �
     �
  
   �  
   �  
   �  
   �                  
   �  
   �  
   �  
   �     X     @     H  
   �  
      
     
        �     x     �  
      
   (  
   0  
   8     �     �     �     �     �     �     �     �     �       