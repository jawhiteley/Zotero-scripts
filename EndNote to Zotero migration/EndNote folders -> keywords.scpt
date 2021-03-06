FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �*************************
Convert Folders into keywords in EndNote (based on script for batch editing fields).
by Jonathan Whiteley, 2015-12-28
*************************     � 	 	R * * * * * * * * * * * * * * * * * * * * * * * * * 
 C o n v e r t   F o l d e r s   i n t o   k e y w o r d s   i n   E n d N o t e   ( b a s e d   o n   s c r i p t   f o r   b a t c h   e d i t i n g   f i e l d s ) . 
 b y   J o n a t h a n   W h i t e l e y ,   2 0 1 5 - 1 2 - 2 8 
 * * * * * * * * * * * * * * * * * * * * * * * * *   
  
 l      ��  ��    P J****
Option switches: set these options to affect desired behaviour.
 ****     �   � * * * * 
 O p t i o n   s w i t c h e s :   s e t   t h e s e   o p t i o n s   t o   a f f e c t   d e s i r e d   b e h a v i o u r . 
   * * * *      l         r         m        �    K e y w o r d s  o      ���� 0 targetfield targetField  #  Which field to add keywords.     �   :   W h i c h   f i e l d   t o   a d d   k e y w o r d s .      l    ����  r        m       �    
  o      ���� 	0 delim  ��  ��       !   l    "���� " r     # $ # m    	 % % � & &  >   $ o      ���� 
