   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:PlatinumGymPro.Views.MetricsPlatinumGymPro.Views.Metrics  5      P LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl 5	      E'clr-namespace:PlatinumGymPro.ConvertersPlatinumGymPro.Converters  5
      1    +PlatinumGymPro.Views.Metrics.MetricListView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:PlatinumGymPro.Views.Metrics     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      QcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl   5	      :
converters'clr-namespace:PlatinumGymPro.Converters   5
        � 	Resources  5         	BoolToVisC   =PlatinumGymPro.Converters.InverseBooleanToVisibalityConverter ' #InverseBooleanToVisibalityConverter��%:   &	        &	      �� 5   
   6'     5   
   69   5      .��5      ��  �� CornerRadius$ 10��6   ���#EEE �� Padding$ 10q�61   ._�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    .+�5      �� $��2��6   $��RightToLeft=�6)   $ 10��6E   $
 15 5q�6W   $��0 0 0 5q�6f   ���#fff._�5      �  � ColumnDefinitions 5      �� 5      $
��auto �6+   �� 5       $
��auto �6+   �� 5!      $��* �6+   �� 5"      $
��auto �6+   .+�5%      �� $
��Left=�6!    �� Orientation$ 
Horizontal=�67   $��Center=�6P   .+�5&      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 
ArrowRight=�60   $��20��6B   $��20��6M   $��0 0 15 0q�6Y   $��Center=�6k   ���#C14E006�   �� 5'      $%��اللاعبين / قياسات��6$   $��18(�6=   $��Center=�6K   ���#C14E006f   5(      � 5)      $��3��6    5*      �� 5+      $
��auto �6/   �� 5,      $
��auto �6/   �� 5-      $
��auto �6/   .+�50      �� $��0��6"   $	��5 0q�62   $��LeftToRight=�6?    
 AddBtn#��[ 6   ��6[   �� *AddSportCommand+.��51      �� $ 
Horizontal=�6)   .+�53   "   �� $��أضافة قياسات��6,     54   "   $
 Plus=�68   $��11��55   (   $��11��56   (   $��8 0 0 1q�57   (   $��Center=�58   (   59      5:      �� 5;      $��1��6!   $��1��61   $��50��6c   $��LeftToRight=�6o   $	��5 0q�6�   $��Center=�6�   #��[ 6�   ��6>   �� *AddPlayerCommand+.��5=      �� $ 
Horizontal=�6)   .+�5>   "     $ 	FileExcel=�68   5?      5@      �� 5A      $��2��6!   $��1��61   $��LeftToRight=�6d   $	��5 0q�6�   $��50��6�   #��[ 6�   ��6>   �� *AddPlayerCommand+.��5C      �� $ 
Horizontal=�6)   .+�5D   "     $ Printer=�68   5E      5F      5G      5K      5M      �� 5R      ���#FFF$ 20��6(   $��4��6:   $
��5 10q�6G   $ 5q�6U   ._�5S      � $��3��6   .+�5T      *  $LoadingSpinnerControl.LoadingSpinner     Diameter$	 100Q�5V         	Thickness$ 3Q�6    	   Color	 �#C14E00
   	IsLoading
 5U      �� *	IsLoading+5V   .   � 5W      y�6   �� *	IsLoading+ �� 	Converter# [  5X      �� 5Y      $	��13* �6/   �� 5Z      $	��20* �6/   �� 5[      $��7* �6/   .+�5^      �� $
��Left=�6B   
���  ��$��2��6�   $��	140,0,0,0q�6�   ��6$   �� *ErrorMessage+y�6]   �� *HasErrorMessage+# [  6�   &   System.Windows.Controls.DataGrid  5`      -   5          Name$ PlayerDataGrid��5`   �   $   HorizontalScrollBarVisibility$
 Auto=�6#   $��RightToLeft=�6�     DataGridStyle1#���  6    DataGridCellStyle1   	CellStyle# �  6/    DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6`    DataGridRowStyle1   RowStyle# �  6�  $��3��6�  y�6I   �� *HasErrorMessage+# [ ��6�   �� *	SportList+   Columns 5a      0  *System.Windows.Controls.DataGridTextColumn  5b   "   ,  &System.Windows.Controls.DataGridColumn   Header$ #��65      
IsReadOnly$
 True��6@      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 5c   %      CanUserResize$ False��5e   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5d   %   �� *Id+5e   %   4	  .System.Windows.Controls.DataGridTemplateColumn	  5g   "   $ التاريخ��69   $
 auto 6J   $
 True��6W    	  CellTemplate 5h   &   �� 5i   *   .R�5j   .   �� $ 
Horizontal=�69   .+�5k   2   �� $��Center=�6W   ��6<   �� *	SportName+6W   5l   /   5m   +   5o   #     5p   "   $ 
الوزن��65   $
 True��6D   $
 auto 5r   %    5q   &   �� *Price+5r   %     5t   "   $ 
الطول��65   $
 True��6D   $
 auto 5v   %    5u   &   �� *
DaysInWeek+5v   %     5x   "   $ الذراع الايمن��65   $
 True��6L   $
 auto 5z   %    5y   &   �� *
DailyPrice+5z   %     5|   "   $ الذراع الايسر��65   $
 True��6L   $
 auto 5~   %    5}   &   �� *
DailyPrice+5~   %     5�   "   $ الساعد الايمن��65   $
 True��6L   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $ الساعد الايسر��65   $
 True��6L   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $ الفخذ الايمن��65   $
 True��6K   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $ الفخذ الايسر��65   $
 True��6K   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $ الساق الايمن��65   $
 True��6K   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $ الساق الايسر��65   $
 True��6K   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $ الرقبة��65   $
 True��6E   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $ الاكتاف��65   $
 True��6F   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $ 
الصدر��65   $
 True��6D   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $ 
الخصر��65   $
 True��6D   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %     5�   "   $ 
الورك��65   $
 True��6D   $
 auto 5�   %    5�   &   �� *
DailyPrice+5�   %   	  5�   "   $ عمليات��69   $ * 6I   $
 True��6S    5�   &   �� 5�   *   .R�5�   .   �� $ 
Horizontal=�69   .+�5�   2   ��   GridEditBtn#��[ 6Y   ��69   �� *EditCommand+.��5�   6     $ Pencil=�6L     GridBtnIcon#��[ 6Z   5�   3   �� 5�   2    	 GridremoveBtn#��[	 6[   ��69   �� *DeleteCommand+.��5�   6     $ DeleteOutline=�6L   #��[ 6b   5�   3   5�   /   5�   +   5�   #   5�      5�      5�      5�      5�      5�      5�      