   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5      O,clr-namespace:BookStoreManagerment.ViewModelBookStoreManagerment.ViewModel  5      /    )BookStoreManagerment.Views.BookImportView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:BookStoreManagerment.Views     5      ;vm,clr-namespace:BookStoreManagerment.ViewModel     5      V	 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 	 5	      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5
      f
 bDevExpress.Xpf.Grid.v17.2.Core, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa ]DevExpress.Xpf.Grid.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid 
  6L      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignFont#���  5       � 	Resources 5      3   -BookStoreManagerment.ViewModel.IndexConverter  IndexConverter��%   &	         5   
   6   5      .��5      � 
������� 5   
   &   System.Windows.Controls.DataGrid �� 
TargetType �� Property �� Value' 	 !MaterialDesignThemes.Wpf.PackIcon��%W  '        '�� M     '  �     �� 5      "  6   .�5      ��  � ��$ 10q�6+   68   5      �� 5      " ��6   .�5      ��  � ��$ 30��6*   67   �� 5       � ��$ 30��6+   68   5      �� 5      "  6   .�5      ��  � ��$ 30��6*   67   �� 5        � ��$ 30��6+   68   5!      5"       � ColumnDefinitions 5#   
   �� 5$      6!   �� 5%      6!    � RowDefinitions 5'   
   �� 5(      $
��Auto �6   6,   �� 5)      6   �� 5*      6   .+�5,   
   �� $��0��6   $��3��6!   $��Nhập sách��65   $��20(�6F   $��10q�6T   $	��Top=�6`   $��Center=�6x   ���	#FF5F27AD$
��Bold"�6�   �� 5-   
   $��5q�6   $��0��6    $��1��60   .+�5.      �� $��0��6   $��0 0 0 0q�6$    �� 
IsEditable . 	 �� DisplayMemberPath$	 TENSACH��52      ) 	 #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 
Tên Sách��53       & "MaterialDesignFloatingHintComboBox#��[ 6A   {�5.   5   �� *IsEnabledCBBox+��5/      �� *
ListBook+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� Text 50      �� *
BookName+ �� SelectedItem 52   3   �� *SelectedBook+$ TwoWay=�54      �� 55      $
 Số lượng nhập��6Y   $��15(�6�    % !MaterialDesignFloatingHintTextBox#��[ 6�   {�6   �� *IsEnabledTextBox+��6=   �� *	NumOfBook+6�   �� 56      $
 Giá nhập��6Z   $��15(�6�   #��[ 6�   {�6   �� *IsEnabledTextBox+��6=   �� *ImportPrice+6�   �� 57      -   5        $��
btnAddBook��57      + 	 %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�6z   $
��Left=�6�   $��Center=�6�   $��5 20 0 0q�6�    # MaterialDesignRaisedLightButton#��[ 6�   ��6'   �� *
AddBookCmd+��6F   ��  �� ElementName$ 
btnAddBook�� � ToolTip 58      �� *
ButtonName+��59      �� *
ButtonName+5:      �� 5;      $��Right=�6   $��0 10 0 0q�65    �� Orientation$ 
Horizontal=�6G   .+�5<      �� -   5         ��Name$ 
btnAddData��5<   �   $ Depth3=�6l    K� ZIndex$ 1��6�    / +MaterialDesignFloatingActionMiniLightButton#��[ 6�   $ Add a new data��6  $��0q�6!  $	��Top=�6-  $
��Left=�6E  $��5q�6`  ��6   �� *
AddCommand+��68   �� $ 
btnAddData��.��5=        � 	 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$
 Plus=�6.   
���   �6;   5>      �� 5?      -   5        $ btnEditData��5?   �   $ Depth3=�6n   $ 1��6�   #��[ 6�   $ 	Edit data��6
  $��0q�6  $	��Top=�6+  $
��Left=�6C  $��5q�6^  ��6   �� *EditCommand+��69   �� $ btnEditData��.��5@        $ Pencil=�6.   
���   �6=   5A      �� 5B      -   5        $ btnSaveData��5B   �   $ Depth3=�6n   $ 1��6�   #��[ 6�   $ 	Save data��6  $��0q�6   $	��Top=�6,  $
��Left=�6D  $��5q�6_  ��6   �� *SaveCommand+��69   �� $ btnSaveData��.��5C        $ ContentSave=�6.   
���   �6B   5D      5E      5F      �� 5H   
   -   5        $��listViewDetail��5H   1   $��2��6   $��0��6!   $��2��6G   {�6[   �� *IsEnabledListView+$ TwoWay=���6�   �� *ListReceiptNoteDetail+$ TwoWay=�$ PropertyChanged=� 6�   �� *SelectedReceiptNoteDetail+$ TwoWay=���5I      �� 5J      " ��6   .�5K      ��  �@J�SnapsToDevicePixels . 6<   �� 5L       �@�OverridesDefaultStyle . 6>   �� 5M       � ��
 ���� 63   �� 5N       � ��
 ���� 64   �� 5O       � �� 5P      �� 5Q       �� 
TargetType" ��6.   .R�5R   "   ��  ��Name$ Border��6)   #��z��5T        MaterialDesignDivider#���  5U      $��0,0,0,1q�5V       J� SnapsToDevicePixels# z 5W       �� Padding 5S      ��  �� RelativeSource �� *Self+ �� Path$9 3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5X   &   �� #��z��6;   5Y   #   5Z      5\      �� 5]       �@��
IsSelected 63   �� *
IsSelected+$ OneWay=� �� *Self+ �� Triggers 5^      P� 5`       P� Property �@J�IsKeyboardFocusWithin P� Value . . �5a      ��  � ��  MaterialDesignTextBoxBorder# �  6<   �� 5b       �@��
IsSelected . 6;   5c      P� 5d       �@��
IsSelected . . �5e      ��  � �� 	 MaterialDesignSelection# � 	 6;   5f      P� 5g       �@J�IsMouseOver . . �5h      ��  � ��# �  6;   5i      5l       �� View 5n      �� 5o      .P�5p      �� $	��STT��6%     �� CellTemplate  5q      �� 5r      .R�5s   "   �� $ 
Horizontal=�6-   .+�5w   &   �� $��Center=�60   ��6K   ��  �� *FindAncestor+! �� AncestorType"! ��" �� 	Converter#" [ # �� ConverterParameter$# 1��5x   i   5y   #   5z      5|      �� 5}      $��	Mã sách��6%   $ �� DisplayMemberBinding$ 66   �� *MASACH+6`   �� 5~      $��Số lượng��6%   $ 67   �� *	SOLUONG+6b   �� 5      $��
Đơn giá��6%   $ 66   �� *DONGIA+6`   �� 5�      $��Thành tiền��6%   $ 69   �� *	THANHTIEN+6f   5�      5�      �� 5�   
   -   5        $��	listView1��5�   0   $��1��6   $��1��6    {�6A   �� *IsEnabledListView2+$ TwoWay=���6v   �� *ListReceiptNote+$ TwoWay=�$ PropertyChanged=� 6�   �� *SelectedItem+$ TwoWay=���5�      �� 5�      " ��6   .�5�      ��  �@J�SnapsToDevicePixels . 6<   �� 5�       �@�OverridesDefaultStyle . 6>   �� 5�       � ��
 ���� 63   �� 5�       � ��
 ���� 64   �� 5�       � �� 5�      �� 5�      " ��6.   .R�5�   "   �� $ Border��6)   #��z��5�      #���  5�      $��0,0,0,1q�5�      # z 5�       5�      ��  �� *Self+$9 3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5�   &   �� #��z��6;   5�   #   5�      5�      �� 5�       �@��
IsSelected 63   �� *
IsSelected+$ OneWay=� �� *Self+ 5�      P� 5�       �@J�IsKeyboardFocusWithin . . �5�      ��  � ��# �  6<   �� 5�       �@��
IsSelected . 6;   5�      P� 5�       �@��
IsSelected . . �5�      ��  � ��# � 	 6;   5�      P� 5�       �@J�IsMouseOver . . �5�      ��  � ��# �  6;   5�      5�       5�      �� 5�      .P�5�      �� $	��STT��6%     5�      �� 5�      .R�5�   "   �� $ 
Horizontal=�6-   .+�5�   &   �� $��Center=�60   ��6K   ��  �� *FindAncestor+"! ��#" [ $# 1��5�   i   5�   #   5�      5�      �� 5�      $	��Mã��6%   $ 61   �� *MAPHIEUNHAP+6`   �� 5�      $��Ngày nhập��6%   $ 68   �� *
NGAYNHAP+6d   �� 5�      $��
Tổng chi��6%   $ 67   �� *	TONGCHI+$ PropertyChanged=�6�   5�      5�      5�      5�      