0 prefix  ��  ��   !  ' ( ' l     ��������  ��  ��   (  ) * ) l    + , - + r     . / . m    ����  / o      ���� &0 progressintervals progressIntervals , � � # of updates to progress during execution?  0 = no progress updates.  Each update takes 1 full second, due to the limitation of the display dialog command :-(    - � 0 0>   #   o f   u p d a t e s   t o   p r o g r e s s   d u r i n g   e x e c u t i o n ?     0   =   n o   p r o g r e s s   u p d a t e s .     E a c h   u p d a t e   t a k e s   1   f u l l   s e c o n d ,   d u e   t o   t h e   l i m i t a t i o n   o f   t h e   d i s p l a y   d i a l o g   c o m m a n d   : - ( *  1 2 1 l     ��������  ��  ��   2  3 4 3 l      �� 5 6��   5 ^ X****
END OF OPTION SWITCHES: DO NOT EDIT PAST THIS POINT (DO SO AT YOUR OWN RISK).
 ****    6 � 7 7 � * * * * 
 E N D   O F   O P T I O N   S W I T C H E S :   D O   N O T   E D I T   P A S T   T H I S   P O I N T   ( D O   S O   A T   Y O U R   O W N   R I S K ) . 
   * * * * 4  8 9 8 l     ��������  ��  ��   9  : ; : l    < = > < r     ? @ ? m    ����   @ o      ���� 0 progresscount progressCount = � � do not change: will be calculated automatically based on number of records and progressIntervals above.  It needs a default value of 0 to start with.    > � A A,   d o   n o t   c h a n g e :   w i l l   b e   c a l c u l a t e d   a u t o m a t i c a l l y   b a s e d   o n   n u m b e r   o f   r e c o r d s   a n d   p r o g r e s s I n t e r v a l s   a b o v e .     I t   n e e d s   a   d e f a u l t   v a l u e   o f   0   t o   s t a r t   w i t h . ;  B C B l     ��������  ��  ��   C  D E D l     �� F G��   F   values for reference    G � H H *   v a l u e s   f o r   r e f e r e n c e E  I J I l    K L M K r     N O N m     P P � Q Q   O o      ���� 	0 empty   L + % convenient reference for comparisons    M � R R J   c o n v e n i e n t   r e f e r e n c e   f o r   c o m p a r i s o n s J  S T S l     ��������  ��  ��   T  U V U l      �� W X��   W &   Initialize tracking containers     X � Y Y @   I n i t i a l i z e   t r a c k i n g   c o n t a i n e r s   V  Z [ Z l     ��������  ��  ��   [  \ ] \ l    ^���� ^ r     _ ` _ J     a a  b�� b m     c c � d d  ,��   ` n      e f e 1    ��
�� 
txdl f 1    ��
�� 
ascr��  ��   ]  g h g l     ��������  ��  ��   h  i j i l   � k���� k O    � l m l k   $� n n  o p o l  $ $�� q r��   q , & Get library currently open in EndNote    r � s s L   G e t   l i b r a r y   c u r r e n t l y   o p e n   i n   E n d N o t e p  t u t r   $ . v w v n   $ * x y x 1   ( *��
�� 
pnam y 4  $ (�� z
�� 
docu z m   & '����  w o      ���� 0 libname LibName u  { | { l  / /�� } ~��   }   Get list of folders    ~ �   (   G e t   l i s t   o f   f o l d e r s |  � � � l  / D � � � � s   / D � � � l  / ? ����� � I  / ?���� �
�� .ENsSgtGG****    ��� null��   � �� ���
�� 
inin � 4   3 ;�� �
�� 
cwin � o   7 :���� 0 libname LibName��  ��  ��   � o      ���� 0 mygroups myGroups �   must specify *window*    � � � � ,   m u s t   s p e c i f y   * w i n d o w * �  � � � I  E L�� ���
�� .ascrcmnt****      � **** � o   E H���� 0 mygroups myGroups��   �  � � � l  M M�� � ���   � #  Get a list of the references    � � � � :   G e t   a   l i s t   o f   t h e   r e f e r e n c e s �  � � � r   M a � � � I  M ]�� � �
�� .ENsSgetr****       utxt � m   M P � � � � �  a l l � �� ���
�� 
inin � 4   S Y�� �
�� 
docu � o   U X���� 0 libname LibName��   � o      ���� 0 myrefs myRefs �  � � � r   b m � � � I  b i�� ���
�� .corecnte****       **** � o   b e���� 0 myrefs myRefs��   � o      ���� 0 myrefscount myRefsCount �  � � � Z  n  � ����� � ?   n q � � � o   n o���� &0 progressintervals progressIntervals � m   o p����   � r   t { � � � _   t y � � � o   t w���� 0 myrefscount myRefsCount � o   w x���� &0 progressintervals progressIntervals � o      ���� 0 progresscount progressCount��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  Loop through each folder    � � � � 0 L o o p   t h r o u g h   e a c h   f o l d e r �  ��� � X   �� ��� � � k   �� � �  � � � s   � � � � � l  � � ����� � I  � ��� � �
�� .ENsSgetG****       utxt � o   � ����� 0 	groupname 	groupName � �� ���
�� 
inin � 4   � ��� �
�� 
cwin � o   � ����� 0 libname LibName��  ��  ��   � o      ���� 0 	grouprefs 	groupRefs �  � � � r   � � � � � b   � � � � � o   � ����� 
0 prefix   � o   � ����� 0 	groupname 	groupName � o      ���� 0 tagtext tagText �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ����� � o   � ����� 0 tagtext tagText��  ��  ��   �  � � � l  � ��� � ���   � 1 + Loop through each reference in each folder    � � � � V   L o o p   t h r o u g h   e a c h   r e f e r e n c e   i n   e a c h   f o l d e r �  � � � r   � � � � � m   � �����   � o      ���� 0 n   �  ��� � X   �� ��� � � k   �� � �  � � � l  � ��� � ���   �   Tracking Progress: SLOW!    � � � � 2   T r a c k i n g   P r o g r e s s :   S L O W ! �  � � � r   � � � � � [   � � � � � o   � ����� 0 n   � m   � �����  � o      ���� 0 n   �  � � � Z   �Q � ����� � ?   � � � � � o   � ����� 0 progresscount progressCount � m   � �����   � k   �M � �  � � � l  � ��� � ���   � U O if n mod progressInterval = 0 or n = myRefsCount then set showProgress to true    � � � � �   i f   n   m o d   p r o g r e s s I n t e r v a l   =   0   o r   n   =   m y R e f s C o u n t   t h e n   s e t   s h o w P r o g r e s s   t o   t r u e �  ��� � Z   �M � ����� � G   � � � � � =   � � � � � `   � � � � � o   � ����� 0 n   � o   � ����� 0 progresscount progressCount � m   � �����   � =   � � � � � o   � ����� 0 n   � o   � ����� 0 myrefscount myRefsCount � k   I � �  � � � r    � � � b    �  � b    b   	 b    m    � 6 S e t t i n g   c o n t e n t s   o f   f i e l d   " o  ���� 0 targetfield targetField m  		 �

  "   t o :   " o  	�� 0 newcontents newContents  m   �  " . � o      �~�~ 0 main_string   �  r  5 l 1�}�| b  1 b  - b  % b  ! m   � $ P r o c e s s i n g   r e c o r d   l  �{�z c    o  �y�y 0 n   m  �x
�x 
TEXT�{  �z   m  !$ �      o f   l %,!�w�v! c  %,"#" o  %(�u�u 0 myrefscount myRefsCount# m  (+�t
�t 
TEXT�w  �v   m  -0$$ �%%    . . .�}  �|   o      �s�s 0 
sub_string   &�r& n 6I'(' I  7I�q)�p�q 0 display_progress  ) *+* o  7:�o�o 0 n  + ,-, o  :=�n�n 0 myrefscount myRefsCount- ./. o  =@�m�m 0 main_string  / 0�l0 o  @C�k�k 0 
sub_string  �l  �p  (  f  67�r  ��  ��  ��  ��  ��   � 121 l RR�j�i�h�j  �i  �h  2 343 r  R_565 e  R[77 I R[�g89
�g .ENsSrdflutxt       utxt8 o  RS�f�f 0 targetfield targetField9 �e:�d
�e 
recN: o  VW�c�c 0 recordid recordID�d  6 o      �b�b 0 fieldcontents fieldContents4 ;<; l ``�a=>�a  = 9 3 Check to see if tagText is already in targetField?   > �?? f   C h e c k   t o   s e e   i f   t a g T e x t   i s   a l r e a d y   i n   t a r g e t F i e l d ?< @A@ Z  `�BCDEB E  `gFGF o  `c�`�` 0 fieldcontents fieldContentsG o  cf�_�_ 0 tagtext tagTextC l jj�^HI�^  H   do nothing   I �JJ    d o   n o t h i n gD KLK = nuMNM o  nq�]�] 0 fieldcontents fieldContentsN m  qtOO �PP  L Q�\Q k  x�RR STS l xx�[UV�[  U , & Put tag in targetField (no delimiter)   V �WW L   P u t   t a g   i n   t a r g e t F i e l d   ( n o   d e l i m i t e r )T X�ZX I x��YYZ
�Y .ENsSwrflnull���    utxtY o  xy�X�X 0 targetfield targetFieldZ �W[\
�W 
recN[ o  |}�V�V 0 recordid recordID\ �U]�T
�U 
tEXt] o  ���S�S 0 tagtext tagText�T  �Z  �\  E k  ��^^ _`_ l ���Rab�R  a $  Add tag to end of targetField   b �cc <   A d d   t a g   t o   e n d   o f   t a r g e t F i e l d` d�Qd I ���Pef
�P .ENsSwrflnull���    utxte o  ���O�O 0 targetfield targetFieldf �Ngh
�N 
recNg o  ���M�M 0 recordid recordIDh �Li�K
�L 
tEXti b  ��jkj b  ��lml o  ���J�J 0 fieldcontents fieldContentsm o  ���I�I 	0 delim  k o  ���H�H 0 tagtext tagText�K  �Q  A n�Gn l ���F�E�D�F  �E  �D  �G  �� 0 recordid recordID � o   � ��C�C 0 	grouprefs 	groupRefs��  �� 0 	groupname 	groupName � o   � ��B�B 0 mygroups myGroups��   m m     !oo�                                                                                  ENDN  alis    ^  MacHD                      ϲ�yH+     �EndNote X5.app                                                  ,�ʂ��        ����  	                
EndNote X5    ϲԹ      ʂ�       �   l  ,MacHD:Applications:EndNote X5:EndNote X5.app    E n d N o t e   X 5 . a p p    M a c H D  &Applications/EndNote X5/EndNote X5.app  / ��  ��  ��   j pqp l     �A�@�?�A  �@  �?  q rsr l     �>tu�>  t $  Output: # updated references?   u �vv <   O u t p u t :   #   u p d a t e d   r e f e r e n c e s ?s wxw l     �=�<�;�=  �<  �;  x yzy l     �:{|�:  {   END --   | �}}    E N D   - -z ~~ l     �9�8�7�9  �8  �7   ��� l     �6�5�4�6  �5  �4  � ��� l     �3���3  �  * HANDLERS *--   � ���  *   H A N D L E R S   * - -� ��� l     �2�1�0�2  �1  �0  � ��� l     �/���/  � . ( get the index of an item within a list.   � ��� P   g e t   t h e   i n d e x   o f   a n   i t e m   w i t h i n   a   l i s t .� ��� i     ��� I      �.��-�. 0 indexof indexOf� ��� o      �,�, 0 listvar listVar� ��+� o      �*�* 0 listitem listItem�+  �-  � k     3�� ��� Z    ���)�(� >    ��� n     ��� 1    �'
�' 
pcls� o     �&�& 0 listvar listVar� m    �%
�% 
list� L    
�� m    	�$�$  �)  �(  � ��� Y    0��#���"� Z   +���!� � =    "��� n     ��� 4     ��
� 
cobj� o    �� 0 i  � o    �� 0 listvar listVar� o     !�� 0 listitem listItem� L   % '�� o   % &�� 0 i  �!  �   �# 0 i  � m    �� � n    ��� 1    �
� 
leng� o    �� 0 listvar listVar�"  � ��� L   1 3�� m   1 2��  �  � ��� l     ����  �  �  � ��� i    ��� I      ���� 0 display_progress  � ��� o      �� 0 	iteration  � ��� o      �� 0 total_count  � ��� o      �� 0 main_string  � ��� o      �� 0 
sub_string  �  �  � k     r�� ��� l     �
���
  � J Dchoose from this list for the "unprocessed" part of the progress bar   � ��� � c h o o s e   f r o m   t h i s   l i s t   f o r   t h e   " u n p r o c e s s e d "   p a r t   o f   t h e   p r o g r e s s   b a r� ��� r     ��� J     �� ��� m     �� ���   � ��� m    �� ��� P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��	� m    �� ��� P o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o�	  � o      �� 0 the_counter_opts  � ��� r    ��� l   ���� n    ��� 2   �
� 
cha � l   ���� n    ��� 4   	 ��
� 
cobj� m   
 �� � o    	� �  0 the_counter_opts  �  �  �  �  � o      ���� 0 the_counter  � ��� r    "��� l    ������ I    ����
�� .sysorondlong        doub� l   ������ ]    ��� l   ������ ^    ��� o    ���� 0 	iteration  � o    ���� 0 total_count  ��  ��  � l   ������ I   �����
�� .corecnte****       ****� o    ���� 0 the_counter  ��  ��  ��  ��  ��  � �����
�� 
dire� m    ��
�� olierndD��  ��  ��  � o      ���� 0 the_percentage  � ��� Z   # B������� >  # &��� o   # $���� 0 the_percentage  � m   $ %����  � Y   ) >�������� r   3 9��� m   3 4�� ���  "� n      ��� 4   5 8���
�� 
cobj� o   6 7���� 0 i  � o   4 5���� 0 the_counter  �� 0 i  � m   , -���� � o   - .���� 0 the_percentage  ��  ��  ��  � � � r   C J J   C F �� m   C D �  ��   n      1   G I��
�� 
txdl 1   F G��
�� 
ascr  	
	 r   K P c   K N o   K L���� 0 the_counter   m   L M��
�� 
TEXT o      ���� 0 the_counter  
  r   Q ` b   Q ^ b   Q \ b   Q Z b   Q X b   Q V b   Q T o   Q R���� 0 main_string   o   R S��
�� 
ret  o   T U��
�� 
ret  o   V W���� 0 
sub_string   o   X Y��
�� 
ret  o   Z [��
�� 
ret  o   \ ]���� 0 the_counter   o      ���� 0 the_message   �� I  a r�� !
�� .sysodlogaskr        TEXT  o   a b���� 0 the_message  ! ��"#
�� 
btns" J   c h$$ %��% m   c f&& �''  C a n c e l��  # ��(��
�� 
givu( m   k l���� ��  ��  �       ��)*+,��  ) �������� 0 indexof indexOf�� 0 display_progress  
�� .aevtoappnull  �   � ***** �������-.���� 0 indexof indexOf�� ��/�� /  ������ 0 listvar listVar�� 0 listitem listItem��  - �������� 0 listvar listVar�� 0 listitem listItem�� 0 i  . ��������
�� 
pcls
�� 
list
�� 
leng
�� 
cobj�� 4��,� jY hO  k��,Ekh ��/�  �Y h[OY��Oj+ �������01���� 0 display_progress  �� ��2�� 2  ���������� 0 	iteration  �� 0 total_count  �� 0 main_string  �� 0 
sub_string  ��  0 	�������������������� 0 	iteration  �� 0 total_count  �� 0 main_string  �� 0 
sub_string  �� 0 the_counter_opts  �� 0 the_counter  �� 0 the_percentage  �� 0 i  �� 0 the_message  1 ��������������������������&������
�� 
cobj
�� 
cha 
�� .corecnte****       ****
�� 
dire
�� olierndD
�� .sysorondlong        doub
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
ret 
�� 
btns
�� 
givu�� 
�� .sysodlogaskr        TEXT�� s���mvE�O��l/�-E�O��!�j  ��l E�O�j  k�kh ��/F[OY��Y hO�kv��,FO��&E�O��%�%�%�%�%�%E�O��a kva ka  , ��3����45��
�� .aevtoappnull  �   � ****3 k    �66  77  88   99  )::  :;;  I<<  \==  i����  ��  ��  4 ������ 0 	groupname 	groupName�� 0 recordid recordID5 4 �� �� %������ P�� c����o���������������� ���������~�}�|�{�z�y�x	�w�v�u$�t�s�r�q�p�oO�n�m�� 0 targetfield targetField�� 	0 delim  �� 
0 prefix  �� &0 progressintervals progressIntervals�� 0 progresscount progressCount�� 	0 empty  
�� 
ascr
�� 
txdl
�� 
docu
�� 
pnam�� 0 libname LibName
�� 
inin
�� 
cwin
�� .ENsSgtGG****    ��� null�� 0 mygroups myGroups
�� .ascrcmnt****      � ****
�� .ENsSgetr****       utxt�� 0 myrefs myRefs
�� .corecnte****       ****� 0 myrefscount myRefsCount
�~ 
kocl
�} 
cobj
�| .ENsSgetG****       utxt�{ 0 	grouprefs 	groupRefs�z 0 tagtext tagText�y 0 n  
�x 
bool�w 0 newcontents newContents�v 0 main_string  
�u 
TEXT�t 0 
sub_string  �s �r 0 display_progress  
�q 
recN
�p .ENsSrdflutxt       utxt�o 0 fieldcontents fieldContents
�n 
tEXt
�m .ENsSwrflnull���    utxt����E�O�E�O�E�OkE�OjE�O�E�O�kv��,FO��*�k/�,E` O*a *a _ /l EQ` O_ j Oa a *�_ /l E` O_ j E` O�j _ �"E�Y hO._ [a a l kh  �a *a _ /l EQ` OŠ%E` O_ j OjE`  O �_ [a a l kh _  kE`  O�j j_  �#j 
 _  _  a !& Na "�%a #%_ $%a %%E` &Oa '_  a (&%a )%_ a (&%a *%E` +O)_  _ _ &_ +a ,+ -Y hY hO�a .�l /E` 0O_ 0_  hY 7_ 0a 1  �a .�a 2_ a , 3Y �a .�a 2_ 0�%_ %a , 3OP[OY�-[OY��Uascr  ��ޭ