YARA�          �       �  &         F      0	  v         �        �        �           �          �(         �0      �  &7                                     ��������                                �  ��������   �      �                    �  ��������   �     �                    �  ��������   �     �                    u  ��������   �     @                    $	  ��������   `     �                    
  ��������   @     �             ��������������������������������������������         "                     O      W                     �      �                     �      �                     2     7                    B  ��������P                 H     M                         �                    O      W                     �      �                     �      �                     2     7                    B  ��������P                 H     �                         �                    O      W                     �      �                     �      �                     2     7                    B  ��������P                 H     �                         �                    O      W                     �      �                     �      �                     2     7                    B  ��������P                 H                              }                    O      W                     �      �                     �      �                     2     7                    B  ��������P                 H     �                         6	                    O      W                     �      �                     �      �                     2     7                    B  ��������P                 H     Y	                         
                    O      W                     �      �                     �      �                     2     7                    B  ��������P                 H     7
                �      �ں�ں��    {      �  ��������           �  �     �ں�ں��    |        ��������             �     �ں�ں��    "      �  ��������           �  �     �ں�ں��    D      �  ��������           �  �     �ں�ں��    0        ��������           �  �     �ں�ں��    3      8  ��������           4  �     �ں�ں��    	      p  ��������           l  �     �ں�ں��          ~  ��������           z  �     �ں�ں��   e        ��������           �  �  	   �ں�ں��   u      v  ��������             �  
   �ں�ں��   P      �  ��������           �  �     �ں�ں��   !      =  ��������           �  �     �ں�ں��         _  ��������           �  �     �ں�ں��         x  ��������           4  �     �ں�ں��         �  ��������           l  �     �ں�ں��         �  ��������           z  �     �ں�ں��         5  ��������             �     �ں�ں��         L  ��������           �  �     �ں�ں��   @      Y  ��������           �  �     �ں�ں��   %      �  ��������           4  �     �ں�ں��          �  ��������           l  �     �ں�ں��   
      S  ��������           �  �     �ں�ں��   
      ^  ��������             �     �ں�ں��         i  ��������           �  �     �ں�ں��   e        ��������             	     �ں�ں��   "      �  ��������           �  �     �ں�ں��   N        ��������           �  �     �ں�ں��   c      S  ��������           �  �     �ں�ں��   T      �  ��������           4  �     �ں�ں��         _  ��������           l  �     �ں�ں��         	  ��������           z  �     �ں�ں��         �	  ��������           �  �      �ں�ں��         �	  ��������             �  !   �ں�ں��         �	  ��������           �  �  "   �ں�ں��         �	  ��������           �  �  #   �ں�ں��         �	  ��������           �  �  $   �ں�ں��   f      x
  ��������             �  %   �ں�ں��   |        ��������           �  	  &   �ں�ں��   �      �
  ��������           �  �  '   �ں�ں��   h      `  ��������           �  �  (   �ں�ں��   =      �  ��������           4  �  )   �ں�ں��         ~  ��������           l      ��������������������default whosthere_alt description Auto-generated rule - file whosthere-alt.exe license Detection Rule License 1.1 https://github.com/Neo23x0/signature-base/blob/master/LICENSE author Florian Roth (Nextron Systems) reference http://www.coresecurity.com/corelabs-research/open-source-tools/pass-hash-toolkit date 2015-07-10 score hash 9b4c3691872ca5adf6d312b04190c6e14dd9cbe10e94c0dd3ee874f82db897de $s0 WHOSTHERE-ALT v1.1 - by Hernan Ochoa (hochoa@coresecurity.com, hernan@gmail.com) - (c) 2007-2008 Core Security Technologies $s1 whosthere enters an infinite loop and searches for new logon sessions every 2 seconds. Only new sessions are shown if found. $s2 dump output to a file, -o filename $s3 This tool lists the active LSA logon sessions with NTLM credentials. $s4 Error: pth.dll is not in the current directory!. $s5 the output format is: username:domain:lmhash:nthash $s6 .\pth.dll $s7 Cannot get LSASS.EXE PID! iam_alt_iam_alt Auto-generated rule - file iam-alt.exe 2ea662ef58142d9e340553ce50d95c1b7a405672acdfd476403a565bdd0cfb90 <cmd>. Create a new logon session and run a command with the specified credentials (e.g.: -r cmd.exe) IAM-ALT v1.1 - by Hernan Ochoa (hochoa@coresecurity.com, hernan@gmail.com) - (c) 2007-2008 Core Security Technologies This tool allows you to change the NTLM credentials of the current logon session username:domainname:lmhash:nthash Error in cmdline!. Bye!. Error: Cannot open LSASS.EXE!. nthash is too long!. LSASS HANDLE: %x genhash_genhash Auto-generated rule - file genhash.exe 113df11063f8634f0d2a28e0b0e3c2b1f952ef95bad217fd46abff189be5373f genhash.exe <password> Password: %s %.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X%.2X This tool generates LM and NT hashes. (hashes format: LM Hash:NT hash) iam_iamdll Auto-generated rule - file iamdll.dll 892de92f71941f7b9e550de00a57767beb7abe1171562e29428b84988cee6602 LSASRV.DLL iamdll.dll ChangeCreds iam_iam Auto-generated rule - file iam.exe 8a8fcce649259f1b670bb1d996f0d06f6649baa8eed60db79b2c16ad22d14231 iam.exe -h administrator:mydomain: An error was encountered when trying to change the current logon credentials!. optional parameter. If iam.exe crashes or doesn't work when run in your system, use this parameter. IAM.EXE will try to locate some memory locations instead of using hard-coded values. Checking LSASRV.DLL.... whosthere_alt_pth Auto-generated rule - file pth.dll fbfc8e1bc69348721f06e96ff76ae92f3551f33ed3868808efdb670430ae8bd0 c:\debug.txt pth.dll "Primary" string found at %.8Xh "Primary" string not found! segment 1 found at %.8Xh whosthere Auto-generated rule - file whosthere.exe d7a82204d3e511cf5af58eabdd6e9757c5dd243f9aca3999dc0e5d1603b1fa37 by Hernan Ochoa (hochoa@coresecurity.com, hernan@gmail.com) - (c) 2007-2008 Core Security Technologies specify addresses to use. Format: ADDCREDENTIAL_ADDR:ENCRYPTMEMORY_ADDR:FEEDBACK_ADDR:DESKEY_ADDR:LOGONSESSIONLIST_ADDR:LOGONSES Could not enable debug privileges. You must run this tool with an account with administrator privileges. -B is now used by default. Trying to find correct addresses.. �       ? �@MZd/   %A ` f/Z   ?B          8      p      �      �           P     �                  �      ? �@MZd/   %A � f/Z   ?B   �     �     0     h     �     �          H                 e      ? �@MZd/   %A   f/?   ?B   �     �     �     (     `                 R      ? �@MZd/   %A � f/,   BB   �     �                      v      ? �@MZd/   %A � f/P   BB   @     x     �     �           X     �                 e      ? �@MZd/   %A � f/?   ?B   �           8     p     �                 n      ? �@MZd/   %A   f/H   ?B   �          P     �     �     �                 �                                                                                                                                         #          &          )&              .   .  /   $  1*       .   (        /2              /�  "L        ;d   (       (  "X D"  E   <      Bp  "b J     3�  84       FB      9�  Q6  T  U,  MJ     "| Y      "~      <     S�      ?Z b(     d        f   h  i.  j<  FV ]P  m  n$  oH  p  q  m0  s  f>  u  v
  eD  u8  t:  i\  t4  if  f@  sX  iZ  bh  mV  n`  f@ t8 iB NH zN  tT  et  fr  mj  hl  u< sz  ]|  b�  eR sJ id tP b�  fh j�  W` q�      fz     F�     tp      .  nr e�             j�          Y�             t� on          .  Y�     Y� tv  H   4   `  t�  T  u�                                         .�        /�     /�     /�  /�   8     /�  /�  /�     /�           /� /�  D      /� /� /�       ;�    ;� /� /�     -�         /� /� ;� /�         3�                                                                                                                                                                         e�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 (           )   '                                                       #   !                                                                                                                                                                                                                                                                                                                                                                                                             $                                    *                                                                                 &               %                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ������������������������]          8   ������������������������V          p   ������������������������          �   ������������������������D          �   ������������������������0            ������������������������          P  ������������������������          �  ������������������������          �  ������������������������          �  ����������������
       W          0  ������������������������          h  ����������������
   �   	          �  ������������������������          �  ������������������������            ������������������������          H  ������������������������          �  ������������������������          �  ������������������������	          �  ������������������������          (  ������������������������%          `  ������������������������          �  ������������������������          �  ������������������������            ������������������������          @  ����������������
   @            x  ������������������������          �  ������������������������N          �  ������������������������             ������������������������          X  ����������������
   �            �  ����������������
   H            �  ������������������������             ������������������������          8  ������������������������          p  ������������������������          �  ����������������
   (            �  ����������������
   h  H            ����������������
   (   V          P  ������������������������          �  ������������������������"          �  ������������������������          �  ����������������
               *                                          (                          (      @      H      `      h      �      �      �      �      �      �      0                
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
   0     &      /      8      A      J      S      \      e      8      @      P      H      X      �      �                       (     @     H     `     h     �     �     �     �     �     �     �  
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
   p     �      �      �      �      �      �      �      �      h      p      �      x      �      �     �     �     �                      (     @     H     `     h     �     �     �     �     �  
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
   8     &     /     8     A     J     �      �      �      �      �      �     �     �     �     �     �                      (     @     H     `     h     �     �     �  
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
   �     �     �     �     �      �      �      �      �      �     �     �     �     �     �     �     �                      (     @     H     p     X     `  
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
   x     �     p     x  
   �  
   �  
   �  
   �     �     �     �  
   �  
   �  
   �  
   �     �     �     �     �           	          �                           `     h     �     �     �     �     �     �     �     �                      (     �     �     �  
   �  
   �  
   �  
   �     0             
      
     
     
        h     P     X  
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
   �     S     \     e     n     w     (     0     @     8     H     @     H     `     h     �     �     �     �     �     �     �     �                     �        
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
   �     �     �     �     �     �     �  