   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:PlatinumGymPro.Views.PlayerViews PlatinumGymPro.Views.PlayerViews  5      E'clr-namespace:PlatinumGymPro.ComponentsPlatinumGymPro.Components  5      <    6PlatinumGymPro.Views.PlayerViews.EditPlayerDetailsView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      @local.clr-namespace:PlatinumGymPro.Views.PlayerViews     5      6uc'clr-namespace:PlatinumGymPro.Components     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5	      $��RightToLeft=�5
        � 	Resources  5         	BoolToVis��%   &	        �� 5   
   6'   5      .��5      ��  �� CornerRadius$ 10��6   ���#EEE �� Padding$ 10q�61   ._�5   
   �  � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $��* �6    .+�5      �� $��2��6   $��60��6)   $ 10��65   $
 15 5q�6G   $��0 0 0 5q�6V   ���#fff._�5      ]� .+�5      �� $
��Left=�6!    �� Orientation$ 
Horizontal=�67   $��Center=�6P   .+�5      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ 
ArrowRight=�60   $��20��6B   $��20��6M   $��0 0 15 0q�6Y   $��Center=�6k   ���#C14E006�   �� 5      $,��&اللاعبين / تسجيل لاعب��6$   $��18(�6A   $��Center=�6O   ���#C14E006j   5      �� 5      $ 
Horizontal=�6!   $��Right=�6:   $��Right=�6Q   .+�5      ��   
FormButton#��[ 6C   $��0��6g   $��4��6w   $��30��6�   $��حفظ��6�   $��Right=�6�   ��6!   �� *SubmitCommand+5      5      5       5!      �� 5#      ���#fff$ 10��6(   $��0��6:   $��2��6J   $��1��6_   $ 5q�6m   $��5q�6z   ._�5$      ]� .+�5%   "   ]� $	��Top=�6,   .+�5&   &   �� $!��معلومات اللاعب��60   ���#C14E00$��20(�6[   $
��Left=�6i   5*   #   � 5+   "    � ColumnDefinitions 5,   &   �� 5-   *   $��* �6;   �� 5.   *   $��* �6;   �� 5/   *   $��* �6;   �� 50   *   $��* �6;    52   &   �� 53   *   $
��auto �68   �� 54   *   $
��auto �68   �� 55   *   $
��auto �68   �� 56   *   $
��auto �68   �� 57   *   $
��auto �68   .+�59   &   �� $��0��61   $��0��6>   $��5q�6N   .+�5:   *   �� $��اسم اللاعب��64   ���#993300$��0 0 0 8q�5<   $   $��13(�5=   $   �� 5>   *     textBoxStyle#��[ 6q   ��62   �� *
FullName+ �� UpdateSourceTrigger$ PropertyChanged=�6q   5@   '   �� 5B   &   $��0��61   $��1��6>   $��5q�6N   .+�5C   *   �� $��رقم الهاتف��64   ���#993300$��0 0 0 8q�5E   $   $��13(�5F   $   �� 5G   *   #��[ 6n   ��62   �� *Phone+$ PropertyChanged=�6n   5J   '   �� 5K   &   $��0��61   $��2��6>   $��5q�6N   $��Bottom=�6Z   .+�5L   *   ��   ComboBoxStyle1#���  6V   
 � Tag$ سنة الميلاد��6     ComboBoxItemContainerStyle1#���  6�   	 �� SelectedItem	 63   �� *	BirthDate+.@�5M   .   �� $
��1999��6;   �� 5N   .   $
��2000��6;   �� 5O   .   $
��2001��6;   �� 5P   .   $
��2002��6;   �� 5Q   .   $
��2003��6;   �� 5R   .   $
��2004��6;   5S   +   5T   '   �� 5U   &   $��0��61   $��3��6>   $��5q�6N   .+�5V   *   �� $��
الوزن��64   ���#993300$��0 0 0 8q�5X   $   $��13(�5Y   $   �� 5Z   *   #��[ 6o   ��62   �� *Weight+$ PropertyChanged=�6o   5\   '   �� 5^   &   $��1��61   $��0��6>   $��5q�6N   .+�5_   *   �� $��
الطول��64   ���#993300$��0 0 0 8q�5a   $   $��13(�5b   $   �� 5c   *   #��[ 6o   ��62   �� *Hieght+$ PropertyChanged=�6o   5e   '   �� 5h   &   $��1��61   $��1��6>   $��5q�6N   .+�5i   *   �� $!��تاريخ الاشتراك��64   ���#993300$��0 0 0 8q�5k   $   $��13(�5l   $   �� 5m   *   #��[ 6v   ��62   �� *SubscribeDate+$ PropertyChanged=�6v   5o   '   5s   #   5u      5v      5y      5z      5{      