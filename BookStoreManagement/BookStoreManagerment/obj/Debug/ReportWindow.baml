   M S B A M L   `   `   `  ����O  KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:BookStoreManagerment.CustomControlBar%BookStoreManagerment.CustomControlBar  5   	   G(clr-namespace:BookStoreManagerment.ViewsBookStoreManagerment.Views  5   	   O,clr-namespace:BookStoreManagerment.ViewModelBookStoreManagerment.ViewModel  5   	   ;"clr-namespace:BookStoreManagermentBookStoreManagerment  5   	   '    !BookStoreManagerment.ReportWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation        5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Cuca3clr-namespace:BookStoreManagerment.CustomControlBar     5   	   :views(clr-namespace:BookStoreManagerment.Views     5   	   ;vm,clr-namespace:BookStoreManagerment.ViewModel     5   	   c	 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5	   	   V
 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 
 5
   	   .local"clr-namespace:BookStoreManagerment 
 5   	   -   5        $��reportWindow��5   	      MaterialDesignBody#���   5   	   $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5        ReportVM � DataContext# [ 5       � WindowStartupLocation$ CenterScreen=�5       � Title$ Report��5   	   $	��600��6   $
��1024��6%    � 
ResizeMode$ NoResize=�62    � Icon$ Images/BookMng2.png��6H    � WindowStyle$
 None=�5      . 	 (System.Windows.Interactivity.Interaction   Triggers 5      / 	 )System.Windows.Interactivity.EventTrigger  5   
   	   	EventName$	 Loaded��6   . 	 (System.Windows.Interactivity.TriggerBase
   Actions.
 5      6 	 0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *CostReportCmd+   CommandParameter 6F   ��  �� ElementName$ reportWindow��5       � 	Resources 5       �� DataType1   +BookStoreManagerment.ViewModel.CostReportVM/   )BookStoreManagerment.Views.CostReportView8   2BookStoreManagerment.ViewModel.CustomerDueReportVM6	   0BookStoreManagerment.Views.CustomerDueReportView  HideMenu �� TargetProperty �� 
TargetName9
  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  ShowMenu��%�  (��       5   3   *, +)(�� \     5"   2   *, +)&	 �     &	 V    �� 5   
   CostReportTemplate��"  63   .R�5          6#   �� 6=   5!      �� 5"   
   dueReportTemplate��"  62   .R�5#      	   6*   �� 6D   5$      �� 5%   
   .��5&      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5'      
  $ 0��6'   $	 250Q�63   
  5(      $ 0:0:0.3��6'   $ 60Q�69   5)      U� 5*      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ image��6�   .\�5+      
  $ 0��6'   $
 -250Q�63   5,      U� 5-      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6,   $ image��6�   .\�5.      
  $ 0��6'   $ 0Q�63   5/      U� 50      $ (UIElement.Opacity)�6,   $ packIcon��6\   .\�51      
  $ 0:0:0.3��6'   $ 1Q�69   52      53      �� 54   
   .��55      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�56      
  $ 0��6'   $ 60Q�63   
  57      $ 0:0:0.5��6'   $	 250Q�69   58      U� 59      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ image��6�   .\�5:      
  $ 0��6'   $
 -250Q�63   
  5;      $ 0:0:0.5��6'   $ 0Q�69   
  5<      $ 0:0:1��6'   $ 0Q�67   5=      U� 5>      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6,   $ image��6�   .\�5?      
  $ 0��6'   $ 0Q�63   
  5@      $ 0:0:0.5��6'   $ 0Q�69   
  5A      $ 0:0:1��6'   $ 0Q�67   5B      U� 5C      $ (UIElement.Opacity)�6,   $ image��6\   .\�5D      
  $ 0��6'   $ 0Q�63   
  5E      $ 0:0:0.5��6'   $	 0.6Q�69   
  5F      $ 0:0:1��6'   $ 1Q�67   5G      U� 5H      $ (UIElement.Opacity)�6,   $ packIcon��6\   .\�5I      
  $ 0��6'   $ 1Q�63   
  5J      $ 0:0:0.5��6'   $ 0Q�69   5K      5L      5M       � Triggers 5N      :� 5O   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonCloseMenu��66   .[�5P      �� #��[ 6   5Q      :� 5R   
   $ ButtonBase.Click��6   $ ButtonOpenMenu��66   .[�5S      �� #��[ 6   5T      .��5V      �  � RowDefinitions 5W   
   �� 5X      $
��Auto �6   6,   �� 5Y      6    � ColumnDefinitions 5[   
   �� 5\      $
��Auto �6   6.   �� 5]      6!   .+�5_   
   � $��0��6   $��2��6   .+�5`      <   6BookStoreManagerment.CustomControlBar.UserControlAlter  
 � Tag 6#   �� *Title+$ reportWindow��6U   5a      �� 5b   
   -   5         ��Name$ GridMenu��5b      $��1��6'   $��0��64   $	��250��6D   $
