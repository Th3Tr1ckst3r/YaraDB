YARA�          �       �   6      @  v      @  �         �      �  T      >  �          �         �         �       �  R$                                     ��������                                �  ��������   �      `             ��������������������������������������������   2      >                     X      _                     o      y                     �      �                     �      �                    2                          X      _                     o      y                     �      �                     �      8                �      �ں�ں��    3      �   ��������           �   �     �ں�ں��    8      /  ��������           +  �     �ں�ں��    4      l  ��������           h  �     �ں�ں��    )      �  ��������           �  �     �ں�ں��    !      �  ��������           �  �     �ں�ں��          �  ��������           �  �     �ں�ں��    C        ��������           �  �     �ں�ں��    :      I  ��������           E  �     �ں�ں��    W      �  ��������           �  �  	   �ں�ں��          �  ��������           �  �  
   �ں�ں��    *        ��������             �     �ں�ں��    0      7  ��������           2  �     �ں�ں��          m  ��������           h  �     �ں�ں��    2      �  ��������           �  �     �ں�ں��    B      �  ��������           �  �     �ں�ں��    +        ��������           
  �     �ں�ں��          @  ��������           ;  �     �ں�ں��    )      b  ��������           ]  �     �ں�ں��    7      �  ��������           �  �     �ں�ں��    %      �  ��������           �  �     �ں�ں��   n      y  ��������           �   �     �ں�ں��   $      �  ��������           +  �     �ں�ں��   E        ��������           �  �     �ں�ں��   2      S  ��������           �      ��������������������default infected_08_26_18_DocuSign_phishing_hello description phishing - file hello.php author Brian Laskowski reference https://github.com/Hestat/lw-yara/ date 2018-08-26 hash1 dd7e28b3e1c7d175f023e4a0145a083776221d4a78fa5e1f6035a88ad826dfcb $s1 $headers = 'From: no_reply@mylinklog.com' . "\r\n"; $s2 $data .='Password='.""; $data .=$_POST['password']."\n"; $s3 $error_messages[] = 'Please fill in your Password.'; $s4 User Agent: {$_SERVER['HTTP_USER_AGENT']} $s5 Password: {$userdata['password']} $s6 $to $s7 define('FORM_SUBMITTED', (is_array($_POST) && 0 < count($_POST)) ); $s8 $error_messages[] = 'Please fill in your E-mail Address.'; $s9 $error_messages[] = 'Sorry, there was a problem sending your email, please try again.'; $s10 $value = trim($_POST[$key]); $s11 foreach ( $userdata as $key => &$value ) { $s12 if (!mail($to, $subject, $message, $headers) ) { $s13 if ( isset($_POST[$key]) ) { $s14 $data .='Email='.""; $data .=$_POST['email']."\n"; $s15 // If no error messages have been set then everything must be okay $s16 HTTP Referrer: {$userdata['http_referrer']} $s17 // Attempt to send the email $s18 // If data has been posted for this item: $s19 $data .='IP='.""; $data .=$_SERVER["REMOTE_ADDR"]."\n"; $s20 } elseif ( get_magic_quotes_gpc() ) { infected_08_26_18_DocuSign_phishing_index phishing - file index.php 9bb8e5f5e457524283ed2fccd54063a2f645e2209f4beeacc0304ec46a5032f0 <meta http-equiv="content-type" content="text/html; charset=windows-1252"></head><body hola-ext-player="1"><p> <html hola_ext_inject="ready"><head> <p align="center"><img src="img/bar.gif" height="36" width="405"></p> <img src="img/hl.jpg" height="92" width="405"></p> �      ? �@<?d/   %@ $f/�   ?B          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �     �     (          1�   BB          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �     �     (                  �      ? �@<hd/   %@ f/5   BB   `     �     �               15   BB   `     �     �                      �                                                                                                                                            %      '
  "(  )  %,  (      )*  .  #4  ).     %@  2   #B  ):  (>  /0  /2  (D  %~  )F  %�  /<  >"     (�  (�  %�  3L         (�  #�                     *�             /�              4�              ?�      :�  6�  ]                             e  d$          ^X  f&  b6  ;�      n  o      q      s  t  u              # z      |  ^�  oH  u8  `�  nb  n�  h�      <�      <�      =�  3 7 p�  w�      <�                  <                                         `�          q�      T�      b�  b�  `�      ~�              `�      f�                                                                                                                              ~�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
   	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ������������������������3          8   ������������������������          p   ������������������������4          �   ������������������������          �   ������������������������!            ������������������������          P  ������������������������%          �  ������������������������:          �  ������������������������W          �  ������������������������          0  ������������������������#          h  ������������������������          �  ������������������������          �  ����������������
   (               ������������������������          H  ������������������������+          �  ������������������������	          �  ������������������������)          �  ����������������
               (  ������������������������!          `  ������������������������G          �  ������������������������          �  ������������������������3            ������������������������                                                     (                          (      @      H      `      h      �      �      0                
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
   X     (            
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
        $      -      6      ?      H      Q      Z      c      l      u      ~      �      �      �      �      �      �      �      �      �      �      �      �                          (     1     :     C     L     U     ^     g     p     y     �     �     �     8      @      P      H      X      �      �      �      �      �      �                       (     �     x     �  
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
   �     �     �     �     �                    "  