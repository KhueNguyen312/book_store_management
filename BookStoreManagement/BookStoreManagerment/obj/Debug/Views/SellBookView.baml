   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5      O,clr-namespace:BookStoreManagerment.ViewModelBookStoreManagerment.ViewModel  5      -    'BookStoreManagerment.Views.SellBookView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:BookStoreManagerment.Views     5      c	 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5      5vm,clr-namespace:BookStoreManagerment.ViewModel 	 5      V
 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 
 5
      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      f bDevExpress.Xpf.Grid.v17.2.Core, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa ]DevExpress.Xpf.Grid.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   6L      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignFont#���  5       � 	Resources 5      3   -BookStoreManagerment.ViewModel.IndexConverter  IndexConverter��%   &	         5   
   6   5      .��5      � 
������� 5   
   &   System.Windows.Controls.DataGrid �� 
TargetType �� Property �� Value' 
 !MaterialDesignThemes.Wpf.PackIcon��%W  '        '�� M     '  �     �� 5      "  6   .�5      ��  � ��$ 10q�6+   68   5      �� 5      " ��6   .�5      ��  � ��$ 30��6*   67   �� 5       � ��$ 30��6+   68   5      �� 5      "  6   .�5       ��  � ��$ 30��6*   67   �� 5!       � ��$ 30��6+   68   5"      5#       � ColumnDefinitions 5$   
   �� 5%      6!   �� 5&      6"   �� 5'      $��2* �6   6-    � RowDefinitions 5)   
   �� 5*      $
��Auto �6   6,   �� 5+      $
��Auto �6   6-   �� 5,      $
��Auto �6   6,   �� 5-      6   .+�5/   
   �� $��0��6   $��3��6!   $��
