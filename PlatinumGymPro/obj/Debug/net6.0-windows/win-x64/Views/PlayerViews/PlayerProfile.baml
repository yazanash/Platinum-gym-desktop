   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:PlatinumGymPro.Views.PlayerViews PlatinumGymPro.Views.PlayerViews  5      A%clr-namespace:PlatinumGymPro.ControlsPlatinumGymPro.Controls  5      E'clr-namespace:PlatinumGymPro.ComponentsPlatinumGymPro.Components  5      M+clr-namespace:PlatinumGymPro.utlis.ControlsPlatinumGymPro.utlis.Controls  5	      Q-clr-namespace:PlatinumGymPro.utlis.ComponentsPlatinumGymPro.utlis.Components  5
      E'clr-namespace:PlatinumGymPro.ConvertersPlatinumGymPro.Converters  5      P LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl 5      4    .PlatinumGymPro.Views.PlayerViews.PlayerProfile   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      @local.clr-namespace:PlatinumGymPro.Views.PlayerViews     5      6ctrl%clr-namespace:PlatinumGymPro.Controls     5      7cdr'clr-namespace:PlatinumGymPro.Components     5      =ctrls+clr-namespace:PlatinumGymPro.utlis.Controls     5	      >comp-clr-namespace:PlatinumGymPro.utlis.Components     5
      >
converters'clr-namespace:PlatinumGymPro.Converters     5      UcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      $��RightToLeft=�5      
������   � 	Resources  5         	BoolToVisC   =PlatinumGymPro.Converters.InverseBooleanToVisibalityConverter ' #InverseBooleanToVisibalityConverter��%:   &	        &	      �� 5   
   6'     5   
   69   5      .��5      ��  �� CornerRadius$ 10��6   ���#EEE �� Padding$ 10q�61   ._�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $��* �6    .+�5       �� $��2��6   $ 10��6*   $	 5 5q�6<   $��0 0 0 5q�6J   ���#fff._�5!      ]� .+�5&      -   'PlatinumGymPro.utlis.Controls.PlayerBar  $��Center=�6&   5'      5(      � 5*      $��1��6    � ColumnDefinitions 5+      �� 5,      $
��auto �6'   �� 5-      $��* �6'   .+�5@      �� ���#fff$ 10��6+   $��0��6=   $��2��6M   $��0��6_   $ 5q�6m   $��5q�6z   ._�5B      &    PlatinumGymPro.Controls.InfoCard  $	��Top=�6$   5C      � 5I      $��1��6    5J      �� 5K      $
��auto �6(   �� 5L      $��* �6(    5N      �� 5O      $��* �6+   �� 5P      $��* �6+   �� 5Q      $��* �6+   .+�5T      6   0PlatinumGymPro.utlis.Components.PlayerMetricCard  $��0��6,   $��0��69     5U      $��0��6,   $��1��69     5V      $��0��6,   $��2��69   �� 5i      ���#FFF$ 10��60   $��1��6B   $��0��6O   $��3��6_   $
��5 10q�6s   $ 5q�6�   ._�5j      � $��4��6    .+�5k      *  $LoadingSpinnerControl.LoadingSpinner     Diameter$	 100Q�5m         	Thickness$ 3Q�6       Color �#C14E00   	IsLoading 5l      �� *	IsLoading+5m   .   � 5n      y�6#   �� *	IsLoading+	 �� 	Converter#	 [  5o   "   �� 5p   &   $	��13* �67   �� 5q   &   $	��20* �67   �� 5r   &   $��7* �67   .+�5u   "   �� $
��Left=�6J   
���  ��$��2��6�   $��	140,0,0,0q�6�   ��6,   �� *ErrorMessage+y�6e   �� *HasErrorMessage+#	 [  6�   &   System.Windows.Controls.DataGrid  5w   "   -   5        
  Name$
 PlayerDataGrid��5z   %   $��RightToLeft=�5x   %      CanUserReorderColumns$
 True��5y   %     DataGridStyle1#���  5z   =     DataGridCellStyle1   	CellStyle# �  5{   %     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  5|   %     DataGridRowStyle1   RowStyle# �  6f   $��3��6�   y�5w   -   �� *HasErrorMessage+#	 [ ��5x   A   �� *SubscriptionList+   Columns 5~   &   0  *System.Windows.Controls.DataGridTextColumn  5   *   ,  &System.Windows.Controls.DataGridColumn   Header$ #��6=      
IsReadOnly$
 True��6H      Width5	  /System.Windows.Controls.DataGridLengthConverter$
 auto	 5�   %      CanUserResize$ False��5�   %   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 5�   %   �� *Id+5�   %   4  .System.Windows.Controls.DataGridTemplateColumn  5�   *   $ الرياضة��6A   $
 1.5*	 6R   $
 True��6_      CellTemplate 5�   .   �� 5�   2   .R�5�   6   ��  �� Orientation$ 
Horizontal=�6A   .+�5�   :   �� $��10 0 0 0q�6D   $��Center=�6q   ��6V   �� *	SportName+6q   5�   7   5�   3   5�   +     5�   *   $ المدرب��6=   $
 True��6M   $ *	 5�   %    5�   &   �� *	Trainer+5�   %     5�   *   $! تاريخ الاشتراك��6=   $
 True��6U   $ *	 5�   %    5�   &   �� *
RollDate+5�   %     5�   *   $ 
السعر��6=   $
 True��6L   $
 auto	 5�   %    5�   &   �� *Price+5�   %     5�   *   $" السعر بعد الحسم��6=   $
 True��6V   $
 auto	 5�   %    5�   &   �� *PriceAfterOffer+5�   %     5�   *   $ الحالة��6A   $
 1.5*	 6Q   $
 True��6^    5�   .   �� 5�   2   .R�5�   6   �� $	��100��6=   $	 5 3q�6I   $��0 0 0 0q�6W   $ 10��6�   ��6h   �� *IsPaidColor+._�5�   :   �� $��Center=�6D   ���#fff$��0 0 0 0q�6s   $��Center=�6�   ��6�   �� *IsPaid+6�   5�   7   5�   3   5�   +     5�   *   $, &تاريخ نهاية الاشتراك��6=   $
 True��6[   $ *	 5�   %    5�   &   �� *	EndDate+5�   %     5�   *   $ عمليات��6A   $
 auto	 6Q   $
 True��6^    5�   .   �� 5�   2   .R�5�   6   ��  ��Name$
 menu��6Z   $ 
Horizontal=�6A   .+�5�   :   ��   GridremoveBtn#��[ 6a   ��6A   �� *EditCommand+.��5�   6   .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ Pencil=�6L     GridBtnIcon#��[ 6Z   5�   3   5�   7   5�   3   5�   +   5�   #   5�      5�      5�      5�      5�      5�      5�      5�      