#tag WebContainerControl
Begin WebContainer Day10Container
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   486
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   ScrollDirection =   0
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   732
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebTextField Part1TextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Part 1:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   70
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   542
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   0
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   80
      Visible         =   True
      Width           =   170
      _mPanelIndex    =   -1
   End
   Begin WebButton SetupDataButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "OK"
      ControlID       =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   542
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   170
      _mPanelIndex    =   -1
   End
   Begin PuzzleInputWebDialog PuzzleInputDialog
      ControlID       =   ""
      Enabled         =   True
      Height          =   480
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   189
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   3
      Tooltip         =   ""
      Top             =   89
      Visible         =   True
      Width           =   640
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin Day10WebThread PuzzleThread
      DebugIdentifier =   ""
      Index           =   -2147483648
      InputValue      =   ""
      Left            =   0.0
      LockedInPosition=   False
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      ThreadID        =   0
      ThreadState     =   0
      Top             =   0.0
   End
   Begin WebProgressWheel Spinner
      Colorize        =   False
      ControlID       =   ""
      Enabled         =   True
      Height          =   32
      Index           =   -2147483648
      Indicator       =   0
      Left            =   680
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      SVGColor        =   &c00000000
      SVGData         =   ""
      TabIndex        =   4
      Tooltip         =   ""
      Top             =   244
      Visible         =   False
      Width           =   32
      _mPanelIndex    =   -1
   End
   Begin WebLabel ResultLabel
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   446
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      Scope           =   2
      TabIndex        =   5
      TabStop         =   True
      Text            =   "LCD"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   514
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Constant, Name = kRealData, Type = String, Dynamic = False, Default = \"addx 1\nnoop\naddx 2\naddx 5\naddx 2\nnoop\nnoop\nnoop\naddx 5\nnoop\nnoop\naddx 1\naddx 2\naddx -5\naddx 12\naddx 1\naddx 4\naddx 2\nnoop\naddx -1\naddx 4\nnoop\nnoop\naddx -37\naddx 21\naddx -13\naddx -3\nnoop\naddx 3\naddx 2\naddx 5\naddx -2\naddx 7\naddx -2\naddx 2\naddx 11\naddx -4\naddx 3\nnoop\naddx -18\naddx 7\naddx 14\naddx 2\naddx 5\naddx -39\naddx 1\naddx 5\nnoop\nnoop\nnoop\naddx 1\naddx 4\nnoop\naddx 12\naddx 10\naddx -17\naddx 5\naddx -17\naddx 14\naddx 6\nnoop\naddx 3\naddx 7\nnoop\nnoop\naddx 2\naddx 3\nnoop\naddx -40\naddx 40\naddx -33\naddx -2\nnoop\naddx 3\naddx 2\naddx 5\naddx -7\naddx 8\nnoop\naddx 6\naddx 8\naddx -11\naddx 8\nnoop\naddx -19\naddx 27\nnoop\naddx -2\naddx 4\nnoop\naddx -10\naddx -27\nnoop\nnoop\naddx 7\naddx 4\naddx -3\naddx 2\naddx 5\naddx 2\naddx -4\naddx -3\naddx 10\naddx 15\naddx -8\naddx 2\naddx 3\naddx -2\naddx 5\naddx 2\naddx 2\naddx -39\naddx 1\naddx 3\naddx 3\naddx 3\nnoop\naddx 2\naddx 1\naddx 4\naddx -1\naddx 2\naddx 4\naddx 1\nnoop\nnoop\naddx 2\naddx 5\naddx 3\nnoop\nnoop\naddx -27\naddx 29\nnoop\naddx 3\nnoop\nnoop", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTestData, Type = String, Dynamic = False, Default = \"addx 15\naddx -11\naddx 6\naddx -3\naddx 5\naddx -1\naddx -8\naddx 13\naddx 4\nnoop\naddx -1\naddx 5\naddx -1\naddx 5\naddx -1\naddx 5\naddx -1\naddx 5\naddx -1\naddx -35\naddx 1\naddx 24\naddx -19\naddx 1\naddx 16\naddx -11\nnoop\nnoop\naddx 21\naddx -15\nnoop\nnoop\naddx -3\naddx 9\naddx 1\naddx -3\naddx 8\naddx 1\naddx 5\nnoop\nnoop\nnoop\nnoop\nnoop\naddx -36\nnoop\naddx 1\naddx 7\nnoop\nnoop\nnoop\naddx 2\naddx 6\nnoop\nnoop\nnoop\nnoop\nnoop\naddx 1\nnoop\nnoop\naddx 7\naddx 1\nnoop\naddx -13\naddx 13\naddx 7\nnoop\naddx 1\naddx -33\nnoop\nnoop\nnoop\naddx 2\nnoop\nnoop\nnoop\naddx 8\nnoop\naddx -1\naddx 2\naddx 1\nnoop\naddx 17\naddx -9\naddx 1\naddx 1\naddx -3\naddx 11\nnoop\nnoop\naddx 1\nnoop\naddx 1\nnoop\nnoop\naddx -13\naddx -19\naddx 1\naddx 3\naddx 26\naddx -30\naddx 12\naddx -1\naddx 3\naddx 1\nnoop\nnoop\nnoop\naddx -9\naddx 18\naddx 1\naddx 2\nnoop\nnoop\naddx 9\nnoop\nnoop\nnoop\naddx -1\naddx 2\naddx -37\naddx 1\naddx 3\nnoop\naddx 15\naddx -21\naddx 22\naddx -6\naddx 1\nnoop\naddx 2\naddx 1\nnoop\naddx -10\nnoop\nnoop\naddx 20\naddx 1\naddx 2\naddx 2\naddx -6\naddx -11\nnoop\nnoop\nnoop", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events SetupDataButton
	#tag Event
		Sub Pressed()
		  PuzzleInputDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PuzzleInputDialog
	#tag Event
		Sub InputReady(inputValue As String)
		  PuzzleThread.Stop
		  PuzzleThread.InputValue = inputValue
		  PuzzleThread.Start
		  
		  Spinner.Visible = True
		End Sub
	#tag EndEvent
	#tag Event
		Function RealInputDataRequested() As String
		  Return kRealData
		End Function
	#tag EndEvent
	#tag Event
		Function TestInputDataRequested() As String
		  Return kTestData
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PuzzleThread
	#tag Event
		Sub UserInterfaceUpdate(data() as Dictionary)
		  For Each current As Dictionary In data
		    Select Case current.Lookup("type", "")
		    Case "part1"
		      Part1TextField.Text = current.Value("result").StringValue
		    Case "part2"
		      ResultLabel.Text = Current.Value("result").StringValue
		    Case "finish"
		      Spinner.Visible = False
		    End Select
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ResultLabel
	#tag Event
		Sub Opening()
		  Var label As String
		  For y As Integer = 1 To 6
		    For x As Integer = 1 To 40
		      label = label + PuzzleThread.CharacterOff
		    Next
		    label = label + EndOfLine
		  Next
		  
		  ResultLabel.Text = label
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
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
		Name="Visible"
		Visible=true
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
		Name="ScrollDirection"
		Visible=true
		Group="Behavior"
		InitialValue="ScrollDirections.None"
		Type="WebContainer.ScrollDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - None"
			"1 - Horizontal"
			"2 - Vertical"
			"3 - Both"
		#tag EndEnumValues
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
		Name="LayoutType"
		Visible=true
		Group="View"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="View"
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
	#tag ViewProperty
		Name="Width"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
