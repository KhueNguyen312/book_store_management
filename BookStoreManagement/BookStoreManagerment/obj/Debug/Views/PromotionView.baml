   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:BookStoreManagerment.ViewModelBookStoreManagerment.ViewModel  5      G(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5
      .    (BookStoreManagerment.Views.PromotionView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      ;vm,clr-namespace:BookStoreManagerment.ViewModel     5      c	 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5      V
 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 
 5      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5      :d2http://schemas.microsoft.com/expression/blend/2008  5	      4local(clr-namespace:BookStoreManagerment.Views  5
        � 	Resources  5      3   -BookStoreManagerment.ViewModel.IndexConverter   IndexConverter��%   &	          5   
   6   5      .��5      � 
�������  5   
   &   System.Windows.Controls.DataGrid �� 
TargetType �� Property �� Value' 
 !MaterialDesignThemes.Wpf.PackIcon��%W  '        '�� M     '  �     �� 5      "  6   .�5      ��  � ��$ 10q�6+   68   5      �� 5      " ��6   .�5      ��  � ��$ 30��6*   67   �� 5       � ��$ 30��6+   68   5      �� 5      "  6   .�5      ��  � ��$ 30��6*   67   �� 5       � ��$ 30��6+   68   5      5       � ColumnDefinitions 5   
   �� 5      $
��0.5* �6   6.   �� 5       6!    � RowDefinitions 5"   
   �� 5#      $
��Auto �6   6,   �� 5$      6   �� 5%      6   .+�5'   
   �� $��0��6   $��3��6!   $��Khuyến mãi��65   $��20(�6G   $��10q�6U   $	��Top=�6a   $��Center=�6y   ���	#FF5F27AD$
��Bold"�6�   �� 5(   
   $��10q�6   $��0��6!   $��1��61   .+�5)      �� ) 
 #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã khuyến mãi��6,   $��15(�6[    % !MaterialDesignFloatingHintTextBox#��[ 6i   ��6   �� *ID+6i   �� 5*      $( "Tên chương trình khuyến mãi��6.   $��15(�6k   #��[ 6y   ��6   �� *Name+6y   (  "System.Windows.Controls.DatePicker  5+      {�. $	��150��5.      $��0 15 0 0q�6   $
��Left=�6/   $ Ngày bắt đầu��5/       ( $MaterialDesignFloatingHintDatePicker#��[ 50         SelectedDate 5-      �� *	StartDate+ �� Mode$ TwoWay=�	 �� UpdateSourceTrigger$	 PropertyChanged=�50        51      {�. $	��150��54      $��0 15 0 0q�6   $
��Left=�6/   $ Ngày kết thúc��55      #��[ 56       53      �� *	EndDate+$ TwoWay=�$	 PropertyChanged=�56      �� 57      -   5        $��btnPromotion��57      $��Center=�6)   + 
 %MaterialDesignThemes.Wpf.ShadowAssist
   ShadowDepth$
 Depth3=�6�   $��Center=�6�   $��5 20 0 0q�6�    # MaterialDesignRaisedLightButton#��[ 6�    � ToolTip$ Thêm khuyến mãi��58      $��Thêm KM��59      ��57   G   �� *AddCmd+��6b   ��  �� ElementName$ 
btnAddBook��5:      5;      �� 5<   
   -   5        $��	listView2��5<   ?   $��5q�6   $��2��6   $��2��6+   ��6P   �� *ListPromotionDetail+$ TwoWay=�$	 PropertyChanged=� �� SelectedItem 6�   �� *SelectedItem+$ TwoWay=���5=      �� 5>      " ��6   .�5?      ��  �@J�SnapsToDevicePixels . 6<   �� 5@       �@�OverridesDefaultStyle . 6>   �� 5A       � ��
 ���� 63   �� 5B       � ��
 ���� 64   �� 5C       � �� 5D      �� 5E       �� 
TargetType" ��6.   .R�5F   "   ��  ��Name$ Border��6)   #��z��5H        MaterialDesignDivider#���  5I      $��0,0,0,1q�5J       J� SnapsToDevicePixels# z 5K       �� Padding 5G      ��  �� RelativeSource �� *Self+ �� Path$9 3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5L   &   �� #��z��6;   5M   #   5N      5P      �� 5Q       �@��
IsSelected 63   �� *
IsSelected+$ OneWay=� �� *Self+ �� Triggers 5R      P� 5T       P� Property �@J�IsKeyboardFocusWithin P� Value . . �5U      ��  � ��  MaterialDesignTextBoxBorder# �  6<   �� 5V       �@��
IsSelected . 6;   5W      P� 5X       �@��
IsSelected . . �5Y      ��  � ��  MaterialDesignSelection# �  6;   5Z      P� 5[       �@J�IsMouseOver . . �5\      ��  � ��# �  6;   5]      5_       �� View 5a      �� 5b      .P�5c      �� $	��STT��6%    �� CellTemplate 5d      �� 5e      .R�5f   "   ��  �� Orientation$ 
Horizontal=�6-   .+�5g   &   �� $��Center=�60   ��6K   ��  �� *FindAncestor+ �� AncestorType" �� �� 	Converter# [   �� ConverterParameter$ 1��5h   i   5i   #   5j      5l      �� 5m      $��	Mã sách��6%    �� DisplayMemberBinding 66   �� *MASACH+6`   �� 5n      $��
Tên sách��6%    67   �� *SACH.TENSACH+6g   �� 5o      $��Phần trăm KM��6%    6;   �� *SOLUONGGIAM+6j   �� 5p      $��Ghi chú��6%    66   �� *GHICHU+6`   5q      5s      �� 5t   
   -   5        $��	listView1��5t   0   $��1��6   $��1��6    ��6A   �� *ListPromotion+$ TwoWay=�$	 PropertyChanged=� 6�   �� *SelectedItem+$ TwoWay=���5u      �� 5v      " ��6   .�5w      ��  �@J�SnapsToDevicePixels . 6<   �� 5x       �@�OverridesDefaultStyle . 6>   �� 5y       � ��
 ���� 63   �� 5z       � ��
 ���� 64   �� 5{       � �� 5|      �� 5}      " ��6.   .R�5~   "   �� $ Border��6)   #��z��5�      #���  5�      $��0,0,0,1q�5�      # z 5�       5      ��  �� *Self+$9 3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5�   &   �� #��z��6;   5�   #   5�      5�      �� 5�       �@��
IsSelected 63   �� *
IsSelected+$ OneWay=� �� *Self+ 5�      P� 5�       �@J�IsKeyboardFocusWithin . . �5�      ��  � ��# �  6<   �� 5�       �@��
IsSelected . 6;   5�      P� 5�       �@��
IsSelected . . �5�      ��  � ��# �  6;   5�      P� 5�       �@J�IsMouseOver . . �5�      ��  � ��# �  6;   5�      5�       5�      �� 5�      .P�5�      �� $	��STT��6%    5�      �� 5�      .R�5�   "   �� $ 
Horizontal=�6-   .+�5�   &   �� $��Center=�60   ��6K   ��  �� *FindAncestor+" ��# [  $ 1��5�   i   5�   #   5�      5�      �� 5�      $��Mã KM��6%    64   �� *MAKM+6\   �� 5�      $��Tên khuyến mãi��6%    6=   �� *TENKM+6f   �� 5�      $��Ngày bắt đầu��6%    6;   �� *NGAYBD+6e   �� 5�      $��Ngày kết thúc��6%    6<   �� *NGAYKT+6f   5�      5�      5�      5�      