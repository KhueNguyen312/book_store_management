   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5      O,clr-namespace:BookStoreManagerment.ViewModelBookStoreManagerment.ViewModel  5	      ,    &BookStoreManagerment.Views.BookMngView   5      a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:BookStoreManagerment.Views     5      c	 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5      5vm,clr-namespace:BookStoreManagerment.ViewModel 	 5	      V
 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 
 5
      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      f bDevExpress.Xpf.Grid.v17.2.Core, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa ]DevExpress.Xpf.Grid.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   6L      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignFont#���  5       � 	Resources 5      3   -BookStoreManagerment.ViewModel.IndexConverter  IndexConverter��%   &	         5   
   6   5      .��5      �  5   
    �� 
TargetType �� Property �� Value' 
 !MaterialDesignThemes.Wpf.PackIcon��%   '��       '  v     �� 5      " ��6   .�5      ��  � ��$ 30��6*   67   �� 5       � ��$ 30��6+   68   5      �� 5      "  6   .�5      ��  � ��$ 30��6*   67   �� 5       � ��$ 30��6+   68   5      5        � RowDefinitions 5!   
   �� 5"      $
��Auto �6   6,   �� 5#      $
��Auto �6   6,   �� 5$      $
��Auto �6   6,   �� 5%      6    � ColumnDefinitions 5'   
   �� 5(      $
��Auto �6   6/   �� 5)      6"   �� 5*      6!   .+�5,   
   ( 
 "MaterialDesignThemes.Wpf.ColorZone  -   5        $��	searchBar��5,   #   + 
 %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�64   $��
5 -5 10 10q�6e   $	��Top=�6y   $��Center=�6�   $��0��6�   $��3��6�   $��1��6�   	   Mode$	 PrimaryLight=�6�   $��5q�6�   .��5.      ]� .+�5/      �� 
 �� Orientation$
 
Horizontal=�6   + 
 %MaterialDesignThemes.Wpf.RippleAssist   
