   M S B A M L   `   `   `  ����e  aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089�_clr-namespace:System.Windows.Controls.Ribbon.Primitives;assembly=System.Windows.Controls.Ribbon)System.Windows.Controls.Ribbon.Primitives  5   	   O KBookStoreManagerment, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:BookStoreManagermentBookStoreManagerment 5   	   ]3clr-namespace:BookStoreManagerment.CustomControlBar%BookStoreManagerment.CustomControlBar 5	   	   %   BookStoreManagerment.MainWindow   5   	   jribbon_clr-namespace:System.Windows.Controls.Ribbon.Primitives;assembly=System.Windows.Controls.Ribbon  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49an jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L 9http://schemas.microsoft.com/winfx/2006/xaml/presentation         5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:BookStoreManagerment     5   	   c	 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 5      <uc3clr-namespace:BookStoreManagerment.CustomControlBar 	 5	   	   V
 RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 
 5
   	   d `DevExpress.Xpf.Docking.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a@dxdo5http://schemas.devexpress.com/winfx/2008/xaml/docking  5   	   j fDevExpress.Xpf.LayoutControl.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aFdxlc;http://schemas.devexpress.com/winfx/2008/xaml/layoutcontrol  6L   c _DevExpress.Xpf.Ribbon.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxr4http://schemas.devexpress.com/winfx/2008/xaml/ribbon  6�   <dxb2http://schemas.devexpress.com/winfx/2008/xaml/bars  6�   e aDevExpress.Xpf.RichEdit.v17.2, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.RichEdit.v17.2.Core, Version=17.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aEdxre6http://schemas.devexpress.com/winfx/2008/xaml/richedit    6  ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  6Y  -   5        $��
mainWindow��5         MaterialDesignBody#���   5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5       
 MainVM � DataContext# [ 5       � WindowStyle$
 None=�5       � Title$ Book Store Management��5   	   $	��600��6'   $
��1024��64    � Icon$ Images\BookStoreIcon.jpg��6A    � 
ResizeMode$ NoResize=�6a    � WindowStartupLocation$ CenterScreen=�6w   . 	 (System.Windows.Interactivity.Interaction   Triggers 5      / 	 )System.Windows.Interactivity.EventTrigger  5   
   	   	EventName$	 Loaded��6   . 	 (System.Windows.Interactivity.TriggerBase
   Actions.
 5      6 	 0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadedWindowCommand+   CommandParameter 6L   ��  �� ElementName$ 
mainWindow��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5       $��0.25* �6   6-   �� 5!      6    � ColumnDefinitions 5#   
   �� 5$      6!   �� 5%      6!   .+�5'   
   � $��0��6   $��2��6   .+�5(      ;  5BookStoreManagerment.CustomControlBar.MainUserControl  
 � Tag 6!   �� *Title+$ 
mainWindow��6Q   5)      �� 5*   
   $
��Auto��6   $��1��6"   $��0��6/   .+�5+      �� $��	25 25 5 5q�6   $��BOOKSTORE MANAGEMENT��6,   $��Helvetica Neue)�6H   $��30(�6e   $��Center=�6s   $
��Bold"�6�   ���	#DDEBEBEB6�   �� 5,      $��	-10 5 5 5q�6   $��BY EVIL TEAM��6,   $��Helvetica Neue)�6@   $��Center=�6\   $��20(�6{   $��Center=�6�   $
��Bold"�6�   ���	#DDEBEBEB6�   5-      �� 5.   
   $��1��6   $��1��6"    �� Orientation$ 
Horizontal=�62   $��Right=�6K   $��Center=�6h   .+�5/      �� .+�50      �� -   5        $��tbDisplayName��50   .   $��5 25 5 5q�6   $��25(�6�   $��Center=�6�   $
��Bold"�6�   ���	#DDEBEBEB��6D   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�6�   �� 51      -   5         ��Name$ tbAccountType��51   -   $��5 3 5 5q�6   $��15(�6�   $��Center=�6�   $
��Bold"�6�   $��Right=�6�   ���	#DDEBEBEB��6E   �� *TypeAccountDisplay+$ PropertyChanged=�$ TwoWay=�6�   52      �� 53      -   5         ��Name$ 	btnAvatar��53   0   $
��Left=�6   $��10q�6C    / +MaterialDesignFloatingActionMiniLightButton#��[ 6O   $��0q�6�   $��70��6�   $��70��6�   ��54      �� 55       j� Stretch$ UniformToFill=�6u    �� ImageSource 6!   ��  �� Path$	 Img�$ TwoWay=�$ PropertyChanged=�6u   57      �� 58      ' 
 !MaterialDesignThemes.Wpf.PopupBox  59         PlacementMode$ BottomAndAlignCentres=�5:       ^� 	Placement$ Right=�5;       � ToolTip$ Lựa chọn khác��5<         ToggleContent 5=      ' 
 !MaterialDesignThemes.Wpf.PackIcon  5>      �	 
 �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]] 	  Kind$ Settings=�6/   $��70��6?   $��70��6K   ���	#DDEBEBEB6o      PopupContent. 5@      �� .@�5A      �� $��60��6#    5B        5C      $ 	 PreviewMouseLeftButtonDown��6-   .
 5D   "      68   �� *	LogOutCmd+ 6V   �� $ 
