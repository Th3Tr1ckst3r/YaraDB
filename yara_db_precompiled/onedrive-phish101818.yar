YARA�          �       `         �   �      `                 N  l      �  7          7         7         7         W                                      ��������                         ��������������������������������������������   -      9                     T      [                     k      u                     �      �                     �      �                 �      �ں�ں��    D      �   ��������           �   �     �ں�ں��    *      <  ��������           8  �     �ں�ں��    +      k  ��������           g  �     �ں�ں��    )      �  ��������           �  �     �ں�ں��    +      �  ��������           �  �     �ں�ں��    1      �  ��������           �  �     �ں�ں��    1      /  ��������           +  �     �ں�ں��    0      e  ��������           a  �     �ں�ں��    /      �  ��������           �  �  	   �ں�ں��    h      �  ��������           �  �  
   �ں�ں��    &      =  ��������           8  �     �ں�ں��    D      i  ��������           d  �     �ں�ں��    9      �  ��������           �  �     �ں�ں��    >      �  ��������           �  �     �ں�ں��    )      6  ��������           1  �     �ں�ں��          e  ��������           `  �     �ں�ں��    #      w  ��������           r  �     �ں�ں��    '      �  ��������           �  �     �ں�ں��    J      �  ��������           �  �     �ں�ں��    0        ��������                 ��������������������default infected_10_18_18_onedrive_emailcode description emailcode - file email.php author Brian Laskowski reference https://github.com/Hestat/lw-yara/ date 2018-10-18 hash1 3ca994b4976f7928e3032da13d73159fdb1e8eccd1438b52f522050f3938ffa7 $x1 header('Location: https://login.microsoftonline.com/common/oauth2'); $s2 $subject = "Office login attempt -- ".$ip; $s3 $subject = "Outlook login attempt -- ".$ip; $s4 $subject = "other login attempt -- ".$ip; $s5 $subject = "Webmail login attempt -- ".$ip; $s6 $message .= "Login Type Selection -- Outlook \n"; $s7 $message .= "Login Type Selection -- Webmail \n"; $s8 $message .= "Login Type Selection -- Office \n"; $s9 $message .= "Login Type Selection -- other \n"; $s10 $ip_data = str_replace('&quot;', '"', $ip_data); // for PHP 5.2 see stackoverflow.com/questions/3110487/ $s11 $message .= "Password -- $password\n"; $s12 $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";  $s13 // To send HTML mail, the Content-type header must be set $s14 $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n"; $s15 $message .= "Username/Email -- $email\n"; $s16 $admin_email $s17 $formname = $_REQUEST['logintype']; $s18 $browser = $_SERVER['HTTP_USER_AGENT']; $s19 curl_setopt($ch, CURLOPT_URL, "http://www.geoplugin.net/json.gp?ip=".$ip); $s20 $message .= "Region Detected --  ".$region."\n"; �      ? �@<?d/   %@ (f/�   ?B               /�   ?B          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �     �     (          1�   BB          8      p      �      �           P     �     �     �     0     h     �     �          H     �     �     �     (                  �                                                                                                                   
       :              #  #  %
                 (  (                      (*  2  3      #8          1"  9  /0  /6  6   %:  >  *<  %>              -L      54  .N          :2                  <@  <B          9P      U          <R      <\          ]                  b              f  b  ^&          ^(          j                  e,              o$                  m.                              nD          jZ                                  sX                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ������������������������D          8   ������������������������(          p   ����������������
   (   )          �   ����������������
   P   '          �   ����������������
   x   )            ������������������������1          P  ����������������
   �   1          �  ����������������
   �   0          �  ����������������
     /          �  ������������������������f          0  ����������������
   @  &          h  ������������������������7          �  ������������������������          �  ����������������
   �  7            ����������������
   �  )          H  ������������������������          �  ������������������������#          �  ������������������������'          �  ������������������������F          (  ������������������������%                                                    (                          (      @      H      `      h      �      �      0                
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
        $      >      G      P      Y      b      k      t      }      �      �      �      �      �      �      �      �      �      �      �      �                          (     1     :     C     L     U     ^     g     p     y     �     �     �     �     �     �  