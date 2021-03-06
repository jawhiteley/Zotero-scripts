FasdUAS 1.101.10   ��   ��    k             l      ��  ��   `Z*************************
Copy or Move EndNote Attachments to specified sync folder (for reading) 
by Jonathan Whiteley, 2015-06-03
Simple script to export ALL File Attachments from the current EndNote Library to a single export folder. Filenames are unchanged.
Used as part of my escape plan from EndNote (full export).
*************************     � 	 	� * * * * * * * * * * * * * * * * * * * * * * * * * 
 C o p y   o r   M o v e   E n d N o t e   A t t a c h m e n t s   t o   s p e c i f i e d   s y n c   f o l d e r   ( f o r   r e a d i n g )   
 b y   J o n a t h a n   W h i t e l e y ,   2 0 1 5 - 0 6 - 0 3 
 S i m p l e   s c r i p t   t o   e x p o r t   A L L   F i l e   A t t a c h m e n t s   f r o m   t h e   c u r r e n t   E n d N o t e   L i b r a r y   t o   a   s i n g l e   e x p o r t   f o l d e r .   F i l e n a m e s   a r e   u n c h a n g e d . 
 U s e d   a s   p a r t   o f   m y   e s c a p e   p l a n   f r o m   E n d N o t e   ( f u l l   e x p o r t ) . 
 * * * * * * * * * * * * * * * * * * * * * * * * *   
  
 l      ��  ��    O I**** Option switches: set these options to affect desired behaviour. ****     �   � * * * *   O p t i o n   s w i t c h e s :   s e t   t h e s e   o p t i o n s   t o   a f f e c t   d e s i r e d   b e h a v i o u r .   * * * *      l          j     �� �� 0 exportfolder ExportFolder  m        �   J ~ / D o c u m e n t s / E n d N o t e   F i l e   A t t a c h m e n t s /    default     �      d e f a u l t      l         r         m     ��
�� boovfals  o      ����  0 overwritefiles overWriteFiles  &   if false, check for duplicates?     �   @   i f   f a l s e ,   c h e c k   f o r   d u p l i c a t e s ?     !   l    "���� " r     # $ # m    ��
�� boovfals $ o      ���� 0 
applytoall 
ApplyToAll��  ��   !  % & % l    ' ( ) ' r     * + * m    	����   + o      ���� &0 progressintervals progressIntervals ( � � # of updates to progress during execution?  0 = no progress updates.  Each update takes 1 full second, due to the limitation of the display dialog command :-(    ) � , ,>   #   o f   u p d a t e s   t o   p r o g r e s s   d u r i n g   e x e c u t i o n ?     0   =   n o   p r o g r e s s   u p d a t e s .     E a c h   u p d a t e   t a k e s   1   f u l l   s e c o n d ,   d u e   t o   t h e   l i m i t a t i o n   o f   t h e   d i s p l a y   d i a l o g   c o m m a n d   : - ( &  - . - l     ��������  ��  ��   .  / 0 / l      �� 1 2��   1 ` Z****  END OF OPTION SWITCHES: DO NOT EDIT PAST THIS POINT (DO SO AT YOUR OWN RISK).   ****    2 � 3 3 � * * * *     E N D   O F   O P T I O N   S W I T C H E S :   D O   N O T   E D I T   P A S T   T H I S   P O I N T   ( D O   S O   A T   Y O U R   O W N   R I S K ) .       * * * * 0  4 5 4 l     ��������  ��  ��   5  6 7 6 l      �� 8 9��   8  
* TODO **
    9 � : :  *   T O D O   * * 
 7  ; < ; l     ��������  ��  ��   <  = > = l    ?���� ? r     @ A @ n     B C B 1    ��
�� 
psxp C l    D���� D I   ���� E
�� .sysostflalis    ��� null��   E �� F��
�� 
prmp F m     G G � H H n C h o o s e   d e s t i n a t i o n   f o l d e r   f o r   e x p o r t e d   F i l e   A t t a c h m e n t s��  ��  ��   A o      ���� 0 exportfolder ExportFolder��  ��   >  I J I l    K L M K r     N O N m    ����   O o      ���� 0 progresscount progressCount L � � do not change: will be calculated automatically based on number of records and progressIntervals above.  It needs a default value of 0 to start with.    M � P P,   d o   n o t   c h a n g e :   w i l l   b e   c a l c u l a t e d   a u t o m a t i c a l l y   b a s e d   o n   n u m b e r   o f   r e c o r d s   a n d   p r o g r e s s I n t e r v a l s   a b o v e .     I t   n e e d s   a   d e f a u l t   v a l u e   o f   0   t o   s t a r t   w i t h . J  Q R Q l     ��������  ��  ��   R  S T S l     �� U V��   U   values for reference    V � W W *   v a l u e s   f o r   r e f e r e n c e T  X Y X l    # Z [ \ Z r     # ] ^ ] m     ! _ _ � ` `   ^ o      ���� 	0 empty   [ + % convenient reference for comparisons    \ � a a J   c o n v e n i e n t   r e f e r e n c e   f o r   c o m p a r i s o n s Y  b c b l  $ ' d���� d r   $ ' e f e m   $ % g g � h h   F i l e   A t t a c h m e n t s f o      ���� 0 targetfield targetField��  ��   c  i j i l  ( 2 k���� k r   ( 2 l m l 4   ( 0�� n
�� 
psxf n o   * /���� 0 exportfolder ExportFolder m o      ���� "0 filedestination FileDestination��  ��   j  o p o l     ��������  ��  ��   p  q r q l      �� s t��   s &   Initialize tracking containers     t � u u @   I n i t i a l i z e   t r a c k i n g   c o n t a i n e r s   r  v w v l     ��������  ��  ��   w  x y x l  3 < z���� z r   3 < { | { J   3 6 } }  ~�� ~ m   3 4   � � �  ,��   | n      � � � 1   7 ;��
�� 
txdl � 1   6 7��
�� 
ascr��  ��   y  � � � l     ��������  ��  ��   �  � � � l  =� ����� � O   =� � � � k   C� � �  � � � l  C C�� � ���   � B < Get a list of the references currently displayed in EndNote    � � � � x   G e t   a   l i s t   o f   t h e   r e f e r e n c e s   c u r r e n t l y   d i s p l a y e d   i n   E n d N o t e �  � � � r   C U � � � c   C Q � � � l  C M ����� � n   C M � � � 1   I M��
�� 
ppth � 4  C I�� �
�� 
docu � m   G H���� ��  ��   � m   M P��
�� 
ctxt � o      ���� 0 libpath LibPath �  � � � l  V o � � � � r   V o � � � b   V k � � � l  V g ����� � n   V g � � � 7  Y g�� � �
�� 
ctxt � m   _ a����  � m   b f������ � o   V Y���� 0 libpath LibPath��  ��   � m   g j � � � � � 
 D a t a / � o      ���� 0 
