   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:BookStoreManagermentBookStoreManagerment  5   	   ]3clr-namespace:BookStoreManagerment.CustomControlBar%BookStoreManagerment.CustomControlBar  5   	   +    %BookStoreManagerment.StatisticsWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:BookStoreManagerment     5   	   Buc3clr-namespace:BookStoreManagerment.CustomControlBar     5   	   V	 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 	 5   	   ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5	   	   ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  6G   -   5        $��statisticWindow��5   	      StatisticsVM  � DataContext#  [  5   	     MaterialDesignFont#���  5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Statistics Window��5   	   $	��600��6#   $
��1024��60    � 
ResizeMode$ NoResize=�6=    � Icon$ Images/BookMng2.png��6S    � WindowStyle$
 None=�6o   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      6    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   �� 5      6!   .+�5   
   � $��0��6   $��4��6   .+�5      <   6BookStoreManagerment.CustomControlBar.UserControlAlter  
 � Tag 6"   �� *Title+	 �� ElementName$	 statisticWindow��6W   5      �� 5   
   $��
20 10 20 0q�6   $��1��6)   $��0��66   .+�5      � .+�5      �� $��30��6   ���#607799
 J� Effect
 5       3  -System.Windows.Media.Effects.DropShadowEffect  5!         
BlurRadius$ 1Q�6+      Color$ 	#FFE8E8E8��6:      	Direction$	 305Q�6L   5#      �� 5$      $
��Bold"�6   $��10 3 0 0q�6.   $$��SÁCH BÁN CHẠY TRONG THÁNG��6@   
�������$��Center=�6t   5%      � 5&      .+�5'      �� 
�������$	��500��6)   $��0 10 0 0q�66   
 5(        5)      $ 1Q�6+   $ 	#FFE8E8E8��6:   $	 305Q�6L   5+      �� 5,      $��0 10 0 0q�6   .+�5-      �  5.      �� 5/      �� 50      .+�53      &   DevExpress.Xpf.Editors.ImageEdit     Stretch$
 Fill=�6(   $��1��67   {�.  %  DevExpress.Xpf.Editors.BaseEdit   
ShowBorder .  $	��100��6�   $	��150��6�   $��
10 10 0 10q�6�      Source 6G   ��  �� Path$
 Img1� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 54      $��10q�6%   $��0��61   .+�55      �� $
��Wrap=�6(   ���	#FFFFCC00$
��Bold"�6n   $��13(�6�   $��	10 10 0 0q�6�   ��6S   �� *	BookName1+6�   �� 56      $��	10 10 0 0q�6(   ���	#DDFF0000��6;   �� *
BookPrice1+6W   57      58      � 5:       5;      �� 5<      �� 5=      .+�5@        $
 Fill=�6(   $��1��67   {�.   .  $	��100��6�   $	��150��6�   $��
10 10 0 10q�6�    6G   �� $
 Img2�$ TwoWay=�$ PropertyChanged=�6�   �� 5A      $��10q�6%   $��0��61   .+�5B      �� $
��Wrap=�6(   ���	#FFFFCC00$
��Bold"�6n   $��13(�6�   $��	10 10 0 0q�6�   ��6S   �� *	BookName2+6�   �� 5C      $��	10 10 0 0q�6(   ���	#DDFF0000��6;   �� *
BookPrice2+6W   5D      5E      � 5G       5H      �� 5I      �� 5J      .+�5M        $
 Fill=�6(   $��1��67   {�.   .  $	��100��6�   $	��150��6�   $��
10 10 0 10q�6�    6G   �� $
 Img3�$ TwoWay=�$ PropertyChanged=�6�   �� 5N      $��10q�6%   $��0��61   .+�5O      �� $
��Wrap=�6(   ���	#FFFFCC00$
��Bold"�6n   $��13(�6�   $��	10 10 0 0q�6�   ��6S   �� *	BookName3+6�   �� 5P      $��	10 10 0 0q�6(   ���	#DDFF0000��6;   �� *
BookPrice3+6W   5Q      5R      5S      5T      5U      � 5V   
   $��1��6   $��2��6   $��1��6.    5W      �� 5X      6"   �� 5Y      6"   .+�5[      � $��0��6   $��0 10 5 0q�6!    5\      �� 5]      $
��Auto �6$   �� 5^      .+�5a      � $��0��6   .+�5b      �� $��30��6    ���#607799
 5c        5d      $ 1Q�6/   $ 	#FFE8E8E8��6>   $	 305Q�6P   5f      �� 5g      $
��Bold"�6    $��10 3 0 0q�62   $��THÔNG TIN QUẢNG CÁO��6D   
�������$��Center=�6r   5h      � 5i      $��0 10 0 0q�6   $��1��6)   .+�5j      �� $	��200��6!   
�������
 5k        5l      $ 1Q�6/   $ 	#FFE0E0E0��6>   $	 305Q�6P   5n      �� 5o      + 	 %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�6   $
��Fill=�6M   ��6\   �� *Uri+5p      5q      � 5s      $��0 10 5 0q�6   $��1��6&    5t      �� 5u      $
��Auto �6$   �� 5v      .+�5y      � $��0��6   $��0 10 0 0q�6$   .+�5z      �� $��30��6    ���#607799
 5{        5|      $ 1Q�6/   $ 	#FFE8E8E8��6>   $	 305Q�6P   5~      �� 5      $
��Bold"�6    $��10 3 0 0q�62   $+��%KHÁCH HÀNG NỔI BẬT TRONG THÁNG��6D   
�������$��Center=�6}   5�      � 5�      $��1��6   .+�5�      �� $��5q�6    
�������
 5�        5�      $ 1Q�6/   $ 	#FFE0E0E0��6>   $	 305Q�6P   5�      �� 5�      $��5q�6    ��6+   �� *ListReveneuList+$ TwoWay=�$ PropertyChanged=� �� View 5�      �� 5�      .P�5�   "   ��  �� Width$
 Auto��61   $��MÃ KH��5�   1    �� DisplayMemberBinding 5�   1   �� *MAKH+$ TwoWay=�$ PropertyChanged=�5�   1   �� 5�   "   $��TÊN KH��5�   1    5�   1   �� *TENKH+$ TwoWay=�$ PropertyChanged=�5�   1   �� 5�   "   $
 Auto��61   $��	DOANH THU��5�   1    5�   1   �� *	Doanh_Thu+$ TwoWay=�$ PropertyChanged=�5�   1   5�      5�      5�      5�      5�      � 5�   
   $��	 10 0 0 5q�6   $��2��6"   $��1��62   $��2��6?    5�      �� 5�      $
��Auto �6    �� 5�      .+�5�      � $��	0 10 10 0q�6   $��0��6&   .+�5�      �� $��30��6   ���#607799
 5�        5�      $ 1Q�6+   $ 	#FFE8E8E8��6:   $	 305Q�6L   5�      �� 5�      $
��Bold"�6   $��10 3 0 0q�6.   $"��DOANH THU SÁCH TRONG THÁNG��6@   
�������$��Center=�6u   5�      �� 5�      $��	0 10 10 5q�6   $��1��6+   
�������
 5�        5�      $ 1Q�6'   $ 	#FFE0E0E0��66   $	 305Q�6H   5�      �� 5�      $��5 0 5 0q�6   $��1��5�      ��5�   (   �� *ListReveneuBook+$ TwoWay=�$ PropertyChanged=� 5�      �� 5�      .P�5�      �� $��
TÊN SÁCH��5�       5�      �� *	TENSACH+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      $��	DOANH THU��5�       5�      �� *
TONGTIEN+$ TwoWay=�$ PropertyChanged=�5�      5�      5�      5�      5�      5�      