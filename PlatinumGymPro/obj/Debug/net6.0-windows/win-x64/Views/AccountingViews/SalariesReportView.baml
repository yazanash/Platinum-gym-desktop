   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:PlatinumGymPro.Views.AccountingViews$PlatinumGymPro.Views.AccountingViews  5      P LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl 5	      E'clr-namespace:PlatinumGymPro.ConvertersPlatinumGymPro.Converters  5
      =    7PlatinumGymPro.Views.AccountingViews.SalariesReportView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Dlocal2clr-namespace:PlatinumGymPro.Views.AccountingViews     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      QcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl   5	      :
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
��auto �6+   .+�5%      :  4System.Windows.Controls.Primitives.DatePickerTextBox  $��0��6(   (  "System.Windows.Controls.DatePicker  5&      $��1��6!   � 5'      $��3��6    5(      �� 5)      $
��auto �6/   �� 5*      $
��auto �6/   �� 5+      $
��auto �6/   .+�5/      �� $��1��6!   $��1��61   $��50��6c   $��LeftToRight=�6o   $	��5 0q�6�   $��Center=�6�    
 AddBtn#��[ 6�   ��6>   �� *AddPlayerCommand+.��51      ��  �� Orientation$ 
Horizontal=�6)   .+�52   "   .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 	FileExcel=�68   53      54      �� 55      $��2��6!   $��1��61   $��LeftToRight=�6d   $	��5 0q�6�   $��50��6�   #��[ 6�   ��6>   �� *AddPlayerCommand+.��57      �� $ 
Horizontal=�6)   .+�58   "     $ Printer=�68   59      5:      5;      5?      5A      �� 5F      ���#FFF$ 20��6(   $��4��6:   $
��5 10q�6G   $ 5q�6U   ._�5G      � $��3��6   .+�5H      *  $LoadingSpinnerControl.LoadingSpinner     Diameter$	 100Q�5J         	Thickness$ 3Q�6    	   Color	 �#C14E00
   	IsLoading
 5I      �� *	IsLoading+5J   .   � 5K      y�6   �� *	IsLoading+ �� 	Converter# [  5L      �� 5M      $	��13* �6/   �� 5N      $	��20* �6/   �� 5O      $��7* �6/   .+�5R      �� $
��Left=�6B   
���  ��$��2��6�   $��	140,0,0,0q�6�   ��6$   �� *ErrorMessage+y�6]   �� *HasErrorMessage+# [  6�   &   System.Windows.Controls.DataGrid  5T      -   5          Name$ PlayerDataGrid��5T   �   $��RightToLeft=�6�     DataGridStyle1#���  6�     DataGridCellStyle1   	CellStyle# �  6
    DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6;    DataGridRowStyle1   RowStyle# �  6|  $��3��6�  y�6$   �� *HasErrorMessage+# [ ��6�   �� *	SportList+   Columns 5U      0  *System.Windows.Controls.DataGridTextColumn  5V   "   ,  &System.Windows.Controls.DataGridColumn   Header$ #��65      
IsReadOnly$
 True��6@      Width5	  /System.Windows.Controls.DataGridLengthConverter$
 auto	 5W   %      CanUserResize$ False��5Y   %   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 5X   %   �� *Id+5Y   %   4  .System.Windows.Controls.DataGridTemplateColumn  5[   "   $ اسم الموظف��69   $ *	 6M   $
 True��6W      CellTemplate 5\   &   �� 5]   *   .R�5^   .   �� $ 
Horizontal=�69   .+�5_   2   �� $��Center=�6W   ��6<   �� *	SportName+6W   5`   /   5a   +   5c   #     5d   "   $ الدفعة��65   $
 True��6E   $ *	 5f   %    5e   &   �� *Price+5f   %     5h   "   $ الوظيفة��65   $
 True��6F   $ *	 5j   %    5i   &   �� *Price+5j   %     5l   "   $ التاريخ��65   $
 True��6F   $ *	 5n   %    5m   &   �� *
DaysInWeek+5n   %     5s   "   $ عمليات��69   $ *	 6I   $
 True��6S    5t   &   �� 5u   *   .R�5w   .   �� $ 
Horizontal=�69   .+�5x   2   ��   GridEditBtn#��[ 6Y   ��69   �� *EditCommand+.��5y   6     $ Pencil=�6L     GridBtnIcon#��[ 6Z   5z   3   �� 5{   2    	 GridremoveBtn#��[	 6[   ��69   �� *DeleteCommand+.��5|   6     $ DeleteOutline=�6L   #��[ 6b   5}   3   5~   /   5   +   5�   #   5�      5�      5�      5�      5�      5�      5�      