datafolder 
dataFolder �   strip `.enl` extension    � � � � .   s t r i p   ` . e n l `   e x t e n s i o n �  � � � r   p ~ � � � n   p z � � � 1   v z��
�� 
pnam � 4  p v�� �
�� 
docu � m   t u����  � o      ���� 0 libname LibName �  � � � r    � � � � I   ��� � �
�� .ENsSgetr****       utxt � m    � � � � � �  a l l � �� ���
�� 
inin � 4  � ��� �
�� 
docu � m   � ����� ��   � o      ���� 0 allrefs allRefs �  � � � r   � � � � � I  � ��� � �
�� .ENsSgetr****       utxt � m   � � � � � � �  s e l e c t e d � �� ���
�� 
inin � 4  � ��� �
�� 
docu � m   � ����� ��   � o      ���� 0 myrefs myRefs �  � � � l  � � � � � � r   � � � � � o   � ����� 0 allrefs allRefs � o      ���� 0 myrefs myRefs �  *    � � � �  * �  � � � r   � � � � � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 myrefs myRefs��   � o      ���� 0 	refscount 	RefsCount �  � � � Z  � � � ����� � ?   � � � � � o   � ����� &0 progressintervals progressIntervals � m   � �����   � r   � � � � � _   � � � � � o   � ����� 0 	refscount 	RefsCount � o   � ����� &0 progressintervals progressIntervals � o      ���� 0 progresscount progressCount��  ��   �  � � � l  � � � � � � r   � � � � � m   � �����   � o      ���� 0 	filecount 	FileCount �    to track during operation    � � � � 4   t o   t r a c k   d u r i n g   o p e r a t i o n �  � � � l  � � � � � � r   � � � � � J   � �����   � o      ����  0 duplicatefiles DuplicateFiles �   container for tracking    � � � � .   c o n t a i n e r   f o r   t r a c k i n g �  � � � l  � � � � � � r   � � � � � J   � �����   � o      ���� "0 fileattachments FileAttachments �   container for tracking    � � � � .   c o n t a i n e r   f o r   t r a c k i n g �  � � � l  � � � � � � r   � � � � � J   � �����   � o      ���� &0 copiedattachments CopiedAttachments �   container for tracking    � � � � .   c o n t a i n e r   f o r   t r a c k i n g �  � � � l  � � �  � r   � � J   � �����   o      ���� 0 
copyerrors 
CopyErrors    container for tracking    � .   c o n t a i n e r   f o r   t r a c k i n g �  l  � �	 r   � �

 J   � �����   o      ���� 0 errormessages ErrorMessages   container for tracking   	 � .   c o n t a i n e r   f o r   t r a c k i n g  l  � ���������  ��  ��    l  � �����     Loop through references    � 0   L o o p   t h r o u g h   r e f e r e n c e s  r   � � m   � �����   o      ���� 0 n    X   �r�� l m k  m  !  l �"#�  "   Tracking Progress: SLOW!   # �$$ 2   T r a c k i n g   P r o g r e s s :   S L O W !! %&% l  �~'(�~  '��		set n to n + 1		if progressCount > 0 then			-- if n mod progressInterval = 0 or n = RefsCount then set showProgress to true			if n mod progressCount = 0 or n = RefsCount then				set main_string to "Copying File attachments to reading folder for syncing."				set sub_string to ("Processing record " & (n as string) & " of " & (RefsCount as string) & " ...")				my display_progress(n, RefsCount, main_string, sub_string)			end if		end if		   ( �))�  	 	 s e t   n   t o   n   +   1  	 	 i f   p r o g r e s s C o u n t   >   0   t h e n  	 	 	 - -   i f   n   m o d   p r o g r e s s I n t e r v a l   =   0   o r   n   =   R e f s C o u n t   t h e n   s e t   s h o w P r o g r e s s   t o   t r u e  	 	 	 i f   n   m o d   p r o g r e s s C o u n t   =   0   o r   n   =   R e f s C o u n t   t h e n  	 	 	 	 s e t   m a i n _ s t r i n g   t o   " C o p y i n g   F i l e   a t t a c h m e n t s   t o   r e a d i n g   f o l d e r   f o r   s y n c i n g . "  	 	 	 	 s e t   s u b _ s t r i n g   t o   ( " P r o c e s s i n g   r e c o r d   "   &   ( n   a s   s t r i n g )   &   "   o f   "   &   ( R e f s C o u n t   a s   s t r i n g )   &   "   . . . " )  	 	 	 	 m y   d i s p l a y _ p r o g r e s s ( n ,   R e f s C o u n t ,   m a i n _ s t r i n g ,   s u b _ s t r i n g )  	 	 	 e n d   i f  	 	 e n d   i f  	 	& *+* l �}�|�{�}  �|  �{  + ,-, s  "./. l 0�z�y0 I �x12
