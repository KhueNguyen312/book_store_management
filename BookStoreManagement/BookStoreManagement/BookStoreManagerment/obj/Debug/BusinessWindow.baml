   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5   	   ]3clr-namespace:BookStoreManagerment.CustomControlBar%BookStoreManagerment.CustomControlBar  5   	   G(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5   	   O,clr-namespace:BookStoreManagerment.ViewModelBookStoreManagerment.ViewModel  5	   	   )    #BookStoreManagerment.BusinessWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:BookStoreManagerment.Views     5   	   Cuca3clr-namespace:BookStoreManagerment.CustomControlBar     5   	   :views(clr-namespace:BookStoreManagerment.Views     5   	   ;vm,clr-namespace:BookStoreManagerment.ViewModel     5	   	   c	 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5
   	   V
 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 
 5   	   c _DevExpress.Xpf.Ribbon.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxr4http://schemas.devexpress.com/winfx/2008/xaml/ribbon  5   	   ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  6J   <dxb2http://schemas.devexpress.com/winfx/2008/xaml/bars  6�   d `DevExpress.Xpf.Docking.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxdo5http://schemas.devexpress.com/winfx/2008/xaml/docking  6�   -   5          �Name$  businessWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignFont#���  5        
BusinessVM � DataContext# [ 5       � WindowStartupLocation$ CenterScreen=�5       � Title$ Business��5   	   $	��600��6   $
��1024��6'    � 
ResizeMode$ NoResize=�64    � Icon$ Images/BookMng2.png��6J    � WindowStyle$
 None=�5      . 	 (System.Windows.Interactivity.Interaction	   Triggers	 5      / 	 )System.Windows.Interactivity.EventTrigger  5   
   
   	EventName$
 Loaded��6   . 	 (System.Windows.Interactivity.TriggerBase   Actions. 5      6 	 0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *BookInputCmd+   CommandParameter 6E   ��  �� ElementName$ businessWindow��5       � 	Resources 5       �� DataType5   /BookStoreManagerment.ViewModel.BookImportViewVM/   )BookStoreManagerment.Views.BookImportView3   -BookStoreManagerment.ViewModel.SellBookViewVM-	   'BookStoreManagerment.Views.SellBookView:
   4BookStoreManagerment.ViewModel.MoneyCollectionViewVM4   .BookStoreManagerment.Views.MoneyCollectionView0   *BookStoreManagerment.ViewModel.PromotionVM.   (BookStoreManagerment.Views.PromotionView  HideMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  ShowMenu��%�  (��       5   /   *, +)(�� X     5"   1   *, +)(�� �     5%   0   *,
 +)(��     5(   *   *, +)&	 ^    &	 �    �� 5   
   bookIpTemplate��"  6/   .R�5          6#   �� 6=   5!      �� 5"   
   sellBookTemplate��"  61   .R�5#      	   6!   �� 6;   5$      �� 5%   
   collectionMoney��" 
 60   .R�5&         6(   �� 6B   5'      �� 5(   
   	Promotion��"  6*   .R�5)         6"   �� 6<   5*      �� 5+   
   .��5,      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5-        $ 0��6'   $	 250Q�63     5.      $ 0:0:0.3��6'   $ 60Q�69   5/      U� 50      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ image��6�   .\�51        $ 0��6'   $
 -250Q�63   52      U� 53      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6,   $ image��6�   .\�54        $ 0��6'   $ 0Q�63   55      U� 56      $ (UIElement.Opacity)�6,   $ packIcon��6\   .\�57        $ 0:0:0.3��6'   $ 1Q�69   58      59      �� 5:   
   .��5;      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5<        $ 0��6'   $ 60Q�63     5=      $ 0:0:0.5��6'   $	 250Q�69   5>      U� 5?      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ image��6�   .\�5@        $ 0��6'   $
 -250Q�63     5A      $ 0:0:0.5��6'   $ 0Q�69     5B      $ 0:0:1��6'   $ 0Q�67   5C      U� 5D      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6,   $ image��6�   .\�5E        $ 0��6'   $ 0Q�63     5F      $ 0:0:0.5��6'   $ 0Q�69     5G      $ 0:0:1��6'   $ 0Q�67   5H      U� 5I      $ (UIElement.Opacity)�6,   $ image��6\   .\�5J        $ 0��6'   $ 0Q�63     5K      $ 0:0:0.5��6'   $	 0.6Q�69     5L      $ 0:0:1��6'   $ 1Q�67   5M      U� 5N      $ (UIElement.Opacity)�6,   $ packIcon��6\   .\�5O        $ 0��6'   $ 1Q�63     5P      $ 0:0:0.5��6'   $ 0Q�69   5Q      5R      5S       � Triggers 5T      :� 5U   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonCloseMenu��66   .[�5V      �� #��[ 6   5W      :� 5X   
   $ ButtonBase.Click��6   $ ButtonOpenMenu��66   .[�5Y      �� #��[ 6   5Z      .��5\      �  � RowDefinitions 5]   
   �� 5^      $
��Auto �6   6,   �� 5_      6    � ColumnDefinitions 5a   
   �� 5b      $
��Auto �6   6.   �� 5c      6!   .+�5e   
   � $��0��6   $��2��6   .+�5f      <   6BookStoreManagerment.CustomControlBar.UserControlAlter  
 � Tag 6#   �� *Title+$ businessWindow��6W   5g      �� 5h   
   -   5         ��Name$ GridMenu��5h      $��1��6'   $��0��64   $	��250��6D   $
��Left=�6P    J� RenderTransformOrigin$ 0.5,0.5&�6k   ��5i      �� 5j       �� ImageSource$% Images/AcountInfoBackground.jpg��6    j� Stretch$ UniformToFill=�6K   .+�5l      � .+�5m      �� -   5         ��Name$ ButtonOpenMenu��5m   *     K� ZIndex$  1��6   ! � ToolTip$! 	Show Menu��6�    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6�   $��40��6  $��40��6)  $��0q�65  $	��Top=�6n  $
��Left=�6�  $��5q�6�  y�6B   �� *BtnShowVisibility+��6k   �� *ShowMenuCmd+��6�   �� $ ButtonOpenMenu����6A  Z� ��6W  Z� .��5n      ' 
 !MaterialDesignThemes.Wpf.PackIcon  � 
 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]"   Kind$
" Menu=�6.   $��40��6:   $��40��6E   
���   �6Q   5o      �� 5p      -   5        $ ButtonCloseMenu��5p   *   $  1��6   $! 	Hide Menu��6�   #��[ 6�   $��40��6   $��40��6+  $��0q�67  $	��Top=�6p  $
��Left=�6�  $��5q�6�  y�6C   �� *BtnHideVisibility+��6l   �� *HideMenuCmd+��6�   �� $ ButtonCloseMenu����6C  Z� ��6Y  Z� .��5q        $
" Menu=�6.   $��40��6:   $��40��6E   
���   �6Q   5r      �� 5s      -   5        # ��Name$# image��5s      $��Images/DecorationImg.jpg��6(   $
��Fill=�6J   $	��180��6Y   $	��250��6f   $ 0.5,0.5&�6r   z�5t      V� 5u      .~�5v      �� �� 5w      �� 5x      T� 5y      5z      5|        5}      -   5        $  Name$$ packIcon��5}   *   % J� Opacity$% 0Q�6<   $" Image=�6H   $��40��6U   $��40��6`   $��Center=�6l   $��	5 5 5 -20q�6�   5~      �� 5      .+�5�      �� $��60��6   	 5�        5�      $ 
 PreviewMouseLeftButtonDown��6)   . 5�         64   �� *BookInputCmd+ 6U   �� $ businessWindow��5�      .��5�      �� $��60��6!   & �� Orientation$& 
