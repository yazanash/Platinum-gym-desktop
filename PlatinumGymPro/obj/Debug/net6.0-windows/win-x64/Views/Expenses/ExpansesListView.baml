   M S B A M L   `   `   `  ����P  LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl  5      I EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:PlatinumGymPro.ConvertersPlatinumGymPro.Converters 5	      M+clr-namespace:PlatinumGymPro.Views.ExpensesPlatinumGymPro.Views.Expenses 5
      M+clr-namespace:PlatinumGymPro.utlis.ControlsPlatinumGymPro.utlis.Controls 5      4   .PlatinumGymPro.Views.Expenses.ExpansesListView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      QcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl   5      :
converters'clr-namespace:PlatinumGymPro.Converters   5	      9local+clr-namespace:PlatinumGymPro.Views.Expenses   5
      7nav+clr-namespace:PlatinumGymPro.utlis.Controls   5      ���#fff  � 	Resources  5         	BoolToVisC  =PlatinumGymPro.Converters.InverseBooleanToVisibalityConverter ' #InverseBooleanToVisibalityConverter��%:   &	        &	      �� 5   
   6'     5   
   69   5      .��5      ��  �� CornerRadius$ 10��6   ���#EEE �� Padding$ 10q�61   ._�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    .+�5O      1  +PlatinumGymPro.utlis.Controls.HorizontalNav  �� 5Q      ���#FFF$ 20��6(   $��4��6:   $
��5 10q�6G   $ 5q�6U   ._�5R      � $��3��6   .+�5S      *   $LoadingSpinnerControl.LoadingSpinner     Diameter$	 100Q�5U         	Thickness$ 3Q�6       Color �#C14E00   	IsLoading 5T      �� *	IsLoading+5U   .   � 5V      y�6   �� *	IsLoading+ �� 	Converter# [ 	 � ColumnDefinitions	 5W      �� 5X      $	��13* �6/   �� 5Y      $	��20* �6/   �� 5Z      $	��133 �6/   .+�5]      �� $
��Left=�6B   
���  ��$��2��6�   $��	140,0,0,0q�6�   ��6$   �� *ErrorMessage+y�6]   �� *HasErrorMessage+# [  6�   &   System.Windows.Controls.DataGrid  5_      -   5        
  Name$
 PlayerDataGrid��5_   �   $��RightToLeft=�6�     DataGridStyle1#���  6�     DataGridCellStyle1   	CellStyle# �  6    DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6=    DataGridRowStyle1   RowStyle# �  6~  $��3��6�  y�6$   �� *HasErrorMessage+# [ ��6�   �� *ExpenseList+   Columns 5`      0  *System.Windows.Controls.DataGridTextColumn  5a   "   ,  &System.Windows.Controls.DataGridColumn   Header$ #��65      
IsReadOnly$
 True��6@      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 5b   %      CanUserResize$ False��5d   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5c   %   �� *Id+5d   %   4	  .System.Windows.Controls.DataGridTemplateColumn	  5f   "   $ البيان��69   $ * 6I   $
 True��6S    	  CellTemplate 5g   &   �� 5h   *   .R�5i   .   ��  �� Orientation$ 
Horizontal=�69   .+�5j   2   �� $��Center=�6Y   ��6<   �� *Description+6Y   5k   /   5l   +   5n   #     5o   "   $ قيمة المصروف��65   $
 True��6K   $ * 5q   %    5p   &   �� *Value+5q   %     5s   "   $ التاريخ��65   $
 True��6F   $ * 5u   %    5t   &   �� *date+5u   %   	  5z   "   $ عمليات��69   $ * 6I   $
 True��6S    5{   &   �� 5|   *   .R�5~   .   �� $ 
Horizontal=�69   .+�5   2   ��   GridremoveBtn#��[ 6Y   ��69   �� *EditCommand+.��5�   6   .
  (MahApps.Metro.IconPacks.PackIconMaterial
   
  Kind$ Pencil=�6L     GridBtnIcon#��[ 6Z   5�   3   �� 5�   2   #��[ 6[   ��69   �� *DeleteCommand+.��5�   6   
  $ DeleteOutline=�6L   #��[ 6b   5�   3   5�   /   5�   +   5�   #   5�      5�      5�      5�      5�      5�      5�      