��Left=�6P    J� RenderTransformOrigin$ 0.5,0.5&�6k   ��5c      �� 5d       �� ImageSource$% Images/AcountInfoBackground.jpg��6    j� Stretch$ UniformToFill=�6K   .+�5f      � .+�5g      �� -   5         ��Name$ ButtonOpenMenu��5g   *    K� ZIndex$ 1��6     � ToolTip$  	Show Menu��6�    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6�   $��40��6  $��40��6)  $��0q�65  $	��Top=�6n  $
��Left=�6�  $��5q�6�  y�6B   �� *BtnShowVisibility+��6k   �� *ShowMenuCmd+��6�   �� $ ButtonOpenMenu����6A  Z� ��6W  Z� .��5h      ' 
 !MaterialDesignThemes.Wpf.PackIcon  � 
 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]!   Kind$
! Menu=�6.   $��40��6:   $��40��6E   
���   �6Q   5i      �� 5j      -   5        $ ButtonCloseMenu��5j   *   $ 1��6   $  	Hide Menu��6�   #��[ 6�   $��40��6   $��40��6+  $��0q�67  $	��Top=�6p  $
��Left=�6�  $��5q�6�  y�6C   �� *BtnHideVisibility+��6l   �� *HideMenuCmd+��6�   �� $ ButtonCloseMenu����6C  Z� ��6Y  Z� .��5k        $
! Menu=�6.   $��40��6:   $��40��6E   
���   �6Q   5l      �� 5m      -   5        " ��Name$" image��5m      $��Images/DecorationImg.jpg��6(   $
��Fill=�6J   $	��180��6Y   $	��250��6f   $ 0.5,0.5&�6r   z�5n      V� 5o      .~�5p      �� �� 5q      �� 5r      T� 5s      5t      5v        5w      -   5        #  Name$# packIcon��5w   *   $ J� Opacity$$ 0Q�6<   $! Image=�6H   $��40��6U   $��40��6`   $��Center=�6l   $��	5 5 5 -20q�6�   5x      �� 5y      .+�5z      �� $��60��6     5{        5|      $ 	 PreviewMouseLeftButtonDown��6)   .
 5}         64   �� *CostReportCmd+ 6W   �� $ reportWindow��5~      .��5�      �� $��50��6"   % �� Orientation$% 
Horizontal=�6.   $
��-5 0q�6G   .+�5�        $! ClipboardText=�62   $��40��6G   $��40��6R   $��Center=�6^   $��5q�6y   �� 5�      $��Báo cáo chi phí��6$   $��15(�6;   $��5q�6I   $��Center=�6T   5�      5�      �� 5�      $��60��6     5�        5�      $ 	 PreviewMouseLeftButtonDown��6)   .
 5�         64   �� *DueReportCmd+ 6U   �� $ reportWindow��5�      .��5�      �� $��50��6"   $% 
Horizontal=�6.   $
��-5 0q�6G   .+�5�        $! Receipt=�62   $��40��6A   $��40��6L   $��Center=�6X   $��5q�6s   �� 5�      $��Báo cáo doanh thu��6$   $��15(�6=   $��5q�6K   $��Center=�6V   5�      5�      5�      5�      �� 5�   
   $��1��6   $��1��6)   ��66   �� 6L   5�      5�      