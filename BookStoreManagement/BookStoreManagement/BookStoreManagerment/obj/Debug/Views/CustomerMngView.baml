   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5      O,clr-namespace:BookStoreManagerment.ViewModelBookStoreManagerment.ViewModel  5	      0    *BookStoreManagerment.Views.CustomerMngView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:BookStoreManagerment.Views     5      c	 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5      5vm,clr-namespace:BookStoreManagerment.ViewModel 	 5	      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5
      V
 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 
 5      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      f bDevExpress.Xpf.Grid.v17.2.Core, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa ]DevExpress.Xpf.Grid.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   6L      MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignFont#���  5       � 	Resources 5      3   -BookStoreManagerment.ViewModel.IndexConverter  IndexConverter��%   &	         5   
   6   5      .��5      �  5   
    �� 
TargetType �� Property �� Value' 
 !MaterialDesignThemes.Wpf.PackIcon��%   '��       '  v     �� 5      " ��6   .�5      ��  � ��$ 30��6*   67   �� 5       � ��$ 30��6+   68   5      �� 5      "  6   .�5      ��  � ��$ 30��6*   67   �� 5       � ��$ 30��6+   68   5       5!       � RowDefinitions 5"   
   �� 5#      $
��Auto �6   6,   �� 5$      $
��Auto �6   6,   �� 5%      $
��Auto �6   6,   �� 5&      $
��Auto �6   6,   �� 5'      6    � ColumnDefinitions 5*   
   �� 5+      6"   �� 5,      6!   .+�5.   
   ( 
 "MaterialDesignThemes.Wpf.ColorZone  + 
 %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�6#   $��
5 -5 10 10q�6T   $	��Top=�6h   $��Center=�6�   $��0��6�   $��3��6�   $��1��6�   	   Mode$	 PrimaryLight=�6�   $��5q�6�   .��50      ]� .+�51      �� 
 �� Orientation$
 
Horizontal=�6   + 
 %MaterialDesignThemes.Wpf.RippleAssist   
