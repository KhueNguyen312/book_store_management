   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:BookStoreManagermentBookStoreManagerment  5   	   ]3clr-namespace:BookStoreManagerment.CustomControlBar%BookStoreManagerment.CustomControlBar  5   	   &     BookStoreManagerment.LoginWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:BookStoreManagerment     5   	   c	 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5   	   <uc3clr-namespace:BookStoreManagerment.CustomControlBar 	 5   	   V
 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 
 5	   	   d `DevExpress.Xpf.Docking.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxdo5http://schemas.devexpress.com/winfx/2008/xaml/docking  5
   
   j fDevExpress.Xpf.LayoutControl.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aFdxlc;http://schemas.devexpress.com/winfx/2008/xaml/layoutcontrol  6M   c _DevExpress.Xpf.Ribbon.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxr4http://schemas.devexpress.com/winfx/2008/xaml/ribbon  6�   <dxb2http://schemas.devexpress.com/winfx/2008/xaml/bars  6�   e aDevExpress.Xpf.RichEdit.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.RichEdit.v17.2.Core, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aEdxre6http://schemas.devexpress.com/winfx/2008/xaml/richedit    6  ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  6Z  -   5        $��loginWindow��5         MaterialDesignBody#���   5   	   $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       � Icon$ Images\BookStoreIcon.jpg��5        LoginVM � DataContext# [ 5       � WindowStyle$
 None=�5       � Title$ Đăng Nhập��5   	   $	��600��6   $	��800��6(    � 
ResizeMode$ NoResize=�64    � WindowStartupLocation$ CenterScreen=�6J   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      6   .+�5   
   � $��0��6   .+�5      ;   5BookStoreManagerment.CustomControlBar.MainUserControl  
	 � Tag	 6"   �� *Title+
 �� ElementName$
 loginWindow��6S   5      �� 5    
   $��1��6   $
��Fill=�6   $ ��Images/LoginBackground.jpg��6,   6R   # 
 MaterialDesignThemes.Wpf.Card  5!   
   $��1��6   $	��400��6,   $	��300��69   $��Center=�6E   $��Center=�6b   ���	#DD000000��5"      �� 5#       �� Color$ White��6"    �� Opacity$	 0.5Q�60   .��5%      �  5&      �� 5'      $
��Auto �6$   64   �� 5(      $
��Auto �6$   64   �� 5)      6&   �� 5*      6&   �� 5+      6&    � 	Resources 5-       �� 
TargetType �� Property �� Value' 
 !MaterialDesignThemes.Wpf.PackIcon��%�   '�       '  �     �� 5.      " �6   .�5/      ��  � ��$ 15 15 15 10q�63   6J   �� 50       � ��$
 Auto��63   6B   51      �� 52      "  6   .�53      ��  � ��$ 	0 25 5 10q�63   6G   54      55      .+�56      �� -   5         ��Name$ LoginAvatar��56   t   + 
 %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth3=�6   $��0��6J   $��Center=�6W   $��0q�6�    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6�   $��0q�6�   $��80��6�   $��80��6  ��6�   Z� ��57      �� 58       �� ImageSource$ Images/LoginAvatar.png��6%    j� Stretch$ UniformToFill=�6J   5:      � 5;      $��1��6   .+�5<      �� $
��Wrap=�6    $��Palatino Linotype)�64   $��20(�6S   $&�� Welcome to Bookstore Management ��6a    �� TextAlignment$ Center=�6�   5=      � 5>      $��2��6    � ColumnDefinitions 5?      �� 5@      $
��auto �6+   6:   �� 5A      6-   .+�5D        $��Center=�6.   $��Center=�6I   $��2��6f   $��0��6s   � 
 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Account=�6�   ��6�   �� $
 NameTextBox�� �� Path$ BorderBrush��� 5E      -   5        $��
tbUsername��5E      $��1��60   ) 
 #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đăng nhập��6@   $��18(�6p    % !MaterialDesignFloatingHintTextBox#��[ 5F      .��6Z   . 	 (System.Windows.Interactivity.Interaction   Triggers 5G      /	 	 )System.Windows.Interactivity.EventTrigger	  5H       	  	EventName$ TextChanged��6-   .
 	 (System.Windows.Interactivity.TriggerBase 
  Actions. 5I   "   6 	 0System.Windows.Interactivity.InvokeCommandAction     Command 68   �� *UserNameChangedCommand+   CommandParameter 6c   �� $
 
tbUsername��5J      .��5K   2   5L      5M      � 5N      $��3��6    5O      �� 5P      $
��auto �6+   6:   �� 5Q      6-   .+�5T        $��Center=�6.   $��Center=�6I   $��0��6f   $	 key=�6v   ��6�   �� $
 NameTextBox��$ BorderBrush�G� 5U      -   5         G�Name$ PasswordBox��5U   2   $��1��6"   $ Mật khẩu��6G   $��18(�6q    ) %MaterialDesignFloatingHintPasswordBox#��[ 6    5V      	  5W      $ PasswordChanged��6-   . 5X   "      68   �� *PasswordChangedCommand+ 6c   �� $
 PasswordBox��5Y      5[      5]      � 5^      $��4��6   .+�5_      �� $ Depth3=�6   $��20 0 0 0q�6N    # MaterialDesignRaisedLightButton#��[ 6`     � ToolTip$  Đăng nhập��5`      ! �� 	IsDefault! . $��Đăng Nhập��5b      ��6-   �� *LoginCommand+��6N   �� $
 loginWindow��5c      5d      5e      5f      ' 
 !MaterialDesignThemes.Wpf.Snackbar  5g   
   -   5        "  Name$" snackbarLoginFail��5i      $��1��62   # K� ZIndex$# 1��6?   $   IsActive$ 5h      �� *IsActiveSnackBar+% �� Mode$% TwoWay=�&   Message.& 5j      . 
 (MaterialDesignThemes.Wpf.SnackbarMessage  $M��GSai tài khoản hoặc mật khẩu. Đăng nhập không thành công��6-   '   ActionContent$' OK��5k   1    5l      	  5m      $ ActionClick��6%   . 5n         60   �� *ClickedSnackbarCommand+ 6[   �� $
 snackbarLoginFail��5o      5q      5r      5s      5t      