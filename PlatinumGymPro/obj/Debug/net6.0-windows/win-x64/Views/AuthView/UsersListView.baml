   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:PlatinumGymPro.Views.AuthViewPlatinumGymPro.Views.AuthView  5      P LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl 5	      E'clr-namespace:PlatinumGymPro.ConvertersPlatinumGymPro.Converters  5
      1    +PlatinumGymPro.Views.AuthView.UsersListView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =local+clr-namespace:PlatinumGymPro.Views.AuthView     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      QcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl   5	      :
converters'clr-namespace:PlatinumGymPro.Converters   5
      ���#fff  � 	Resources  5         	BoolToVisC   =PlatinumGymPro.Converters.InverseBooleanToVisibalityConverter ' #InverseBooleanToVisibalityConverter��%:   &	        &	      �� 5   
   6'     5   
   69   5      .��5      ��  �� CornerRadius$ 10��6   ���#EEE �� Padding$ 10q�61   ._�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    .+�5      �� $��2��6   $��RightToLeft=�6)   $ 10��6E   $
 15 5q�6W   $��0 0 0 5q�6f   ���#fff._�5      �  � ColumnDefinitions 5       �� 5!      $
��auto �6+   �� 5"      $
��auto �6+   �� 5#      $��* �6+   �� 5$      $
��auto �6+   .+�5&      � $��3��6    5'      �� 5(      $
��auto �6/   �� 5)      $
��auto �6/   �� 5*      $
��auto �6/   .+�5,      �� $��0��6"   $	��5 0q�62   $��LeftToRight=�6?    
 AddBtn#��[ 6�   ��6\   �� *AddTrainerCommand+.��5-      ��  �� Orientation$ 
Horizontal=�6)   .+�5/   "   �� $��أضافة مستخدم��6,   .  (MahApps.Metro.IconPacks.PackIconMaterial  50   "      Kind$
 Plus=�68   $��11��51   (   $��11��52   (   $��8 0 0 1q�53   (   $��Center=�54   (   55      56      57      5;      5=      �� 5B      ���#FFF$ 20��6(   $��4��6:   $
��5 10q�6G   $ 5q�6U   ._�5C      � $��3��6   .+�5D      *  $LoadingSpinnerControl.LoadingSpinner     Diameter$	 100Q�5F         	Thickness$ 3Q�6    	   Color	 �#C14E00
   	IsLoading
 5E      �� *	IsLoading+5F   .   � 5G      y�6   �� *	IsLoading+ �� 	Converter# [  5H      �� 5I      $	��13* �6/   �� 5J      $	��20* �6/   �� 5K      $��7* �6/   .+�5N      �� $
��Left=�6B   
���  ��$��2��6�   $��	140,0,0,0q�6�   ��6$   �� *ErrorMessage+y�6]   �� *HasErrorMessage+# [  6�   &   System.Windows.Controls.DataGrid  5P      -   5          Name$ PlayerDataGrid��5P   �   $��RightToLeft=�6�     DataGridStyle1#���  6�     DataGridCellStyle1   	CellStyle# �  6    DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  6=    DataGridRowStyle1   RowStyle# �  6~  $��3��6�  y�6$   �� *HasErrorMessage+# [ ��6�   �� *TrainerList+   Columns 5Q      0  *System.Windows.Controls.DataGridTextColumn  5R   "   ,  &System.Windows.Controls.DataGridColumn   Header$ #��65      
IsReadOnly$
 True��6@      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 5S   %      CanUserResize$ False��5U   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5T   %   �� *Id+5U   %   4	  .System.Windows.Controls.DataGridTemplateColumn	  5W   "   $ 
الاسم��69   $ * 6H   $
 True��6R    	  CellTemplate 5X   &   �� 5Y   *   .R�5Z   .   �� $ 
Horizontal=�69   .+�5[   2   �� $��Center=�6V   ��6<   �� *
FullName+6V   5\   /   5]   +   5_   #     5`   "   $ اسم المستخدم��65   $
 True��6K   $ * 5b   %    5a   &   �� *Phone+5b   %     5d   "   $! المسمى الوظيفي��65   $
 True��6M   $ * 5f   %    5e   &   �� *	BirthDate+5f   %   	  5h   "   $ عمليات��69   $ * 6I   $
 True��6S    5i   &   �� 5j   *   .R�5l   .   �� $ 
Horizontal=�69   .+�5m   2   ��   GridEditBtn#��[ 6Y   ��69   �� *EditCommand+.��5n   6     $ Pencil=�6L     GridBtnIcon#��[ 6Z   5o   3   �� 5p   2    	 GridremoveBtn#��[	 6[   ��69   �� *DeleteCommand+.��5q   6     $ DeleteOutline=�6L   #��[ 6b   5r   3   5s   /   5t   +   5v   #   5x      5y      5z      5{      5|      5}      5~      