IsCentered . .+�51        $	 Standard=�6/   $��8 4 8 4q�6?      CornerRadius$ 2��6Q    K� ZIndex$ 1��6b   $��1 0 0 0q�52   $   $ Depth1=�53   $   .��54      �  55      �� 56   "   $
��Auto �63   �� 57   "   $��* �63   �� 58   "   $
��Auto �63   .+�5:      ��   MaterialDesignToolButton#���  6%   .��5;   "     � 
 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Magnify=�6:    J� Opacity$	 .56Q�6I   5<      �� 5=      -   5        $��	txbSearch��5>   w   $��1��5=   &   $��15(�66   $��8 0 0 0q�6D   ) 
 #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tìm kiếm sách��6U   .	 
 (MaterialDesignThemes.Wpf.TextFieldAssist 	  DecorationVisibility$ Hidden=�5>   &   $��0q�6c   $	��400��5?   &   $��Center=�62   .��6N   .
 	 (System.Windows.Interactivity.Interaction 
  Triggers 5@   "   / 	 )System.Windows.Interactivity.EventTrigger  5A   &      	EventName$ TextChanged��65   . 	 (System.Windows.Interactivity.TriggerBase   Actions. 5B   *   6 	 0System.Windows.Interactivity.InvokeCommandAction     Command 6@   �� *	SearchCmd+   CommandParameter 6^   ��  �� ElementName$ 	txbSearch��5C   '   .��5D   :   5E      5F      5G      �� 5H      $��Center=�6   $��Center=�69    & "MaterialDesignToolForegroundButton#���  6V   $��8 0 0 0q�6�   $ 0��6�   .��5I        $��20��62   $��20��6>   $
 Send=�6I   5J      5K      5L      5M      �� 5N   
   $��0��6   $��3��6!   $!��Quản lí thông tin sách��65   $��20(�6S   $��10q�6a   $	��Top=�6m   $��Center=�6�   ���	#FF5F27AD$
��Bold"�6�   �� 5O   
   -   5        $��listView��5O   5   $��3��6   $��3��6!   {�6E   �� *IsEnabledListView+ �� Mode$ TwoWay=���6y   �� *
ListBook+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 6�   �� *SelectedItem+$ TwoWay=���5P      �� 5Q      " ��6   .�5R      ��  �@J�SnapsToDevicePixels . 6<   �� 5S       �@�OverridesDefaultStyle . 6>   �� 5T       � ��
 ���� 63   �� 5U       � ��
 ���� 64   �� 5V       � �� 5W      �� 5X       �� 
TargetType" ��6.   .R�5Y   "   ��  ��Name$ Border��6)   #��z��5[        MaterialDesignDivider#���  5\      $��0,0,0,1q�5]       J� SnapsToDevicePixels# z 5^       �� Padding 5Z      ��  �� RelativeSource �� *Self+  �� Path$9  3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5_   &   �� #��z��6;   5`   #   5a      5c      �� 5d       �@��
IsSelected 63   �� *
IsSelected+$ OneWay=� �� *Self+! �� Triggers! 5e      P� 5g      " P� Property" �@J�IsKeyboardFocusWithin# P� Value# . . �5h      ��  � ��  MaterialDesignTextBoxBorder# �  6<   �� 5i       �@��
IsSelected . 6;   5j      P� 5k      " �@��
IsSelected# . . �5l      ��  � ��  MaterialDesignSelection# �  6;   5m      P� 5n      " �@J�IsMouseOver# . . �5o      ��  � ��# �  6;   5p      5s      $ �� View$ 5u      �� 5v      .P�5w      �� $	��STT��6%   % �� CellTemplate% 5x      �� 5y      .R�5z   "   �� $
 
Horizontal=�6-   .+�5{   &   �� & ��Name$& btnDeleteCustomer��6  $��Center=�6-   $��20��6H   $��20��6T   $ Depth3=�6�   $ 1��6�    / +MaterialDesignFloatingActionMiniLightButton#��[ 6!  ' � ToolTip$' Delete a customer��6f  $��0q�6�  $
��Left=�6�  $��0 0 5 0q�6�  ��6_   �� *DataContext.DeleteCommand+ �� ( �� AncestorType$( ListViewL�.��5|   *     $��18��6B   $��18��6N   $ Delete=�6Y   
���   �6h   5}   '   �� 5~   &   $��Center=�60   ��6K   ��  �� *FindAncestor+"( ��) �� 	Converter#) [ * �� ConverterParameter$* 1��5   i   5�   #   5�      5�      �� 5�      $��	Mã sách��6%   + �� DisplayMemberBinding+ 66   �� *MASACH+6`   �� 5�      $��
Tên sách��6%   + 67   �� *	TENSACH+6b   �� 5�      $��
Tác giả��6%   + 66   �� *TACGIA+6`   �� 5�      $��Thể loại��6%   + 67   �� *
MALOAISACH+6e   �� 5�      $	��NXB��6%   + 62   �� *MANXB+6[   �� 5�      $��Số lượng��6%   + 67   �� *SOLUONGHIENTAI+6i   �� 5�      $��Giá nhập��6%   + 67   �� *	GIANHAP+6b   �� 5�      $��	Giá bán��6%   + 66   �� *GIABAN+6`   �� 5�      $��Giảm giá��6%   + 67   �� *	GIAMGIA+6b   5�      5�      �� 5�   
   $��5 0 5 0q�6   $��2��6&   $��0��63   .+�5�      &   DevExpress.Xpf.Editors.ImageEdit  -   5        $��imgBook��5�      ,   Stretch$
, Fill=�6�   $
��Left=�6�   $��5 0 0 0q�6�   $	��150��6�   $	��130��6�   {�6+   �� *IsEnabledTextBox+-   Source- 6R   �� $	  Img�$ TwoWay=�$ PropertyChanged=�6�   �� 5�      $��0 10 0 0q�6   $
 
Horizontal=�6+   .+�5�      �� -   5        $& 
btnAddBook��5�   �   $ Depth3=�6l   $ 1��6�   #��[ 6�   $' Add a new book��6  $��0q�6!  $	��Top=�6.  $
��Left=�6F  $��5q�6a  ��6   �� *
AddCommand+��68   �� $ 
btnAddBook��.��5�        $
 Plus=�6.   
���   �6;   5�      �� 5�      -   5        $& btnEditBook��5�   �   $ Depth3=�6n   $ 1��6�   #��[ 6�   $' Edit a book��6
  $��0q�6!  $	��Top=�6.  $
��Left=�6F  $��5q�6a  ��6   �� *EditCommand+��69   �� $ btnEditBook��.��5�        $ Pencil=�6.   
���   �6=   5�      �� 5�      -   5        $& btnSave��5�   �   . �� 	IsDefault. . $ Depth3=�6{   $ 1��6�   #��[ 6�   $' Save a book��6  $��0q�6*  $	��Top=�67  $
��Left=�6O  $��5q�6j  ��6*   �� *SaveCommand+��6J   �� $ btnSave��.��5�        $ ContentSave=�6.   
���   �6B   5�      5�      5�      � 5�   
   $��	12 0 15 0q�6   $��2��6"   $��1��6/    5�      �� 5�      6#   �� 5�      6#   �� 5�      6#   �� 5�      6#   �� 5�      6#   .+�5�      �� $��0��6�   $ 	Mã sách��6�   $��15(�6�    %	 !MaterialDesignFloatingHintTextBox#��[	 6�   ��6   �� *ID+$ PropertyChanged=�$ TwoWay=�{�6Z   �� *IsEnabledIDTextBox+6�   �� 5�      $��1��6�   $ 
Tên sách��6�   $��15(�6�   #��[	 6�   ��6   �� *
BookName+$ PropertyChanged=�$ TwoWay=�{�6`   �� *IsEnabledTextBox+6�   �� 5�      $��2��6�   $ 
Tác giả��6�   $��15(�6�   #��[	 6�   ��6   �� *Author+$ PropertyChanged=�$ TwoWay=�{�6^   �� *IsEnabledTextBox+6�   �� 5�      {�.  $��3��6s   $ Số lượng��6�   $��15(�6�   #��[	 6�   ��6   �� *	NumOfBook+$ PropertyChanged=�$ TwoWay=�6�   5�      � 5�   
   $��0 7 10 0q�6   $��2��6!   $��2��6.    5�      �� 5�      6"   �� 5�      6"   �� 5�      6"   �� 5�      6"   �� 5�      6"   .+�5�      �� / �� DisplayMemberPath$/ TENNXB��5�      $��0��5�      $��0 0 0 0q�6%   $ Nhà xuất bản��66   0 �� 
IsEditable0 .  &
 "MaterialDesignFloatingHintComboBox#��[
 5�      ��5�      �� *ListPublishingHouse+$ TwoWay=�$ PropertyChanged=� 5�   2   �� *SelectedPublishingHouseItem+$ TwoWay=�{�5�      �� *IsEnabledTextBox+1 �� Text1 6>   �� *DisplayPublishingHouse+5�      �� 5�      $/ TENLOAISACH��5�      0 . $��1��5�   >   $��0 7 0 0q�6K   $ Thể loại��6\   #��[
 5�      ��5�      �� *ListBookType+$ TwoWay=�$ PropertyChanged=� 5�   7   �� *SelectedBookTypeItem+$ TwoWay=�1 5�      �� *DisplayBookType+{�5�      �� *IsEnabledTextBox+5�      �� 5�      $��2��6�   $ Giá nhập��6�   $��15(�6�   #��[	 6�   ��6   �� *
InputPrice+$ PropertyChanged=�$ TwoWay=�{�6c   �� *IsEnabledTextBox+6�   �� 5�      $��3��6�   $ 	Giá bán��6�   $��15(�6�   #��[	 6�   ��6   �� *BuyingPrice+$ PropertyChanged=�$ TwoWay=�{�6c   �� *IsEnabledTextBox+6�   5�      5�      5�      