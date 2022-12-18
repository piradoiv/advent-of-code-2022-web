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
      Title           =   "🎅 Advent of Code 2022"
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   906
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Opening()
		  ShowPuzzle(1)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ShowPuzzle(day As Integer)
		  If CurrentContainer <> Nil Then
		    CurrentContainer.Close
		  End If
		  
		  Select Case day
		  Case 1
		    CurrentContainer = New Day1Container
		  Case 2
		    CurrentContainer = New Day2Container
		  Case 3
		    CurrentContainer = New Day3Container
		  Case 4
		    CurrentContainer = New Day4Container
		  Case 5
		    CurrentContainer = New Day5Container
		  Case 6
		    CurrentContainer = New Day6Container
		  Case 7
		    CurrentContainer = New Day7Container
		  Case 8
		    CurrentContainer = New Day8Container
		  Case 9
		    CurrentContainer = New Day9Container
		  Case 10
		    CurrentContainer = New Day10Container
		  Case 11
		    CurrentContainer = New Day11Container
		  Case 12
		    CurrentContainer = New Day12Container
		  Case 13
		    CurrentContainer = New Day13Container
		  Case 14
		    CurrentContainer = New Day14Container
		  Case 15
		    CurrentContainer = New Day15Container
		  Case 16
		    CurrentContainer = New Day16Container
		  Case 17
		    CurrentContainer = New Day17Container
		  End Select
		  
		  CurrentContainer.LockLeft = True
		  CurrentContainer.LockTop = True
		  CurrentContainer.LockRight = True
		  CurrentContainer.LockBottom = True
		  
		  CurrentContainer.EmbedWithin(Self, 0, MainToolbar.Top + MainToolbar.Height, Self.Width, Self.Height - MainToolbar.Height)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CurrentContainer As WebContainer
	#tag EndProperty


#tag EndWindowCode

#tag Events MainToolbar
	#tag Event
		Sub Opening()
		  Var sections() As String = Array("Calories", "Rock, Paper, Scissors", "Rucksack Reorganizer", _
		  "Camp Cleanup", "Supply Stacks", "Tuning Trouble", "Space Left", "Treetop Tree House", _
		  "Rope Bridge", "Cathode-Ray Tube", "Monkey in the Middle", "Hill Climbing Algorithm", _
		  "Distress Signal", "Regolith Reservoir", "Proboscidea Volcanium", "Pyroclastic Flow")
		  
		  Var puzzlesMenu As New WebMenuItem
		  For i As Integer = 0 To sections.LastIndex
		    Var day As Integer = i + 1
		    puzzlesMenu.AddMenuItem(New WebMenuItem("Day " + day.ToString + " - " + sections(i), i))
		  Next
		  
		  Var puzzlesItem As New WebToolbarButton("Puzzles")
		  puzzlesItem.Style = WebToolbarButton.ButtonStyles.Menu
		  puzzlesItem.Menu = puzzlesMenu
		  Me.AddItem(puzzlesItem)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MenuSelected(Item as WebToolbarButton, hitItem as WebMenuItem)
		  ShowPuzzle(hitItem.Tag.IntegerValue + 1)
		End Sub
	#tag EndEvent
	#tag Event
		Sub TitlePressed()
		  ShowPuzzle(1)
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
