   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5      .    (BookStoreManagerment.Views.BookInputView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49ae aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:BookStoreManagerment.Views     5      V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5	      f bDevExpress.Xpf.Grid.v17.1.Core, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aa	 ]DevExpress.Xpf.Grid.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid  	 6L      MaterialDesignBody#���   5
      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      .��5      �  � 	Resources 5   
   &   System.Windows.Controls.DataGrid �� 
TargetType �� Property �� Value'  !MaterialDesignThemes.Wpf.PackIcon��%W  '        '�� M     '  �     �� 5      "  6   .�5      ��  � ��$ 10q�6+   68   5      �� 5      " ��6   .�5      ��  � ��$ 30��6*   67   �� 5       � ��$ 30��6+   68   5      �� 5      "  6   .�5      ��  � ��$ 30��6*   67   �� 5       � ��$ 30��6+   68   5      5       � ColumnDefinitions 5    
   �� 5!      6!   �� 5"      6!    � RowDefinitions 5$   
   �� 5%      $
��Auto �6   6,   �� 5&      6   �� 5'      6   .+�5)   
   �� $��0��6   $��3��6!   $��Nhập sách��65   $��20(�6F   $��10q�6T   $	��Top=�6`   $��Center=�6x   ���	#FF5F27AD$
��Bold"�6�   �� 5*   
   $��5q�6   $��0��6    $��1��60   .+�5+      �� $��0��6   $��0 0 0 0q�6$   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Tên Sách��65    & "MaterialDesignFloatingHintComboBox#��[ 6_   .@�5,      �� .��6   Naruto6'   �� 5-      .��6   Fate Grand Order61   5.      �� 5/      $ Số lượng nhập��6   $��15(�6E    % !MaterialDesignFloatingHintTextBox#��[ 6S   �� 50      $ Giá nhập��6   $��15(�6@   #��[ 6N   �� 51      +  %MaterialDesignThemes.Wpf.ShadowAssist	   ShadowDepth$	 Depth3=�6   $
��Left=�6F   $��Center=�6a   $��5 20 0 0q�6|    # MaterialDesignRaisedLightButton#��[ 6�   
 � ToolTip$
 Thêm sách��52      $��Thêm sách��53      54      �� 55      $��Right=�6   $��0 10 0 0q�65    �� Orientation$ 
Horizontal=�6G   .+�56      �� -   5         ��Name$ 
btnAddData��56   \   $	 Depth3=�6    K� ZIndex$ 1��6K    / +MaterialDesignFloatingActionMiniLightButton#��[ 6p   $
 Add a new data��6�   $��0q�6�   $	��Top=�6�   $
��Left=�6�   $��5q�6  .��57        �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$
 Plus=�6.   
���   �6;   58      �� 59      -   5        $ btnEditData��59   �   $	 Depth3=�6   $ 1��6J   #��[ 6[   $
 	Edit data��6�   $��0q�6�   $	��Top=�6�   $
��Left=�6�   $��5q�6	  .��5:        $ Pencil=�6.   
���   �6=   5;      �� 5<      -   5        $ btnSaveData��5<   �   $	 Depth3=�6   $ 1��6J   #��[ 6[   $
 	Save data��6�   $��0q�6�   $	��Top=�6�   $
��Left=�6�   $��5q�6
  .��5=        $ ContentSave=�6.   
���   �6B   5>      5?      5@        5A   
   -   5        $��	dataInput��5A   D   $��2��6   $��0��6    $��2��60      Columns 5B      0  *System.Windows.Controls.DataGridTextColumn  5C      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Mã sách��6%   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 66   ��   5D      $ 
Tên sách��6%    67   ��   5E      $ Số lượng��6%    67   ��   5F      $ 
Đơn giá��6%    66   ��   5G      $ Thành tiền��6%    69   �� 5I        5J   
   -   5        $��
dataDetail��5J   0   $��1��6   $��1��6     5K        5L      $	 Mã��6&    62   ��   5M      $ Ngày nhập��6%    68   ��   5N      $ Tổng tiền��6%    68   �� 5P      5Q      5R      