Bán sách��65   $��20(�6E   $��10q�6S   $	��Top=�6_   $��Center=�6w   ���	#FF5F27AD$
��Bold"�6�   �� 50   
   $��	10 5 10 0q�6   $��1��6(   $��1��68   .+�52      �� ) 
 #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	Mã sách��6�   $��15(�6�    % !MaterialDesignFloatingHintTextBox#��[ 6�   $��0q�6�   {�6   �� *EnteredCusID+��69   �� *BookID+	 �� Mode$	 TwoWay=�
 �� UpdateSourceTrigger$
 PropertyChanged=�.��6  . 	 (System.Windows.Interactivity.Interaction   Triggers 53      / 	 )System.Windows.Interactivity.EventTrigger  54         	EventName$ TextChanged��6%   . 	 (System.Windows.Interactivity.TriggerBase   Actions. 55      6	 	 0System.Windows.Interactivity.InvokeCommandAction	   	  Command 60   �� *BookIDChangedCommand+ 	  CommandParameter 6Y   ��  �� ElementName$ 
tbUsername��56      .��57   *   58      �� 5:      $ Số lượng��6T   $��15(�6~   #��[ 6�   {�6   �� *EnteredCusID+��69   �� *	NumOfBook+.��5;      5=      �� 5>      $ 
Đơn giá��6V   $��15(�6   #��[ 6�   {�6   �� *EnteredCusID+��69   �� *BuyingPrice+6�   �� 5?      {�.  $��0 0 0 0q�6p   $ Tiền thừa��6�   $��15(�6�   #��[ 6�   ��6(   �� *Change+$	 TwoWay=�$
 PropertyChanged=�6�   5D      �� 5E   
   $��5q�6   $��0��6    $��1��60   .+�5G      �� $ Mã khách hàng��6�   $��15(�6�   #��[ 6�   $��0q�6	  {�6   �� *IsEnabledCustomerCBBox+��6C   �� *
CustomerID+$	 TwoWay=�$
 PropertyChanged=�.��6   5H        5I      $ TextChanged��6%   . 5J      	   60   �� *CustomerIDChangedCommand+ 6]   �� $ 
tbUsername��5K      .��5L   *   5M      �� 5N      {�.  $��0 0 0 0q�6w   $ Tên khách hàng��6�   $��15(�6�   #��[ 6�   ��6)   �� *CustomerName+$	 TwoWay=�$
 PropertyChanged=�6�   �� 5P      $ Tiền nhận��6�   $��15(�6�   #��[ 6�   {�6   �� *EnteredCusID+��69   �� *MoneyReceipt+$	 TwoWay=�$
 PropertyChanged=�.��6�    5Q        5R      $ TextChanged��6%   . 5S      	   60   �� *ReceiptChangedCommand+ 6Z   �� $ 
tbUsername��5T      .��5U   *   5V      �� 5X      {�.  $��0 0 0 0q�6t   $ Tổng tiền��6�   $��15(�6�   #��[ 6�   ��6(   �� *
TotalPrice+$	 TwoWay=�$
 PropertyChanged=�6�   5`      �� 5a   
   $��2��6   $��2��6"   $��0 10 0 0q�67    �� Orientation$ 
Horizontal=�6I   .+�5d      �� -   5         ��Name$ btnSaveData��5d   ~   +
 
 %MaterialDesignThemes.Wpf.ShadowAssist 
  ShadowDepth$ Depth3=�6<    K� ZIndex$ 1��6m    / +MaterialDesignFloatingActionMiniLightButton#��[ 6�    � ToolTip$ 	Save data��5e   n   $��0q�6�   $	��Top=�6�   $
��Left=�6�   $��5q�6�   {�5d      �� *SaveButtonEnable+��5e      �� *SaveCommand+��69   �� $ btnSaveData��.��5f        � 
 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ ContentSave=�6*   
���   �6>   5g      5h      �� 5i   
   -   5        $��listViewBillDetail��5i   N   $	��270��6   $��1��6    $��2��6-   $��2��6=   $��3��6h   {�6|   �� *IsEnabledListView+$	 TwoWay=���6�   �� *ListBillDetail+$	 TwoWay=�$
 PropertyChanged=� �� SelectedItem 6	  �� *SelectedBillDetail+$	 TwoWay=���5j      �� 5k      " ��6   .�5l      ��  �@J�SnapsToDevicePixels . 6<   �� 5m       �@�OverridesDefaultStyle . 6>   �� 5n       � ��
 ���� 63   �� 5o       � ��
 ���� 64   �� 5p       � �� 5q      �� 5r       �� 
TargetType" ��6.   .R�5s   "   ��  ��Name$ Border��6)   #��z��5u        MaterialDesignDivider#���  5v      $��0,0,0,1q�5w       J� SnapsToDevicePixels# z 5x       �� Padding 5t      ��  �� RelativeSource �� *Self+ �� Path$9 3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5y   &   �� #��z��6;   5z   #   5{      5}      �� 5~       �@��
IsSelected 63   �� *
IsSelected+$	 OneWay=� �� *Self+ �� Triggers 5      P� 5�       P� Property �@J�IsKeyboardFocusWithin  P� Value  . . �5�      ��  � ��  MaterialDesignTextBoxBorder# �  6<   �� 5�       �@��
IsSelected . 6;   5�      P� 5�       �@��
IsSelected  . . �5�      ��  � ��  MaterialDesignSelection# �  6;   5�      P� 5�       �@J�IsMouseOver  . . �5�      ��  � ��# �  6;   5�      5�      ! �� View! 5�      �� 5�      .P�5�      �� $	��STT��6%   " �� CellTemplate" 5�      �� 5�      .R�5�   "   �� $ 
Horizontal=�6-   .+�5�   &   �� $��Center=�60   ��6K   ��  �� *FindAncestor+# �� AncestorType"# ��$ �� 	Converter#$ [ % �� ConverterParameter$% 1��5�   i   5�   #   5�      5�      �� 5�      $	��Mã��6%   & �� DisplayMemberBinding& 61   �� *MASACH+6[   �� 5�      $��
Tên sách��6%   & 67   �� *SACH.TENSACH+6g   �� 5�      $��số lượng��6%   & 67   �� *	SOLUONG+6b   �� 5�      $��
Đơn giá��6%   & 66   �� *GIABAN+6`   �� 5�      $��Thành tiền��6%   & 69   �� *	THANHTIEN+6f   5�      5�      �� 5�   
   -   5        $��listViewBill��5�   1   $��3��6   $��0��6!   $��3��6E   {�6Y   �� *_isEnabledBillListView+$	 TwoWay=���6�   �� *
ListBill+$	 TwoWay=�$
 PropertyChanged=� 6�   �� *SelectedItem+$	 TwoWay=���5�      �� 5�      " ��6   .�5�      ��  �@J�SnapsToDevicePixels . 6<   �� 5�       �@�OverridesDefaultStyle . 6>   �� 5�       � ��
 ���� 63   �� 5�       � ��
 ���� 64   �� 5�       � �� 5�      �� 5�      " ��6.   .R�5�   "   �� $ Border��6)   #��z��5�      #���  5�      $��0,0,0,1q�5�      # z 5�       5�      ��  �� *Self+$9 3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5�   &   �� #��z��6;   5�   #   5�      5�      �� 5�       �@��
IsSelected 63   �� *
IsSelected+$	 OneWay=� �� *Self+ 5�      P� 5�       �@J�IsKeyboardFocusWithin  . . �5�      ��  � ��# �  6<   �� 5�       �@��
IsSelected . 6;   5�      P� 5�       �@��
IsSelected  . . �5�      ��  � ��# �  6;   5�      P� 5�       �@J�IsMouseOver  . . �5�      ��  � ��# �  6;   5�      5�      ! 5�      �� 5�      .P�5�      �� $	��STT��6%   " 5�      �� 5�      .R�5�   "   �� $ 
Horizontal=�6-   .+�5�   &   �� $��Center=�60   ��6K   ��  �� *FindAncestor+"# ��#$ [ $% 1��5�   i   5�   #   5�      5�      �� 5�      $��Số HD��6%   & 64   �� *SOHD+6\   �� 5�      $��Mã KH��6%   & 64   �� *MAKH+6\   �� 5�      $��Tên khách hàng��6%   & 6=   �� *KHACHHANG.TENKH+6p   �� 5�      $��Ngày lập��6%   & 67   �� *NGAYHD+6a   �� 5�      $��Tổng tiền��6%   & 68   �� *
TONGTIEN+6d   �� 5�      $��Tiền nhận��6%   & 68   �� *
TIENNHAN+6d   �� 5�      $��Tiền thừa��6%   & 68   �� *
TIENTHUA+6d   5�      5�      ' 
 !MaterialDesignThemes.Wpf.Snackbar  5�   
   -   5        '  Name$' snackbarLoginFail��5�      $��0��5�   "   $��3��6/   (   IsActive( 5�      �� *IsActiveSnackBar+$	 TwoWay=�)   Message.) 5�      . 
 (MaterialDesignThemes.Wpf.SnackbarMessage  $"��Lưu hóa đơn thành công��6-   *   ActionContent$* OK��5�   1    5�        5�      $ ActionClick��6%   . 5�      	   60   �� *SaveCommand+ 6P   �� $ snackbarLoginFail��5�      5�      5�      5�      5�      