Horizontal=�6-   $��-5q�6F   .+�5�        $" CartPlus=�62   $��40��6B   $��40��6M   $��Center=�6Y   $��5q�6t   �� 5�      $��Nhập Sách��6$   $��15(�65   $��5q�6C   $��Center=�6N   5�      5�      �� 5�      $��60��6    	 5�        5�      $ 
 PreviewMouseLeftButtonDown��6)   . 5�         64   �� *SellBookCmd+ 6T   �� $ businessWindow��5�      .��5�      �� $��50��6"   $& 
Horizontal=�6.   $
��-5 0q�6G   .+�5�        $" CartOutline=�62   $��40��6E   $��40��6P   $��Center=�6\   $��5q�6w   �� 5�      $��
Bán sách��6$   $��15(�64   $��5q�6B   $��Center=�6M   5�      5�      �� 5�      $��60��6    	 5�        5�      $ 
 PreviewMouseLeftButtonDown��6)   . 5�         64   �� *PromotionCmd+ 6U   �� $ businessWindow��5�      .��5�      �� $��50��6"   $& 
Horizontal=�6.   $
��-5 0q�6G   .+�5�        $" CashMultiple=�62   $��40��6G   $��40��6R   $��Center=�6^   $��5q�6y   �� 5�      $��Khuyến mãi��6$   $��15(�66   $��5q�6D   $��Center=�6O   5�      5�      �� 5�      $y�Hidden=�6   $��60��63   	 5�        5�      $ 
 PreviewMouseLeftButtonDown��6)   . 5�         64   �� *MoneyCollectionCmd+ 6[   �� $ businessWindow��5�      .��5�      �� $��50��6!   $& 
Horizontal=�6-   $
��-5 0q�6F   .+�5�        $" CashUsd=�62   $��40��6A   $��40��6L   $��Center=�6X   $��5q�6s   �� 5�      $��
Thu tiền��6$   $��15(�64   $��5q�6B   $��Center=�6M   5�      5�      5�      5�      �� 5�   
   $��1��6   $��1��6)   ��66   �� 6L   5�      5�      