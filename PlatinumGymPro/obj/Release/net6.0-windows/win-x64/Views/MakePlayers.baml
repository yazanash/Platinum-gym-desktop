   M S B A M L   `   `   `  ���� I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:PlatinumGymPro.ViewsPlatinumGymPro.Views  &     PlatinumGymPro.Views.MakePlayers   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     4local"clr-namespace:PlatinumGymPro.Views     $��RightToLeft=����#fff.����   �� Orientation$  Vertical=�.+��� $��32(�$��20q�$��اضافة لاعب��� $��20q� � ColumnDefinitions �� $
��auto ��� $
��auto �.+��� $��10 0 0 0q�$  Vertical=�$��0��.+��� $��اسم اللاعب����    	formInput#��[  ���� *
FullName+ �� UpdateSourceTrigger$ PropertyChanged=��� $��10 0 0 0q�$  Vertical=�$��2��.+��� $��رقم الهاتف���� #��[  ���� *Phone+$ PropertyChanged=�� $��20q� �� $
��auto ��� $
��auto �.+��� $��10 0 0 0q�$  Vertical=�$��0��.+��� $��تاريخ الميلاد���� #��[  ���� *	BirthDate+$ PropertyChanged=��� $��10 0 0 0q�$  Vertical=�$��2��.+��� $��
الجنس���� $  
Horizontal=�.+�	� $��ذكر��	� $��انثى��� $��20q� �� $
��auto ��� $
��auto �.+��� $��10 0 0 0q�$  Vertical=�$��0��.+��� $��
الوزن���� #��[  ���� *Weight+$ PropertyChanged=��� $��10 0 0 0q�$  Vertical=�$��2��.+��� $��
الطول���� #��[  ���� *Hieght+$ PropertyChanged=�� $��20q� �� $
��auto ��� $
��auto �.+��� $��10 0 0 0q�$  Vertical=�$��0��.+��� $!��تاريخ الاشتراك��(  "System.Windows.Controls.DatePicker     SelectedDateFormat$ Short=�$	��150��   SelectedDate �� *SubscribeDate+$ PropertyChanged=� � 	Resources :  4System.Windows.Controls.Primitives.DatePickerTextBox �� 
TargetType �� Property �� Value��%:   '        �� "  .���  �@��
IsReadOnly$
 True���� $��10 0 0 0q�$  Vertical=�$��2��.+��� $,��&تاريخ نهاية الاشتراك���� 
	 � Tag$,	 &تاريخ نهاية الاشتراك��
 �� 
IsReadOnly$

 True��#��[  ���� *SubscribeEndDate+$ PropertyChanged=��� $  
Horizontal=�.+��� $��50 10q�$��حفظ��$��20q����� *SaveCommand+�� $��50 10q�$��
تعديل��$��20q����� *EditCommand+�� $��50 10q�$��
الغاء��$��20q����� *CancelCommand+