   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:BookStoreManagermentBookStoreManagerment  5   	   O,clr-namespace:BookStoreManagerment.ViewModelBookStoreManagerment.ViewModel  5   	   ]3clr-namespace:BookStoreManagerment.CustomControlBar%BookStoreManagerment.CustomControlBar  5
   	   0    *BookStoreManagerment.PromotionDetailWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:BookStoreManagerment     5   	   ;vm,clr-namespace:BookStoreManagerment.ViewModel     5   	   c	 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5   	   V
 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 
 5	   	   <uc3clr-namespace:BookStoreManagerment.CustomControlBar 
 5
   	   -   5        $��promotionDetail��5   	      PromotionDetailVM  � DataContext#  [  5   	     MaterialDesignBody#���  5   	   $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � WindowStartupLocation$ CenterScreen=�5   	    � Title$ PromotionDetailWindow��5   	   $	��600��6'   $
��1024��64    � 
ResizeMode$ NoResize=�6A    � WindowStyle$
 None=�6W    � 	Resources 5      3   -BookStoreManagerment.ViewModel.IndexConverter  IndexConverter��%   &	         5   
   6   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      6   �� 5      6   �� 5      $
��Auto �6   6,   	 � ColumnDefinitions	 5!   
   �� 5"      6!   �� 5#      6!   .+�5%   
   � $��0��6   $��2��6   .+�5&      <   6BookStoreManagerment.CustomControlBar.UserControlAlter  

 � Tag
 6"   �� *Title+ �� ElementName$ promotionDetail��6W   5'      # 
 MaterialDesignThemes.Wpf.Card  5(   
   $��1��6   $��5q�6+   $��0��66   ���	#DD000000.��5)      �  5*      �� 5+      $
��Auto �6$   64   �� 5,      6&   .+�5.      �� $��0��6   $��Nhập theo sách��6*   $��20(�6@   $��10q�6N   $	��Top=�6Z   $��Center=�6r   ���	#FF5F27AD$
��Bold"�6�   �� 5/      $��1��6   .+�50      �� $��	0 0 100 0q�62   ) 
 #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	Mã sách��6F   $��15(�6o    % !MaterialDesignFloatingHintTextBox#��[ 6}   ��6   �� *ID+6}   �� 51      $��6 4 2 2q�6   $��0��61   $��	0 0 100 0q�6>    �� 
IsEditable .  �� DisplayMemberPath$ TENSACH��55      $ 
Tên Sách��56       & "MaterialDesignFloatingHintComboBox#��[ 6A   {�51   Q   �� *IsEnabledCBBox+��52      �� *
ListBook+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� Text 53      �� *
BookName+ �� SelectedItem 55   3   �� *SelectedBook+$ TwoWay=�57      �� 58      $��	0 0 100 0q�6@   $ Phần trăm CK��6S   $��15(�6�   #��[ 6�   ��6   �� *PromotionPercent+6�   �� 59      -   5        $��
btnAddBook��59      + 
 %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�6�   $��Center=�6�   $��Center=�6�   $��	5 20 0 50q�6�    # MaterialDesignRaisedLightButton#��[ 6�    � ToolTip$ Thêm sách��5:      $��Thêm sách��5;      ��59   /   �� *
AddBookCmd+��6N   �� $ 
btnAddBook��5<      5=      5>      5?        5@   
   $��1��6   $��5q�6+   $��1��66   ���	#DD000000.��5A      �  5B      �� 5C      $
��Auto �6$   64   �� 5D      6&   .+�5F      �� $��0��6   $��Nhập theo nhóm��6*   $��20(�6@   $��10q�6N   $	��Top=�6Z   $��Center=�6r   ���	#FF5F27AD$
��Bold"�6�   �� 5G      $��1��6   .+�5H      �� $��0��6   $��	0 0 100 0q�6,    . $ TENLOAISACH��5L      $ Loại sách��5M      #��[ 6B   {�5H   ?   �� *IsEnabledCBBox+��5I      �� *ListBookType+$ TwoWay=�$ PropertyChanged=� 5J      �� *BookTypeName+ 5L   7   �� *SelectedBookType+$ TwoWay=�5N      �� 5O      $��	0 0 100 0q�6@   $ Phần trăm CK��6S   $��15(�6�   #��[ 6�   ��6   �� *PromotionPercent+6�   �� 5P      $y�Hidden=�6   $��	0 0 100 0q�6O   $	 ...��6b   $��15(�6�   #��[ 6�   ��62   �� *ImportPrice+6�   �� 5Q      -   5        $��btnAddGroup��5Q   !   $ Depth3=�6�   $��Center=�6�   $��Center=�6�   $��	5 20 0 50q�6�   #��[ 6  $ Thêm nhóm��5R      $��Thêm nhóm��5S      ��5Q   4   �� *AddGroupCmd+��6T   �� $ btnAddGroup��5T      5U      5V      5W      �� 5X   
   -   5        $��listViewDetail��5X   <   $��5q�6   $��2��6   $��0��6,   $��2��6R   ��6f   �� *ListPromotionDetail+$ TwoWay=�$ PropertyChanged=� 6�   �� *SelectedReceiptNoteDetail+$ TwoWay=���5Y      �� 5Z       �� 
TargetType" ��6   .�5[      ��  �� Property �@J�SnapsToDevicePixels �� Value . 6<   �� 5\       �@�OverridesDefaultStyle . 6>   �� 5]       � ��
 ���� 63   �� 5^       � ��
 ���� 64   �� 5_       � �� 5`      �� 5a       �� 
TargetType" ��6.   .R�5b   "   ��  ��Name$ Border��6)   #��z��5d        MaterialDesignDivider#���  5e      $��0,0,0,1q�5f       J� SnapsToDevicePixels# z 5g       �� Padding 5c      ��  �� RelativeSource �� *Self+ �� Path$9 3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5h   &   �� #��z��6;   5i   #   5j      5l      �� 5m       �@��
IsSelected 63   �� *
IsSelected+$ OneWay=� �� *Self+ �� Triggers 5n      P� 5p       P� Property �@J�IsKeyboardFocusWithin  P� Value  . . �5q      ��  � �� 	 MaterialDesignTextBoxBorder# � 	 6<   �� 5r       �@��
IsSelected . 6;   5s      P� 5t       �@��
IsSelected  . . �5u      ��  � �� 
 MaterialDesignSelection# � 
 6;   5v      P� 5w       �@J�IsMouseOver  . . �5x      ��  � ��# �  6;   5y      5|      ! �� View! 5~      �� 5      .P�5�      �� $	��STT��6%   " �� CellTemplate" 5�      �� 5�      .R�5�   "   �� # �� Orientation$# 
Horizontal=�6-   .+�5�   &   �� $ ��Name$$ 	btnDelete��6  $��Center=�6-   $��20��6H   $��20��6T   $ Depth3=�6�   % K� ZIndex$% 1��6   / +MaterialDesignFloatingActionMiniLightButton#��[ 6*  $ Delete an item��6o  $��0q�6�  $
��Left=�6�  $��0 0 5 0q�6�  ��6_   �� *,*DataContext.DeleteReceiptNoteDetailCommand+ �� & �� AncestorType$& ListViewL�.��5�   *   ' 
 !MaterialDesignThemes.Wpf.PackIcon  $��18��6B   $��18��6N   � 
 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]'   Kind$' Delete=�6Y   
���   �6h   5�   '   �� 5�   &   $��Center=�60   ��6K   ��  �� *FindAncestor+"& ��( �� 	Converter#( [ ) �� ConverterParameter$) 1��5�   i   5�   #   5�      5�      �� 5�      $��	Mã sách��6%   * �� DisplayMemberBinding* 66   �� *MASACH+6`   �� 5�      $��
Tên sách��6%   * 67   �� *SACH.TENSACH+6g   �� 5�      $��Phần trăm KM��6%   * 6;   �� *SOLUONGGIAM+6j   �� 5�      $��Ghi chú��6%   * 66   �� *GHICHU+6`   5�      5�      �� 5�   
   -   5        $��btnSave��5�   D   $��3��6   $��2��6   $��5 5 5 15q�62   $ Depth3=�6�   $��Center=�6�   $	��Top=�6�   #��[ 6  $
 Lưu��5�      $��Lưu dữ liệu��5�      ��5�   S   �� *	SaveCmd+��6o   �� $ promotionDetail��5�      5�      5�      