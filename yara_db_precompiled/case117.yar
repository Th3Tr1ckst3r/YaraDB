YARA�          �       �   f      �  F      X  �	         �	      J         �  �          �         �!         �)      �  �.                                     ��������                                �  ��������   �      �                     r  ��������   @     �             ��������������������������������������������   '      3                     R      Y                     i      s                     �      �                     �      �                    '      �                    R      Y                     i      s                     �      �                     �      �                   '      �                    R      Y                     i      s                     �      �                     �      �                �      �ں�ں��    +      �   ��������           �   �     �ں�ں��    '      !  ��������             �     �ں�ں��    :      M  ��������           I  �     �ں�ں��    #      �  ��������           �  �     �ں�ں��         #  ��������           �   �     �ں�ں��         0  ��������             �     �ں�ں��         K  ��������           I  �     �ں�ں��   :      M  ��������           �  �     �ں�ں��         i  ��������           e  	  	   �ں�ں��   �      �  ��������           �  	  
   �ں�ں��   �      p  ��������             	     �ں�ں��   �      �  ��������           I  	     �ں�ں��   �      r  ��������           �  	     �ں�ں��   �      �  ��������           e  	     �ں�ں��   �      x  ��������           t  	     �ں�ں��   �      �  ��������           �  	     �ں�ں��   �      �  ��������           ~  	     �ں�ں��   �        ��������             	     �ں�ں��   �      �  ��������           �  	     �ں�ں��   �        ��������             	     �ں�ں��   �      �  ��������           �  	     �ں�ں��   �      	  ��������           	  	     �ں�ں��   �      �	  ��������           �	  	     �ں�ں��   �      +
  ��������           &
  	     �ں�ں��   �      �
  ��������           �
  	     �ں�ں��   �      7  ��������           2  	     �ں�ں��   �      �  ��������           �  	     �ں�ں��   �      C  ��������           >  	     �ں�ں��   �      �  ��������           �      ��������������������default infected_09_25_18_site_version description shell2 - file site-version.php author Brian Laskowski reference https://github.com/Hestat/lw-yara/ date 2018-09-25 hash1 b131f3261fd40891decdcc5df429b2abb50cb12827a94cbaf994e29974affd38 $s1 * Show Site Version Administration Settings $s2 /** Show Enrcypted WordPress Version */ $s3 $p28 = "\x70\x72\x65\x67\x5F\x72\x65\x70\x6C\x61\x63\x65"; $s4 if ($_REQUEST['wp_version_info']) { infected_09_25_18_Parser shell2 - file Parser.php bc3658527871f653b7034dc05e4e5f5f589723e273da2fc7a9ea6c4045e6dc7f * Descriptor * Request Parser Variables * Show Parser UTF-8 Chars $s5 * Router infected_09_25_18_webr00tv3 shell2 - file webr00tv3.php c9c6155d2f88fe2e651768dd1f5dc69fb8470c612dd46488d2b475a004036026 $x1 <?php $OOO000000=urldecode('%66%67%36%73%62%65%68%70%72%61%34%63%6f%5f%74%6e%64');$OOO0000O0=$OOO000000{4}.$OOO000000{9}.$OOO000 SUlsSUk9J2ZpbGUnOyRJSUlJSUlJSUlJMUk9J3N5bWxpbmsnOyRJSUlJSUlJSUlJbDE9J2Z3cml0ZSc7JElJSUlJSUlJSUlsbD0nZm9wZW4nOyRJSUlJSUlJSUlJSWw9 SUlJSWwxSTFJPSdoaWdobGlnaHRfZmlsZSc7JElJSUlJSUlsMUlsMT0nc2hvd19zb3VyY2UnOyRJSUlJSUlJbDFJbGw9J2h0bWxlbnRpdGllcyc7JElJSUlJSUlsMUls bGxsSUk9J2h0bWxzcGVjaWFsY2hhcnMnOyRJSUlJSUlJbGxJSTE9J2NobW9kJzskSUlJSUlJSWxsSUlsPSdiYXNlNjRfZGVjb2RlJzskSUlJSUlJSWxJMTFJPSdmY2xv ST0nZnJlYWQnOyRJSUlJSUlJbGwxbGw9J3N0cmlwY3NsYXNoZXMnOyRJSUlJSUlJbGwxSTE9J2ZpbGVzaXplJzskSUlJSUlJSWxsMUlJPSd1bmxpbmsnOyRJSUlJSUlJ $s6 tUHBRcVNzVnZYeFp6MDEyMzQ1Njc4OSsvPScsJ0FCQ0RFRkdISUpLTE1OT1BRUlNUVVZXWFlaYWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXowMTIzNDU2Nzg5Ky8nKSk $s7 c2VyX2Fib3J0JzskSUlJSUlJSTFJbEkxPSdpc19maWxlJzskSUlJSUlJSTFJSTFsPSdteXNxbF9xdWVyeSc7JElJSUlJSUkxSUlsMT0nbXlzcWxfY29ubmVjdCc7JElJ $s8 ZXhlYyc7JElJSUlJSUlsSUlsST0nY3VybF9zZXRvcHQnOyRJSUlJSUlJbElJSTE9J2N1cmxfaW5pdCc7JElJSUlJSUlJMTExST0nc3ByaW50Zic7JElJSUlJSUlJMWxs $s9 MUlJbD0ncGNsb3NlJzskSUlJSUlJSTExSUlJPSdmZ2V0cyc7JElJSUlJSUkxbDExbD0nZmVvZic7JElJSUlJSUkxbDExST0ncG9wZW4nOyRJSUlJSUlJMWwxSUk9J3Jv $s10 bGxsMTE9J3JtZGlyJzskSUlJSUlJSWxsbDFsPSdjb3VudCc7JElJSUlJSUlsbGxsMT0nZXhwbG9kZSc7JElJSUlJSUlsbGxJbD0naXNfd3JpdGFibGUnOyRJSUlJSUlJ $s11 dW5kJzskSUlJSUlJSTFsbDFJPSdmc29ja29wZW4nOyRJSUlJSUlJMWxsbDE9J3JhbmQnOyRJSUlJSUlJMWxJMTE9J3RpbWUnOyRJSUlJSUlJMWxJbDE9J2lnbm9yZV91 $s12 XHr8Xk10Pk1nuBmcJdlymBTw5F2wzUTlDH0pSBlF0h1f5foOkWzavcrfoDlLZampjGAkBC0f4fllbABfUa1kXCLfUFrleYeiHHlp2CM5Oh1nyUlYWcz09kZL7tm0hcBx $s13 wME8wPSRPT08wMDAwTzAoJE9PTzAwMDAwTygkTzBPMDBPTzAwKCRPMDAwTzBPMDAsMHgxN2MpLCdFbnRlcnlvdXdraFJIWUtOV09VVEFhQmJDY0RkRmZHZ0lpSmpMbE1 $s14 ST0nb3JkJzskSUlJSUlJSUkxSUkxPSdzdHJwb3MnOyRJSUlJSUlJSUkxSUk9J2ZpbGVvd25lcic7JElJSUlJSUlJSWwxMT0ncG9zaXhfZ2V0cHd1aWQnOyRJSUlJSUlJ $s15 yceOlazy5T1OBByOVFyiJBrP0C25DAacwOllBO3OQTliDGaCZHB9AaLczCznaYypocrxUOMOZCM1Da1pBFyfjHeaDCznyf1aQAmpJalpXT1OBDlcQBbiLaMIza1amHBO $s16 SUlJSUlsMTExbD0nZXJlZyc7JElJSUlJSUlsMWwxMT0ncHJlZ19tYXRjaCc7JElJSUlJSUlsMWwxbD0naXNfZGlyJzskSUlJSUlJSWwxbGxsPSdpbmlfZ2V0JzskSUlJ $s17 SUlJSTExbDFsPSdjb3B5JzskSUlJSUlJSTExbEkxPSd1cmxlbmNvZGUnOyRJSUlJSUlJMTFJMWw9J2hlYWRlcic7JElJSUlJSUkxMUkxST0nZXhlYyc7JElJSUlJSUkx $s18 SUlsMUk9J3RyaW0nOyRJSUlJSUlJSUlsbDE9J2ZsdXNoJzskSUlJSUlJSUlJbGxJPSdwcmVnX21hdGNoX2FsbCc7JElJSUlJSUlJSWxJMT0nZXJlZ2knOyRJSUlJSUlJ $s19 c2UnOyRJSUlJSUlJbEkxSWw9J2NoZGlyJzskSUlJSUlJSWxJbGxsPSdzdWJzdHInOyRJSUlJSUlJbElJMUk9J2N1cmxfY2xvc2UnOyRJSUlJSUlJbElJbDE9J2N1cmxf $s20 uGoicHlavUBx3dLlpf2lhGAlzULfSfapuajORauYRULfKGBaCWjnkW0r5UAYhY1ieAjfDBypPtMkeDolcBr5STMpUclpuaMpJHlkSU0c3dLlQF0shO055caitHrleYel �       ? �@<?d/   %@ f/5   BB          8      p      �           15   BB          8      p      �                   �      ? �@<?d/   %@ �f/>   BB   �           P     �     �          1>   BB   �           P     �     �                 �     ? �@<?d/   %A � f/�   ?B   �          /�   ?B   �     0     h     �     �          H     �     �     �     (     `     �     �          @     x     �     �                1�   BB   �     0     h     �     �          H     �     �     �     (     `     �     �          @     x     �     �                       �                                                                                                                                                              )                               1  1"          %J      7$  (N  9  34      46  48         :*              :,  E  F  :@  6V  2Z  1L  3\  . & # D:  3�  Q      S  T(  U  G<      X  U2  2 [  Y&  [.  C~  9 Kl  K�  6f  c  d  1  K�  :�  : d0  4 K  l  m  n
  S|  2* Wh  fD  1$ fH  6" 3, 42 x  Z�  o>      pB  iF     lP          c�  d�  sX  `v          64        46         SN               p`  r^          vT  t          6              uD                   vF  $     xT                        48     3:     3@ 4<                     9B             7L                         <R                                                                                                                                                 dH                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          	             
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ������������������������          8   ����������������
                 p   ������������������������:          �   ������������������������          �   ������������������������            ������������������������          P  ������������������������          �  ����������������
   P   :          �  ������������������������          �  ������������������������          0  ������������������������
          h  ������������������������:          �  ����������������
   �  
          �  ������������������������"            ������������������������e          H  ������������������������          �  ������������������������          �  ������������������������,          �  ������������������������
          (  ������������������������          `  ������������������������          �  ������������������������          �  ������������������������            ������������������������          @  ������������������������3          x  ������������������������          �  ������������������������
          �  ������������������������             ������������������������9                                                    (                          (      @      H      `      h      �      �      0                
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
   �      #      ,      5      >      X      a      j      s      8      @      P      H      X      �      �      �      �      �      �                       (          �         
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
   X     �      �      �      �      �      �      �           
          h      p      �      x      �      @     H     `     h     �     �     �     �     �     �     (            
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
   x     T     n     w     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �                    4     =     F     O     X     a     j     s     |     �     �     �     �     �     �     �     �     �     �     �  