�x .ENsSrdflutxt       utxt1 o  �w�w 0 targetfield targetField2 �v3�u
�v 
recN3 o  �t�t 0 recordid recordID�u  �z  �y  / o      �s�s "0 itemattachments ItemAttachments- 454 Z  #k67�r�q6 > #(898 o  #&�p�p "0 itemattachments ItemAttachments9 o  &'�o�o 	0 empty  7 k  +g:: ;<; r  +9=>= J  +3?? @A@ m  +.BB �CC  
A D�nD m  .1EE �FF  �n  > n     GHG 1  48�m
�m 
txdlH 1  34�l
�l 
ascr< IJI s  :FKLK n  :AMNM 2 =A�k
�k 
citmN o  :=�j�j "0 itemattachments ItemAttachmentsL o      �i�i "0 itemattachments ItemAttachmentsJ O�hO X  GgP�gQP k  ]bRR STS Z  ]�UV�f�eU =  ]pWXW l ]nY�d�cY I ]n�b�aZ
�b .sysooffslong    ��� null�a  Z �`[\
�` 
psof[ m  ad]] �^^  i n t e r n a l - p d f : / /\ �__�^
�_ 
psin_ o  gh�]�] 0 filepath FilePath�^  �d  �c  X m  no�\�\ V l s�`ab` k  s�cc ded r  s~fgf J  sxhh i�[i m  svjj �kk  : / /�[  g n     lml 1  y}�Z
�Z 
txdlm 1  xy�Y
�Y 
ascre non r  �pqp n  �rsr 2 ���X
�X 
citms o  ��W�W 0 filepath FilePathq o      �V�V 0 filepathitems FilePathItemso tut r  ��vwv l ��x�U�Tx b  ��yzy o  ���S�S 0 
datafolder 
dataFolderz m  ��{{ �||  P D F /�U  �T  w n      }~} 4  ���R
�R 
cobj m  ���Q�Q ~ o  ���P�P 0 filepathitems FilePathItemsu ��� r  ����� J  ���� ��O� m  ���� ���  �O  � n     ��� 1  ���N
�N 
txdl� 1  ���M
�M 
ascr� ��L� r  ����� l ����K�J� c  ����� o  ���I�I 0 filepathitems FilePathItems� m  ���H
�H 
ctxt�K  �J  � o      �G�G 0 filepath FilePath�L  a � � fix file path; if "internal-pdf://" is not present, and it is not empty, then assume it is an absolute file path (in which case, good luck).   b ���   f i x   f i l e   p a t h ;   i f   " i n t e r n a l - p d f : / / "   i s   n o t   p r e s e n t ,   a n d   i t   i s   n o t   e m p t y ,   t h e n   a s s u m e   i t   i s   a n   a b s o l u t e   f i l e   p a t h   ( i n   w h i c h   c a s e ,   g o o d   l u c k ) .�f  �e  T ��� l ������ O ����� r  ����� 4  ���F�
�F 
psxf� o  ���E�E 0 filepath FilePath� o      �D�D 0 attachedfile AttachedFile�  f  ��� !  why do i need `tell me`???   � ��� 6   w h y   d o   i   n e e d   ` t e l l   m e ` ? ? ?� ��� l ���C���C  � > 8 check if file attachment actually exists (broken link?)   � ��� p   c h e c k   i f   f i l e   a t t a c h m e n t   a c t u a l l y   e x i s t s   ( b r o k e n   l i n k ? )� ��� l ������ r  ����� m  ���B
�B boovfals� o      �A�A $0 attachmentexists AttachmentExists�   until proven otherwise   � ��� .   u n t i l   p r o v e n   o t h e r w i s e� ��� O ����� r  ����� l ����@�?� I ���>��=
�> .coredoexbool        obj � o  ���<�< 0 attachedfile AttachedFile�=  �@  �?  � o      �;�; $0 attachmentexists AttachmentExists� m  �����                                                                                  MACS  alis    b  iMacHD                     ���DH+     0
Finder.app                                                      �	�\\M        ����  	                CoreServices    ���      �\��       0   *   )  0iMacHD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    i M a c H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l ���:���:  � "  check if destination exists   � ��� 8   c h e c k   i f   d e s t i n a t i o n   e x i s t s� ��� r  ����� J  ���� ��9� m  ���� ���  /�9  � n     ��� 1  ���8
�8 
txdl� 1  ���7
�7 
ascr� ��� r  ����� n  ����� 4 ���6�
�6 
cobj� m  ���5�5��� l ����4�3� n  ����� 2 ���2
�2 
citm� o  ���1�1 0 filepath FilePath�4  �3  � o      �0�0 0 filename FileName� ��� O ���� r  �
��� 4  ��/�
�/ 
psxf� l ���.�-� b  ���� o  ��,�, 0 exportfolder ExportFolder� o  �+�+ 0 filename FileName�.  �-  � o      �*�* "0 destinationfile destinationFile�  f  ��� ��� l ���� r  ��� m  �)
�) boovfals� o      �(�( "0 alreadyinexport alreadyInExport�   until proven otherwise   � ��� .   u n t i l   p r o v e n   o t h e r w i s e� ��� O $��� r  #��� l ��'�&� I �%��$
�% .coredoexbool        obj � o  �#�# "0 destinationfile destinationFile�$  �'  �&  � o      �"�" "0 alreadyinexport alreadyInExport� m  ���                                                                                  MACS  alis    b  iMacHD                     ���DH+     0
Finder.app                                                      �	�\\M        ����  	                CoreServices    ���      �\��       0   *   )  0iMacHD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    i M a c H D  &System/Library/CoreServices/Finder.app  / ��  � ��� Z  %Y���!� � o  %(�� $0 attachmentexists AttachmentExists� k  +U�� ��� Z +=����� o  +.�� "0 alreadyinexport alreadyInExport� s  19��� o  14�� 0 filename FileName� l     ���� n      ���  ;  78� o  47��  0 duplicatefiles DuplicateFiles�  �  �  �  � ��� Z  >������ F  >K��� l >A���� = >A��� o  >?�� 0 
applytoall 
ApplyToAll� m  ?@�
� boovfals�  �  � o  DG�� "0 alreadyinexport alreadyInExport� k  N��� ��� r  NY   J  NS � m  NQ �  �   n      1  TX�
� 
txdl 1  ST�
� 
ascr� 	 r  Zi

 b  Ze b  Za m  Z] �  F i l e   ' o  ]`�� 0 filename FileName m  ad � � '   a l r e a d y   e x i s t s   i n   t h e   E x p o r t   f o l d e r .     O v e r w r i t e   w i t h   f i l e   a t t a c h m e n t   f r o m   E n d N o t e ? o      �� 0 
dialogtext 
dialogText	  l jj��   0 * confirm overwrite: for this file, or all?    � T   c o n f i r m   o v e r w r i t e :   f o r   t h i s   f i l e ,   o r   a l l ?  l  j~ r  j~ J  jz   !"! l 	jm#�
�	# m  jm$$ �%% r Y e s :   R e p l a c e   f i l e   i n   E x p o r t   f o l d e r   w i t h   f i l e   f r o m   E n d N o t e�
  �	  " &'& l 	mp(��( m  mp)) �** � Y e s   t o   A L L :   R e p l a c e   a n y   f i l e s   i n   E x p o r t   f o l d e r   w i t h   f i l e s   f r o m   E n d N o t e�  �  ' +,+ l 	ps-��- m  ps.. �// > N o :   l e a v e   f i l e   i n   E x p o r t   f o l d e r�  �  , 0�0 l 	sv1��1 m  sv22 �33 � N o   t o   A L L :   d o   n o t   r e p l a c e   a n y   f i l e s   i n   E x p o r t   f o l d e r   i f   a l r e a d y   p r e s e n t�  �  �   o      ��  0 replaceoptions replaceOptions � �, �						"Disambiguate: copy file to Export folder with a unique name", �						"Disambiguate ALL: copy duplicate files to Export folder with a unique name"}     �44> ,   �  	 	 	 	 	 	 " D i s a m b i g u a t e :   c o p y   f i l e   t o   E x p o r t   f o l d e r   w i t h   a   u n i q u e   n a m e " ,   �  	 	 	 	 	 	 " D i s a m b i g u a t e   A L L :   c o p y   d u p l i c a t e   f i l e s   t o   E x p o r t   f o l d e r   w i t h   a   u n i q u e   n a m e " }   565 r  �787 I �� 9:
�  .gtqpchltns    @   @ ns  9 o  �����  0 replaceoptions replaceOptions: ��;<
�� 
prmp; o  ������ 0 
dialogtext 
dialogText< ��=��
�� 
inSL= J  ��>> ?��? m  ��@@ �AA > N o :   l e a v e   f i l e   i n   E x p o r t   f o l d e r��  ��  8 o      ���� &0 replacefileoption replaceFileOption6 BCB l ����DE��  D   update overWriteFiles   E �FF ,   u p d a t e   o v e r W r i t e F i l e sC GHG l ����IJ��  I   update ApplyToAll   J �KK $   u p d a t e   A p p l y T o A l lH LML Z ��NO����N = ��PQP o  ������ &0 replacefileoption replaceFileOptionQ m  ����
�� boovfalsO L  ������  ��  ��  M RSR Z  ��TUV��T E  ��WXW n  ��YZY 4  ����[
�� 
cobj[ m  ������ Z o  ������ &0 replacefileoption replaceFileOptionX m  ��\\ �]]  Y e sU r  ��^_^ m  ����
�� boovtrue_ o      ����  0 overwritefiles overWriteFilesV `a` E  ��bcb n  ��ded 4  ����f
�� 
cobjf m  ������ e o  ������ &0 replacefileoption replaceFileOptionc m  ��gg �hh  N oa i��i r  ��jkj m  ����
�� boovfalsk o      ����  0 overwritefiles overWriteFiles��  ��  S l��l Z  ��mn����m E  ��opo n  ��qrq 4  ����s
�� 
cobjs m  ������ r o  ������ &0 replacefileoption replaceFileOptionp m  ��tt �uu  t o   A L Ln r  ��vwv m  ����
�� boovtruew o      ���� 0 
applytoall 
ApplyToAll��  ��  ��  �  �  � xyx Z  �z{����z = ��|}| o  ������  0 overwritefiles overWriteFiles} m  ����
�� boovtrue{ l �~�~ O ���� Z �������� I ������
�� .coredoexbool        obj � o  ������ "0 destinationfile destinationFile��  � I �����
�� .coredeloobj        obj � o  ���� "0 destinationfile destinationFile��  ��  ��  � m  �����                                                                                  MACS  alis    b  iMacHD                     ���DH+     0
Finder.app                                                      �	�\\M        ����  	                CoreServices    ���      �\��       0   *   )  0iMacHD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    i M a c H D  &System/Library/CoreServices/Finder.app  / ��   4 . delete existing destination to allow new copy   � ��� \   d e l e t e   e x i s t i n g   d e s t i n a t i o n   t o   a l l o w   n e w   c o p y��  ��  y ���� Q  U���� k  >�� ��� O +��� I *����
�� .coreclon****      � ****� o  "���� 0 attachedfile AttachedFile� �����
�� 
insh� o  %&���� "0 filedestination FileDestination��  � m  ���                                                                                  MACS  alis    b  iMacHD                     ���DH+     0
Finder.app                                                      �	�\\M        ����  	                CoreServices    ���      �\��       0   *   )  0iMacHD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    i M a c H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l ,5���� r  ,5��� [  ,1��� o  ,/���� 0 	filecount 	FileCount� m  /0���� � o      ���� 0 	filecount 	FileCount�   increment tracker.   � ��� &   i n c r e m e n t   t r a c k e r .� ���� s  6>��� o  69���� 0 filename FileName� l     ������ n      ���  ;  <=� o  9<���� &0 copiedattachments CopiedAttachments��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errtxt errTxt� �����
�� 
errn� o      ���� 0 errnum errNum��  � k  FU�� ��� s  FL��� o  FG���� 0 errtxt errTxt� l     ������ n      ���  ;  JK� o  GJ���� 0 errormessages ErrorMessages��  ��  � ���� s  MU��� o  MP���� 0 filename FileName� l     ������ n      ���  ;  ST� o  PS���� 0 
copyerrors 
CopyErrors��  ��  ��  ��  �!  �   � ���� s  Zb��� o  Z]���� 0 filename FileName� l     ������ n      ���  ;  `a� o  ]`���� "0 fileattachments FileAttachments��  ��  ��  �g 0 filepath FilePathQ o  JM���� "0 itemattachments ItemAttachments�h  �r  �q  5 ���� l ll��������  ��  ��  ��    *    ���  *�� 0 recordid recordID o  ���� 0 myrefs myRefs ��� l ss��������  ��  ��  � ��� l ss������  � &   Output: # processed references?   � ��� @   O u t p u t :   #   p r o c e s s e d   r e f e r e n c e s ?� ��� l ss������  �   USER PROMPT --   � ���    U S E R   P R O M P T   - -� ��� r  s���� b  s���� b  s���� b  s���� b  s���� b  s���� b  s~��� b  sz��� m  sv�� ���  C o p i e d  � o  vy���� 0 	filecount 	FileCount� m  z}�� ��� &   f i l e   a t t a c h m e n t s 
 (� l ~������� I ~������
�� .corecnte****       ****� o  ~�����  0 duplicatefiles DuplicateFiles��  ��  ��  � m  ���� ��� "   d u p l i c a t e s ) 
 f o r  � n  ����� m  ����
�� 
nmbr� n ����� 2 ����
�� 
cobj� o  ������ 0 myrefs myRefs� m  ���� ���    r e c o r d s 
� m  ���� ��� D F R O M   E n d N o t e   T O   t h e   E x p o r t   f o l d e r .� o      ���� 0 
dialogtext 
dialogText� ��� r  ����� I ������
�� .sysodlogaskr        TEXT� o  ������ 0 
dialogtext 
dialogText� ����
�� 
appr� m  ���� ��� @ E n d N o t e   f i l e   a t t a c h m e n t   e x p o r t e r� �����
�� 
disp� m  ����
�� stic   ��  � o      ���� 0 	userinput 	userInput� ���� l ����������  ��  ��  ��   � m   = @���                                                                                  ENDN  alis    d  iMacHD                     ���DH+   �jEndNote X5.app                                                  �ʂ��        ����  	                
EndNote X5    ���      ʂ�     �j   M  /iMacHD:Applications: EndNote X5: EndNote X5.app     E n d N o t e   X 5 . a p p    i M a c H D  &Applications/EndNote X5/EndNote X5.app  / ��  ��  ��   � ��� l     ��������  ��  ��  � ��� l     ������  �   Check results --   � �   "   C h e c k   r e s u l t s   - -�  l ������ r  �� I ������
�� .earslfdrutxt  @    file o  ������ 0 exportfolder ExportFolder��   o      ���� 0 exportedfiles ExportedFiles��  ��    l ��	����	 r  ��

 I ������ 0 setdiff   o  ������ "0 fileattachments FileAttachments ����
�� 
agst o  ������ 0 exportedfiles ExportedFiles��   o      �� $0 filesnotexported FilesNotExported��  ��    l ���~�} r  �� I ���|�| 0 setdiff   o  ���{�{ &0 copiedattachments CopiedAttachments �z�y
�z 
agst o  ���x�x 0 exportedfiles ExportedFiles�y   o      �w�w  0 filesnotcopied FilesNotCopied�~  �}    l ��v�u I  ��t�s�t $0 exportlisttotext ExportListToText  o  ���r�r "0 fileattachments FileAttachments  l ���q�p b  �� !  o  ���o�o 0 exportfolder ExportFolder! m  ��"" �## ,   1 - F i l e A t t a c h m e n t s . t x t�q  �p   $�n$ m  �%% �&&  
�n  �s  �v  �u   '(' l )�m�l) I  �k*�j�k $0 exportlisttotext ExportListToText* +,+ o  �i�i $0 filesnotexported FilesNotExported, -.- l /�h�g/ b  010 o  �f�f 0 exportfolder ExportFolder1 m  22 �33 .   2 - F i l e s N o t E x p o r t e d . t x t�h  �g  . 4�e4 m  55 �66  
�e  �j  �m  �l  ( 787 l 09�d�c9 I  0�b:�a�b $0 exportlisttotext ExportListToText: ;<; o   �`�` 0 errormessages ErrorMessages< =>= l  )?�_�^? b   )@A@ o   %�]�] 0 exportfolder ExportFolderA m  %(BB �CC (   3 - E r r o r M e s s a g e s . t x t�_  �^  > D�\D m  ),EE �FF  
�\  �a  �d  �c  8 GHG l 1EI�[�ZI I  1E�YJ�X�Y $0 exportlisttotext ExportListToTextJ KLK o  25�W�W  0 duplicatefiles DuplicateFilesL MNM l 5>O�V�UO b  5>PQP o  5:�T�T 0 exportfolder ExportFolderQ m  :=RR �SS "   4 - D u p l i c a t e s . t x t�V  �U  N T�ST m  >AUU �VV  
�S  �X  �[  �Z  H WXW l FMYZ[Y I FM�R\�Q
�R .ascrcmnt****      � ****\ o  FI�P�P  0 filesnotcopied FilesNotCopied�Q  Z i c should be empty: captures files where the copy command was successful (within the `try` statement)   [ �]] �   s h o u l d   b e   e m p t y :   c a p t u r e s   f i l e s   w h e r e   t h e   c o p y   c o m m a n d   w a s   s u c c e s s f u l   ( w i t h i n   t h e   ` t r y `   s t a t e m e n t )X ^_^ l     �O�N�M�O  �N  �M  _ `a` l     �L�K�J�L  �K  �J  a bcb l     �Ide�I  d   END --   e �ff    E N D   - -c ghg l     �H�G�F�H  �G  �F  h iji l     �E�D�C�E  �D  �C  j klk l     �Bmn�B  m  * HANDLERS *--   n �oo  *   H A N D L E R S   * - -l pqp l     �A�@�?�A  �@  �?  q rsr l     �>tu�>  t   intersection --   u �vv     i n t e r s e c t i o n   - -s wxw i   yzy I      �={|�= 0 intersection  { o      �<�< 0 lista listA| �;}�:
�; 
agst} o      �9�9 0 listb listB�:  z k     2~~ � q      �� �8��8 0 newlist newList� �7�6�7 0 a  �6  � ��� r     ��� J     �5�5  � o      �4�4 0 newlist newList� ��� X    0��3�� k    +�� ��� l   ���� r    ��� n    ��� 1    �2
�2 
pcnt� o    �1�1 0 a  � o      �0�0 0 a  � * $ dereference implicit loop reference   � ��� H   d e r e f e r e n c e   i m p l i c i t   l o o p   r e f e r e n c e� ��/� Z   +���.�-� E    ��� o    �,�, 0 listb listB� J    �� ��+� o    �*�* 0 a  �+  � r   # '��� o   # $�)�) 0 a  � n      ���  ;   % &� o   $ %�(�( 0 newlist newList�.  �-  �/  �3 0 a  � o    	�'�' 0 lista listA� ��&� o   1 2�%�% 0 newlist newList�&  x ��� l     �$�#�"�$  �#  �"  � ��� l     �!���!  � 7 1 set difference (Items in A that are NOT in B) --   � ��� b   s e t   d i f f e r e n c e   ( I t e m s   i n   A   t h a t   a r e   N O T   i n   B )   - -� ��� i   
��� I      � ���  0 setdiff  � o      �� 0 lista listA� ���
� 
agst� o      �� 0 listb listB�  � k     2�� ��� q      �� ��� 0 newlist newList� ��� 0 a  �  � ��� r     ��� J     ��  � o      �� 0 newlist newList� ��� X    0���� k    +�� ��� l   ���� r    ��� n    ��� 1    �
� 
pcnt� o    �� 0 a  � o      �� 0 a  � * $ dereference implicit loop reference   � ��� H   d e r e f e r e n c e   i m p l i c i t   l o o p   r e f e r e n c e� ��� Z    +����� E    ��� o    �� 0 listb listB� J    �� ��� o    �� 0 a  �  � l  # #����  �   do nothing   � ���    d o   n o t h i n g�  � r   ' +��� o   ' (�� 0 a  � n      ���  ;   ) *� o   ( )�� 0 newlist newList�  � 0 a  � o    	�
�
 0 lista listA� ��	� o   1 2�� 0 newlist newList�	  � ��� l     ����  �  �  � ��� i    ��� I      ���� $0 exportlisttotext ExportListToText� ��� o      �� 0 thelist theList� ��� o      �� 0 filepath FilePath� �� � o      ���� 0 	itemdelim 	itemDelim�   �  � k     .�� ��� r     ��� 4     ���
�� 
psxf� o    ���� 0 filepath FilePath� o      ���� 0 destfile destFile� ��� r    ��� J    
�� ���� m    �� ���  
��  � n     ��� 1    ��
�� 
txdl� 1   
 ��
�� 
ascr� ��� I   ����
�� .rdwropenshor       file� o    ���� 0 destfile destFile� �����
�� 
perm� m    ��
�� boovtrue��  � ��� r    ��� c    ��� o    ���� 0 thelist theList� m    ��
�� 
ctxt� o      ���� 0 
textoutput 
TextOutput� � � I   (��
�� .rdwrwritnull���     **** l    ���� v      �� o    ���� 0 
textoutput 
TextOutput��  ��  ��   ��
�� 
refn o   ! "���� 0 destfile destFile ����
�� 
as   m   # $��
�� 
ctxt��    	��	 I  ) .��
��
�� .rdwrclosnull���     ****
 o   ) *���� 0 destfile destFile��  ��  �  l     ��������  ��  ��    l     ����   . ( get the index of an item within a list.    � P   g e t   t h e   i n d e x   o f   a n   i t e m   w i t h i n   a   l i s t .  i     I      ������ 0 indexof indexOf  o      ���� 0 listvar listVar �� o      ���� 0 listitem listItem��  ��   k     3  Z    ���� >      n     !"! m    ��
�� 
pcls" o     ���� 0 listvar listVar  m    ��
�� 
list L    
## m    	����  ��  ��   $%$ Y    0&��'(��& Z   +)*����) =    "+,+ n     -.- 4     ��/
�� 
cobj/ o    ���� 0 i  . o    ���� 0 listvar listVar, o     !���� 0 listitem listItem* L   % '00 o   % &���� 0 i  ��  ��  �� 0 i  ' m    ���� ( n    121 1    ��
�� 
leng2 o    ���� 0 listvar listVar��  % 3��3 L   1 344 m   1 2����  ��   565 l     ��������  ��  ��  6 7��7 i    898 I      ��:���� 0 display_progress  : ;<; o      ���� 0 	iteration  < =>= o      ���� 0 total_count  > ?@? o      ���� 0 main_string  @ A��A o      ���� 0 
sub_string  ��  ��  9 k     rBB CDC l     ��EF��  E J Dchoose from this list for the "unprocessed" part of the progress bar   F �GG � c h o o s e   f r o m   t h i s   l i s t   f o r   t h e   " u n p r o c e s s e d "   p a r t   o f   t h e   p r o g r e s s   b a rD HIH r     JKJ J     LL MNM m     OO �PP   N QRQ m    SS �TT P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -R U��U m    VV �WW P o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o o��  K o      ���� 0 the_counter_opts  I XYX r    Z[Z l   \����\ n    ]^] 2   ��
�� 
cha ^ l   _����_ n    `a` 4   	 ��b
�� 
cobjb m   
 ���� a o    	���� 0 the_counter_opts  ��  ��  ��  ��  [ o      ���� 0 the_counter  Y cdc r    "efe l    g����g I    ��hi
�� .sysorondlong        doubh l   j����j ]    klk l   m����m ^    non o    ���� 0 	iteration  o o    ���� 0 total_count  ��  ��  l l   p����p I   ��q��
�� .corecnte****       ****q o    ���� 0 the_counter  ��  ��  ��  ��  ��  i ��r��
�� 
direr m    ��
�� olierndD��  ��  ��  f o      ���� 0 the_percentage  d sts Z   # Buv����u >  # &wxw o   # $���� 0 the_percentage  x m   $ %����  v Y   ) >y��z{��y r   3 9|}| m   3 4~~ �  "} n      ��� 4   5 8���
�� 
cobj� o   6 7���� 0 i  � o   4 5���� 0 the_counter  �� 0 i  z m   , -���� { o   - .���� 0 the_percentage  ��  ��  ��  t ��� r   C J��� J   C F�� ���� m   C D�� ���  ��  � n     ��� 1   G I��
�� 
txdl� 1   F G��
�� 
ascr� ��� r   K P��� c   K N��� o   K L���� 0 the_counter  � m   L M��
�� 
TEXT� o      ���� 0 the_counter  � ��� r   Q `��� b   Q ^��� b   Q \��� b   Q Z��� b   Q X��� b   Q V��� b   Q T��� o   Q R���� 0 main_string  � o   R S��
�� 
ret � o   T U��
�� 
ret � o   V W���� 0 
sub_string  � o   X Y��
�� 
ret � o   Z [��
�� 
ret � o   \ ]���� 0 the_counter  � o      ���� 0 the_message  � ���� I  a r����
�� .sysodlogaskr        TEXT� o   a b���� 0 the_message  � ����
�� 
btns� J   c h�� ��� m   c f�� ���  C a n c e l�  � �~��}
�~ 
givu� m   k l�|�| �}  ��  ��       	�{� �������{  � �z�y�x�w�v�u�t�z 0 exportfolder ExportFolder�y 0 intersection  �x 0 setdiff  �w $0 exportlisttotext ExportListToText�v 0 indexof indexOf�u 0 display_progress  
�t .aevtoappnull  �   � ****� �sz�r�q���p�s 0 intersection  �r 0 lista listA�q �o�n�m
�o 
agst�n 0 listb listB�m  � �l�k�j�i�l 0 lista listA�k 0 listb listB�j 0 newlist newList�i 0 a  � �h�g�f�e
�h 
kocl
�g 
cobj
�f .corecnte****       ****
�e 
pcnt�p 3jvE�O *�[��l kh ��,E�O��kv 	��6FY h[OY��O�� �d��c�b���a�d 0 setdiff  �c 0 lista listA�b �`�_�^
�` 
agst�_ 0 listb listB�^  � �]�\�[�Z�] 0 lista listA�\ 0 listb listB�[ 0 newlist newList�Z 0 a  � �Y�X�W�V
�Y 
kocl
�X 
cobj
�W .corecnte****       ****
�V 
pcnt�a 3jvE�O *�[��l kh ��,E�O��kv hY ��6F[OY��O�� �U��T�S���R�U $0 exportlisttotext ExportListToText�T �Q��Q �  �P�O�N�P 0 thelist theList�O 0 filepath FilePath�N 0 	itemdelim 	itemDelim�S  � �M�L�K�J�I�M 0 thelist theList�L 0 filepath FilePath�K 0 	itemdelim 	itemDelim�J 0 destfile destFile�I 0 
textoutput 
TextOutput� �H��G�F�E�D�C�B�A�@�?�>
�H 
psxf
�G 
ascr
�F 
txdl
�E 
perm
�D .rdwropenshor       file
�C 
ctxt
�B 
refn
�A 
as  �@ 
�? .rdwrwritnull���     ****
�> .rdwrclosnull���     ****�R /*�/E�O�kv��,FO��el O��&E�O�k���� 
O�j � �=�<�;���:�= 0 indexof indexOf�< �9��9 �  �8�7�8 0 listvar listVar�7 0 listitem listItem�;  � �6�5�4�6 0 listvar listVar�5 0 listitem listItem�4 0 i  � �3�2�1�0
�3 
pcls
�2 
list
�1 
leng
�0 
cobj�: 4��,� jY hO  k��,Ekh ��/�  �Y h[OY��Oj� �/9�.�-���,�/ 0 display_progress  �. �+��+ �  �*�)�(�'�* 0 	iteration  �) 0 total_count  �( 0 main_string  �' 0 
sub_string  �-  � 	�&�%�$�#�"�!� ���& 0 	iteration  �% 0 total_count  �$ 0 main_string  �# 0 
sub_string  �" 0 the_counter_opts  �! 0 the_counter  �  0 the_percentage  � 0 i  � 0 the_message  � OSV������~����������
� 
cobj
� 
cha 
� .corecnte****       ****
� 
dire
� olierndD
� .sysorondlong        doub
� 
ascr
� 
txdl
� 
TEXT
� 
ret 
� 
btns
� 
givu� 
� .sysodlogaskr        TEXT�, s���mvE�O��l/�-E�O��!�j  ��l E�O�j  k�kh ��/F[OY��Y hO�kv��,FO��&E�O��%�%�%�%�%�%E�O��a kva ka  � �������
� .aevtoappnull  �   � ****� k    M��  ��   ��  %��  =��  I��  X��  b��  i��  x��  ��� �� �� �� �� '�� 7�� G�� W��  �  �  � �
�	���
 0 recordid recordID�	 0 filepath FilePath� 0 errtxt errTxt� 0 errnum errNum� u���� G���  _�� g������ ��������������� ������� ������� �������������������������������BE����]������j��{�������������������$).2����@����\gt���������������������������������������"%��25BERU���  0 overwritefiles overWriteFiles� 0 
applytoall 
ApplyToAll� &0 progressintervals progressIntervals
� 
prmp
� .sysostflalis    ��� null
� 
psxp�  0 progresscount progressCount�� 	0 empty  �� 0 targetfield targetField
�� 
psxf�� "0 filedestination FileDestination
�� 
ascr
�� 
txdl
�� 
docu
�� 
ppth
�� 
ctxt�� 0 libpath LibPath������ 0 
datafolder 
dataFolder
�� 
pnam�� 0 libname LibName
�� 
inin
�� .ENsSgetr****       utxt�� 0 allrefs allRefs�� 0 myrefs myRefs
�� .corecnte****       ****�� 0 	refscount 	RefsCount�� 0 	filecount 	FileCount��  0 duplicatefiles DuplicateFiles�� "0 fileattachments FileAttachments�� &0 copiedattachments CopiedAttachments�� 0 
copyerrors 
CopyErrors�� 0 errormessages ErrorMessages�� 0 n  
�� 
kocl
�� 
cobj
�� 
recN
�� .ENsSrdflutxt       utxt�� "0 itemattachments ItemAttachments
�� 
citm
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null�� 0 filepathitems FilePathItems�� 0 attachedfile AttachedFile�� $0 attachmentexists AttachmentExists
�� .coredoexbool        obj �� 0 filename FileName�� "0 destinationfile destinationFile�� "0 alreadyinexport alreadyInExport
�� 
bool�� 0 
dialogtext 
dialogText��  0 replaceoptions replaceOptions
�� 
inSL
�� .gtqpchltns    @   @ ns  �� &0 replacefileoption replaceFileOption
�� .coredeloobj        obj 
�� 
insh
�� .coreclon****      � ****�� 0 errtxt errTxt� ������
�� 
errn�� 0 errnum errNum��  
�� 
nmbr
�� 
appr
�� 
disp
�� stic   
�� .sysodlogaskr        TEXT�� 0 	userinput 	userInput
�� .earslfdrutxt  @    file�� 0 exportedfiles ExportedFiles
�� 
agst�� 0 setdiff  �� $0 filesnotexported FilesNotExported��  0 filesnotcopied FilesNotCopied�� $0 exportlisttotext ExportListToText
�� .ascrcmnt****      � ****�NfE�OfE�OjE�O*��l �,Ec   OjE�O�E�O�E�O*�b   /E�O�kv�a ,FOa }*a k/a ,a &E` O_ [a \[Zk\Za 2a %E` O*a k/a ,E` Oa a *a k/l E` Oa a *a k/l E`  O_ E`  O_  j !E` "O�j _ "�"E�Y hOjE` #OjvE` $OjvE` %OjvE` &OjvE` 'OjvE` (OjE` )Os_  [a *a +l !kh  �a ,�l -EQ` .O_ .�Aa /a 0lv�a ,FO_ .a 1-EQ` .O_ .[a *a +l !kh *a 2a 3a 4�a 5 6k  Aa 7kv�a ,FO�a 1-E` 8O_ a 9%_ 8a +k/FOa :kv�a ,FO_ 8a &E�Y hO) 
*�/E` ;UOfE` <Oa = _ ;j >E` <UOa ?kv�a ,FO�a 1-a +i/E` @O) *�b   _ @%/E` AUOfE` BOa = _ Aj >E` BUO_ </_ B _ @_ $6GY hO�f 	 	_ Ba C& �a Dkv�a ,FOa E_ @%a F%E` GOa Ha Ia Ja Ka 5vE` LO_ L�_ Ga Ma Nkva 5 OE` PO_ Pf  hY hO_ Pa +k/a Q eE�Y _ Pa +k/a R fE�Y hO_ Pa +k/a S eE�Y hY hO�e  !a = _ Aj > _ Aj TY hUY hO *a = _ ;a U�l VUO_ #kE` #O_ @_ &6GW X W X�_ (6GO_ @_ '6GY hO_ @_ %6G[OY��Y hOP[OY��Oa Y_ #%a Z%_ $j !%a [%_  a +-a \,%a ]%a ^%E` GO_ Ga _a `a aa ba 5 cE` dOPUOb   j eE` fO_ %a g_ fl hE` iO_ &a g_ fl hE` jO*_ %b   a k%a lm+ mO*_ ib   a n%a om+ mO*_ (b   a p%a qm+ mO*_ $b   a r%a sm+ mO_ jj tascr  ��ޭ