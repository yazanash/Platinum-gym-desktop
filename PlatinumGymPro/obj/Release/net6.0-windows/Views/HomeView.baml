   M S B A M L   `   `   `  ���� I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:PlatinumGymPro.ViewsPlatinumGymPro.Views  E'clr-namespace:PlatinumGymPro.ConvertersPlatinumGymPro.Converters  P LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl #    PlatinumGymPro.Views.HomeView   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     4local"clr-namespace:PlatinumGymPro.Views     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   :
converters'clr-namespace:PlatinumGymPro.Converters   QcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl   ���#eff2f7  � 	Resources     	BoolToVisC   =PlatinumGymPro.Converters.InverseBooleanToVisibalityConverter ' #InverseBooleanToVisibalityConverter��%   &	        &	      ��   .���  � RowDefinitions �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto ��� $��* �.+��� $#��الصفحة الرئيسية��$��0��$��SemiBold"�$��0 20 0 0q�$��Right=����#121518$��22(���  
 AddBtn#��[ ���� *AddPlayerCommand+.����  �� Orientation$ 
Horizontal=�.+��� $��أضافة لاعب��.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$
 Plus=�$��11��$��11��$��8 0 0 1q�$��Center=��� $��1�����#dae2ea$��
 0 -1 0 10q�$��2���� $��RightToLeft=�$��Right=�$��1��$ 
Horizontal=�$��0 10 0 0q�.+��� $��اللاعبين�� 
 TabBtn#��[ �� $��المدربين��#��[ �� $��الرياضات��#��[ �� $!��قائمة اللاعبين��$��3��$��18(�$��SemiBold"����#121518$
��0 10q�$��Right=�$��Center=�� $��4��.+�*  $LoadingSpinnerControl.LoadingSpinner     Diameter$	 100Q�   	Thickness$ 3Q�   Color �#C14E00   	IsLoading �� *
IsLoaded+� y��� *
IsLoaded+ �� 	Converter# [ .+��� $��Right=�
���  ������ *ErrorMessage+y��� *HasErrorMessage+# [  &   System.Windows.Controls.DataGrid  -   	  Name$	 PlayerDataGrid��$��RightToLeft=�  DataGridStyle1#���    DataGridCellStyle1
   	CellStyle#
 �    DataGridColumnHeaderStyle1   ColumnHeaderStyle# �    DataGridRowStyle1   RowStyle# �  y��� *HasErrorMessage+# [ ���� *	Players+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ #��   
IsReadOnly$
 True��   Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto    CanUserResize$ False��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Id+4	  .System.Windows.Controls.DataGridTemplateColumn	  $ 
الاسم��$ * $
 True�� 	  CellTemplate �� .R��� $ 
Horizontal=�.+��� $��25��$��25��$��0 0 10 0q����#C14E00 �� CornerRadius$ 50��._��� $	��...��$��Center=�$��Center=�
�������$��0 0 0 1q��� $��Center=����� *
FullName+  $ تاريخ الميلاد��$
 True��$ *  �� *	BirthDate+  $! تاريخ الاشتراك��$
 True��$ *  �� *SubscribeDate+  $, &تاريخ نهاية الاشتراك��$
 True��$ *  �� *SubscribeEndDate+	  $ عمليات��$
 auto $
 True�� �� .R��� $ 
Horizontal=�.+���   GridEditBtn#��[ .��  $ Pencil=� 	 GridBtnIcon#��[	 ��  
 GridremoveBtn#��[
 .��  $ DeleteOutline=�#��[	 