IsCentered . .+�53        $	 Standard=�6/   $��8 4 8 4q�6?      CornerRadius$ 2��6Q    K� ZIndex$ 1��6b   $��1 0 0 0q�54   $   $ Depth1=�55   $   .��56      �  57      �� 58   "   $
��Auto �63   �� 59   "   $��* �63   �� 5:   "   $
��Auto �63   .+�5<      ��   MaterialDesignToolButton#���  6%   .��5=   "     � 
 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Magnify=�6:    J� Opacity$	 .56Q�6I   5>      �� 5?      -   5        $��	txbSearch��5@   w   $��1��5?   &   $��8 0 0 0q�66   $��15(�6G   ) 
 #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tìm kiếm khách hàng��6U   .	 
 (MaterialDesignThemes.Wpf.TextFieldAssist 	  DecorationVisibility$ Hidden=�5@   &   $��0q�6c   $	��400��5A   &   $��Center=�62   .��6M   .
 	 (System.Windows.Interactivity.Interaction 
  Triggers 5B   "   / 	 )System.Windows.Interactivity.EventTrigger  5C   &      	EventName$ TextChanged��65   . 	 (System.Windows.Interactivity.TriggerBase   Actions. 5D   *   6 	 0System.Windows.Interactivity.InvokeCommandAction     Command 6@   �� *	SearchCmd+   CommandParameter 6^   ��  �� ElementName$ 	txbSearch��5E   '   .��5F   :   5G      5H      5I      �� 5J      $��Center=�6   $��Center=�69    & "MaterialDesignToolForegroundButton#���  6V   $��8 0 0 0q�6�   $ 0��6�   .��5K        $��20��62   $��20��6>   $
 Send=�6I   5L      5M      5N      5O      �� 5P   
   $��0��6   $��2��6"   $��Quản lí khách hàng��66   $��20(�6P   $��10q�6^   $	��Top=�6j   $��Center=�6�   ���	#FF5F27AD$
��Bold"�6�   �� 5Q   
   -   5        $��listView��5Q      $��4��6W   $��3��6d   {�6#   �� *IsEnabledListView+ �� Mode$ TwoWay=���6x   �� *ListCustomer+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 6�   �� *SelectedItem+$ TwoWay=���5R      �� 5S      " ��6   .�5T      ��  �@J�SnapsToDevicePixels . 6<   �� 5U       �@�OverridesDefaultStyle . 6>   �� 5V       � ��
 ���� 63   �� 5W       � ��
 ���� 64   �� 5X       � �� 5Y      �� 5Z       �� 
TargetType" ��6.   .R�5[   "   ��  ��Name$ Border��6)   #��z��5]        MaterialDesignDivider#���  5^      $��0,0,0,1q�5_       J� SnapsToDevicePixels# z 5`       �� Padding 5\      ��  �� RelativeSource �� *Self+  �� Path$9  3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5a   &   �� #��z��6;   5b   #   5c      5e      �� 5f       �@��
IsSelected 63   �� *
IsSelected+$ OneWay=� �� *Self+! �� Triggers! 5g      P� 5i      " P� Property" �@J�IsKeyboardFocusWithin# P� Value# . . �5j      ��  � ��  MaterialDesignTextBoxBorder# �  6<   �� 5k       �@��
IsSelected . 6;   5l      P� 5m      " �@��
IsSelected# . . �5n      ��  � ��  MaterialDesignSelection# �  6;   5o      P� 5p      " �@J�IsMouseOver# . . �5q      ��  � ��# �  6;   5r      5u      $ �� View$ 5w      �� 5x      .P�5y      �� $	��STT��6%   % �� CellTemplate% 5z      �� 5{      .R�5|   "   �� $
 
Horizontal=�6-   .+�5}   &   �� & ��Name$& btnDeleteCustomer��6  $��Center=�6-   $��20��6H   $��20��6T   $ Depth3=�6�   $ 1��6   / +MaterialDesignFloatingActionMiniLightButton#��[ 67  ' � ToolTip$' Delete a customer��6|  $��0q�6�  $
��Left=�6�  $��0 0 5 0q�6�  
( � Tag( 6_   �� *MAKH+��6u   �� *DataContext.DeleteCommand+ �� ) �� AncestorType$) ListViewL�.��5~   *     $��18��6B   $��18��6N   $ Delete=�6Y   
���   �6h   5   '   �� 5�   &   $��Center=�60   ��6K   ��  �� *FindAncestor+") ��* �� 	Converter#* [ + �� ConverterParameter$+ 1��5�   i   5�   #   5�      5�      �� 5�      $	��Mã��6%   , �� DisplayMemberBinding, 61   �� *MAKH+6Y   �� 5�      $��Tên khách hàng��6%   , 6=   �� *TENKH+6f   �� 5�      $��Địa chỉ��6%   , 66   �� *DIACHI+6`   �� 5�      $��Số điện thoại��6%   , 6<   �� *SODIENTHOAI+6k   �� 5�      $��Email��6%   , 64   �� *EMAIL+6]   5�      5�      �� 5�   
   $��0 10 0 0q�6   $��3��6'   $
 
Horizontal=�64   $
��Left=�6N   .+�5�      �� -   5        $& btnAddCustomer��5�   �   $ Depth3=�6�   $ 1��6�   #��[ 6�   $' Add a new customer��6*  $��0q�6H  $	��Top=�6T  $
��Left=�6l  $��5q�6�  ��6   �� *
AddCommand+��64   �� $ btnAddCustomer��{�6l   �� *
IsAdding+.��5�        $
 Plus=�6*   
���   �67   5�      �� 5�      -   5        $& btnEditCustomer��5�   �   $ Depth3=�6n   $ 1��6�   #��[ 6�   $' Edit a customer��6  $��0q�6)  $	��Top=�66  $
��Left=�6N  $��5q�6i  ��6   �� *EditCommand+��65   �� $ btnEditCustomer��.��5�        $ Pencil=�6*   
���   �68   5�      �� 5�      -   5        $& btnSaveCustomer��5�   �   - �� 	IsDefault- . $ Depth3=�6   $ 1��6�   #��[ 6�   $' Save a customer��6  $��0q�6:  $	��Top=�6G  $
��Left=�6_  $��5q�6z  ��6   �� *SaveCommand+��65   �� $ btnSaveCustomer��.��5�        $ ContentSave=�6*   
���   �6>   5�      5�      � 5�   
   $��	12 0 15 0q�6   $��2��6"   $��0��6/    5�      �� 5�      6"   �� 5�      6"   �� 5�      6"   .+�5�      �� {�.  $��0��6(   $ Mã khách hàng��6y   $��15(�6�    %	 !MaterialDesignFloatingHintTextBox#��[	 6�   ��65   �� *ID+$ PropertyChanged=�$ TwoWay=�6�   �� 5�      $��1��6=   $ Tên khách hàng��6�   $��15(�6�   #��[	 6�   {�6   �� *IsEnabledTextBox+��6J   �� *NameOfCustomer+$ PropertyChanged=�$ TwoWay=�6�   �� 5�      $��2��6=   $ Địa chỉ��6�   $��15(�6�   #��[	 6�   {�6   �� *IsEnabledTextBox+��6J   �� *	Address+$ PropertyChanged=�$ TwoWay=�6�   5�      � 5�   
   $��	12 0 15 0q�6   $��2��6"   $��1��6/    5�      �� 5�      6"   �� 5�      6"   �� 5�      6"   .+�5�      �� $��0��6=   $ Số điện thoại��6�   $��15(�6�   #��[	 6�   {�6   �� *IsEnabledTextBox+��6J   �� *PhoneNumber+$ PropertyChanged=�$ TwoWay=�6�   �� 5�      $��1��6=   $ Email��6�   $��15(�6�   #��[	 6�   {�6   �� *IsEnabledTextBox+��6J   �� *Mail+$ PropertyChanged=�$ TwoWay=�6�   �� 5�      $y�Hidden=�6   {�.  $��2��6<   $ Tiền nợ��6�   $��15(�6�   #��[	 6�   ��6I   �� *Debt+$ PropertyChanged=�$ TwoWay=�6�   5�      5�      5�      