#tag WebContainerControl
Begin WebContainer Day5Container
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   762
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
   Width           =   984
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebButton ShowInputButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "OK"
      ControlID       =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   787
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   0
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   177
      _mPanelIndex    =   -1
   End
   Begin WebTextField CratesTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Top Layer:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   70
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   787
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   1
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   137
      Visible         =   True
      Width           =   177
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
      Left            =   248
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
      Top             =   184
      Visible         =   True
      Width           =   640
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin WebChart CargoChart
      ControlID       =   ""
      DatasetCount    =   0
      Enabled         =   True
      HasAnimation    =   False
      HasLegend       =   False
      Height          =   451
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Mode            =   1
      Scope           =   2
      TabIndex        =   4
      Title           =   ""
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   333
      _mMode          =   ""
      _mPanelIndex    =   -1
   End
   Begin WebListBox StepListBox
      ColumnCount     =   5
      ColumnWidths    =   "140,140,140,140,*"
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   248
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   "Step	Amount	Origin	Destination	Top crates marks"
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      NoRowsMessage   =   ""
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   1
      Scope           =   2
      SearchCriteria  =   ""
      SelectedRowColor=   &c0272D300
      SelectedRowIndex=   0
      TabIndex        =   5
      Tooltip         =   ""
      Top             =   494
      Visible         =   True
      Width           =   333
      _mPanelIndex    =   -1
   End
   Begin WebRadioGroup CrateMoverRadioGroup
      ControlID       =   ""
      Enabled         =   False
      Height          =   63
      Horizontal      =   False
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   "CrateMover 9000\nCrateMover 9001"
      Left            =   787
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      SelectedIndex   =   0
      TabIndex        =   6
      Tooltip         =   ""
      Top             =   66
      Visible         =   True
      Width           =   177
      _mInitialValue  =   "Option 1\rOption 2"
      _mPanelIndex    =   -1
   End
   Begin WebProgressWheel Spinner
      Colorize        =   False
      ControlID       =   ""
      Enabled         =   True
      Height          =   25
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   939
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
      TabIndex        =   7
      Tooltip         =   ""
      Top             =   137
      Visible         =   False
      Width           =   25
      _mPanelIndex    =   -1
   End
   Begin WebThread CargoCraneThread
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      ThreadID        =   0
      ThreadState     =   ""
   End
   Begin CargoCraneStepDataSource CargoStepDataSource
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   2
   End
   Begin WebTextArea StacksLabel
      AllowReturnKey  =   True
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      Height          =   722
      Hint            =   "Select a Row from the list."
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   361
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   8
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   404
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub ProcessInput()
		  If mInput.Trim = "" Then Return
		  
		  CratesTextField.Text = "Processing..."
		  Spinner.Visible = True
		  StepListBox.SelectedRowIndex = -1
		  StacksLabel.Text = ""
		  
		  CargoCraneThread.Stop
		  CargoCraneThread.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function StacksToASCII(stacks() As CargoStack) As String
		  Var rows() As String
		  
		  // Draw each stack row
		  Var maxRows As Integer
		  For i As Integer = 0 To stacks.LastIndex
		    maxRows = Max(maxRows, stacks(i).Count - 1)
		  Next
		  
		  For y As Integer = maxRows DownTo 0
		    Var crates() As String
		    For x As Integer = 0 To stacks.LastIndex
		      Var mark As String = stacks(x).GetMarkAt(y)
		      crates.Add(If(mark <> "", "[" + mark + "]", "   "))
		    Next
		    rows.Add(String.FromArray(crates, " "))
		  Next
		  
		  // Draw the labels
		  Var stackNames() As String
		  For i As Integer = 1 To stacks.Count
		    stackNames.Add(" " + i.ToString + " ")
		  Next
		  rows.Add(String.FromArray(stackNames, " "))
		  
		  Return String.FromArray(rows, EndOfLine)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mCraneSteps() As CargoCraneStep
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mInitialStacks() As CargoStack
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mInput As String
	#tag EndProperty


	#tag Constant, Name = kRealData, Type = String, Dynamic = False, Default = \"        [F] [Q]         [Q]        \n[B]     [Q] [V] [D]     [S]        \n[S] [P] [T] [R] [M]     [D]        \n[J] [V] [W] [M] [F]     [J]     [J]\n[Z] [G] [S] [W] [N] [D] [R]     [T]\n[V] [M] [B] [G] [S] [C] [T] [V] [S]\n[D] [S] [L] [J] [L] [G] [G] [F] [R]\n[G] [Z] [C] [H] [C] [R] [H] [P] [D]\n 1   2   3   4   5   6   7   8   9 \n\nmove 3 from 5 to 2\nmove 3 from 8 to 4\nmove 7 from 7 to 3\nmove 14 from 3 to 9\nmove 8 from 4 to 1\nmove 1 from 7 to 5\nmove 2 from 6 to 4\nmove 4 from 5 to 7\nmove 1 from 3 to 6\nmove 3 from 4 to 3\nmove 1 from 4 to 1\nmove 5 from 1 to 9\nmove 1 from 4 to 6\nmove 4 from 7 to 4\nmove 15 from 9 to 2\nmove 7 from 1 to 6\nmove 3 from 3 to 5\nmove 1 from 4 to 9\nmove 2 from 5 to 3\nmove 2 from 4 to 9\nmove 4 from 1 to 6\nmove 1 from 3 to 1\nmove 1 from 3 to 2\nmove 4 from 6 to 3\nmove 24 from 2 to 8\nmove 4 from 9 to 8\nmove 1 from 1 to 3\nmove 2 from 5 to 4\nmove 1 from 2 to 4\nmove 19 from 8 to 1\nmove 5 from 3 to 9\nmove 8 from 1 to 3\nmove 3 from 4 to 1\nmove 6 from 9 to 5\nmove 2 from 3 to 4\nmove 1 from 8 to 5\nmove 2 from 4 to 6\nmove 11 from 6 to 1\nmove 8 from 8 to 7\nmove 1 from 6 to 5\nmove 13 from 1 to 3\nmove 1 from 1 to 7\nmove 2 from 7 to 8\nmove 5 from 7 to 1\nmove 2 from 8 to 4\nmove 3 from 5 to 3\nmove 11 from 3 to 1\nmove 2 from 5 to 3\nmove 2 from 5 to 3\nmove 2 from 7 to 1\nmove 7 from 3 to 1\nmove 1 from 4 to 5\nmove 1 from 6 to 4\nmove 3 from 4 to 7\nmove 3 from 7 to 1\nmove 6 from 3 to 5\nmove 1 from 5 to 9\nmove 4 from 5 to 4\nmove 2 from 3 to 4\nmove 8 from 9 to 2\nmove 5 from 4 to 6\nmove 1 from 6 to 5\nmove 1 from 4 to 9\nmove 39 from 1 to 7\nmove 7 from 2 to 6\nmove 1 from 9 to 3\nmove 1 from 2 to 7\nmove 1 from 3 to 1\nmove 5 from 7 to 3\nmove 4 from 5 to 1\nmove 19 from 7 to 9\nmove 1 from 9 to 8\nmove 1 from 9 to 7\nmove 5 from 9 to 3\nmove 6 from 6 to 7\nmove 1 from 8 to 3\nmove 4 from 1 to 4\nmove 23 from 7 to 6\nmove 1 from 1 to 6\nmove 21 from 6 to 2\nmove 3 from 4 to 8\nmove 7 from 6 to 1\nmove 1 from 4 to 9\nmove 1 from 6 to 7\nmove 6 from 1 to 2\nmove 1 from 7 to 4\nmove 15 from 2 to 8\nmove 5 from 3 to 8\nmove 22 from 8 to 7\nmove 1 from 8 to 1\nmove 5 from 3 to 4\nmove 1 from 3 to 2\nmove 1 from 1 to 2\nmove 3 from 4 to 8\nmove 3 from 8 to 9\nmove 11 from 2 to 1\nmove 2 from 1 to 4\nmove 15 from 9 to 5\nmove 22 from 7 to 3\nmove 2 from 4 to 9\nmove 3 from 4 to 2\nmove 8 from 1 to 8\nmove 6 from 8 to 6\nmove 1 from 6 to 2\nmove 3 from 6 to 9\nmove 3 from 2 to 7\nmove 4 from 2 to 9\nmove 2 from 7 to 5\nmove 1 from 1 to 7\nmove 2 from 8 to 2\nmove 2 from 7 to 5\nmove 9 from 5 to 3\nmove 8 from 5 to 2\nmove 1 from 6 to 4\nmove 1 from 6 to 9\nmove 1 from 2 to 9\nmove 2 from 5 to 1\nmove 7 from 2 to 3\nmove 1 from 4 to 3\nmove 1 from 2 to 4\nmove 5 from 3 to 4\nmove 6 from 9 to 3\nmove 1 from 2 to 6\nmove 6 from 9 to 6\nmove 2 from 1 to 8\nmove 3 from 6 to 3\nmove 2 from 8 to 6\nmove 6 from 4 to 1\nmove 14 from 3 to 9\nmove 1 from 6 to 4\nmove 3 from 3 to 9\nmove 1 from 4 to 5\nmove 10 from 9 to 6\nmove 6 from 6 to 7\nmove 2 from 1 to 8\nmove 1 from 8 to 6\nmove 16 from 3 to 2\nmove 1 from 8 to 1\nmove 1 from 7 to 1\nmove 7 from 3 to 4\nmove 1 from 6 to 5\nmove 4 from 2 to 3\nmove 5 from 4 to 9\nmove 2 from 4 to 5\nmove 4 from 7 to 4\nmove 5 from 9 to 6\nmove 2 from 5 to 4\nmove 11 from 6 to 7\nmove 1 from 6 to 8\nmove 5 from 1 to 5\nmove 2 from 6 to 4\nmove 7 from 7 to 3\nmove 1 from 8 to 6\nmove 2 from 7 to 3\nmove 1 from 1 to 3\nmove 3 from 2 to 8\nmove 9 from 2 to 5\nmove 1 from 6 to 1\nmove 1 from 4 to 8\nmove 7 from 4 to 7\nmove 8 from 5 to 6\nmove 1 from 7 to 2\nmove 1 from 7 to 4\nmove 3 from 7 to 8\nmove 1 from 2 to 3\nmove 1 from 1 to 2\nmove 1 from 1 to 7\nmove 3 from 7 to 6\nmove 11 from 6 to 2\nmove 4 from 8 to 7\nmove 2 from 8 to 7\nmove 15 from 3 to 2\nmove 7 from 9 to 4\nmove 3 from 3 to 2\nmove 4 from 4 to 7\nmove 5 from 7 to 3\nmove 3 from 4 to 6\nmove 3 from 6 to 9\nmove 1 from 4 to 2\nmove 1 from 8 to 1\nmove 2 from 3 to 7\nmove 2 from 3 to 7\nmove 23 from 2 to 5\nmove 1 from 9 to 1\nmove 1 from 7 to 9\nmove 1 from 1 to 8\nmove 8 from 7 to 1\nmove 1 from 8 to 4\nmove 1 from 4 to 2\nmove 3 from 9 to 8\nmove 1 from 7 to 9\nmove 22 from 5 to 9\nmove 1 from 8 to 5\nmove 1 from 7 to 4\nmove 1 from 4 to 5\nmove 1 from 8 to 3\nmove 2 from 9 to 3\nmove 5 from 5 to 2\nmove 5 from 5 to 4\nmove 3 from 2 to 7\nmove 1 from 7 to 3\nmove 6 from 1 to 7\nmove 4 from 3 to 1\nmove 6 from 2 to 8\nmove 1 from 5 to 6\nmove 2 from 8 to 1\nmove 12 from 9 to 4\nmove 8 from 9 to 4\nmove 1 from 2 to 9\nmove 2 from 9 to 8\nmove 3 from 2 to 8\nmove 5 from 8 to 6\nmove 7 from 7 to 1\nmove 4 from 8 to 9\nmove 1 from 6 to 1\nmove 17 from 4 to 7\nmove 1 from 2 to 4\nmove 2 from 4 to 1\nmove 6 from 4 to 6\nmove 1 from 1 to 4\nmove 7 from 1 to 5\nmove 9 from 7 to 9\nmove 8 from 9 to 8\nmove 5 from 8 to 3\nmove 1 from 5 to 6\nmove 2 from 3 to 6\nmove 1 from 9 to 1\nmove 1 from 6 to 1\nmove 10 from 6 to 1\nmove 1 from 5 to 1\nmove 2 from 9 to 1\nmove 1 from 9 to 7\nmove 2 from 6 to 8\nmove 2 from 8 to 2\nmove 1 from 6 to 8\nmove 22 from 1 to 9\nmove 9 from 7 to 5\nmove 1 from 8 to 1\nmove 2 from 8 to 3\nmove 4 from 5 to 9\nmove 1 from 8 to 3\nmove 5 from 1 to 9\nmove 2 from 7 to 3\nmove 2 from 4 to 7\nmove 1 from 8 to 5\nmove 2 from 2 to 4\nmove 1 from 5 to 8\nmove 9 from 5 to 8\nmove 2 from 7 to 5\nmove 2 from 4 to 5\nmove 3 from 8 to 4\nmove 3 from 4 to 3\nmove 2 from 8 to 6\nmove 1 from 6 to 4\nmove 3 from 5 to 9\nmove 1 from 6 to 3\nmove 12 from 3 to 5\nmove 1 from 3 to 1\nmove 7 from 5 to 4\nmove 1 from 1 to 3\nmove 1 from 8 to 1\nmove 7 from 5 to 1\nmove 6 from 9 to 6\nmove 29 from 9 to 5\nmove 2 from 4 to 6\nmove 26 from 5 to 2\nmove 24 from 2 to 7\nmove 1 from 3 to 2\nmove 8 from 1 to 7\nmove 7 from 6 to 9\nmove 2 from 5 to 3\nmove 1 from 6 to 4\nmove 3 from 8 to 5\nmove 2 from 3 to 8\nmove 2 from 2 to 8\nmove 5 from 9 to 2\nmove 27 from 7 to 2\nmove 2 from 8 to 3\nmove 2 from 9 to 5\nmove 3 from 8 to 5\nmove 2 from 7 to 4\nmove 3 from 4 to 7\nmove 2 from 3 to 2\nmove 4 from 5 to 1\nmove 5 from 7 to 2\nmove 29 from 2 to 8\nmove 9 from 8 to 3\nmove 2 from 4 to 8\nmove 7 from 3 to 2\nmove 3 from 5 to 4\nmove 1 from 7 to 5\nmove 3 from 5 to 6\nmove 2 from 1 to 8\nmove 2 from 6 to 8\nmove 3 from 4 to 2\nmove 4 from 4 to 2\nmove 1 from 6 to 8\nmove 8 from 2 to 4\nmove 2 from 3 to 5\nmove 1 from 4 to 1\nmove 3 from 1 to 2\nmove 4 from 8 to 2\nmove 3 from 4 to 9\nmove 3 from 4 to 1\nmove 2 from 9 to 5\nmove 1 from 4 to 6\nmove 4 from 5 to 1\nmove 1 from 6 to 8\nmove 1 from 9 to 3\nmove 4 from 2 to 3\nmove 15 from 8 to 2\nmove 9 from 8 to 1\nmove 1 from 3 to 9\nmove 5 from 1 to 9\nmove 3 from 9 to 7\nmove 2 from 7 to 6\nmove 3 from 3 to 2\nmove 1 from 7 to 8\nmove 1 from 9 to 6\nmove 1 from 9 to 8\nmove 2 from 8 to 2\nmove 1 from 1 to 2\nmove 1 from 3 to 7\nmove 4 from 1 to 7\nmove 19 from 2 to 5\nmove 1 from 1 to 4\nmove 1 from 7 to 4\nmove 1 from 1 to 5\nmove 3 from 1 to 4\nmove 1 from 1 to 8\nmove 6 from 2 to 4\nmove 7 from 2 to 1\nmove 2 from 7 to 9\nmove 8 from 2 to 8\nmove 2 from 7 to 3\nmove 1 from 6 to 4\nmove 10 from 4 to 6\nmove 5 from 6 to 7\nmove 2 from 9 to 8\nmove 6 from 8 to 9\nmove 1 from 2 to 3\nmove 2 from 8 to 3\nmove 5 from 1 to 8\nmove 8 from 5 to 2\nmove 8 from 8 to 7\nmove 7 from 2 to 8\nmove 1 from 1 to 2\nmove 1 from 9 to 7\nmove 1 from 4 to 2\nmove 2 from 2 to 6\nmove 5 from 9 to 3\nmove 2 from 8 to 6\nmove 2 from 3 to 9\nmove 4 from 8 to 6\nmove 7 from 6 to 1\nmove 8 from 1 to 5\nmove 1 from 8 to 7\nmove 1 from 9 to 6\nmove 12 from 5 to 3\nmove 1 from 4 to 8\nmove 2 from 9 to 5\nmove 1 from 2 to 3\nmove 3 from 5 to 1\nmove 1 from 1 to 5\nmove 21 from 3 to 8\nmove 2 from 1 to 5\nmove 6 from 5 to 7\nmove 2 from 5 to 6\nmove 10 from 6 to 9\nmove 1 from 6 to 8\nmove 13 from 8 to 2\nmove 2 from 5 to 4\nmove 2 from 4 to 3\nmove 4 from 9 to 1\nmove 5 from 7 to 8\nmove 12 from 8 to 1\nmove 5 from 9 to 6\nmove 1 from 3 to 7\nmove 2 from 6 to 5\nmove 11 from 2 to 1\nmove 1 from 8 to 4\nmove 16 from 1 to 9\nmove 1 from 2 to 6\nmove 1 from 8 to 5\nmove 12 from 9 to 3\nmove 14 from 7 to 2\nmove 1 from 7 to 9\nmove 1 from 4 to 2\nmove 1 from 7 to 5\nmove 3 from 9 to 5\nmove 4 from 6 to 9\nmove 3 from 9 to 4\nmove 1 from 8 to 4\nmove 2 from 4 to 5\nmove 1 from 7 to 1\nmove 5 from 3 to 5\nmove 2 from 4 to 2\nmove 8 from 2 to 7\nmove 7 from 2 to 4\nmove 1 from 3 to 7\nmove 3 from 9 to 7\nmove 2 from 2 to 9\nmove 3 from 4 to 5\nmove 6 from 1 to 8\nmove 6 from 1 to 5\nmove 3 from 9 to 2\nmove 22 from 5 to 9\nmove 1 from 5 to 6\nmove 2 from 2 to 3\nmove 5 from 7 to 6\nmove 5 from 8 to 9\nmove 2 from 7 to 2\nmove 20 from 9 to 4\nmove 1 from 8 to 3\nmove 2 from 2 to 5\nmove 1 from 2 to 5\nmove 15 from 4 to 8\nmove 1 from 5 to 7\nmove 6 from 9 to 1\nmove 5 from 4 to 8\nmove 2 from 4 to 8\nmove 1 from 2 to 1\nmove 5 from 6 to 5\nmove 5 from 5 to 7\nmove 1 from 9 to 8\nmove 5 from 7 to 2\nmove 2 from 5 to 1\nmove 4 from 7 to 5\nmove 1 from 5 to 9\nmove 1 from 6 to 8\nmove 1 from 7 to 2\nmove 6 from 3 to 4\nmove 3 from 5 to 7\nmove 1 from 9 to 2\nmove 6 from 2 to 3\nmove 1 from 3 to 4\nmove 13 from 8 to 9\nmove 7 from 1 to 5\nmove 6 from 9 to 2\nmove 1 from 1 to 4\nmove 6 from 2 to 3\nmove 1 from 1 to 4\nmove 5 from 9 to 7\nmove 11 from 8 to 4\nmove 7 from 7 to 3\nmove 2 from 7 to 8\nmove 1 from 8 to 2\nmove 8 from 4 to 1\nmove 2 from 1 to 6\nmove 2 from 5 to 8\nmove 3 from 1 to 9\nmove 1 from 8 to 2\nmove 11 from 3 to 2\nmove 2 from 8 to 9\nmove 9 from 4 to 7\nmove 11 from 3 to 8\nmove 7 from 9 to 6\nmove 5 from 4 to 6\nmove 3 from 7 to 3\nmove 1 from 7 to 1\nmove 5 from 7 to 6\nmove 2 from 3 to 5\nmove 1 from 3 to 4\nmove 5 from 2 to 5\nmove 1 from 1 to 7\nmove 1 from 4 to 8\nmove 1 from 7 to 6\nmove 7 from 5 to 7\nmove 2 from 5 to 7\nmove 3 from 1 to 7\nmove 1 from 2 to 3\nmove 1 from 6 to 4\nmove 1 from 3 to 4\nmove 1 from 5 to 3\nmove 18 from 6 to 4\nmove 9 from 7 to 1\nmove 14 from 4 to 6\nmove 3 from 6 to 4\nmove 12 from 6 to 7\nmove 2 from 5 to 3\nmove 3 from 7 to 4\nmove 6 from 4 to 7\nmove 5 from 1 to 7\nmove 5 from 4 to 5\nmove 5 from 2 to 1\nmove 9 from 8 to 4\nmove 9 from 1 to 3\nmove 2 from 8 to 2\nmove 4 from 2 to 4\nmove 1 from 7 to 6\nmove 1 from 2 to 3\nmove 1 from 8 to 9\nmove 1 from 6 to 9\nmove 2 from 9 to 3\nmove 3 from 4 to 1\nmove 13 from 3 to 5\nmove 12 from 5 to 1\nmove 7 from 1 to 8\nmove 1 from 3 to 6\nmove 4 from 5 to 4\nmove 1 from 5 to 2\nmove 8 from 4 to 9", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTestData, Type = String, Dynamic = False, Default = \"    [D]    \n[N] [C]    \n[Z] [M] [P]\n 1   2   3 \n\nmove 1 from 2 to 1\nmove 3 from 1 to 3\nmove 2 from 2 to 1\nmove 1 from 1 to 2", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events ShowInputButton
	#tag Event
		Sub Pressed()
		  PuzzleInputDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PuzzleInputDialog
	#tag Event
		Sub InputReady(input As String)
		  mInput = input
		  CrateMoverRadioGroup.Enabled = input.Trim <> ""
		  
		  // Cargo Crane Initial Stack
		  Var parts() As String = mInput.Split(EndOfLine + EndOfLine)
		  Var stacksInstructions() As String = parts(0).TrimRight.Split(EndOfLine)
		  Var stacks() As CargoStack
		  For i As Integer = stacksInstructions.LastIndex DownTo 0
		    Var line As String = stacksInstructions(i)
		    If i = stacksInstructions.LastIndex Then
		      Var numbers() As String = line.Split(" ")
		      stacks.ResizeTo(numbers(numbers.LastIndex).Trim.Val - 1)
		      For j As Integer = 0 To stacks.LastIndex
		        stacks(j) = New CargoStack
		      Next
		    Else
		      Var chars() As String = line.Split("")
		      For j As Integer = 0 To chars.LastIndex
		        Var char As String = chars(j)
		        If j Mod 4 <> 1 Or char.Trim = "" Then Continue
		        Var stack As Integer = Floor(j / 4)
		        stacks(stack).Push(Array(char))
		      Next
		    End If
		  Next
		  mInitialStacks = stacks
		  
		  // Cargo Crane Steps
		  Var craneStepsInstructions() As String = parts(1).Trim.Split(EndOfLine)
		  Var steps() As CargoCraneStep
		  For i As Integer = 0 To craneStepsInstructions.LastIndex
		    steps.Add(New CargoCraneStep(i + 1, craneStepsInstructions(i)))
		  Next
		  mCraneSteps = steps
		  
		  // Display the steps in the WebListBox
		  CargoStepDataSource.SetCargoSteps(steps)
		  StepListBox.ReloadData
		  
		  ProcessInput
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
#tag Events StepListBox
	#tag Event
		Sub Opening()
		  Me.DataSource = CargoStepDataSource
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(Rows() as Integer)
		  CargoChart.RemoveAllLabels
		  CargoChart.RemoveAllDatasets
		  StacksLabel.Text = ""
		  
		  If Rows.Count = 0 Then Return
		  
		  Var index As Integer = Rows(0)
		  Var stacks() As CargoStack = CargoStepDataSource.GetStacksAt(index)
		  
		  // WebChart
		  Var labels() As String
		  Var data() As Double
		  For i As Integer = 0 To stacks.LastIndex
		    Var number As Integer = i + 1
		    labels.Add(number.ToString)
		    data.Add(stacks(i).Count)
		  Next
		  Var ds As New WebChartLinearDataset("Stacks", Color.Teal, True, data)
		  
		  CargoChart.AddLabels(labels)
		  CargoChart.AddDatasets(ds)
		  
		  // ASCII
		  StacksLabel.Text = StacksToASCII(stacks)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CrateMoverRadioGroup
	#tag Event
		Sub SelectionChanged(button as WebRadioButton)
		  ProcessInput
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CargoCraneThread
	#tag Event
		Sub Run()
		  // Cargo initial stack
		  Var stacks() As CargoStack
		  For Each stack As CargoStack In mInitialStacks
		    stacks.Add(stack.Clone)
		  Next
		  
		  // Cargo crane steps
		  Var steps() As CargoCraneStep
		  For Each craneStep As CargoCraneStep In mCraneSteps
		    steps.Add(craneStep.Clone)
		  Next
		  
		  // Operate the crane
		  Var topCratesMarks() As String
		  For Each cargoStep As CargoCraneStep In steps
		    Var crates() As String = stacks(cargoStep.Origin - 1).Pull(cargoStep.Amount)
		    stacks(cargoStep.Destination - 1).Push(crates, CrateMoverRadioGroup.SelectedIndex = 0)
		    
		    topCratesMarks.RemoveAll
		    For Each stack As CargoStack In stacks
		      topCratesMarks.Add(stack.GetTopCrateMark)
		    Next
		    
		    Var currentStepStacks() As CargoStack
		    For Each stack As CargoStack In stacks
		      currentStepStacks.Add(stack.Clone)
		    Next
		    
		    Var update As New Dictionary
		    update.Value("type") = "step"
		    update.Value("step_id") = cargoStep.Id
		    update.Value("top_crates_marks") = String.FromArray(topCratesMarks, "")
		    update.Value("current_step_stacks") = currentStepStacks
		    Me.AddUserInterfaceUpdate(update)
		  Next
		  
		  // Send the update back to main thread
		  Var result As New Dictionary
		  result.Value("type") = "finish"
		  result.Value("top_crates_marks") = String.FromArray(topCratesMarks, "")
		  Me.AddUserInterfaceUpdate(result)
		End Sub
	#tag EndEvent
	#tag Event
		Sub UserInterfaceUpdate(data() as Dictionary)
		  For Each update As Dictionary In data
		    Select Case update.Lookup("type", "")
		    Case "step"
		      // Update the row in the WebListBox
		      Var row As Integer = update.Value("step_id").IntegerValue - 1
		      CargoStepDataSource.SetCratesMarksAt(row, update.Value("top_crates_marks").StringValue)
		      CargoStepDataSource.SetStacksAt(row, update.Value("current_step_stacks"))
		      
		    Case "finish"
		      // Display the result
		      CratesTextField.Text = update.Value("top_crates_marks")
		      Spinner.Visible = False
		      StepListBox.ReloadData
		    End Select
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StacksLabel
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
