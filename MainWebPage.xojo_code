#tag WebPage
Begin WebPage MainWebPage
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   False
   Height          =   686
   ImplicitInstance=   True
   Index           =   -2147483648
   Indicator       =   0
   IsImplicitInstance=   False
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   MinimumHeight   =   400
   MinimumWidth    =   600
   TabIndex        =   0
   Title           =   "Advent of Code 2022"
   Top             =   0
   Visible         =   True
   Width           =   906
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebToolbar MainToolbar
      ControlID       =   ""
      Enabled         =   True
      FullWidth       =   False
      Height          =   56
      Index           =   -2147483648
      Indicator       =   4
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Position        =   0
      Scope           =   2
      TabIndex        =   0
      Title           =   "Advent of Code 2022"
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   906
      _mPanelIndex    =   -1
   End
   Begin WebPagePanel Pages
      ControlID       =   ""
      Enabled         =   True
      Height          =   630
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelCount      =   4
      Scope           =   2
      SelectedPanelIndex=   3
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   56
      Visible         =   True
      Width           =   906
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin Day1Container Day1
         ControlID       =   ""
         Enabled         =   True
         Height          =   630
         Index           =   -2147483648
         Indicator       =   0
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "Pages"
         Scope           =   2
         ScrollDirection =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   56
         Visible         =   True
         Width           =   906
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
      End
      Begin Day2Container Day2
         ControlID       =   ""
         Enabled         =   True
         Height          =   630
         Index           =   -2147483648
         Indicator       =   0
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "1"
         Parent          =   "Pages"
         Scope           =   2
         ScrollDirection =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   56
         Visible         =   True
         Width           =   906
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
      End
      Begin Day3Container Day3
         ControlID       =   ""
         Enabled         =   True
         Height          =   630
         Index           =   -2147483648
         Indicator       =   0
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "2"
         Parent          =   "Pages"
         Scope           =   2
         ScrollDirection =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   56
         Visible         =   True
         Width           =   906
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
      End
      Begin Day4Container Day4Container1
         ControlID       =   ""
         Enabled         =   True
         Height          =   630
         Index           =   -2147483648
         Indicator       =   0
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   3
         Parent          =   "Pages"
         Scope           =   0
         ScrollDirection =   0
         TabIndex        =   5
         TabStop         =   True
         Tooltip         =   ""
         Top             =   56
         Visible         =   True
         Width           =   906
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
      End
   End
End
#tag EndWebPage

#tag WindowCode
#tag EndWindowCode

#tag Events MainToolbar
	#tag Event
		Sub Opening()
		  Var sections() As String = Array("Calories", "Rock, Paper, Scissors", "Rucksack Reorganizer", _
		  "Camp Cleanup")
		  
		  For i As Integer = 0 To sections.LastIndex
		    Var button As New WebToolbarButton(sections(i))
		    button.Tag = i
		    Me.AddItem(button)
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed(Item as WebToolbarButton)
		  Pages.SelectedPanelIndex = Item.Tag.IntegerValue
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Pages
	#tag Event
		Sub Opening()
		  Me.SelectedPanelIndex = 3
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="Behavior"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabOrderWrap"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="WebView"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
#tag EndViewBehavior
