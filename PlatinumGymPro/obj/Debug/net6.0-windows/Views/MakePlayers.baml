   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:PlatinumGymPro.ViewsPlatinumGymPro.Views  5      &     PlatinumGymPro.Views.MakePlayers   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:PlatinumGymPro.Views     5      $��RightToLeft=�5      ���#fff.��5      ��   �� Orientation$  Vertical=�6   .+�5   
   �� $��32(�6   $��20q�6"   $��اضافة لاعب��6.   � 5   
   $��20q�6    � ColumnDefinitions 5      �� 5      $
��auto �6#   �� 5      $
��auto �6#   .+�5      �� $��10 0 0 0q�6   $  Vertical=�6+   $��0��6B   .+�5      �� $��اسم اللاعب��6   �� 5         	formInput#��[  6Z   ��6   �� *
FullName+ �� UpdateSourceTrigger$ PropertyChanged=�6Z   5      �� 5      $��10 0 0 0q�6   $  Vertical=�6,   $��2��6C   .+�5      �� $��رقم الهاتف��6   �� 5      #��[  6V   ��6   �� *Phone+$ PropertyChanged=�6V   5      5      � 5   
   $��20q�6    5      �� 5      $
��auto �6#   �� 5      $
��auto �6#   .+�5       �� $��10 0 0 0q�6   $  Vertical=�6,   $��0��6C   .+�5!      �� $��تاريخ الميلاد��6   �� 5"      #��[  6Z   ��6   �� *	BirthDate+$ PropertyChanged=�6Z   5#      �� 5$      $��10 0 0 0q�6   $  Vertical=�6,   $��2��6C   .+�5%      �� $��
الجنس��6   �� 5&      $  
Horizontal=�6   .+�5'      	� $��ذكر��6"   	� 5(      $��انثى��6"   5)      5+      5,      � 5-   
   $��20q�6    5.      �� 5/      $
��auto �6#   �� 50      $
��auto �6#   .+�52      �� $��10 0 0 0q�6   $  Vertical=�6,   $��0��6C   .+�53      �� $��
الوزن��6   �� 54      #��[  6W   ��6   �� *Weight+$ PropertyChanged=�6W   55      �� 56      $��10 0 0 0q�6   $  Vertical=�6,   $��2��6C   .+�57      �� $��
الطول��6   �� 58      #��[  6W   ��6   �� *Hieght+$ PropertyChanged=�6W   59      5:      � 5;   
   $��20q�6    5<      �� 5=      $
��auto �6#   �� 5>      $
��auto �6#   .+�5@      �� $��10 0 0 0q�6   $  Vertical=�6,   $��0��6C   .+�5A      �� $!��تاريخ الاشتراك��6   (  "System.Windows.Controls.DatePicker  5B         SelectedDateFormat$ Short=�6i   $	��150��6�      SelectedDate 6   �� *SubscribeDate+$ PropertyChanged=� � 	Resources 5C      :  4System.Windows.Controls.Primitives.DatePickerTextBox �� 
TargetType �� Property �� Value��%_   '        �� 5D      "  6    .�5E      ��  �@��
IsReadOnly$
 True��6;   5F      5G      5H      5I      �� 5J      $��10 0 0 0q�6   $  Vertical=�6,   $��2��6C   .+�5K      �� $,��&تاريخ نهاية الاشتراك��6   �� 5L      
	 � Tag$,	 &تاريخ نهاية الاشتراك��6a   
 �� 
IsReadOnly$

 True��6}   #��[  6�   ��6   �� *SubscribeEndDate+$ PropertyChanged=�6�   5O      5Q      �� 5R   
   $  
Horizontal=�6   .+�5S      �� $��50 10q�65   $��حفظ��6E   $��20q�6S   ��6   �� *SaveCommand+6S   �� 5T      $��50 10q�65   $��
تعديل��6E   $��20q�6U   ��6   �� *EditCommand+6U   �� 5U      $��50 10q�67   $��
الغاء��6G   $��20q�6W   ��6   �� *CancelCommand+6W   5V      5X      5Y      