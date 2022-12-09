#tag WebContainerControl
Begin WebContainer Day9Container
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
   Begin Day9WebThread PuzzleThread
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
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Constant, Name = kRealData, Type = String, Dynamic = False, Default = \"L 2\nD 1\nL 2\nU 2\nR 1\nD 2\nU 1\nR 2\nU 2\nL 1\nD 2\nL 1\nD 2\nL 2\nU 2\nD 2\nL 2\nR 1\nU 1\nD 2\nU 1\nL 1\nU 2\nD 2\nL 2\nD 2\nL 2\nR 2\nD 2\nU 2\nR 2\nU 2\nR 2\nU 1\nR 2\nD 2\nR 2\nD 1\nU 1\nL 1\nU 2\nR 1\nD 2\nU 1\nL 2\nD 2\nU 2\nL 1\nR 2\nD 2\nU 2\nD 1\nL 1\nU 2\nD 2\nL 2\nD 2\nR 2\nL 2\nR 2\nL 1\nU 2\nR 1\nD 1\nL 2\nU 1\nR 2\nU 1\nD 1\nU 2\nR 2\nU 2\nR 2\nD 2\nU 1\nD 2\nR 1\nU 1\nD 1\nR 1\nU 2\nL 2\nU 2\nR 1\nD 1\nR 2\nD 1\nL 2\nU 2\nR 2\nL 1\nR 2\nD 1\nU 2\nD 2\nL 1\nU 1\nR 2\nD 1\nU 2\nL 2\nU 2\nD 2\nL 2\nD 2\nR 1\nL 2\nU 2\nR 1\nD 1\nL 1\nD 3\nU 2\nD 2\nR 1\nL 3\nR 1\nU 2\nR 1\nL 2\nU 1\nL 3\nR 2\nU 2\nR 3\nU 3\nL 3\nU 1\nD 1\nR 3\nL 2\nU 1\nR 2\nU 1\nD 3\nU 1\nR 2\nL 2\nD 1\nL 1\nR 3\nU 2\nL 3\nR 2\nD 2\nL 1\nU 2\nR 2\nU 3\nL 1\nR 2\nL 3\nU 3\nL 1\nU 2\nR 2\nU 2\nD 2\nL 2\nU 1\nD 1\nU 2\nD 3\nR 2\nL 2\nU 1\nR 2\nD 3\nU 2\nL 2\nU 1\nR 1\nL 1\nD 1\nL 3\nR 2\nD 2\nL 2\nD 1\nU 3\nD 3\nU 3\nL 3\nR 2\nL 1\nU 2\nR 3\nU 2\nR 2\nU 3\nD 2\nU 1\nL 3\nU 1\nL 1\nD 2\nL 2\nR 1\nL 1\nD 3\nL 2\nD 2\nR 2\nL 3\nR 2\nL 2\nU 1\nL 3\nU 2\nR 2\nD 2\nU 2\nL 1\nD 3\nR 1\nU 3\nD 2\nU 3\nL 1\nD 2\nR 1\nU 3\nR 4\nL 1\nU 4\nR 2\nD 2\nU 3\nD 1\nL 1\nD 4\nL 3\nD 4\nL 3\nD 3\nU 4\nL 2\nD 1\nU 1\nR 4\nD 4\nL 2\nR 3\nU 3\nD 1\nL 3\nD 2\nL 4\nD 4\nR 3\nD 4\nU 4\nR 3\nL 4\nU 1\nL 1\nR 4\nD 2\nR 4\nU 3\nD 2\nR 4\nU 4\nD 1\nU 2\nD 3\nU 2\nL 3\nR 4\nL 1\nU 4\nD 3\nL 4\nR 2\nU 1\nR 1\nD 2\nL 2\nU 2\nL 3\nR 1\nL 2\nD 1\nR 3\nL 4\nU 2\nR 1\nU 1\nR 3\nL 3\nD 2\nU 2\nL 1\nR 1\nL 2\nD 2\nL 1\nR 2\nL 1\nU 1\nR 1\nL 4\nR 3\nU 4\nR 4\nL 2\nR 4\nL 1\nU 2\nR 3\nL 4\nU 1\nR 1\nD 1\nU 3\nL 1\nD 2\nU 2\nD 3\nR 4\nU 1\nR 3\nD 2\nU 1\nD 1\nU 4\nR 2\nD 4\nL 3\nR 4\nU 3\nD 4\nL 3\nU 2\nD 2\nL 4\nD 1\nL 2\nR 2\nU 3\nR 5\nL 3\nU 5\nL 4\nU 3\nD 1\nU 2\nD 5\nL 5\nD 3\nR 3\nD 3\nU 3\nD 5\nU 4\nD 5\nL 5\nR 2\nD 1\nR 5\nU 2\nL 2\nU 5\nL 1\nR 4\nU 5\nR 1\nD 5\nR 3\nU 1\nR 5\nD 5\nL 1\nD 4\nR 5\nL 1\nD 3\nU 2\nD 1\nU 1\nD 4\nL 5\nD 4\nR 1\nL 2\nU 3\nL 1\nU 3\nL 3\nU 4\nL 2\nR 4\nD 5\nU 1\nL 3\nU 5\nR 1\nD 4\nU 3\nL 5\nU 1\nL 3\nD 3\nR 4\nL 5\nU 1\nL 5\nU 2\nD 1\nR 2\nL 2\nD 4\nL 5\nD 2\nR 5\nL 4\nD 1\nR 5\nU 3\nR 2\nD 3\nL 1\nD 1\nL 4\nU 5\nL 2\nD 3\nR 5\nU 2\nL 1\nU 5\nD 4\nU 1\nR 2\nL 1\nU 2\nL 3\nD 1\nU 3\nL 1\nR 5\nU 3\nR 3\nU 2\nR 5\nL 5\nU 1\nL 5\nD 5\nR 1\nU 4\nL 6\nD 4\nU 2\nL 1\nU 5\nL 1\nR 6\nD 3\nU 5\nR 3\nU 5\nD 3\nR 3\nL 2\nU 2\nL 6\nR 3\nU 5\nD 5\nL 6\nR 1\nL 1\nD 5\nU 1\nR 5\nL 4\nR 1\nL 5\nD 1\nL 2\nU 4\nL 5\nU 4\nR 2\nL 1\nD 2\nR 4\nU 5\nD 4\nU 2\nL 3\nR 2\nL 1\nD 3\nU 1\nL 2\nU 6\nL 2\nU 3\nR 2\nD 1\nL 4\nR 5\nL 3\nU 5\nL 6\nR 3\nU 4\nL 2\nR 3\nU 3\nL 1\nD 5\nR 5\nD 5\nU 5\nL 6\nR 5\nL 4\nU 2\nR 5\nU 1\nD 2\nR 2\nD 1\nU 6\nL 5\nD 1\nR 6\nU 5\nR 3\nD 1\nR 4\nD 2\nU 5\nL 5\nR 2\nD 2\nR 1\nU 4\nR 3\nU 4\nL 6\nD 3\nR 4\nL 4\nU 5\nD 1\nU 1\nD 5\nU 4\nL 5\nD 1\nR 1\nU 5\nD 7\nR 5\nD 2\nR 2\nD 7\nL 1\nR 2\nD 2\nR 7\nU 4\nD 3\nU 3\nD 3\nL 4\nD 2\nR 6\nL 7\nD 6\nU 4\nD 1\nL 4\nU 3\nD 1\nU 1\nL 6\nD 4\nL 7\nU 6\nR 4\nL 7\nU 2\nD 5\nL 7\nU 3\nR 3\nU 6\nR 7\nU 4\nR 4\nL 4\nU 6\nR 6\nD 7\nU 4\nD 5\nL 4\nU 7\nR 7\nD 3\nL 5\nU 7\nD 3\nU 1\nD 7\nR 7\nL 4\nU 7\nD 1\nR 3\nD 3\nU 4\nR 2\nU 4\nR 4\nU 7\nR 4\nL 2\nU 4\nR 7\nL 6\nU 1\nD 2\nU 3\nD 1\nL 6\nD 5\nL 7\nR 6\nD 6\nL 4\nD 4\nU 3\nD 3\nL 7\nR 7\nL 7\nD 6\nU 5\nD 7\nU 7\nD 4\nU 7\nL 6\nU 3\nD 3\nR 3\nD 4\nL 2\nU 2\nR 4\nD 5\nR 7\nU 7\nL 2\nU 1\nD 4\nU 3\nL 4\nU 6\nD 4\nL 4\nU 6\nD 5\nL 1\nR 4\nL 2\nD 6\nR 4\nD 3\nR 3\nL 1\nD 2\nU 3\nL 1\nU 7\nL 3\nR 5\nU 1\nL 4\nD 8\nL 7\nD 8\nL 4\nU 6\nR 2\nD 4\nR 3\nD 3\nR 6\nL 8\nR 6\nD 4\nL 5\nR 5\nD 3\nU 6\nD 5\nU 3\nL 1\nD 4\nU 2\nR 5\nD 8\nL 3\nD 2\nU 8\nL 2\nD 6\nL 6\nD 2\nR 8\nL 3\nD 8\nU 5\nL 1\nR 1\nD 3\nL 5\nR 7\nU 4\nD 1\nL 2\nD 2\nL 5\nD 7\nR 7\nU 5\nL 5\nD 6\nL 1\nU 3\nL 4\nR 6\nD 7\nU 1\nR 1\nL 8\nU 3\nD 4\nR 2\nD 8\nL 1\nR 8\nU 7\nL 6\nU 4\nD 4\nL 2\nD 8\nU 8\nR 4\nU 3\nD 7\nR 6\nD 8\nR 5\nL 4\nD 4\nL 8\nD 3\nR 4\nL 6\nU 8\nD 1\nL 3\nR 7\nL 4\nU 3\nD 2\nU 4\nR 2\nD 1\nU 5\nL 7\nU 3\nL 8\nU 1\nL 4\nR 4\nU 1\nR 2\nL 4\nU 8\nD 7\nL 8\nD 4\nU 3\nD 5\nU 2\nD 2\nR 1\nU 6\nL 3\nR 8\nU 2\nR 2\nD 7\nL 3\nU 3\nR 8\nU 4\nR 7\nU 5\nR 7\nD 4\nR 4\nD 7\nU 5\nL 2\nD 2\nL 3\nU 2\nD 2\nL 6\nR 6\nL 5\nU 9\nD 3\nL 4\nU 3\nL 7\nD 6\nL 6\nU 7\nR 8\nU 8\nL 9\nD 7\nL 9\nD 1\nL 1\nR 7\nU 7\nL 5\nD 9\nR 8\nL 1\nR 5\nL 3\nD 3\nU 1\nR 8\nU 6\nD 3\nR 5\nU 4\nL 1\nR 3\nL 1\nU 7\nD 3\nR 3\nD 8\nR 5\nU 2\nR 5\nD 1\nL 5\nD 5\nR 6\nL 1\nD 9\nL 2\nD 9\nU 4\nL 1\nD 8\nL 2\nU 2\nD 7\nU 9\nL 8\nD 1\nR 2\nL 3\nD 4\nL 6\nU 5\nD 5\nU 1\nL 5\nU 7\nD 7\nL 9\nD 8\nR 8\nU 1\nD 9\nL 8\nU 9\nD 2\nR 6\nL 3\nU 6\nR 3\nU 5\nD 8\nL 5\nD 9\nU 5\nR 4\nU 5\nR 1\nL 5\nU 4\nL 4\nD 1\nL 1\nD 7\nR 7\nU 2\nL 5\nR 9\nU 6\nD 2\nU 6\nR 1\nD 8\nU 6\nD 3\nU 10\nD 5\nL 6\nR 6\nL 5\nD 7\nU 3\nL 4\nD 3\nR 10\nU 8\nD 3\nL 1\nR 9\nL 2\nR 9\nU 10\nD 3\nU 6\nR 8\nD 4\nR 7\nL 1\nU 8\nD 7\nR 2\nU 8\nD 8\nL 7\nU 6\nR 4\nD 4\nR 1\nU 4\nR 2\nL 5\nD 8\nU 4\nL 8\nU 1\nD 1\nL 6\nU 10\nR 10\nL 9\nU 6\nL 2\nU 2\nL 1\nU 1\nL 6\nD 4\nU 2\nD 6\nU 4\nD 10\nR 8\nD 8\nR 8\nD 2\nU 6\nL 9\nD 2\nL 4\nD 3\nL 4\nR 3\nU 2\nD 1\nU 1\nR 1\nD 7\nU 3\nR 10\nD 1\nU 6\nR 2\nD 1\nR 11\nD 1\nR 7\nU 4\nD 8\nU 7\nR 11\nL 10\nR 7\nL 3\nD 1\nU 2\nL 9\nR 5\nL 6\nR 6\nU 2\nR 3\nU 8\nD 6\nU 7\nL 6\nD 11\nL 10\nD 3\nR 3\nU 11\nD 7\nU 2\nR 1\nL 6\nR 2\nL 2\nD 3\nL 8\nR 6\nD 10\nU 6\nD 11\nL 7\nR 11\nD 2\nL 9\nU 7\nD 5\nU 5\nD 11\nL 4\nR 8\nD 9\nL 4\nU 1\nR 6\nD 11\nU 6\nL 5\nU 3\nL 11\nD 8\nU 2\nD 9\nR 2\nL 10\nU 8\nD 7\nU 3\nL 7\nD 10\nL 7\nD 10\nR 1\nD 10\nL 7\nU 3\nL 1\nR 9\nD 5\nL 11\nR 3\nL 9\nR 8\nD 2\nU 5\nL 4\nD 2\nU 7\nR 9\nU 9\nL 2\nD 1\nR 6\nL 5\nD 8\nU 8\nR 6\nU 3\nL 7\nU 4\nR 7\nL 1\nD 7\nR 2\nU 10\nD 3\nU 4\nR 8\nD 5\nL 8\nD 5\nU 8\nR 6\nU 2\nL 8\nU 7\nL 12\nD 11\nL 8\nD 12\nR 10\nL 10\nU 7\nD 2\nR 6\nL 11\nU 4\nD 8\nU 11\nL 1\nD 12\nL 3\nR 10\nD 2\nR 4\nL 1\nD 2\nR 2\nL 12\nU 3\nL 10\nU 4\nD 10\nU 8\nL 5\nR 5\nL 12\nU 1\nD 10\nU 2\nD 12\nU 12\nR 2\nU 1\nR 4\nD 8\nL 9\nR 7\nL 5\nD 5\nU 5\nL 7\nU 2\nL 7\nU 6\nL 12\nU 11\nR 10\nU 3\nL 4\nD 6\nR 11\nU 3\nR 5\nL 2\nU 9\nR 2\nL 10\nD 3\nU 12\nR 9\nD 2\nU 12\nL 1\nU 9\nD 9\nL 2\nD 4\nR 11\nD 2\nL 2\nU 12\nR 10\nD 6\nU 11\nR 9\nD 12\nL 2\nU 11\nL 5\nU 6\nR 7\nU 9\nL 10\nR 1\nL 3\nR 3\nD 2\nR 5\nL 12\nR 1\nU 3\nD 1\nL 3\nU 5\nD 9\nL 10\nU 9\nD 11\nL 12\nU 7\nR 12\nL 3\nD 2\nR 10\nU 13\nR 6\nL 5\nU 12\nL 2\nR 13\nU 8\nD 3\nR 8\nL 3\nR 3\nD 9\nR 6\nD 10\nR 2\nU 12\nR 1\nD 2\nR 12\nD 7\nU 3\nL 13\nR 11\nD 4\nU 9\nL 12\nU 3\nL 7\nD 2\nL 12\nD 12\nR 10\nD 11\nU 7\nR 4\nU 10\nR 11\nL 11\nR 7\nD 13\nU 11\nR 11\nU 3\nL 6\nU 9\nD 1\nU 3\nD 13\nR 10\nU 3\nR 3\nD 7\nU 6\nL 11\nR 10\nD 9\nR 12\nD 5\nR 7\nD 3\nR 5\nL 1\nR 10\nL 8\nD 12\nR 2\nU 9\nR 13\nU 13\nR 12\nL 8\nD 13\nR 1\nL 6\nU 10\nD 2\nU 7\nL 6\nU 6\nR 7\nU 12\nR 10\nU 12\nL 5\nD 4\nL 8\nU 12\nL 13\nD 6\nR 1\nD 2\nL 10\nU 13\nR 12\nD 4\nL 8\nR 11\nD 5\nU 11\nD 7\nL 1\nU 12\nL 6\nU 12\nD 7\nL 8\nR 13\nD 12\nR 11\nD 2\nU 14\nL 5\nD 2\nL 6\nU 14\nL 1\nU 2\nR 12\nL 9\nU 14\nD 2\nU 5\nD 3\nU 11\nR 7\nU 5\nR 13\nD 5\nL 2\nR 12\nU 6\nD 1\nU 14\nD 3\nL 13\nU 2\nD 2\nU 1\nD 12\nU 12\nD 4\nU 2\nD 2\nR 8\nU 3\nD 13\nR 2\nD 6\nU 11\nD 12\nL 3\nU 7\nD 14\nL 4\nU 11\nL 4\nD 2\nR 13\nL 6\nU 9\nR 14\nU 10\nD 11\nL 12\nR 4\nD 9\nR 11\nD 8\nR 7\nD 12\nR 7\nU 4\nL 8\nD 7\nR 9\nU 7\nR 13\nU 3\nR 11\nD 7\nU 3\nR 9\nL 8\nU 2\nD 5\nU 8\nD 1\nL 8\nU 12\nR 13\nL 7\nR 8\nL 10\nR 2\nD 13\nL 12\nR 2\nL 7\nR 9\nU 7\nD 8\nL 10\nD 12\nU 14\nR 5\nD 11\nL 12\nU 4\nL 1\nD 5\nU 6\nD 9\nU 8\nR 8\nD 11\nR 6\nU 5\nR 1\nL 15\nD 5\nU 1\nR 6\nD 8\nR 15\nU 15\nR 3\nD 14\nL 1\nD 2\nL 13\nR 13\nU 5\nL 6\nD 10\nR 7\nU 4\nD 15\nR 14\nD 12\nU 4\nD 12\nU 12\nL 12\nR 8\nL 15\nD 1\nR 6\nU 5\nD 7\nR 8\nU 7\nD 6\nU 1\nD 1\nL 2\nR 3\nD 13\nU 4\nD 4\nU 6\nL 13\nD 10\nR 14\nL 10\nD 15\nU 12\nR 10\nD 13\nL 1\nR 13\nD 10\nU 2\nR 5\nD 3\nU 13\nD 1\nR 15\nU 4\nL 8\nD 6\nL 13\nR 4\nL 11\nD 15\nU 11\nL 13\nD 6\nL 15\nU 9\nL 1\nR 11\nU 14\nR 6\nL 12\nR 5\nU 5\nL 11\nD 13\nU 3\nL 4\nR 1\nD 11\nL 8\nD 9\nR 12\nD 14\nU 15\nD 14\nU 14\nL 14\nU 4\nL 13\nD 8\nU 13\nR 7\nL 11\nD 15\nL 5\nU 7\nR 10\nD 13\nR 15\nD 2\nR 2\nL 10\nR 4\nU 7\nD 15\nL 6\nD 9\nL 16\nR 10\nU 3\nR 6\nL 8\nU 15\nR 4\nD 1\nU 8\nL 14\nR 6\nU 8\nL 10\nD 4\nU 9\nR 4\nD 1\nU 4\nL 2\nR 16\nL 6\nD 16\nU 14\nR 10\nL 14\nU 3\nR 7\nU 6\nR 13\nL 5\nR 15\nL 7\nR 3\nD 16\nL 11\nU 12\nL 11\nD 8\nR 7\nL 11\nR 5\nU 8\nR 2\nU 10\nR 11\nU 1\nD 14\nU 14\nR 4\nL 6\nD 4\nU 16\nD 2\nR 12\nL 6\nU 7\nL 7\nD 8\nR 4\nD 8\nU 11\nL 13\nU 9\nD 8\nL 8\nU 16\nD 3\nL 1\nR 13\nU 2\nL 12\nR 2\nL 3\nD 11\nR 4\nL 12\nR 12\nU 4\nD 8\nL 12\nU 16\nL 9\nR 5\nU 13\nL 1\nR 10\nL 15\nU 2\nR 8\nL 8\nD 11\nR 7\nL 7\nR 2\nL 13\nD 11\nL 11\nD 7\nL 8\nU 11\nR 7\nL 15\nD 5\nL 13\nR 8\nD 4\nR 6\nL 1\nU 10\nL 17\nU 16\nR 6\nD 17\nU 14\nL 13\nD 3\nU 11\nR 10\nD 3\nL 15\nU 13\nR 7\nL 12\nU 3\nL 7\nR 13\nL 10\nR 13\nL 10\nD 1\nR 11\nL 12\nU 6\nR 2\nL 4\nR 11\nU 15\nD 6\nL 15\nR 7\nU 16\nD 9\nL 12\nD 14\nL 5\nD 15\nL 17\nR 7\nU 17\nL 10\nD 7\nL 2\nD 1\nU 4\nD 17\nU 17\nD 9\nL 14\nD 16\nL 2\nD 8\nL 5\nD 8\nR 6\nL 15\nR 17\nD 14\nU 17\nL 17\nU 12\nR 10\nL 12\nU 16\nR 10\nD 5\nR 2\nU 11\nR 6\nL 2\nR 2\nD 17\nU 17\nD 12\nU 5\nL 14\nU 2\nR 2\nD 3\nU 4\nR 5\nU 17\nL 9\nU 4\nR 2\nL 5\nU 8\nL 2\nD 5\nR 14\nU 15\nR 14\nD 3\nU 16\nL 3\nD 6\nU 3\nL 2\nR 3\nL 1\nR 6\nL 14\nU 10\nL 13\nR 8\nU 3\nD 7\nU 9\nD 2\nL 14\nD 5\nR 7\nD 8\nL 18\nR 13\nU 14\nD 6\nR 10\nL 10\nU 2\nL 11\nR 12\nU 6\nR 16\nL 10\nU 7\nR 12\nL 15\nD 2\nU 16\nL 4\nD 2\nL 1\nR 8\nD 7\nL 11\nR 4\nD 13\nU 13\nR 1\nD 15\nL 12\nR 5\nD 10\nU 8\nR 14\nL 10\nU 9\nR 7\nU 13\nL 5\nU 9\nL 15\nR 4\nD 13\nR 12\nD 5\nR 18\nL 3\nD 13\nR 17\nD 9\nL 8\nD 3\nL 5\nD 8\nU 10\nD 8\nL 2\nU 10\nR 6\nD 13\nL 17\nR 17\nD 16\nR 14\nL 6\nU 17\nR 9\nD 11\nL 7\nU 16\nR 16\nL 1\nR 17\nD 9\nL 6\nD 16\nR 12\nL 7\nU 5\nD 14\nR 8\nU 12\nL 12\nR 8\nU 17\nL 13\nD 17\nL 15\nR 7\nU 11\nL 10\nR 8\nU 14\nR 6\nU 11\nD 17\nU 13\nL 12\nU 11\nL 16\nD 13\nU 11\nL 2\nR 11\nL 13\nU 12\nR 15\nU 17\nL 10\nU 17\nD 2\nR 1\nL 10\nR 10\nU 14\nL 12\nU 8\nR 4\nL 12\nU 13\nL 2\nR 9\nD 14\nU 17\nL 16\nD 9\nR 3\nL 17\nU 8\nR 16\nD 11\nL 1\nU 15\nL 19\nR 8\nD 11\nR 14\nD 19\nR 12\nU 3\nL 9\nU 2\nL 6\nD 6\nU 16\nD 4\nL 1\nD 10\nR 8\nU 17\nD 2\nR 6\nD 19\nU 6\nR 9\nU 17\nD 7\nL 15\nD 13\nL 17\nU 1\nR 17\nD 3\nL 15\nU 16\nD 13\nR 13\nD 14\nL 12\nD 4\nL 16\nU 15\nR 8\nU 19\nD 15\nL 5\nR 15\nL 19\nU 6\nD 6\nU 10\nL 1\nR 19\nL 1\nR 6\nL 1\nU 17\nR 10\nU 4\nD 5\nR 6\nU 3\nR 12\nU 13\nD 7\nR 15\nU 5\nR 2\nU 10\nL 13\nU 3\nD 5\nR 19\nU 9\nD 5\nL 3\nD 17\nL 16\nD 7\nL 16\nR 11\nD 3\nU 1\nR 2\nD 2\nL 4\nR 4\nU 17\nD 4\nL 10\nU 11\nD 13", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTestData, Type = String, Dynamic = False, Default = \"R 4\nU 4\nL 3\nD 1\nR 4\nD 1\nL 5\nR 2", Scope = Private
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
