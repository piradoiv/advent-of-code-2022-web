#tag WebContainerControl
Begin WebContainer Day16Container
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
   Begin Day16WebThread PuzzleThread
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
   Begin WebLabel WIPLabel
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   446
      Index           =   -2147483648
      indicator       =   0
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   5
      TabStop         =   True
      Text            =   "Work in progress"
      TextAlignment   =   2
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   506
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Constant, Name = kRealData, Type = String, Dynamic = False, Default = \"Valve WT has flow rate\x3D0; tunnels lead to valves BD\x2C FQ\nValve UG has flow rate\x3D0; tunnels lead to valves FQ\x2C YB\nValve FN has flow rate\x3D0; tunnels lead to valves TV\x2C GA\nValve RU has flow rate\x3D11; tunnels lead to valves YZ\x2C QS\x2C BL\x2C BT\x2C WJ\nValve RH has flow rate\x3D0; tunnels lead to valves AS\x2C II\nValve FL has flow rate\x3D0; tunnels lead to valves HR\x2C PQ\nValve KQ has flow rate\x3D18; tunnels lead to valves FR\x2C BN\nValve PM has flow rate\x3D25; tunnels lead to valves YZ\x2C FR\nValve RQ has flow rate\x3D0; tunnels lead to valves FQ\x2C MW\nValve BL has flow rate\x3D0; tunnels lead to valves RU\x2C IR\nValve FF has flow rate\x3D0; tunnels lead to valves QS\x2C ED\nValve KP has flow rate\x3D0; tunnels lead to valves QM\x2C MA\nValve YB has flow rate\x3D0; tunnels lead to valves UG\x2C HR\nValve TV has flow rate\x3D17; tunnels lead to valves BD\x2C MT\x2C FN\nValve HY has flow rate\x3D0; tunnels lead to valves DW\x2C IU\nValve KF has flow rate\x3D0; tunnels lead to valves AA\x2C HR\nValve YC has flow rate\x3D0; tunnels lead to valves II\x2C MA\nValve EE has flow rate\x3D0; tunnels lead to valves AA\x2C CD\nValve ED has flow rate\x3D9; tunnels lead to valves HG\x2C FF\nValve SA has flow rate\x3D0; tunnels lead to valves MW\x2C LS\nValve II has flow rate\x3D20; tunnels lead to valves YC\x2C CY\x2C QP\x2C RH\nValve BN has flow rate\x3D0; tunnels lead to valves BT\x2C KQ\nValve MO has flow rate\x3D0; tunnels lead to valves XO\x2C VI\nValve YZ has flow rate\x3D0; tunnels lead to valves RU\x2C PM\nValve WJ has flow rate\x3D0; tunnels lead to valves RU\x2C QP\nValve AW has flow rate\x3D0; tunnels lead to valves HR\x2C DW\nValve MJ has flow rate\x3D0; tunnels lead to valves BP\x2C AA\nValve DW has flow rate\x3D4; tunnels lead to valves AU\x2C CB\x2C HY\x2C GL\x2C AW\nValve QM has flow rate\x3D0; tunnels lead to valves KP\x2C FQ\nValve LF has flow rate\x3D5; tunnels lead to valves LS\x2C QN\x2C AU\x2C BP\x2C ZY\nValve QS has flow rate\x3D0; tunnels lead to valves FF\x2C RU\nValve BT has flow rate\x3D0; tunnels lead to valves BN\x2C RU\nValve VI has flow rate\x3D22; tunnel leads to valve MO\nValve LS has flow rate\x3D0; tunnels lead to valves LF\x2C SA\nValve QD has flow rate\x3D0; tunnels lead to valves HR\x2C ZY\nValve HG has flow rate\x3D0; tunnels lead to valves AS\x2C ED\nValve BD has flow rate\x3D0; tunnels lead to valves WT\x2C TV\nValve CD has flow rate\x3D0; tunnels lead to valves EE\x2C MW\nValve QP has flow rate\x3D0; tunnels lead to valves II\x2C WJ\nValve MW has flow rate\x3D7; tunnels lead to valves PQ\x2C SA\x2C CB\x2C CD\x2C RQ\nValve AU has flow rate\x3D0; tunnels lead to valves DW\x2C LF\nValve RR has flow rate\x3D0; tunnels lead to valves AS\x2C MA\nValve GA has flow rate\x3D0; tunnels lead to valves FN\x2C MA\nValve MT has flow rate\x3D0; tunnels lead to valves CY\x2C TV\nValve HR has flow rate\x3D14; tunnels lead to valves KF\x2C YB\x2C QD\x2C AW\x2C FL\nValve AS has flow rate\x3D16; tunnels lead to valves RR\x2C RH\x2C HG\x2C IR\nValve CY has flow rate\x3D0; tunnels lead to valves MT\x2C II\nValve AA has flow rate\x3D0; tunnels lead to valves OX\x2C KF\x2C GL\x2C MJ\x2C EE\nValve IU has flow rate\x3D0; tunnels lead to valves XO\x2C HY\nValve XO has flow rate\x3D23; tunnels lead to valves IU\x2C MO\nValve FR has flow rate\x3D0; tunnels lead to valves KQ\x2C PM\nValve CB has flow rate\x3D0; tunnels lead to valves MW\x2C DW\nValve ZY has flow rate\x3D0; tunnels lead to valves QD\x2C LF\nValve BP has flow rate\x3D0; tunnels lead to valves LF\x2C MJ\nValve QN has flow rate\x3D0; tunnels lead to valves LF\x2C FQ\nValve IR has flow rate\x3D0; tunnels lead to valves AS\x2C BL\nValve PQ has flow rate\x3D0; tunnels lead to valves FL\x2C MW\nValve GL has flow rate\x3D0; tunnels lead to valves AA\x2C DW\nValve OX has flow rate\x3D0; tunnels lead to valves MA\x2C AA\nValve MA has flow rate\x3D10; tunnels lead to valves RR\x2C YC\x2C GA\x2C OX\x2C KP\nValve FQ has flow rate\x3D12; tunnels lead to valves QN\x2C WT\x2C UG\x2C RQ\x2C QM", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTestData, Type = String, Dynamic = False, Default = \"Valve AA has flow rate\x3D0; tunnels lead to valves DD\x2C II\x2C BB\nValve BB has flow rate\x3D13; tunnels lead to valves CC\x2C AA\nValve CC has flow rate\x3D2; tunnels lead to valves DD\x2C BB\nValve DD has flow rate\x3D20; tunnels lead to valves CC\x2C AA\x2C EE\nValve EE has flow rate\x3D3; tunnels lead to valves FF\x2C DD\nValve FF has flow rate\x3D0; tunnels lead to valves EE\x2C GG\nValve GG has flow rate\x3D0; tunnels lead to valves FF\x2C HH\nValve HH has flow rate\x3D22; tunnel leads to valve GG\nValve II has flow rate\x3D0; tunnels lead to valves AA\x2C JJ\nValve JJ has flow rate\x3D21; tunnel leads to valve II", Scope = Private
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
