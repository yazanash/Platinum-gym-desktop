   M S B A M L   `   `   `  ���� I  EPlatinumGymPro, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:PlatinumGymProPlatinumGymPro  b ^PresentationFramework.Aero2, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes     PlatinumGymPro.App   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     c _MahApps.Metro.IconPacks.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=4.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   *localclr-namespace:PlatinumGymPro   YthemeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2     �� 	Resources     GridEditBtn �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Padding �� Triggers P� Property	 P� Value  GridremoveBtn
 �� BasedOn  GridBtnIcon.  (MahApps.Metro.IconPacks.PackIconMaterial  ColumnHeaderGripperStyle �� 
ResourceId �� TypeInTargetAssembly&   System.Windows.Controls.DataGrid ��Name J� SnapsToDevicePixels �Name J� Opacity � Points �� Stretch �� Triggers �� 
TargetName  DataGridStyle15  /System.Windows.Controls.DataGridLengthConverter ��Name � ColumnDefinitions � RowDefinitions   SelectAllCommand7  1System.Windows.Controls.DataGridHeadersVisibility
   All �� ConverterParameter!   HeadersVisibilityConverter �� 	Converter �� RelativeSource �� AncestorTypeG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter  Name    Column! ��Name" �� CanContentScroll# ��Name$ �� ScrollableHeight% � Maximum& �� Orientation' �� ViewportHeight( �� ViewportSize*) �� #ComputedVerticalScrollBarVisibility* � Value+ �� Mode, �� ScrollableWidth- �� ViewportWidth,. �� %ComputedHorizontalScrollBarVisibility/ ]� 
Conditions0 �� Property1 �� Value  DataGridCellStyle1*  $System.Windows.Controls.DataGridCell  DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader3  -Microsoft.Windows.Themes.DataGridHeaderBorder2   	IsPressed3 J� IsMouseOver4   	IsHovered5   CanUserSort6   IsClickable7   SortDirection8   SortDirection9   SeparatorVisibility:   SeparatorVisibility;   SeparatorBrush<   SeparatorBrush= n�Name  DataGridRowStyle1)	  #System.Windows.Controls.DataGridRow> ��Name?
  9System.Windows.Controls.Primitives.SelectiveScrollingGrid?  9System.Windows.Controls.Primitives.DataGridCellsPresenter? 	  
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter@ 	  DetailsVisibility$A 
  SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientationB   Vertical#C   RowDetailsScrollingConverter:  4System.Windows.Controls.Primitives.DataGridRowHeader
D   Row  	formInputE ��Name
F � Tag 	 
MenuTopBtn 
 
MenuButton  MenuButtonIcon  
SearchText 
 AddBtn 
 TabBtn��%  &	        &	 -    7   &	 �    &	 D    (�� �    $" DataGridSelectAllButtonStyle��"  )&	 p    &	 �    &	 �    7  7  &	     &	 �    &		     &	
 O    &	 �    &	 !    &	 '    &	 �    �� " ��.���  � ��
 ���� ��  � �� �#C14E00��  �@�FocusVisualStyle Z� ��  � ��$ Center=���  � �� �� " ��.R��� #��z��$ 5��$��1q�$ 5q�._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
	 True��. ���  � �� �#dcdcdc�� " ��8
   .���  � �� �#C14E00��  � �� �#fff��  � ��$ Center=� P�  �@J�IsMouseOver$
	 True��. ���  � �� �#dcdcdc��  � �� �#C14E00�� "  .���  � ��$ 12����  � ��$ 12����  � ��$ Center=��� " n�.���  � ��$ 8����  � ��
 ���� ��  �@�Cursor$ SizeWE����  � �� �� " n�.R��� #��z��# z���� " ��.���  � �� �� " ��.R�� .+��� $ Border��#��� ��$
 True��� $ Arrow��
���   �$��Right=�$��8,8,3,3q�$
 0.15Q� �   ��� ��� ��� ��� $ Uniform=�$��Bottom=� P�  �@J�IsMouseOver$
	 True��. ��� $ Border��# � �� � ��P�  � ��$
	 True��. ��� $ Border��# � �� � ��P�  � {�$	 False��. ��� $ Arrow�� � y�$ 	Collapsed=��� "  .���  � ��
 ���� ��  � �� �#222528��  � ��$ 0q���   �@ RowDetailsVisibilityMode$ VisibleWhenSelected=���  � ��$
 true����  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled$ False����  �@ AutoGenerateColumns$ False����  �@ HeadersVisibility$ Column=���  � ��$ 0 10 0 0q���  �@ SelectionMode$ Single=���  �@ SelectionUnit$ FullRow=���  �@ CanUserAddRows$ False����  �@ CanUserDeleteRows$ False����  �@ CanUserResizeRows$ False����  �@ CanUserReorderColumns$ False����  � ��$ 13(���  �@ ColumnWidth$ * ��  �@ GridLinesVisibility$
 None=���  � �� �� "  .R��� #��z��#��z��#��z��# z��$
 True��._��� $ DG_ScrollViewer��$|�false������ " ��.R��  �� $
��Auto ��� $��* ��� $
��Auto � �� $
��Auto ��� $��* ��� $
��Auto �.+��� #��Z $|�false����C� *�� $" DataGridSelectAllButtonStyle��"  +y��� *HeadersVisibility+# Z # Z  �� "  ���� *CellsPanelHorizontalOffset+ �� "    $! PART_ColumnHeadersPresenter��$��1��y��� *HeadersVisibility+# Z  # Z  �� "  �� $!! PART_ScrollContentPresenter��#" z��$��2��$��1���� $# PART_VerticalScrollBar��$��2��#% z$ $& Vertical=�$��1��#( z' #y�z) * �� *VerticalOffset+$+ OneWay=� �� *TemplatedParent+� $��1��$��2�� �� ���� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� $��* �.+��� $# PART_HorizontalScrollBar��$��1��#% z, $& 
Horizontal=�#( z- #y�z. * �� *HorizontalOffset+$+ OneWay=� �� *TemplatedParent+.���� # z  ]� / �� 0 �@��
IsGrouping$
1 true���� "0 �@%�IsVirtualizingWhenGrouping$1 false��./���  � ��$ false���� "  .���  � ��
 ���� ��  � ��$ Center=���  �@�FocusVisualStyle Z� ��  � ��$
 15 0q���  � �� �� "  .R��� #��z��$��0q�$
 True��._��� # z �� "  .���  � ��$ Center=���  � ��
 ���� ��  � �� �#121518��  � ��$ 
15 0 15 10q���  � �� �� "  .R�� .+�  #��z��#��z��#��z��#2 z��#4 z3 #6 z5 # z��#8 z7 #: z9 #< z; ._��� #��z��$
��True��# z #��z��n� $= PART_LeftHeaderGripper��$
��Left=�8��  n� $= PART_RightHeaderGripper��$��Right=�8�� �� " 	 .���  � ��
 �������  � ��$ 0 4 0 0q���  �@J�SnapsToDevicePixels$
 true����  �@=�ErrorTemplate Z� ��  �@	 ValidationErrorTemplate �� .R��� 
���  ��$��2,0,0,0q�$��!��$��Center=���  � �� �� " 	 .R��� $> 
DGR_Border��$	 0 8q�#��z��$��0q�$ 5��$
 True��._�
   �� $
��Auto ��� $��* � �� $��* ��� $
��Auto �.+�  $��1��#��z? # z   $��1��$��1��#y�z@ A �� *AreRowDetailsFrozen+# ZB # ZC  �� "    $��2��$A Vertical=�y��� *HeadersVisibility+# ZD # Z  �� "   P�  �@J�IsMouseOver$
	 True��. ���  � �� �#C14E00��  � �� �#ffffffP�  �@	 
IsSelected$
	 True��. ���  � �� �#C14E00��  � �� �#ffffff]� / �� 0 �@	 
IsSelected$
1 true���� 0 �@��IsSelectionActive$1 false��./���  � �� �#dfdfdf�� " ��.���  � �� �#fff��  � ��$ 2q���  � �� �#aaa��  � ��$	 300����  �@J�	AllowDrop$
 True����  � ��$	 6 3q���  �@�Cursor$ IBeam����  � �� �#000��  � ��$
 Left=���  � �� �� " ��.R��� $> 	txtBorder��#��z��$ 5��#��z��$
 True��#��z��._�� #��z��.+��� $ PART_ContentHost��$|�False��$��Hidden=�$��Hidden=��� $E WaterMarkLabel��#��z��#��z��#��z��$y�	Collapsed=����#aaa#��z��#��zF  ]� / �� 0 � ��$1  ��./��� $ WaterMarkLabel�� � y�$ Visible=��� " ��.���  � ��
 ���� ��  � �� �#6e7783��  �@�FocusVisualStyle Z� ��  � ��$ 30����  � ��$ 30����  � ��$ Right=���  � �� �� " ��.R��� #��z��$ 50��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
	 True��. ���  � �� �#dcdcdc�� " ��.���  � ��
 ���� ��  � �� �#ffffff��  �@�FocusVisualStyle Z� ��  � ��$ 35����  � ��$
 15 3q���  � ��$ 13(���  � �� �� " ��.R��� #��z��$ 7��._��� $��Right=�$��Center=� P�  �@J�IsMouseOver$
	 True��. ���  � �� �#973D00��  � �� �#ffffff�� "  .���  � ��$ 15����  � ��$ 15����  � ��$ Center=���  � ��$ 	20 2 20 0q��� " ��.���  � �� �#ffffff��  � �� �#aaa��  � ��$ 0q���  � ��$ 12(���  � ��$ 15 10q���  � ��$ Center=���  � ��$
 0 10q���  � �� �� " ��.R��� $> border��$ 20��#��z��$��1q����#aaa$
 True��._��� $ PART_ContentHost��$|�False��$��Hidden=�$��Hidden=� P�  �@J�IsMouseOver$
	 True��. ��� $ border�� � �� �#9d9d9dP�  �@J�IsKeyboardFocused$
	 True��. ��� $ border�� � �� �#9d9d9d�� " ��.���  � �� �#C14E00��  � �� �#ffffff��  �@�FocusVisualStyle Z� ��  � ��$	 150����  � ��$ 35����  � ��$
 Left=���  � ��$ 0 20 0 0q���  � ��$ 13(���  � ��$ 0����  � �� �� " ��.R��� #��z��$ 7��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
	 True��. ���  � �� �#dcdcdc�� " ��.���  � ��
 ���� ��  � �� �#121518��  �@�FocusVisualStyle Z� ��  � ��$ 70����  � ��$ 45����  � ��
 ���� ��  � ��$ 14(���  � ��$ SemiBold"���  � �� �� " ��.R��� #��z��$ 7��$��0 0 0 1q�#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
	 True��. ���  � �� �#C14E00