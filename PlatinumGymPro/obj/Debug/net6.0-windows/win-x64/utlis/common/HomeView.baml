   M S B A M L   `   `   `  ����I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:PlatinumGymPro.ViewsPlatinumGymPro.Views  5      E'clr-namespace:PlatinumGymPro.ComponentsPlatinumGymPro.Components  5	      E'clr-namespace:PlatinumGymPro.ConvertersPlatinumGymPro.Converters  5      P LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl 5      #    PlatinumGymPro.Views.HomeView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:PlatinumGymPro.Views     5      c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      2uc'clr-namespace:PlatinumGymPro.Components   5	      :
converters'clr-namespace:PlatinumGymPro.Converters   5      QcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl   5      
������   � 	Resources  5         	BoolToVisC   =PlatinumGymPro.Converters.InverseBooleanToVisibalityConverter ' #InverseBooleanToVisibalityConverter  CalendarStyle1 �� 
TargetType&   System.Windows.Controls.Calendar �� Property �� Value �� 
TargetType ��Name5  /System.Windows.Controls.Primitives.CalendarItem  Name   CalendarItemStyle  CalendarCalendarItemStyle1 � 	Resources	 �Name  Key
 �� Color'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration �� 
TargetName	 W� To �� TargetProperty �� CornerRadius J� Effect3  -System.Windows.Media.Effects.DropShadowEffect   ShadowDepth   Opacity � Cursor	 �� To F�Name �� Stretch ��Name � ColumnDefinitions � RowDefinitions ��Name  HeaderButtonTemplate �� Orientation  PreviousButtonTemplate  NextButtonTemplate ��Name  DisabledColor  J� Opacity! �� RadiusX" �� RadiusY# �� Triggers$ P� Property% P� Value& �� 
TargetName' �� Value( �� Binding) �� RelativeSource* �� AncestorType #	 CalendarCalendarDayButtonStyle1:  4System.Windows.Controls.Primitives.CalendarDayButton+   Transitions%	  System.Windows.VisualTransition, 	  GeneratedDuration- R� KeyTime. R� Value
  System.Windows.Visibility/ J� RenderTransformOrigin0 J� IsHitTestVisible  
 CalendarCalendarButtonStyle17  1System.Windows.Controls.Primitives.CalendarButton  res1 �� MergedDictionaries2 �� Source��%�0  &	        &	      &	 &     &	 �    7  7  7  7  7  &		 "    &	
 A&    &	 60    �� 5   
   6'     5   
   69   �� 5   
   "  6'   .�5      ��  � �� �#F9F9F96+   �� 5       � �� �#FFF6+   �� 5       � ��
 ���� 6,   �� 5       � ��$ 0q�60   �� 5       � �� 5      �� 5      "  6&   .R�5      �� $ 	PART_Root��6%   $��Center=�68   .+�5        $ PART_CalendarItem��6+   #��z��6F   #��z��6p   #��z��6�   #��z 6�   5      5      5      5      �� 5    
   "  63   .�5!      ��  � ��$ 0,3,0,3q�6'   �� 5"       � �� 5#      �� 5$      "  6&    5%      ���� 5&      (��       6+   **(CalendarItem.DayTitleTemplateResourceKey+).R�5'   "   �� ���#888$��Verdana)�6>   $
��Bold"�6S   $	��9.5(�6e   $��Center=�6t   $��0,6,0,6q�6�   $��Center=�6�   ��6�   �� 6�   5(      5)      .R�5*      � $	 	PART_Root��6     5+      ���� 5,   "   DisabledColor $
 	#A5FFFFFF��6H   5-       5.        5/   "   CommonStates��. 50   &     
Normal��62     51   &   Disabled��. 52   *   �� .��53   .   W� $ 0D�6>   $ PART_DisabledVisual��6K    16w   $ Opacity�6~   54   +   55   '   56   #   .+�58      �� #��z��6%   #��z��59   %   #��z��5:   %   $ 10��5;   %    5<   "     5=   &   $ 1Q�67   $	 0.2Q�6G   ._�5?   "   �   5@   &   ���� 5A   *   PreviousButtonTemplate " ��6Y   .R�5B   .   �� $
 Hand��65   $ 20��6C   ���#C14E00 5C   2     5D   6   CommonStates��. 5E   :     
Normal��6F     5F   :   	MouseOver��. 5G   >   �� .��5H   B   �� $ 0D�6Q   $
 path��6^    	#FF73A9D86{   $* $(Shape.Fill).(SolidColorBrush.Color)�6�   5I   ?   5J   ;     5K   :   Disabled��. 5L   >   �� .��5M   B   W� $ 0D�6R   $
 path��6_    .56|   $" (Shape.Fill).(Brush.Opacity)�6�   5N   ?   5O   ;   5P   7   ._�5R   2   � .+�5S   6   F� $
 path��6;   "�����5���Ѱ�5h�W��<�h�	���#fff$��Center=�6�   $��8��6�   $ Uniform=�6�   $��Center=�6�   5T   3   5U   /   5V   +   �� 5W   *   NextButtonTemplate " ��6U   .R�5X   .   �� $
 Hand��65   $ 20��6C   ���#C14E00 5Y   2     5Z   6   CommonStates��. 5[   :     
Normal��6F     5\   :   	MouseOver��. 5]   >   �� .��5^   B   �� $ 0D�6Q   $
 path��6^    	#FF73A9D86{   $* $(Shape.Fill).(SolidColorBrush.Color)�6�   5_   ?   5`   ;     5a   :   Disabled��. 5b   >   �� .��5c   B   W� $ 0D�6R   $
 path��6_    .56|   $" (Shape.Fill).(Brush.Opacity)�6�   5d   ?   5e   ;   5f   7   ._�5h   2   � .+�5i   6   F� $
 path��6;   "����xT��!��xT���S�h4 	���#fff$��Center=�6�   $��8��6�   $ Uniform=�6�   $��Center=�6�   5j   3   5k   /   5l   +   �� 5m   *   HeaderButtonTemplate " ��6W   .R�5n   .   � $
 Hand��63    5o   2     5p   6   CommonStates��. 5q   :     
