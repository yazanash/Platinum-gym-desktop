   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:PlatinumGymPro.Views.PlayerViews PlatinumGymPro.Views.PlayerViews  5      E'clr-namespace:PlatinumGymPro.ComponentsPlatinumGymPro.Components  5	      E'clr-namespace:PlatinumGymPro.ConvertersPlatinumGymPro.Converters  5
      P LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl 5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      6    0PlatinumGymPro.Views.PlayerViews.PlayersListView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      @local.clr-namespace:PlatinumGymPro.Views.PlayerViews     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag	 cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks  	 5      2cs'clr-namespace:PlatinumGymPro.Components  	 5	      :
converters'clr-namespace:PlatinumGymPro.Converters  	 5
      QcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl  	 5      5System&clr-namespace:System;assembly=mscorlib  	 5      
������   � 	Resources  5         	BoolToVisC   =PlatinumGymPro.Converters.InverseBooleanToVisibalityConverter ' #InverseBooleanToVisibalityConverter��%:   &	        &	      �� 5   
   6'     5   
   69   5      .��5      �� -   5         ��Name$ parent��5   >    �� CornerRadius$ 10��6   ���#EEE �� Padding$ 10q�61   ._�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $��* �6    .+�5"      �� $��2��6   $��RightToLeft=�6)   $ 10��6E   $
 15 5q�6W   $��0 0 0 5q�6f   ���#fff._�5%      �  � ColumnDefinitions 5&      �� 5'      $��* �6+   �� 5(      $
