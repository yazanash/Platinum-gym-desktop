   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:PlatinumGymProPlatinumGymPro  5   	   ;"clr-namespace:PlatinumGymPro.ViewsPlatinumGymPro.Views  5   	   E'clr-namespace:PlatinumGymPro.ViewModelsPlatinumGymPro.ViewModels  5	   	       PlatinumGymPro.MainWindow   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:PlatinumGymPro     5   	   c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5   	   /View"clr-namespace:PlatinumGymPro.Views   5   	   3vms'clr-namespace:PlatinumGymPro.ViewModels   5	   	     � WindowStartupLocation$  CenterScreen=�5
   	    � WindowStyle$
 None=�5   	    � AllowsTransparency$
 True��5   	   
������  � Title$ 
MainWindow��5   	   $	��720��6   $
��1080��6)    � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5      .��5      �� -   5        ���#eff2f7 �� CornerRadius$ 10��5      ._�5   
   �  � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $	��200 �6#   .+�5      � $��1��6    � RowDefinitions 5      �� 5       $
��auto �6$   �� 5!      $��* �6$   .+�5#      ��   
MenuTopBtn#��[ 6   $��
0 28 20 35q�5$      .��5%      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$
 Menu=�6,   $��15��68   $��15��6C   5&      �� 5(      $��1��6   ���#C14E00$ 50 0 0 0��6;   ._�5)      ]� .+�5+      �� $��80��6!   $��80��6,   $	��Top=�5,      $	 100��5-   !   $��Right=�5.      $��
00 10 20 0q�5/      	 �� Padding$	 3q�50      ���#ffffff._�51      A� ��52   "   �� 53   &   
 j� Stretch$

 Fill=�61    �� ImageSource$ /Assets/p1.jpg��6@   55      56      �� 57      $	��Top=�6$   
�������$��20(�59   $   $��SemiBold"�5:   $    �� TextAlignment$ Center=�5;   $   $��	5 25 0 10q�5<   $   $.��(نادي بلاتينوم الرياضي��5=   $   �� 5>      $	��Top=�6$   ���#fff$��14(�5@   $   $��SemiBold"�5A   $   $ Center=�5B   $   $1��+بناء اجسام , لياقة بدنية��5C   $   �� 5E      $��25q�6$   $	��Top=�60   $	��0.8��5F   $   ���#fff61   �� 5H      $	��Top=�6%   .+�5I      ��   
MenuButton#��[ 6%   .��5J   "   ��  �� Orientation$ 
Horizontal=�6-   .+�5K   &   �� $��الرئيسية��60     5L   &     MenuButtonIcon#��[ 6<   $
 Home=�6d   5M   #   5N      �� 5O      #��[ 6%   .��5P   "   �� $ 
Horizontal=�6-   .+�5Q   &   �� $��اللاعبين��60     5R   &   #��[ 6<   $ AccountSupervisor=�6d   5S   #   5T      �� 5U      #��[ 6%   .��5V   "   �� $ 
Horizontal=�6-   .+�5W   &   �� $��المحاسبة��60     5X   &   #��[ 6<   $ Cached=�6d   5Y   #   5Z      �� 5[      #��[ 6%   .��5\   "   �� $ 
Horizontal=�6-   .+�5]   &   �� $��النادي��60     5^   &   #��[ 6<   $ Dumbbell=�6d   5`   #   5a      5c      �� 5d      $��Bottom=�6!   $��Bottom=�5e   !   $��
15 0 15 20q�5f   !   #��[ 5g   !   .��5h      �� $ 
Horizontal=�6)   .+�5i   "   �� $��تسجيل خروج��6,     5j   "   #��[ 68   $ Logout=�6`   5l      5m      5n      5o      5p      � 5t      $��0��6   $��20 20 30 20q�6#    5u      �� 5v      $
��auto �6$   �� 5w      $��* �6$   �� 5x      $
��auto �6$   .+�5{      � $	��300��6   $��Right=�6#   5�      �� 5�      #��[ 6   ���#dcdcdc$
��Left=�5�   .   $��20 0 0 0q�5�      .��5�        $��Right=�6-   $	 Cog=�6I   5�      �� 5�      #��[ 6   $
��Left=�5�      $��55 0 0 0q�5�      .��5�        $
 Bell=�6,   $��Right=�68   5�      � 5�      $��1��6    5�       �� DataType3   -PlatinumGymPro.ViewModels.MakePlayerViewModel&    PlatinumGymPro.Views.MakePlayers6   0PlatinumGymPro.ViewModels.PlayerListingViewModel#   PlatinumGymPro.Views.HomeView��%�   (��       5�   '   *, +)(�� 2     5�   '   *, +)�� 5�      "  6'   .R�5�        5�      �� 5�      "  6'   .R�5�        5�      5�      .+�5�      �� ��6%   �� *CurrentViewModel+5�      5�      5�      5�      5�      