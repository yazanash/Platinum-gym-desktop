   M S B A M L   `   `   `  ���� I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:PlatinumGymProPlatinumGymPro  ;"clr-namespace:PlatinumGymPro.ViewsPlatinumGymPro.Views  E'clr-namespace:PlatinumGymPro.ViewModelsPlatinumGymPro.ViewModels      PlatinumGymPro.MainWindow   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:PlatinumGymPro     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   /View"clr-namespace:PlatinumGymPro.Views   3vms'clr-namespace:PlatinumGymPro.ViewModels     � WindowStartupLocation$  CenterScreen=� � WindowStyle$
 None=� � AllowsTransparency$
 True��
������  � Title$ 
MainWindow��$	��720��$
��1080�� � 	Resources    	BoolToVis��%   &	        �� .���� -   ���#eff2f7 �� CornerRadius$ 10��._��  � ColumnDefinitions �� $��* ��� $	��200 �.+�� $��1�� � RowDefinitions �� $
��auto ��� $��* �.+���   
MenuTopBtn#��[ $��
0 28 20 35q�.��.  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$
 Menu=�$��15��$��15���� $��1�����#C14E00$ 50 0 0 0��._�]� .+��� $��80��$��80��$	��Top=�$	 100��$��Right=�$��
00 10 20 0q�	 �� Padding$	 3q����#ffffff._�A� ���� 
 j� Stretch$

 Fill=� �� ImageSource$ /Assets/p1.jpg���� $	��Top=�
�������$��20(�$��SemiBold"� �� TextAlignment$ Center=�$��	5 25 0 10q�$.��(نادي بلاتينوم الرياضي���� $	��Top=����#fff$��14(�$��SemiBold"�$ Center=�$1��+بناء اجسام , لياقة بدنية���� $��25q�$	��Top=�$	��0.8�����#fff�� $	��Top=�.+���   
MenuButton#��[ .����  �� Orientation$ 
Horizontal=�.+��� $��الرئيسية��    MenuButtonIcon#��[ $
 Home=��� #��[ .���� $ 
Horizontal=�.+��� $��اللاعبين��  #��[ $ AccountSupervisor=��� #��[ .���� $ 
Horizontal=�.+��� $��المحاسبة��  #��[ $ Cached=��� #��[ .���� $ 
Horizontal=�.+��� $��النادي��  #��[ $ Dumbbell=��� $��Bottom=�$��Bottom=�$��
15 0 15 20q�#��[ .���� $ 
Horizontal=�.+��� $��تسجيل خروج��  #��[ $ Logout=�� $��0��$��20 20 30 20q� �� $
��auto ��� $��* ��� $
��auto �.+�� $	��300��$��Right=��� #��[ ���#dcdcdc$
��Left=�$��20 0 0 0q�.��  $��Right=�$	 Cog=��� #��[ $
��Left=�$��55 0 0 0q�.��  $
 Bell=�$��Right=�� $��1��  �� DataType3   -PlatinumGymPro.ViewModels.MakePlayerViewModel&    PlatinumGymPro.Views.MakePlayers6   0PlatinumGymPro.ViewModels.PlayerListingViewModel#   PlatinumGymPro.Views.HomeView��%D   (��       *, +)(��      *, +)�� "  .R�  �� "  .R�  .+��� ���� *CurrentViewModel+