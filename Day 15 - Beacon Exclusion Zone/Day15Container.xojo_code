#tag WebContainerControl
Begin WebContainer Day15Container
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
   Begin WebTextField Part2TextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Part 2:"
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
      TabIndex        =   2
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   158
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
   Begin Day15WebThread PuzzleThread
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
   Begin WebTextArea GridTextArea
      AllowReturnKey  =   True
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      Height          =   446
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   5
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   501
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Constant, Name = kRealData, Type = String, Dynamic = False, Default = \"Sensor at x\x3D2288642\x2C y\x3D2282562: closest beacon is at x\x3D1581951\x2C y\x3D2271709\nSensor at x\x3D2215505\x2C y\x3D2975419: closest beacon is at x\x3D2229474\x2C y\x3D3709584\nSensor at x\x3D275497\x2C y\x3D3166843: closest beacon is at x\x3D-626874\x2C y\x3D3143870\nSensor at x\x3D1189444\x2C y\x3D2115305: closest beacon is at x\x3D1581951\x2C y\x3D2271709\nSensor at x\x3D172215\x2C y\x3D2327851: closest beacon is at x\x3D-101830\x2C y\x3D2000000\nSensor at x\x3D3953907\x2C y\x3D1957660: closest beacon is at x\x3D2882446\x2C y\x3D1934422\nSensor at x\x3D685737\x2C y\x3D2465261: closest beacon is at x\x3D1581951\x2C y\x3D2271709\nSensor at x\x3D1458348\x2C y\x3D2739442: closest beacon is at x\x3D1581951\x2C y\x3D2271709\nSensor at x\x3D3742876\x2C y\x3D2811554: closest beacon is at x\x3D3133845\x2C y\x3D3162635\nSensor at x\x3D437819\x2C y\x3D638526: closest beacon is at x\x3D-101830\x2C y\x3D2000000\nSensor at x\x3D2537979\x2C y\x3D1762726: closest beacon is at x\x3D2882446\x2C y\x3D1934422\nSensor at x\x3D1368739\x2C y\x3D2222863: closest beacon is at x\x3D1581951\x2C y\x3D2271709\nSensor at x\x3D2743572\x2C y\x3D3976937: closest beacon is at x\x3D2229474\x2C y\x3D3709584\nSensor at x\x3D2180640\x2C y\x3D105414: closest beacon is at x\x3D3011118\x2C y\x3D-101788\nSensor at x\x3D3845753\x2C y\x3D474814: closest beacon is at x\x3D3011118\x2C y\x3D-101788\nSensor at x\x3D2493694\x2C y\x3D3828087: closest beacon is at x\x3D2229474\x2C y\x3D3709584\nSensor at x\x3D2786014\x2C y\x3D3388077: closest beacon is at x\x3D3133845\x2C y\x3D3162635\nSensor at x\x3D3593418\x2C y\x3D3761871: closest beacon is at x\x3D3133845\x2C y\x3D3162635\nSensor at x\x3D856288\x2C y\x3D3880566: closest beacon is at x\x3D2229474\x2C y\x3D3709584\nSensor at x\x3D1757086\x2C y\x3D2518373: closest beacon is at x\x3D1581951\x2C y\x3D2271709\nSensor at x\x3D2853518\x2C y\x3D2939097: closest beacon is at x\x3D3133845\x2C y\x3D3162635\nSensor at x\x3D1682023\x2C y\x3D1449902: closest beacon is at x\x3D1581951\x2C y\x3D2271709\nSensor at x\x3D3360575\x2C y\x3D1739100: closest beacon is at x\x3D2882446\x2C y\x3D1934422\nSensor at x\x3D2904259\x2C y\x3D1465606: closest beacon is at x\x3D2882446\x2C y\x3D1934422\nSensor at x\x3D3078500\x2C y\x3D3564862: closest beacon is at x\x3D3133845\x2C y\x3D3162635\nSensor at x\x3D2835288\x2C y\x3D1011055: closest beacon is at x\x3D2882446\x2C y\x3D1934422\nSensor at x\x3D2998762\x2C y\x3D2414323: closest beacon is at x\x3D2882446\x2C y\x3D1934422", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTestData, Type = String, Dynamic = False, Default = \"Sensor at x\x3D2\x2C y\x3D18: closest beacon is at x\x3D-2\x2C y\x3D15\nSensor at x\x3D9\x2C y\x3D16: closest beacon is at x\x3D10\x2C y\x3D16\nSensor at x\x3D13\x2C y\x3D2: closest beacon is at x\x3D15\x2C y\x3D3\nSensor at x\x3D12\x2C y\x3D14: closest beacon is at x\x3D10\x2C y\x3D16\nSensor at x\x3D10\x2C y\x3D20: closest beacon is at x\x3D10\x2C y\x3D16\nSensor at x\x3D14\x2C y\x3D17: closest beacon is at x\x3D10\x2C y\x3D16\nSensor at x\x3D8\x2C y\x3D7: closest beacon is at x\x3D2\x2C y\x3D10\nSensor at x\x3D2\x2C y\x3D0: closest beacon is at x\x3D2\x2C y\x3D10\nSensor at x\x3D0\x2C y\x3D11: closest beacon is at x\x3D2\x2C y\x3D10\nSensor at x\x3D20\x2C y\x3D14: closest beacon is at x\x3D25\x2C y\x3D17\nSensor at x\x3D17\x2C y\x3D20: closest beacon is at x\x3D21\x2C y\x3D22\nSensor at x\x3D16\x2C y\x3D7: closest beacon is at x\x3D15\x2C y\x3D3\nSensor at x\x3D14\x2C y\x3D3: closest beacon is at x\x3D15\x2C y\x3D3\nSensor at x\x3D20\x2C y\x3D1: closest beacon is at x\x3D15\x2C y\x3D3", Scope = Private
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
		      Part2TextField.Text = current.Value("result").StringValue
		    Case "grid"
		      GridTextArea.Text = current.Value("grid").StringValue
		    Case "finish"
		      Spinner.Visible = False
		    End Select
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GridTextArea
	#tag Event
		Sub Opening()
		  Me.Style.FontName = "Courier New"
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
