   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5      O,clr-namespace:BookStoreManagerment.ViewModelBookStoreManagerment.ViewModel  5      /    )BookStoreManagerment.Views.AccountMngView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:BookStoreManagerment.Views     5      ;vm,clr-namespace:BookStoreManagerment.ViewModel     5      V	 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 	 5      ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5	      c
 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 
 5
      ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5        � 	Resources  5      3   -BookStoreManagerment.ViewModel.IndexConverter   IndexConverter��%   &	          5   
   6   5      .��5      �   5   
    �� 
TargetType �� Property �� Value' 	 !MaterialDesignThemes.Wpf.PackIcon��%   '��       '  v     �� 5   
   " ��6   .�5      ��  � ��$ 30��6&   63   �� 5       � ��$ 30��6'   64   5      �� 5   
   "  6   .�5      ��  � ��$ 30��6&   63   �� 5       � ��$ 30��6'   64   5      5       � RowDefinitions 5      �� 5   
   $
��Auto �6   6(   �� 5   
   $
��Auto �6   6(   �� 5   
   $
��Auto �6   6(   �� 5    
   $
��Auto �6   6(   �� 5!   
   6    � ColumnDefinitions 5#      �� 5$   
   $
��Auto �6   6*   �� 5%   
   6   �� 5&   
   6   .+�5(   
   ( 	 "MaterialDesignThemes.Wpf.ColorZone  + 	 %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�6#   $��
5 -5 10 10q�6T   $	��Top=�6h   $��Center=�6�   $��0��6�   $��3��6�   $��2��6�      Mode$ PrimaryLight=�6�   $��5q�6�   .��5)      ]� .+�5*      ��  �� Orientation$ 
Horizontal=�6   + 	 %MaterialDesignThemes.Wpf.RippleAssist	   
IsCentered	 . .+�5,        $ Standard=�6+   $��8 4 8 4q�6;   
   CornerRadius$
 2��6M    K� ZIndex$ 1��6^   $��1 0 0 0q�5-   $   $ Depth1=�5.   $   .��5/      �  50      �� 51      $
��Auto �6/   �� 52      $��* �6/   �� 53      $
��Auto �6/   .+�55      ��   MaterialDesignToolButton#���  6!   .��56        � 	 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Magnify=�66    J� Opacity$	 .56Q�6E   57      �� 58      -   5        $��	txbSearch��59   w   $��1��58   &   $��8 0 0 0q�66   ) 	 #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tìm kiếm tài khoản��6G   . 	 (MaterialDesignThemes.Wpf.TextFieldAssist   DecorationVisibility$ Hidden=�59   &   $��0q�6c   $	��400��5:   &   $��Center=�62   .��6M   .	 
 (System.Windows.Interactivity.Interaction 	  Triggers 5;   "   /
 
 )System.Windows.Interactivity.EventTrigger
  5<   &    
  	EventName$ TextChanged��65   . 
 (System.Windows.Interactivity.TriggerBase   Actions. 5=   *   6 
 0System.Windows.Interactivity.InvokeCommandAction     Command 6@   �� *	SearchCmd+   CommandParameter 6^   ��  �� ElementName$ 	txbSearch��5>   '   .��5?   :   5@      5A      5B      �� 5C      $��Center=�6   $��Center=�65    & "MaterialDesignToolForegroundButton#���  6R   $��8 0 0 0q�6�   $ 0��6�   .��5D        $��20��6.   $��20��6:   $
 Send=�6E   5E      5F      5G      5H      �� 5I   
   $��1��6   $��3��6!   $(��"Quản lí thông tin tài khoản��65   $��25(�6X   $��10q�6f   $	��Top=�6r   $��Center=�6�   ���	#FF5F27AD$
��Bold"�6�   &   DevExpress.Xpf.Editors.ImageEdit  5J   
      Stretch$
 Fill=�6�   $��3��6�   $��0��6�   $
��Left=�6�   $	��Top=�6�   $��10 0 0 0q�6�   $	��180��6�   $	��150��6  {�6   �� *IsEnabledTextBox+   Source 6?   ��  �� Path$	 Img� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6  �� 5K   
   -   5        $��listViewAcc��5K   5   $��4��6   $��3��6!   {�6H   �� *IsEnabledListView+$ TwoWay=���6|   �� *ListAccount+$ TwoWay=�$ PropertyChanged=� �� SelectedItem 6�   �� *SelectedAccount+$ TwoWay=���5L      �� 5M      " ��6   .�5N      ��  �@J�SnapsToDevicePixels . 6<   �� 5O       �@�OverridesDefaultStyle . 6>   �� 5P       � ��
 ���� 63   �� 5Q       � ��
 ���� 64   �� 5R       � �� 5S      �� 5T       �� 
TargetType" ��6.   .R�5U   "   ��  ��Name$ Border��6)   #��z��5W        MaterialDesignDivider#���  5X      $��0,0,0,1q�5Y       J� SnapsToDevicePixels# z 5Z       �� Padding 5V      ��   �� RelativeSource  �� *Self+$9 3(materialDesign:ListViewAssist.ListViewItemPadding)�._�5[   &   �� #��z��6;   5\   #   5]      5_      �� 5`       �@��
IsSelected 63   �� *
IsSelected+$ OneWay=�  �� *Self+! �� Triggers! 5a      P� 5c      " P� Property" �@J�IsKeyboardFocusWithin# P� Value# . . �5d      ��  � ��  MaterialDesignTextBoxBorder# �  6<   �� 5e       �@��
IsSelected . 6;   5f      P� 5g      " �@��
IsSelected# . . �5h      ��  � ��  MaterialDesignSelection# �  6;   5i      P� 5j      " �@J�IsMouseOver# . . �5k      ��  � ��# �  6;   5l      5o      $ �� View$ 5q      �� 5r      .P�5s      �� $	��STT��6%   % �� CellTemplate% 5t      �� 5u      .R�5v   "   �� $ 
Horizontal=�6-   .+�5w   &   �� & ��Name$& 	btnDelete��6  $��Center=�6-   $��20��6H   $��20��6T   $ Depth3=�6�   $ 1��6�    / +MaterialDesignFloatingActionMiniLightButton#��[ 6  ' � ToolTip$' Delete an item��6^  $��0q�6x  $
��Left=�6�  $��0 0 5 0q�6�  ��6_   �� *DataContext.DeleteCommand+  �� ( �� AncestorType$( ListViewL�.��5x   *     $��18��6B   $��18��6N   $ Delete=�6Y   
���   �6h   5y   '   �� 5z   &   $��Center=�60   ��6K   ��   �� *FindAncestor+"( ��) �� 	Converter#) [  * �� ConverterParameter$* 1��5{   i   5|   #   5}      5      �� 5�      $��Tên tài khoản��6%   + �� DisplayMemberBinding+ 6<   �� *TENTK+6f   �� 5�      $��Tên hiển thị��6%   + 6;   �� *
TENHIENTHI+6i   �� 5�      $��Loại tài khoản��6%   + 6=   �� *TypeAcc.Display+6p   5�      5�      �� 5�   
   $��	20 0 15 0q�6   $��3��6(   $��1��65   .+�5�      �� $ Tên đăng nhập��6�   $��15(�6�    % !MaterialDesignFloatingHintTextBox#��[ 6�   {�6   �� *IsEnabledUserNameTextBox+��6E   �� *AccountName+$ PropertyChanged=�$ TwoWay=�6�   �� 5�      $ Tên hiển thị��6�   $��15(�6�   #��[ 6�   {�6   �� *IsEnabledTextBox+��6=   �� *DisplayName+$ PropertyChanged=�$ TwoWay=�6�   �� 5�      $��0��6>   $��1 13 0 0q�6K   , �� DisplayMemberPath$, Display��5�      $ Loại tài khoản��5�       & "MaterialDesignFloatingHintComboBox#��[ 6G   {�5�      �� *IsEnabledTextBox+- �� Text- 5�      �� *TypeAccount.Display+��5�      �� *ListTypeAccount+$ TwoWay=�$ PropertyChanged=� 5�   3   �� *SelectedCBItem+$ TwoWay=�5�      5�      �� 5�   
   $��	20 0 15 0q�6   $��3��6(   $��2��65   .+�5�      G� -   5        $��PasswordBox��5�      $ Mật khẩu��6U   $��15(�6    )	 %MaterialDesignFloatingHintPasswordBox#��[	 6�   {�6-   �� *IsEnabledTextBox+ 5�      
  5�      $ PasswordChanged��6%   . 5�         60   �� *PasswordChangedCommand+$ TwoWay=� 6g   �� $ PasswordBox��5�      5�      G� 5�      -   5        $��PasswordBox2��5�      $ Nhập lại Mật khẩu��6V   $��15(�6�   #��[	 6�   {�6/   �� *IsEnabledTextBox+ 5�      
  5�      $ PasswordChanged��6%   . 5�         60   �� *Password2ChangedCommand+$ TwoWay=� 6h   �� $ PasswordBox2��5�      5�      �� 5�      $��	5 25 5 25q�6   $��2��6,   $��3��6<   $ 
Horizontal=�6I   .+�5�      �� -   5        $& btnAddAccount��5�   �   $ Depth3=�6r   #��[ 6�   $ 1��6�   $' Add a new account��6  $��0q�6,  $	��Top=�68  $
��Left=�6P  $��5q�6k  ��6   �� *AddAccountCmd+��6;   �� $ btnAddAccount��.��5�        $ AccountPlus=�6.   
���   �6B   5�      �� 5�      -   5        $& btnEditAccount��5�   �   $ Depth3=�6q   #��[ 6�   $ 1��6�   $' Edit an account��6  $��0q�6,  $	��Top=�68  $
��Left=�6P  $��5q�6k  ��6   �� *EditCommand+��69   �� $ btnEditAccount��.��5�        $ AccountSettingsVariant=�6.   
���   �6L   5�      �� 5�      -   5        $& btnSaveAccount��5�   �   $ Depth3=�6q   $ 1��6�   #��[ 6�   $' Save new account��6  $��0q�6+  $	��Top=�67  $
��Left=�6O  $��5q�6j  ��6   �� *SaveCommand+��69   �� $ btnSaveAccount��.��5�        $ ContentSave=�6.   
���   �6B   5�      5�      5�      5�      5�      