Normal��6F     5r   :   	MouseOver��. 5s   >   �� .��5t   B   �� $ 0D�6Q   $ buttonContent��6^    #6064676�   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6�   5u   ?   5v   ;     5w   :   Disabled��. 5x   >   �� .��5y   B   W� $ 0D�6R   $ buttonContent��6_    .56�   $ Opacity�6�   5z   ?   5{   ;   5|   7   .+�5~   2   �� $ buttonContent��6C   #��z��6Z   #��z��6�   ���#C14E00#��z��6�   $��1,4,1,9q�6  #��z��6'  5   /   5�   +   5�   '    5�   &   �� 5�   *   $
��Auto �6;   $��79��5�   ?   �� 5�   *   $��* �6;   �� 5�   *   $
��Auto �6;    5�   &   �� 5�   *   $��40 �68   �� 5�   *   $��* �68   .+�5�   &   �� $ PART_HeaderButton��6-   $��0��6H   $|�False��6X   $
��Bold"�6j   $��13(�6|   $��Center=�6�   $
��10 0q�6�   $��0��6�   8��  $��Bottom=�6�   �� 5�   &   $ 
Horizontal=�61   $��0��5�   1   $��	0 10 13 0q�5�   1   $��2��5�   1   .+�5�   *   �� $ PART_PreviousButton��61   $|�False��6O   $��17��6b   $��0��6n   8�� $��17��6�   �� 5�   *   $ PART_NextButton��61   $��6 0 0 0q�6J   $|�False��6[   $��17��6n   $��0��6z   8�� $��17��6�   5�   '   � 5�   &   $	 PART_MonthView��6+   $��3��6C   $��Center=�6W   $��6q�6t   $��1��6   $y�Visible=�6�    5�   *   �� 5�   .   $��30 �6?   �� 5�   .   $��30 �6?   �� 5�   .   $��30 �6?   �� 5�   .   $��30 �6?   �� 5�   .   $��30 �6?   �� 5�   .   $��30 �6?   �� 5�   .   $��30 �6?    5�   *   �� 5�   .   $
��Auto �6<   �� 5�   .   $
��Auto �6<   �� 5�   .   $
��Auto �6<   �� 5�   .   $
��Auto �6<   �� 5�   .   $
��Auto �6<   �� 5�   .   $
��Auto �6<   �� 5�   .   $
��Auto �6<   5�   '   � 5�   &   $	 PART_YearView��6+   $��3��6B   $��Center=�6V   $��6,-3,7,6q�6s   $��1��6�   $y�Hidden=�6�    5�   *   �� 5�   .   $
��Auto �6?   �� 5�   .   $
��Auto �6?   �� 5�   .   $
��Auto �6?   �� 5�   .   $
��Auto �6?    5�   *   �� 5�   .   $
��Auto �6<   �� 5�   .   $
��Auto �6<   �� 5�   .   $
��Auto �6<   5�   '   5�   #   5�      �� 5�      $ PART_DisabledVisual��6(   8�� $  0Q�6k   $! 2��6w   $" 2��6�   8�� $
 Fill=�6�   $��1��6�   $y�	Collapsed=�6�   5�      # 5�      P� 5�      $ � {�$% False��6;   . �5�   "   �� $& PART_DisabledVisual��6?    � y�$ Visible=�6`   5�      �� 5�      $
' Year��6�   ( 6*   �� *DisplayMode+) �� *FindAncestor+"*  .a�5�   "   �� $& PART_MonthView��6?    � y�$ Hidden=�6[   �� 5�   "   $& PART_YearView��6?    � y�$ Visible=�6Z   5�      �� 5�      $' Decade��6�   ( 6*   �� *DisplayMode+) �� *FindAncestor+"*  .a�5�   "   �� $& PART_MonthView��6?    � y�$ Hidden=�6[   �� 5�   "   $& PART_YearView��6?    � y�$ Visible=�6Z   5�      5�      5�      5�      �� 5�   
   "  68   .�5�      ��  � ��$ 25��6&   �� 5�       � ��$ 25��6'   �� 5�       � ��$ 10(�6)   �� 5�       �@�Cursor$
 Hand��6'   �� 5�       � ��$ Center=�6;   �� 5�       � ��$ Center=�69   �� 5�       � �� 5�      �� 5�      "  6&   .R�5�      �  5�        5�   "   CommonStates��+ 5�   &   	  5�   *   $, 0:0:0.1D�6;   . 5�   &     
Normal��62     5�   &   	MouseOver��. 5�   *   �� .��5�   .   W� $ 0D�6>   $ HighlightBackground��6K    0.56w   $ Opacity�6�   5�   +   5�   '     5�   &   Pressed��. 5�   *   �� .��5�   .   W� $ 0D�6>   $ HighlightBackground��6K    0.56w   $ Opacity�6�   5�   +   5�   '     5�   &   Disabled��. 5�   *   �� .��5�   .   W� $ 0D�6>   $ HighlightBackground��6K    06w   $ Opacity�6~   W� 5�   .   $ 0D�6>   $ 
NormalText��6K    .356n   $ Opacity�6w   5�   +   5�   '   5�   #     5�   "   SelectionStates��+ 5�   &   	  5�   *   $, 0D�6;   . 5�   &     
Unselected��62     5�   &   Selected��. 5�   *   �� .��5�   .   W� $ 0D�6>   $ SelectedBackground��6K    .756v   $ Opacity�6   5�   +   5�   '   5�   #     5�   "   CalendarButtonFocusStates��+ 5�   &   	  5�   *   $, 0D�6;   . 5�   &     CalendarButtonFocused��. 5�   *   �� .��5�   .   T� $ 0D�6L   $ DayButtonFocusVisual��6Y   $ 
Visibility�6�   ..�5   2   i� $- 0��6I   . 5  6   
 5  :   Visible=�6N   5  3   5  /   5  +   5  '     5  &   CalendarButtonUnfocused��. 5	  *   �� .��5
  .   T� $ 0D�6L   $ DayButtonFocusVisual��6Y   $ 
Visibility�6�   ..�5  2   i� $- 0��6I   . 5  6   
 5  :   	Collapsed=�6P   5  3   5  /   5  +   5  '   5  #     5  "   ActiveStates��+ 5  &   	  5  *   $, 0D�6;   . 5  &     
Active��. 5  *   �� .��5  .   �� $ 0D�6=   $ 
NormalText��6J    #4446m   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6w   5  +   5  '     5  &   Inactive��. 5  *   �� .��5  .   �� $ 0D�6=   $ 
NormalText��6J    #9996m   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6w   5   +   5!  '   5"  #     5#  "   	DayStates��+ 5$  &   	  5%  *   $, 0D�6;   . 5'  &     
RegularDay��62     5(  &   	Today��. 5)  *   �� .��5*  .   W� $ 0D�6>   $ TodayBackground��6K    16s   $ Opacity�6z   �� 5+  .   $ 0D�6=   $ 
NormalText��6J    	#FFFFFFFF6m   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6|   5,  +   5-  '   5.  #     5/  "   BlackoutDayStates��+ 50  &   	  51  *   $, 0D�6;   . 53  &     	NormalDay��62     54  &   BlackoutDay��. 55  *   �� .��56  .   W� $ 0D�6>   $ Blackout��6K    .26l   $ Opacity�6t   57  +   58  '   59  #   .+�5;     �� $ TodayBackground��6(   ���#C14E00$  0Q�6P   $! 50��6\   $" 50��6i   �� 5<     $ SelectedBackground��6(   ���#aaa$  0Q�6P   $! 50��6\   $" 50��6i   �� 5=     #��z��6%   #��z��6O   #��z��6{   �� 5>     $ HighlightBackground��6(   ���#aaa$  0Q�6Q   $! 50��6]   $" 50��6j   �� 5?     $ 
NormalText��6/   ���#FFF#��z��6a   $��5,1,5,1q�6�   #��z��6�   F� 5@     $ Blackout��6#   }�����5 �Z @�J� �Q2� �J� �̉� iV� �A�� �J� �W�� �J� ѷ�� #�� �>8� 7T�K�� 7T�� � ��� ћ�� 7T����G @7T��� �D� 	���	#FF000000$��Stretch=�6J  $��3q�6h  $  0Q�6s  $/ 0.5,0.5&�6  $
 Fill=�6�  $��Stretch=�6�  �� 5A     $ DayButtonFocusVisual��6(   $0 false��6F   $! 50��6_   $" 50��6l   
������ $y�	Collapsed=�6�   5B     5C     5E     5F     �� 5G  
   "  65   .�5H     ��  � �� �	#FFBADDE96+   �� 5I      � ��$ 40��6)   �� 5J      � ��$ 42��6*   �� 5K      � ��$ 10(�6)   �� 5L      � ��$ Center=�6;   �� 5M      � ��$ Center=�69   �� 5N      � �� 5O     �� 5P     "  6&   .R�5Q     �  5R       5S  "   CommonStates��+ 5T  &   	  5U  *   $, 0:0:0.1D�6;   . 5W  &     
Normal��62     5X  &   	MouseOver��. 5Y  *   �� .��5Z  .   W� $ 0D�6>   $ 
Background��6K    .56n   $ Opacity�6v   5[  +   5\  '     5]  &   Pressed��. 5^  *   �� .��5_  .   W� $ 0D�6>   $ 
Background��6K    .56n   $ Opacity�6v   5`  +   5a  '   5b  #     5c  "   SelectionStates��+ 5d  &   	  5e  *   $, 0D�6;   . 5g  &     
Unselected��62     5h  &   Selected��. 5i  *   �� .��5j  .   W� $ 0D�6>   $ SelectedBackground��6K    .756v   $ Opacity�6   5k  +   5l  '   5m  #     5n  "   ActiveStates��+ 5o  &   	  5p  *   $, 0D�6;   . 5r  &     
Active��62     5s  &   Inactive��. 5t  *   �� .��5u  .   �� $ 0D�6=   $ 
NormalText��6J    	#FF7777776m   $6 0(TextElement.Foreground).(SolidColorBrush.Color)�6|   5v  +   5w  '   5x  #     5y  "   CalendarButtonFocusStates��+ 5z  &   	  5{  *   $, 0D�6;   . 5}  &     CalendarButtonFocused��. 5~  *   �� .��5  .   T� $ 0D�6L   $ CalendarButtonFocusVisual��6Y   $ 
Visibility�6�   ..�5�  2   i� $- 0��6I   . 5�  6   
 5�  :   Visible=�6N   5�  3   5�  /   5�  +   5�  '     5�  &   CalendarButtonUnfocused��. 5�  *   �� .��5�  .   T� $ 0D�6L   $ CalendarButtonFocusVisual��6Y   $ 
Visibility�6�   ..�5�  2   i� $- 0��6I   . 5�  6   
 5�  :   	Collapsed=�6P   5�  3   5�  /   5�  +   5�  '   5�  #   .+�5�     �� $ SelectedBackground��6(   #��z��6D   $  0Q�6h   $! 1��6t   $" 1��6�   �� 5�     $ 
Background��6(   #��z��6<   $  0Q�6`   $! 1��6l   $" 1��6x   �� 5�     $ 
NormalText��6/   ���	#FF333333#��z��6f   $��1,0,1,1q�6�   #��z��6�   �� 5�     $ CalendarButtonFocusVisual��6(   $0 false��6K   $! 1��6d   $" 1��6p   ���	#FF45D6FA$y�	Collapsed=�6�   5�     # 5�     P� 5�     $ �@J�	IsFocused$
% True��6;   . �5�  "   �� $& CalendarButtonFocusVisual��6?    � y�$ Visible=�6f   5�     5�     5�     5�     �� 5�  
   1 5�     �� 5�     $(2 "../Dictionaries/CalendarStyle.xaml?�6%   5�     5�     .��5�     �� $ 10��6   ���#EEE3 �� Padding$3 10q�61   ._�5�  
   �  5�     �� 5�     $
��auto �6    �� 5�     $��* �6     5�     �� 5�     $��* �6#   �� 5�     $��3* �6#   .+�5�     � $��1��6   $	��5 0q�6#   $��2��60    5�     �� 5�     $��* �6'   �� 5�     $��* �6'   �� 5�     $��* �6'    5�     �� 5�     $
��auto �6$   �� 5�     $��* �6$   .+�5�     -   'PlatinumGymPro.Components.DashboardCard  4   Title$4 المدفوعات��6#   5   Money$5 150,000,000��65   6   	BackColor6 �#FFF$��0��6Z   $��0��6j     5�     $4 الايرادات��6#   $5 150,000,000��66   6 �#FFF$��1��6[   $��0��6k     5�     $4 المصاريف��6#   $5 150,000,000��65   6 �#FFF$��2��6Z   $��0��6j   �� 5�     ���#FFF$ 10��6+   $��3��6=   $��3��6Q   $
��5 10q�6^   $3 5q�6l    5�       5�     $ 1Q�6+   $
 0.16Q�6;   ._�5�     � .+�5�     *  $LoadingSpinnerControl.LoadingSpinner  7   Diameter$	7 100Q�5�     8   	Thickness$8 3Q�6    9   Color9 �#C14E00:   	IsLoading: 5�     �� *	IsLoading+5�  .   � 5�     y�6   �� *	IsLoading+; �� 	Converter#; [  5�     �� 5�  "   $	��13* �63   �� 5�  "   $	��20* �63   �� 5�  "   $��7* �63   .+�5�     �� $
��Left=�6F   
���  ��$��2��6�   $��	140,0,0,0q�6�   ��6(   �� *ErrorMessage+y�6a   �� *HasErrorMessage+#; [  6�   &   System.Windows.Controls.DataGrid  5�     -   5        <  Name$< PlayerDataGrid��5�  �   
�������$��RightToLeft=�6�     DataGridStyle1#���  6�     DataGridCellStyle1=   	CellStyle#= �  6    DataGridColumnHeaderStyle1>   ColumnHeaderStyle#> �  6P    DataGridRowStyle1?   RowStyle#? �  6�  $��3��6�  y�6;   �� *HasErrorMessage+#; [ ��6�   �� *	Players+@   Columns@ 5�  "   0  *System.Windows.Controls.DataGridTextColumn  5�  &   ,  &System.Windows.Controls.DataGridColumnA   Header$A #��69   B   
IsReadOnly$
B True��6D   C   Width5  /System.Windows.Controls.DataGridLengthConverter$
C auto 5�  %   D   CanUserResize$D False��5�  %   1  +System.Windows.Controls.DataGridBoundColumnE   BindingE 5�  %   �� *Id+5�  %   4  .System.Windows.Controls.DataGridTemplateColumn  5�  &   $A 
الاسم��6=   $C * 6L   $
B True��6V   F   CellTemplateF 5�  *   �� 5�  .   .R�5�  2   �� $ 
Horizontal=�6=   .+�5�  6   �� $��10��6=   $��10��6H   $��0 0 0 0q�6T   $ 50��6�   ��6e   �� *IsSubscribed+5�  7   �� 5�  6   $��10 0 0 0q�6@   $��Center=�6l   ��6R   �� *
FullName+6l   5�  3   5�  /   5�  '     5�  &   $,A &تاريخ نهاية الاشتراك��69   $
B True��6W   $C * 5�  %   E 5�  &   �� *SubscribeEndDate+5�  %     5�  &   $A عمليات��6=   $	C 100 6M   $
B True��6Y   F 5�  *   �� 5�  .   .R�5�  2   �� $ 
Horizontal=�6=   .+�5�  6   ��   GridEditBtn#��[ 6]   ��6=   �� *EditCommand+.��5�  :   .  (MahApps.Metro.IconPacks.PackIconMaterial  G   Kind$G Pencil=�6P     GridBtnIcon#��[ 6^   5�  7   �� 5�  6     GridremoveBtn#��[ 6_   ��6=   �� *DeleteCommand+.��5�  :     $G DeleteOutline=�6P   #��[ 6f   5�  7   5�  3   5�  /   5�  '   5     5     5     5     5     (� 5	     $	��5 0q�6   $	��Top=�6#   H (� Stretch$H Uniform=�6;   $��0��6M   $��0��6Z   .��5
       I   CalendarButtonStyle#I � 
 6   J   CalendarDayButtonStyle#J � 	 6`   # �  6�   #���  6�   5     �� 5     ���#FFF$ 10��6'   $
��5 10q�69   $��1��6H   $��0��6U    5       5     $ 1Q�6'   $
 0.16Q�67   ._�5     � $��3��6   $��3��6+   .+�5       $	7 100Q�5     $8 3Q�6    9 �#C14E00: 5     �� *	IsLoading+5  .   � 5     y�6   �� *	IsLoading+#; [  5     �� 5     $	��13* �6/   �� 5     $	��20* �6/   �� 5     $��7* �6/   .+�5     �� $
��Left=�6B   
���  ��$��2��6�   $��	140,0,0,0q�6�   ��6$   �� *ErrorMessage+y�6]   �� *HasErrorMessage+#; [  6�     5     -   5        $< dsfsdf��5  �   $��RightToLeft=�6�   #���  6�   #= �  6   #> �  61  #? �  6r  $��3��6�  y�6$   �� *HasErrorMessage+#; [ ��6�   �� *	Players+@ 5       5  "   $A #��65   $
B True��6@   $
C auto 5   %   $D False��5"  %   E 5!  %   �� *Id+5"  %     5$  "   $A 
الاسم��69   $C * 6H   $
B True��6R   F 5%  &   �� 5&  *   .R�5'  .   �� $ 
Horizontal=�69   .+�5(  2   �� $��10��69   $��10��6D   $��0 0 0 0q�6P   $ 50��6�   ��6a   �� *IsSubscribed+5)  3   �� 5*  2   $��10 0 0 0q�6<   $��Center=�6h   ��6N   �� *
FullName+6h   5+  /   5,  +   5.  #     5/  "   $A عمليات��69   $
C auto 6I   $
B True��6V   F 50  &   �� 51  *   .R�53  .   �� $ 
Horizontal=�69   .+�54  2   �� #��[ 6Y   ��69   �� *EditCommand+.��55  6     $G Openid=�6L   #��[ 6Z   56  3   58  /   59  +   5;  #   5=     5>     5?     5@     5B     5C     5D     