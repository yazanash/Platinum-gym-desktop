   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:PlatinumGymPro.ViewsPlatinumGymPro.Views  5      E'clr-namespace:PlatinumGymPro.ConvertersPlatinumGymPro.Converters  5
      P LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl 6I   #    PlatinumGymPro.Views.HomeView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:PlatinumGymPro.Views     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      :
converters'clr-namespace:PlatinumGymPro.Converters   5
      QcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl   6I   ���#eff2f7  � 	Resources  5         	BoolToVisC   =PlatinumGymPro.Converters.InverseBooleanToVisibalityConverter ' #InverseBooleanToVisibalityConverter��%:   &	        &	      �� 5   
   6'     5   
   69   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $#��الصفحة الرئيسية��6   $��0��6+   $��SemiBold"�5      $��0 20 0 0q�5      $��Right=�5      ���#121518$��22(�5      �� 5    
    
 AddBtn#��[ 66   ��6   �� *AddPlayerCommand+.��5!      ��  �� Orientation$ 
Horizontal=�6   .+�5#      �� $��أضافة لاعب��6   .  (MahApps.Metro.IconPacks.PackIconMaterial  5$         Kind$
 Plus=�6(   $��11��5%   (   $��11��5&   (   $��8 0 0 1q�5'   (   $��Center=�5(   (   5)      5*      �� 5,   
   $��1��6   ���#dae2ea$��
 0 -1 0 10q�5-   )   $��2��5.      �� 5/   
   $��RightToLeft=�6   $��Right=�61   $��1��6M   $ 
Horizontal=�6Z   $��0 10 0 0q�6s   .+�50      �� $��اللاعبين��6    
 TabBtn#��[ 6(   �� 51      $��المدربين��6   #��[ 6(   �� 52      $��الرياضات��6   #��[ 6(   53      �� 55   
   $!��قائمة اللاعبين��6   $��3��6*   $��18(�67   $��SemiBold"�56      ���#121518$
��0 10q�57      $��Right=�58      $��Center=�60   � 59   
   $��4��6   .+�5:      *  $LoadingSpinnerControl.LoadingSpinner     Diameter$	 100Q�5<         	Thickness$ 3Q�6       Color �#C14E00   	IsLoading 5;      �� *
IsLoaded+5<   .   � 5=      y�6   �� *
IsLoaded+ �� 	Converter# [ .+�5?      �� $��Right=�6:   
���  ����6   �� *ErrorMessage+y�6V   �� *HasErrorMessage+# [  6�   &   System.Windows.Controls.DataGrid  5A      -   5        	  Name$	 PlayerDataGrid��5A   �   $��RightToLeft=�6�     DataGridStyle1#���  6�     DataGridCellStyle1
   	CellStyle#
 �  6�     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  60    DataGridRowStyle1   RowStyle# �  6q  y�6   �� *HasErrorMessage+# [ ��6�   �� *	Players+   Columns 5B      0  *System.Windows.Controls.DataGridTextColumn  5C      ,  &System.Windows.Controls.DataGridColumn   Header$ #��6-      
IsReadOnly$
 True��68      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 5D   %      CanUserResize$ False��5F   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5E   %   �� *Id+5F   %   4	  .System.Windows.Controls.DataGridTemplateColumn	  5H      $ 
الاسم��61   $ * 6@   $
 True��6J    	  CellTemplate 5I      �� 5J   "   .R�5K   &   �� $ 
Horizontal=�61   .+�5L   *   �� $��25��61   $��25��6<   $��0 0 10 0q�6H   ���#C14E00 �� CornerRadius$ 50��6o   ._�5M   .   �� $	��...��68   $��Center=�6C   $��Center=�6^   
�������$��0 0 0 1q�5N   0   5O   +   �� 5P   *   $��Center=�6N   ��64   �� *
FullName+6N   5Q   '   5R   #   5T        5U      $ تاريخ الميلاد��6-   $
 True��6D   $ * 5W   %    5V   &   �� *	BirthDate+5W   %     5Y      $! تاريخ الاشتراك��6-   $
 True��6E   $ * 5[   %    5Z   &   �� *SubscribeDate+5[   %     5]      $, &تاريخ نهاية الاشتراك��6-   $
 True��6K   $ * 5_   %    5^   &   �� *SubscribeEndDate+5_   %   	  5a      $ عمليات��61   $
 auto 6A   $
 True��6N    5b      �� 5c   "   .R�5e   &   �� $ 
Horizontal=�61   .+�5f   *   ��   GridEditBtn#��[ 61   .��5g   .     $ Pencil=�6D    	 GridBtnIcon#��[	 6R   5h   +   �� 5i   *    
 GridremoveBtn#��[
 61   .��5j   .     $ DeleteOutline=�6D   #��[	 6Z   5k   +   5l   '   5m   #   5o      5q      5r      5s      5t      5u      