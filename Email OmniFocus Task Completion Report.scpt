FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $ ==============================     � 	 	 < = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   
  
 l     ��  ��    : 4 Script name: Email OmniFocus Task Completion Report     �   h   S c r i p t   n a m e :   E m a i l   O m n i F o c u s   T a s k   C o m p l e t i o n   R e p o r t      l     ��  ��      Version 1.0     �      V e r s i o n   1 . 0      l     ��  ��    ] W Written By: Phil Gorrindo <pgorrindo.github@gorrindo.com> and http://phil.gorrindo.com     �   �   W r i t t e n   B y :   P h i l   G o r r i n d o   < p g o r r i n d o . g i t h u b @ g o r r i n d o . c o m >   a n d   h t t p : / / p h i l . g o r r i n d o . c o m      l     ��  ��    � z Description: This script retrieves a list of OmniFocus tasks completed yesterday or today. It then sends an email report.     �   �   D e s c r i p t i o n :   T h i s   s c r i p t   r e t r i e v e s   a   l i s t   o f   O m n i F o c u s   t a s k s   c o m p l e t e d   y e s t e r d a y   o r   t o d a y .   I t   t h e n   s e n d s   a n   e m a i l   r e p o r t .      l     ��   !��       Version History:    ! � " " "   V e r s i o n   H i s t o r y :   # $ # l     �� % &��   %   		1.0 - Initial release    & � ' ' 0   	 	 1 . 0   -   I n i t i a l   r e l e a s e $  ( ) ( l     �� * +��   * 0 * Based on the following original scripts:     + � , , T   B a s e d   o n   t h e   f o l l o w i n g   o r i g i n a l   s c r i p t s :   )  - . - l     �� / 0��   / f `		http://www.tuaw.com/2013/04/15/applescripting-omnifocus-send-completed-task-report-to-evernot/    0 � 1 1 � 	 	 h t t p : / / w w w . t u a w . c o m / 2 0 1 3 / 0 4 / 1 5 / a p p l e s c r i p t i n g - o m n i f o c u s - s e n d - c o m p l e t e d - t a s k - r e p o r t - t o - e v e r n o t / .  2 3 2 l     �� 4 5��   4 [ U		http://veritrope.com/code/write-todays-completed-tasks-in-omnifocus-to-a-text-file/    5 � 6 6 � 	 	 h t t p : / / v e r i t r o p e . c o m / c o d e / w r i t e - t o d a y s - c o m p l e t e d - t a s k s - i n - o m n i f o c u s - t o - a - t e x t - f i l e / 3  7 8 7 l     ��������  ��  ��   8  9 : 9 l     �� ; <��   ; $ ==============================    < � = = < = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = :  > ? > l     ��������  ��  ��   ?  @ A @ j     �� B�� 0 	toaddress 	toAddress B m      C C � D D  t o @ e x a m p l e . c o m A  E F E j    �� G�� 0 fromaddress fromAddress G m     H H � I I   f r o m @ e x a m p l e . c o m F  J K J j    �� L��  0 thereportscope theReportScope L m     M M � N N  Y e s t e r d a y K  O P O l     �� Q R��   Q ' !property theReportScope : "Today"    R � S S B p r o p e r t y   t h e R e p o r t S c o p e   :   " T o d a y " P  T U T l     ��������  ��  ��   U  V W V l     X���� X r      Y Z Y n     [ \ [ I    �������� 0 do_omnifocus do_OmniFocus��  ��   \  f      Z o      ���� 0 
