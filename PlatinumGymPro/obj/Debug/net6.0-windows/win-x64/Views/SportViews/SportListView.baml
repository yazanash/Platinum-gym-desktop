   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:PlatinumGymPro.Views.SportViewsPlatinumGymPro.Views.SportViews  5      P LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl 5	      E'clr-namespace:PlatinumGymPro.ConvertersPlatinumGymPro.Converters  5
      3    -PlatinumGymPro.Views.SportViews.SportListView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ?local-clr-namespace:PlatinumGymPro.Views.SportViews     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      QcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl   5	      :
converters'clr-namespace:PlatinumGymPro.Converters   5
      ���#fff  � 	Resources  5         	BoolToVisC   =PlatinumGymPro.Converters.InverseBooleanToVisibalityConverter ' #InverseBooleanToVisibalityConverter��%:   &	        &	      �� 5   
   6'     5   
   69   5      .��5      ��  �� CornerRadius$ 10��6   ���#EEE �� Padding$ 10q�61   ._�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    .+�5      �� $��2��6   $��RightToLeft=�6)   $ 10��6E   $
 15 5q�6W   $��0 0 0 5q�6f   ���#fff._�5      �  � ColumnDefinitions 5      �� 5       $
��auto �6+   �� 5!      $
��auto �6+   �� 5"      $��* �6+   �� 5#      $
��auto �6+   .+�5%      �� $��Center=�6   $��5 0 5 0q�6:   
 � Tag$ الترتيب حسب��6K     ComboBoxItemContainerStyle1#���  6]   $��0��6�   $��RightToLeft=�6�     ComboBoxStyle1#���  6�   .@�5&      �� $��ذكور��6(   �� 5'      $��اناث��6(   �� 5(      $��بدون مدرب��6(   �� 5)      $��غير فعال��6(   �� 5*      $��الكل��6(   �� 5+      $��فعال��6(   �� 5,      $!��منتهي الاشتراك��6(   �� 5-      $��غير فعال��6(   �� 5.      $��ديون��6(   5/      �� 50      $��Center=�6   #���  6:   $ التصنيف حسب��6}   $��0��6�   $��1��6�   $��RightToLeft=�6�   #���  6�   .@�51      �� $��ذكور��6(   �� 52      $��اناث��6(   �� 53      $��بدون مدرب��6(   �� 54      $��غير فعال��6(   �� 55      $��الكل��6(   �� 56      $��فعال��6(   �� 57      $!��منتهي الاشتراك��6(   �� 58      $��غير فعال��6(   �� 59      $��ديون��6(   5:      � 5;      $��3��6    5<      �� 5=      $
��auto �6/   �� 5>      $
��auto �6/   �� 5?      $
��auto �6/   .+�5B      �� $��0��6"   $	��5 0q�62   $��LeftToRight=�6?    
 AddBtn#��[ 6   ��6[   �� *AddSportCommand+.��5C      ��  �� Orientation$ 
Horizontal=�6)   .+�5E   "   �� $��أضافة رياضة��6,   .  (MahApps.Metro.IconPacks.PackIconMaterial  5F   "      Kind$
 Plus=�68   $��11��5G   (   $��11��5H   (   $��8 0 0 1q�5I   (   $��Center=�5J   (   5K      5L      �� 5M      $��1��6!   $��1��61   $��50��6c   $��LeftToRight=�6o   $	��5 0q�6�   $��Center=�6�   #��[ 6�   ��6>   �� *AddPlayerCommand+.��5O      �� $ 
Horizontal=�6)   .+�5P   "     $ 	FileExcel=�68   5Q      5R      �� 5S      $��2��6!   $��1��61   $��LeftToRight=�6d   $	��5 0q�6�   $��50��6�   #��[ 6�   ��6>   �� *AddPlayerCommand+.��5U      �� $ 
Horizontal=�6)   .+�5V   "     $ Printer=�68   5W      5X      5Y      5]      5_      �� 5d      ���#FFF$ 20��6(   $��4��6:   $
��5 10q�6G   $ 5q�6U   ._�5e      � $��3��6   .+�5f      *  $LoadingSpinnerControl.LoadingSpinner     Diameter$	 100Q�5h      	   	Thickness$	 3Q�6    
   Color
 �#C14E00   	IsLoading 5g      �� *	IsLoading+5h   .   � 5i      y�6   �� *	IsLoading+ �� 	Converter# [  5j      �� 5k      $	��13* �6/   �� 5l      $	��20* �6/   �� 5m      $��7* �6/   .+�5p      �� $
��Left=�6B   
���  ��$��2��6�   $��	140,0,0,0q�6�   ��6$   �� *ErrorMessage+y�6]   �� *HasErrorMessage+# [  6�   &   System.Windows.Controls.DataGrid  5r      -   5          Name$ PlayerDataGrid��5r   �   $��RightToLeft=�6�     DataGridStyle1#���  6�     DataGridCellStyle1   	CellStyle# �  6
    DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6;    DataGridRowStyle1   RowStyle# �  6|  $��3��6�  y�6$   �� *HasErrorMessage+# [ ��6�   �� *	SportList+   Columns 5s      0  *System.Windows.Controls.DataGridTextColumn  5t   "   ,  &System.Windows.Controls.DataGridColumn   Header$ #��65      
IsReadOnly$
 True��6@      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 5u   %      CanUserResize$ False��5w   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5v   %   �� *Id+5w   %   4	  .System.Windows.Controls.DataGridTemplateColumn	  5y   "   $ اسم الرياضة��69   $ * 6N   $
 True��6X    	  CellTemplate 5z   &   �� 5{   *   .R�5|   .   �� $ 
Horizontal=�69   .+�5}   2   �� $��Center=�6W   ��6<   �� *	SportName+6W   5~   /   5   +   5�   #     5�   "   $ الاشتراك��65   $
 True��6G   $ * 5�   %    5�   &   �� *Price+5�   %     5�   "   $0 *ايام التدريب الاسبوعية��65   $
 True��6U   $ * 5�   %    5�   &   �� *
DaysInWeek+5�   %     5�   "   $# الاشتراك اليومي��65   $
 True��6N   $ * 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $&  عدد ايام الاشتراك��65   $
 True��6P   $ * 5�   %    5�   &   �� *	DaysCount+5�   %   	  5�   "   $ عمليات��69   $ * 6I   $
 True��6S    5�   &   �� 5�   *   .R�5�   .   �� $ 
Horizontal=�69   .+�5�   2   ��  	 GridEditBtn#��[	 6Y   ��69   �� *EditCommand+.��5�   6     $ Pencil=�6L    
 GridBtnIcon#��[
 6Z   5�   3   �� 5�   2     GridremoveBtn#��[ 6[   ��69   �� *DeleteCommand+.��5�   6     $ DeleteOutline=�6L   #��[
 6b   5�   3   5�   /   5�   +   5�   #   5�      5�      5�      5�      5�      5�      5�      