   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5      O,clr-namespace:BookStoreManagerment.ViewModelBookStoreManagerment.ViewModel  5      4    .BookStoreManagerment.Views.MoneyCollectionView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:BookStoreManagerment.Views     5      ;vm,clr-namespace:BookStoreManagerment.ViewModel     5      V	 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 	 5	      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5
      f
 bDevExpress.Xpf.Grid.v17.2.Core, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa ]DevExpress.Xpf.Grid.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid 
  6L      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignFont#���  5       � 	Resources 5      3   -BookStoreManagerment.ViewModel.IndexConverter  IndexConverter��%   &	         5   
   6   5      .��5      �  5   
    �� 
TargetType �� Property �� Value��%W   '��       �� 5      " ��6   .�5      ��  � ��$ 10q�6+   68   5      5       � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      6    � ColumnDefinitions 5    
   �� 5!      6!   �� 5"      6!   .+�5$   
   �� $��0��6   $��3��6!   $��
Thu tiền��65   $��20(�6E   $��10q�6S   $	��Top=�6_   $��Center=�6w   ���	#FF5F27AD$
��Bold"�6�   �� 5%   
   $��1��6   .+�5&      �� $��0��6   ) 	 #MaterialDesignThemes.Wpf.HintAssist   Hint$ Chọn khách hàng��6$    & "MaterialDesignFloatingHintComboBox#��[ 6U   	 �� DisplayMemberPath$	 TENKH��5*      {�5'      �� *IsEnabledCustomerCBBox+��5(      �� *ListCustomer+
 �� Mode$
 TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� Text 5)      �� *CustomerName+ �� SelectedItem 5*   6   �� *SelectedCustomer+$
 TwoWay=�5+      �� 5,      $��0��6b   $ 
Tiền thu��6o   $��15(�6�    % !MaterialDesignFloatingHintTextBox#��[ 6�   ��6   �� *
Collection+$
 TwoWay=�$ PropertyChanged=�6�   �� 5-      {�.  $��0��6n   $ Tiền nợ��6{   $��15(�6�   #��[ 6�   ��6   �� *Debt+$
 TwoWay=�$ PropertyChanged=�6�   5.      �� 5/   
   $��1��6   $��2��6"   .+�50      (  "System.Windows.Controls.DatePicker  {�.  $	��100��53      $��0 15 0 0q�6   $
��Left=�6/   $ 	Ngày thu��54       ( $MaterialDesignFloatingHintDatePicker#��[ 55         SelectedDate 52      �� *Date+$
 TwoWay=�$ PropertyChanged=�55      �� 56      $ Mã phiếu thu��6[   $��15(�6�   #��[ 6�   ��6   �� *ID+$
 TwoWay=�$ PropertyChanged=�6�   �� 57      -   5        $��btnAddReceiptNote��57      $��10q�6�    # MaterialDesignRaisedLightButton#��[ 6�   $��Center=�6�   $��Center=�6�   $��Thêm phiếu thu��58      ��57   .   �� *
AddCommand+��6M   ��  �� ElementName$ btnAddReceiptNote��59      5:      �� 5;   
   -   5        $��listViewMoneyCollection��5;   5   $��2��6   $��2��6!   ��6T   �� *ListMoneyCollection+$
 TwoWay=�$ PropertyChanged=� 6�   �� *SelectedItem+$
 TwoWay=���5<      �� 5=      " ��6   .�5>      ��  �@J�SnapsToDevicePixels . 6<   �� 5?       �@�OverridesDefaultStyle . 6>   �� 5@       � ��
 ���� 63   �� 5A       � ��
 ���� 64   �� 5B       � �� 5C      �� 5D       �� 
TargetType" ��6.   .R�5E   "   ��  ��Name$ Border��6)   #��z��5G        MaterialDesignDivider#���  5H      $��0,0,0,1q�5I       J� SnapsToDevicePixels# z 5J       �� Padding 5F      ��  �� RelativeSource �� *Self+ �� Path$9 3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5K   &   �� #��z��6;   5L   #   5M      5O      �� 5P       �@��
IsSelected 63   �� *
IsSelected+$
 OneWay=� �� *Self+ �� Triggers 5Q      P� 5S       P� Property �@J�IsKeyboardFocusWithin P� Value . . �5T      ��  � ��  MaterialDesignTextBoxBorder# �  6<   �� 5U       �@��
IsSelected . 6;   5V      P� 5W       �@��
IsSelected . . �5X      ��  � �� 	 MaterialDesignSelection# � 	 6;   5Y      P� 5Z       �@J�IsMouseOver . . �5[      ��  � ��# �  6;   5\      5_       �� View 5a      �� 5b      .P�5c      �� $	��STT��6%    �� CellTemplate 5d      �� 5e      .R�5f   "   ��  �� Orientation$ 
Horizontal=�6-   .+�5g   &   ��  ��Name$ 	btnDelete��6  $��Center=�6-   $��20��6H   $��20��6T   + 	 %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�6�    K� ZIndex$ 1��6�    /
 +MaterialDesignFloatingActionMiniLightButton#��[
 6   � ToolTip$ Delete an item��6^  $��0q�6x  $
��Left=�6�  $��0 0 5 0q�6�  ��6_   �� *DataContext.DeleteCommand+ ��   �� AncestorType$  ListViewL�.��5h   *   ' 	 !MaterialDesignThemes.Wpf.PackIcon  $��18��6B   $��18��6N   � 	 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]!   Kind$! Delete=�6Y   
���   �6h   5i   '   �� 5j   &   $��Center=�60   ��6K   ��  �� *FindAncestor+"  ��" �� 	Converter#" [ # �� ConverterParameter$# 1��5k   i   5l   #   5m      5o      �� 5p      $��Mã PT��6%   $ �� DisplayMemberBinding$ 64   �� *MAPT+6\   �� 5q      $��Tên khách hàng��6%   $ 6=   �� *KHACHHANG.TENKH+6p   �� 5r      $��	Ngày thu��6%   $ 67   �� *	NGAYTHU+6b   �� 5s      $��Tiền nợ��6%   $ 66   �� *TIENNO+6`   �� 5t      $��
Tiền thu��6%   $ 67   �� *	TIENTHU+6b   �� 5u      $��Tiền thừa��6%   $ 68   �� *
TIENTHUA+6d   5v      5x      5y      5z      