mainWindow��5E      .��5G      �� -   5        $��	lviLogOut��5G   %   $��50��66   $ 
Horizontal=�6B   $
��10 0q�6[   .+�5H        $ Logout=�66   $��50��6D   $��50��6O   $��Center=�6[   $��5q�6v   �� 5I      $��Đăng Xuất��6(   $��25(�69   $��10q�6G   $��Center=�6S   5J      5K      �� 5L      -   5        $��LviExit��5L   #   $��60��62    5M        5N      $ 	 PreviewMouseLeftButtonDown��6-   .
 5O   "      68   �� *	ExitCmd+ 6T   �� $ 
mainWindow��5P      .��5R      �� $��50��6%   $ 
Horizontal=�61   $	��6 0q�6J   .+�5S        $ 	ExitToApp=�66   $��50��6G   $��50��6R   $��Center=�6^   $��5q�6y   �� 5T      $��Thoát��6(   $��25(�65   $��10q�6C   $��Center=�6O   5U      5V      5W      5X      5Y      � 5Z   
   -   5         �Name$ GridMain��5Z   1   $��2��6   $��2��6   $��0 0 0 0q�6C     J� RenderTransformOrigin$  0.5,0.5&�6T   z�5[      V� 5\      .~�5]      �� �� 5^      �� 5_      T� 5`      5a      .+�5c      4
  .DevExpress.Xpf.LayoutControl.TileLayoutControl
  $��0 0 0 0q�6%   4  .DevExpress.Xpf.LayoutControl.FlowLayoutControl!   StretchContent! . $��1��6L   .+�5d      '  !DevExpress.Xpf.LayoutControl.Tile  "   Size$" Small=�6   4  .DevExpress.Xpf.Core.HeaderedContentControlBase#   Header$# Quản Lý Thông Tin��6)   ���	#FF2776ED$   Command$ 6[   �� *PressBtnBookMngCommand+%   CommandParameter% 6�   �� $ 
mainWindow��,  &DevExpress.Xpf.Core.ContentControlBase&   Content.& 5e      �� $��Images/BookMng2.png��6   $��80��69   ' J� OpacityMask
' �����6E   5f        5g      $" Small=�6   $# Quản Lý Tài Khoản��6)   ���	#FF633EBD$ 6D   �� *PressBtnAccountCommand+% 6o   �� $ 
mainWindow��.& 5h      �� $��Uniform=�6   $��80��6.   $��Images/EmployeeIcon.png��6:   5i        5j      $" Large=�6   $# 
Kinh Doanh��6)    (   HorizontalHeaderAlignment$( Stretch=�6�   ���	#FFD74E2A$ 6=   �� *PressBtnBusinessCommand+% 6i   �� $ 
mainWindow��.& 5k      �� $��80��6   $��Images/BusinessIcon.png��6'   5l        5m      $# Thống kê��6   $" Small=�6.   )   IsFlowBreak) . *   VerticalHeaderAlignment$* Bottom=�6�   $( Stretch=�6�   ���	#FF4F2E94$ 6;   �� *PressBtnStatisticCmd+% 6d   �� $ 
mainWindow��.& 5n      �� $��80��6   $��Images\Search.png��6'   5o        5p      $# Tùy Chỉnh��6   $" Small=�6�   ���	#FFDA542D$ 6/   �� *PressBtnSettingCommand+% 6Z   �� $ 
mainWindow��.& 5q      �� $��80��6   $��Images\Other.png��6'   5r        5s      $" Large=�6   $# 	Báo cáo��6)   ���	#FF009656$ 6:   �� *PressBtnReportCommand+% 6d   �� $ 
mainWindow��.& 5t      �� $��80��6   $��Images\Report.png��6'   5u        5v      -   5        +  Name$+ InfoTile��5v      $" 
ExtraLarge=�6.   ) . ,   ContentChangeInterval$, 00:00:05h�6�   -   AnimateContentChange- . .   ContentSource. 6B   �� *
AppInfos+��5w      �� 5x      $% Images/AcountInfoBackground.jpg��6%   /   ContentTemplate/ 5z      �� 5{      .R�5|      � .+�5}   "   �� 0 K� ZIndex$0 1��6,   $��Center=�6W   $��20q�6t   $	��Top=�6�   $��23(�6�   $��WrapWithOverflow=�6�   ��6>   �� *	Content+6�   �� 5~   "   $
��Fill=�6G   ��6(   �� *PhotoSource+6X   5      5�      5�      5�      5�      �� 5�   
   $��1��6   $��2��6   $��2��6.   $��Images/background1.png��6B   $
��Fill=�6b   $0 -1��6q   5�      5�      5�      