��auto �6+   �� 5)      $
��auto �6+   �� 5*      $
��auto �6+   �� 5+      $
��auto �6+   �� 5,      $
��auto �6+    5.      �� 5/      $
��auto �6(   .+�51      �� $ 20��6   $
��10 5q�6/   $��0��6>   $��0��6L   $��2��6\   $	��Top=�6p   ._�52      -   'PlatinumGymPro.Components.CustomTextBox     Hint$ ابحث هنا��6+   53      �� 54      $��Center=�55      $��5 0 5 0q�6:   
 � Tag$ الترتيب حسب��6K     ComboBoxItemContainerStyle1#���  57      $��2��58      $��1��59      $��RightToLeft=�6,     ComboBoxStyle1#���  6H    �� SelectedItem 54      �� *SelectedOrderBy+	 �� UpdateSourceTrigger$	 PropertyChanged=���56      �� *OrderByList+��5:      �� 5;      .R�5<   "   �� ��6/   �� *	Content+5=      5?      �� 5@      $��Center=�5A       #���  5B       $ التصنيف حسب��5C       $��1��62   $��3��6?   $��RightToLeft=�6O   #���  6k    5@       �� *SelectedFilter+$	 PropertyChanged=���5A   ;   �� *FiltersList+��5D      �� 5E      .R�5F   "   �� ��6/   �� *	Content+5G      5I      �� 5J      $	��0 5q�6"   
 �� Orientation$
 
Horizontal=�6/   $��Center=�6H   $��4��6e   $��1��6u   .+�5P      �� $��0q�6!   ���#444$ 10��6H   $	 5 0q�6Z   $	��5 0q�6h   ._�5Q      �� $
 
Horizontal=�6)   $	��5 0q�6B   $��0��6O   .+�5R   "   . 	 (MahApps.Metro.IconPacks.PackIconMaterial  ���#C14E00$��Center=�6M   $��0 0 5 0q�6h      Kind$ 	HumanMale=�6z   $��30��6�   $��30��6�   �� 5S   "   $��Center=�6,   $��Center=�6I   $��18(�6d   ��6r   �� *PlayersMaleCount+5T      5U      �� 5V      $��0q�6!   ���#444$ 10��6H   $ 5q�6Z   $	��5 0q�6f   ._�5W      �� $
 
Horizontal=�6)   $	��5 0q�6B   $��0��6O   .+�5X   "     ���#C14E00$��Center=�6M   $��0 0 5 0q�6h   $ HumanFemale=�6z   $��30��6�   $��30��6�   �� 5Y   "   $��Center=�6,   $��Center=�6I   $��18(�6d   ��6r   �� *PlayersFemaleCount+5Z      5[      �� 5\      $��0q�6!   ���#444$ 10��6H   $ 5q�6Z   $	��5 0q�6f   ._�5]      �� $
 
Horizontal=�6)   $	��5 0q�6B   $��0��6P   .+�5^   "     ���#C14E00$��Center=�6M   $��0 0 5 0q�6h   $ AccountGroup=�6z   $��30��6�   $��30��6�   �� 5_   "   $��Center=�6,   $��Center=�6I   $��18(�6d   ��6r   �� *PlayersCount+5`      5a      5c      � 5e      $��5��6    5f      �� 5g      $
��auto �6/   �� 5h      $
��auto �6/   �� 5i      $
��auto �6/   .+�5k      �� $��0��6!   $	��5 0q�61   $��LeftToRight=�6e    
 AddBtn#��[ 6�   ��6?   �� *AddPlayerCommand+.��5m      �� $
 
Horizontal=�6)   .+�5o   "   �� $��أضافة لاعب��6,     5p   "   $
 Plus=�68   $��11��5q   (   $��11��5r   (   $��8 0 0 1q�5s   (   $��Center=�5t   (   5u      5w      �� 5x      $��1��6!   $��1��61   $��50��6c   $��LeftToRight=�6o   $	��5 0q�6�   $��Center=�6�   #��[ 6�   ��6>   �� *AddPlayerCommand+.��5z      �� $
 
Horizontal=�6)   .+�5{   "     $ 	FileExcel=�68   5|      5}      �� 5~      $��2��6!   $��1��61   $��LeftToRight=�6d   $	��5 0q�6�   $��50��6�   #��[ 6�   ��6>   �� *AddPlayerCommand+.��5�      �� $
 
Horizontal=�6)   .+�5�   "     $ Printer=�68   5�      5�      5�      5�      5�      �� 5�      ���#FFF$ 10��6(   $��4��6:   $
��5 10q�6G   $ 5q�6U   ._�5�      � $��4��6   .+�5�      *  $LoadingSpinnerControl.LoadingSpinner     Diameter$	 100Q�5�         	Thickness$ 3Q�6       Color �#C14E00   	IsLoading 5�      �� *	IsLoading+5�   .   � 5�      y�6   �� *	IsLoading+ �� 	Converter# [  5�      �� 5�      $	��13* �6/   �� 5�      $	��20* �6/   �� 5�      $��7* �6/   .+�5�      �� $
��Left=�6B   
���  ��$��2��6�   $��	140,0,0,0q�6�   ��6$   �� *ErrorMessage+y�6]   �� *HasErrorMessage+# [  6�   &   System.Windows.Controls.DataGrid  5�      -   5          Name$ PlayerDataGrid��5�   %   $��RightToLeft=�5�   %      CanUserReorderColumns$
 True��5�   %     DataGridStyle1#���  5�   =     DataGridCellStyle1   	CellStyle# �  5�   %     DataGridColumnHeaderStyle1   ColumnHeaderStyle# �  5�   %     DataGridRowStyle1   RowStyle# �  6f   $��3��6�   y�5�   %   �� *HasErrorMessage+# [ ��5�   A   �� *
PlayerList+   Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�   "   ,  &System.Windows.Controls.DataGridColumn   Header$ #��65      
IsReadOnly$
 True��6@      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 5�   %      CanUserResize$ False��5�   %   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 5�   %   �� *Id+5�   %   4
  .System.Windows.Controls.DataGridTemplateColumn
  5�   "   $ 
الاسم��69   $
 1.5* 6H   $
 True��6U    
  CellTemplate 5�   &   �� 5�   *   .R�5�   .   �� $
 
Horizontal=�69   .+�5�   2   �� $��10��69   $��10��6D   $��0 0 0 0q�6P   $ 50��6�   ��6a   �� *IsSubscribed+5�   3   �� 5�   2   $��10 0 0 0q�6<   $��Center=�6h   ��6N   �� *
FullName+6h   5�   /   5�   +   5�   #     5�   "   $ تاريخ الميلاد��65   $
 True��6L   $
 auto 5�   %    5�   &   �� *	BirthDate+5�   %     5�   "   $ 
الجنس��65   $
 True��6D   $
 auto 5�   %    5�   &   �� *
Gendertext+5�   %     5�   "   $! تاريخ الاشتراك��65   $
 True��6M   $ * 5�   %    5�   &   �� *SubscribeDate+5�   %     5�   "   $, &تاريخ نهاية الاشتراك��65   $
 True��6S   $ * 5�   %    5�   &   �� *SubscribeEndDate+5�   %     5�   "   $# الايام المتبقية��65   $
 True��6N   $
 auto 5�   %    5�   &   �� *	DayLeft+5�   %     5�   "   $ رصيد الحساب��65   $
 True��6J   $
 auto 5�   %    5�   &   �� *	Balance+5�   %   
  5�   "   $ عمليات��69   $
 auto 6I   $
 True��6V    5�   &   �� 5�   *   .R�5�   .   ��  ��Name$
 menu��6R   $
 
Horizontal=�69   .+�5�   2   ��  	 GridremoveBtn#��[	 6`   ��69   �� *OpenProfileCommand+.��5�   6     $ 	OpenInNew=�6L    
 GridBtnIcon#��[
 6^   5�   3   5�   /   5�   +   5�   #   5�      5�      5�      5�      5�      5�      5�      