themessage 
theMessage��  ��   W  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l    a���� a n    b c b I   	 �� d���� 0 
send_email   d  e�� e o   	 
���� 0 
themessage 
theMessage��  ��   c  f    	��  ��   `  f g f l     ��������  ��  ��   g  h i h l     ��������  ��  ��   i  j k j i   	  l m l I      �������� 0 do_omnifocus do_OmniFocus��  ��   m k    F n n  o p o r      q r q I    ������
�� .misccurdldt    ��� null��  ��   r o      ���� 0 thestartdate theStartDate p  s t s r     u v u m    	����   v n       w x w 1   
 ��
�� 
hour x o   	 
���� 0 thestartdate theStartDate t  y z y r     { | { m    ����   | n       } ~ } 1    ��
�� 
min  ~ o    ���� 0 thestartdate theStartDate z   �  r     � � � m    ����   � n       � � � m    ��
�� 
scnd � o    ���� 0 thestartdate theStartDate �  � � � r    ' � � � [    % � � � [    # � � � [     � � � o    ���� 0 thestartdate theStartDate � l    ����� � ]     � � � m    ����  � 1    ��
�� 
hour��  ��   � l   " ����� � ]    " � � � m     ���� ; � 1     !��
�� 
min ��  ��   � m   # $���� ; � o      ���� 0 
theenddate 
theEndDate �  � � � l  ( (��������  ��  ��   �  � � � Z   ( S � � ��� � =   ( / � � � o   ( -����  0 thereportscope theReportScope � m   - . � � � � � 
 T o d a y � l  2 2�� � ���   �  then do nothing    � � � �  t h e n   d o   n o t h i n g �  � � � =   6 = � � � o   6 ;����  0 thereportscope theReportScope � m   ; < � � � � �  Y e s t e r d a y �  ��� � k   @ O � �  � � � r   @ G � � � \   @ E � � � o   @ A���� 0 thestartdate theStartDate � ]   A D � � � m   A B����  � 1   B C��
�� 
days � o      ���� 0 thestartdate theStartDate �  ��� � r   H O � � � \   H M � � � o   H I���� 0 
theenddate 
theEndDate � ]   I L � � � m   I J����  � 1   J K��
�� 
days � o      ���� 0 
theenddate 
theEndDate��  ��  ��   �  � � � l  T T��������  ��  ��   �  � � � r   T ] � � � b   T [ � � � b   T Y � � � m   T U � � � � � Z < h t m l > < b o d y > < h 2 > O m n i F o c u s   T a s k s   C o m p l e t e d   o n   � l  U X ����� � n   U X � � � 1   V X��
�� 
dstr � o   U V���� 0 thestartdate theStartDate��  ��   � m   Y Z � � � � �  < / h 2 > < b r > � o      ���� 0 
themessage 
theMessage �  � � � l  ^ ^��������  ��  ��   �  � � � O   ^> � � � k   b= � �  � � � I  b g������
�� .miscactvnull��� ��� null��  ��   �  ��� � O   h= � � � k   n< � �  � � � r   n � � � � N   n � � � l  n � ����� � 6 n � � � � 2  n q��
�� 
FCft � F   t � � � � l  u ~ ����� � @   u ~ � � � 1   v z��
�� 
FCdc � o   { }���� 0 thestartdate theStartDate��  ��   � l   � ����� � B    � � � � 1   � ���
�� 
FCdc � o   � ����� 0 
theenddate 
theEndDate��  ��  ��  ��   � o      ���� 0 refdonetasks refDoneTasks �  � � � r   � � � � � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 refdonetasks refDoneTasks��   � o      ���� 0 numbertasks numberTasks �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 
themessage 
theMessage � m   � � � � � � � > < h 3 > N u m b e r   o f   t a s k s   c o m p l e t e d :   � o   � ����� 0 numbertasks numberTasks � m   � � � � � � �  < / h 3 > < b r > < h r > � o      ���� 0 
themessage 
theMessage �  � � � r   � � �  � b   � � o   � ����� 0 
themessage 
theMessage m   � � �  < u l >  o      �� 0 
themessage 
theMessage �  l  � ��~�}�|�~  �}  �|    r   � �	
	 n   � � J   � �  1   � ��{
�{ 
pnam  n   � � 1   � ��z
�z 
pnam n  � � m   � ��y
�y 
FCct  g   � � �x n   � � 1   � ��w
�w 
pnam n  � � 1   � ��v
�v 
FCPr  g   � ��x   o   � ��u�u 0 refdonetasks refDoneTasks
 J        o      �t�t 0 lstname lstName  o      �s�s 0 
lstcontext 
lstContext  �r  o      �q�q 0 
lstproject 
lstProject�r   !�p! Y   �<"�o#$�n" k   �7%% &'& r   �%()( J   �	** +,+ n   � �-.- 4   � ��m/
�m 
cobj/ o   � ��l�l 0 itask iTask. o   � ��k�k 0 lstname lstName, 010 n   �232 4   ��j4
�j 
cobj4 o   � �i�i 0 itask iTask3 o   � ��h�h 0 
lstcontext 
lstContext1 5�g5 n  676 4  �f8
�f 
cobj8 o  �e�e 0 itask iTask7 o  �d�d 0 
lstproject 
lstProject�g  ) J      99 :;: o      �c�c 0 strname strName; <=< o      �b�b 0 
varcontext 
varContext= >�a> o      �`�` 0 
varproject 
varProject�a  ' ?@? r  &/ABA b  &-CDC b  &+EFE o  &'�_�_ 0 
themessage 
theMessageF m  '*GG �HH  < l i >D o  +,�^�^ 0 strname strNameB o      �]�] 0 
themessage 
theMessage@ IJI l 00�\KL�\  K X Rif varContext is not missing value then set strText to strText & " @" & varContext   L �MM � i f   v a r C o n t e x t   i s   n o t   m i s s i n g   v a l u e   t h e n   s e t   s t r T e x t   t o   s t r T e x t   &   "   @ "   &   v a r C o n t e x tJ NON l 00�[PQ�[  P ^ Xif varProject is not missing value then set strText to strText & " (" & varProject & ")"   Q �RR � i f   v a r P r o j e c t   i s   n o t   m i s s i n g   v a l u e   t h e n   s e t   s t r T e x t   t o   s t r T e x t   &   "   ( "   &   v a r P r o j e c t   &   " ) "O S�ZS r  07TUT b  05VWV o  01�Y�Y 0 
themessage 
theMessageW m  14XX �YY  < / l i > < b r >U o      �X�X 0 
themessage 
theMessage�Z  �o 0 itask iTask# m   � ��W�W $ I  � ��VZ�U
�V .corecnte****       ****Z o   � ��T�T 0 lstname lstName�U  �n  �p   � 1   h k�S
�S 
FCDo��   � m   ^ _[[�                                                                                  OFOC  alis    @  pMBP                       �v"H+  I��OmniFocus.app                                                  X<�Ν�n        ����  	                Applications    �u�      Ν�^    I��   pMBP:Applications: OmniFocus.app    O m n i F o c u s . a p p  
  p M B P  Applications/OmniFocus.app  / ��   � \]\ l ??�R�Q�P�R  �Q  �P  ] ^�O^ r  ?F_`_ b  ?Daba o  ?@�N�N 0 
themessage 
theMessageb m  @Ccc �dd . < / u l > < h r > < / b o d y > < / h t m l >` o      �M�M 0 
themessage 
theMessage�O   k efe l     �L�K�J�L  �K  �J  f ghg l     �I�H�G�I  �H  �G  h iji i    klk I      �Fm�E�F 0 
send_email  m n�Dn o      �C�C 0 
themessage 
theMessage�D  �E  l k     +oo pqp r     rsr l    t�B�At I    �@u�?
�@ .sysoexecTEXT���     TEXTu m     vv �ww . d a t e   ' + % Y % m % d   % H : % M : % S '�?  �B  �A  s o      �>�> 0 thetimestamp theTimeStampq xyx r    z{z b    |}| b    ~~ m    	�� ��� B O m n i F o c u s   C o m p l e t e d   T a s k   R e p o r t   ( o   	 
�=�= 0 thetimestamp theTimeStamp} m    �� ���  ){ o      �<�< 0 
thesubject 
theSubjecty ��;� I   +�:��9
�: .sysoexecTEXT���     TEXT� b    '��� b    !��� b    ��� b    ��� b    ��� b    ��� b    ��� m    �� ���  e c h o   "� o    �8�8 0 
themessage 
theMessage� m    �� ��� * "   |   m a i l   - s   " $ ( e c h o   "� o    �7�7 0 
thesubject 
theSubject� m    �� ��� 8 
 C o n t e n t - T y p e :   t e x t / h t m l " ) "  � o    �6�6 0 	toaddress 	toAddress� m     �� ���    - f  � o   ! &�5�5 0 fromaddress fromAddress�9  �;  j ��� l     �4�3�2�4  �3  �2  � ��1� l     �0�/�.�0  �/  �.  �1       �-� C H M����-  � �,�+�*�)�(�'�, 0 	toaddress 	toAddress�+ 0 fromaddress fromAddress�*  0 thereportscope theReportScope�) 0 do_omnifocus do_OmniFocus�( 0 
send_email  
�' .aevtoappnull  �   � ****� �& m�%�$���#�& 0 do_omnifocus do_OmniFocus�%  �$  � �"�!� ����������" 0 thestartdate theStartDate�! 0 
theenddate 
theEndDate�  0 
themessage 
theMessage� 0 refdonetasks refDoneTasks� 0 numbertasks numberTasks� 0 lstname lstName� 0 
lstcontext 
lstContext� 0 
lstproject 
lstProject� 0 itask iTask� 0 strname strName� 0 
varcontext 
varContext� 0 
varproject 
varProject� ������ � �� �� �[������
 � ��	���GXc
� .misccurdldt    ��� null
� 
hour
� 
min 
� 
scnd� � ;
� 
days
� 
dstr
� .miscactvnull��� ��� null
� 
FCDo
� 
FCft�  
� 
FCdc
�
 .corecnte****       ****
�	 
pnam
� 
FCct
� 
FCPr
� 
cobj�#G*j  E�Oj��,FOj��,FOj��,FO��� �� �E�Ob  �  hY b  �  �k� E�O�k� E�Y hO��,%�%E�O� �*j O*�, �*�-a [[a ,\Z�;\[a ,\Z�=A1E�O�j E�O�a %�%a %E�O�a %E�O�[a ,\[a ,a ,\[a ,a ,\ZmvE[a k/E�Z[a l/E�Z[a m/E�ZO Tk�j kh �a �/�a �/�a �/mvE[a k/E�Z[a l/E�Z[a m/E�ZO�a %�%E�O�a %E�[OY��UUO�a %E�� �l������ 0 
send_email  � ��� �  � �  0 
themessage 
theMessage�  � �������� 0 
themessage 
theMessage�� 0 thetimestamp theTimeStamp�� 0 
thesubject 
theSubject� v��������
�� .sysoexecTEXT���     TEXT� ,�j E�O�%�%E�O�%�%�%�%b   %�%b  %j � �����������
�� .aevtoappnull  �   � ****� k     ��  V��  _����  ��  ��  �  � �������� 0 do_omnifocus do_OmniFocus�� 0 
themessage 
theMessage�� 0 
send_email  �� )j+  E�O)�k+  ascr  ��ޭ