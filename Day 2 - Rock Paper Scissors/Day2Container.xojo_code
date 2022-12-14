#tag WebContainerControl
Begin WebContainer Day2Container
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   544
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
   Width           =   1018
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebButton InputButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Begin Tournament"
      ControlID       =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   828
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
      Width           =   170
      _mPanelIndex    =   -1
   End
   Begin PuzzleInputWebDialog InputDialog
      ControlID       =   ""
      Enabled         =   True
      Height          =   480
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   341
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   95
      Visible         =   True
      Width           =   640
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin WebListBox ResultListBox
      ColumnCount     =   5
      ColumnWidths    =   "70,150,150,150,*"
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   504
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   "#	Opponent	You	Result	Score"
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
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
      TabIndex        =   2
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   630
      _mPanelIndex    =   -1
   End
   Begin WebTextField ScoreTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Total Score:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   70
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   828
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
      TabIndex        =   3
      Text            =   "0"
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   77
      Visible         =   True
      Width           =   170
      _mPanelIndex    =   -1
   End
   Begin TournamentWebThread TournamentThread
      DebugIdentifier =   ""
      Index           =   -2147483648
      Input           =   ""
      LockedInPosition=   False
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      ThreadID        =   0
      ThreadState     =   ""
   End
   Begin TournamentDataSource TournamentData
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   2
   End
   Begin WebChart ResultChart
      ControlID       =   ""
      DatasetCount    =   0
      Enabled         =   True
      HasAnimation    =   False
      HasLegend       =   True
      Height          =   211
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   658
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Mode            =   2
      Scope           =   2
      TabIndex        =   6
      Title           =   "Match Stats"
      Tooltip         =   ""
      Top             =   20
      Visible         =   False
      Width           =   153
      _mMode          =   ""
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub DrawStats(matches() As TournamentMatch)
		  Var rockWon, paperWon, scissorsWon As Double
		  Var rockDraw, paperDraw, scissorsDraw As Double
		  Var rockLost, paperLost, scissorsLost As Double
		  For Each match As TournamentMatch In matches
		    Select Case match.Player
		    Case TournamentMatch.Figures.Rock
		      Select Case match.Result
		      Case TournamentMatch.Results.Won
		        rockWon = rockWon + 1
		      Case TournamentMatch.Results.Draw
		        rockDraw = rockDraw + 1
		      Case TournamentMatch.Results.Lost
		        rockLost = rockLost + 1
		      End Select
		    Case TournamentMatch.Figures.Paper
		      Select Case match.Result
		      Case TournamentMatch.Results.Won
		        paperWon = paperWon + 1
		      Case TournamentMatch.Results.Draw
		        paperDraw = paperDraw + 1
		      Case TournamentMatch.Results.Lost
		        paperLost = paperLost + 1
		      End Select
		    Case TournamentMatch.Figures.Scissor
		      Select Case match.Result
		      Case TournamentMatch.Results.Won
		        scissorsWon = scissorsWon + 1
		      Case TournamentMatch.Results.Draw
		        scissorsDraw = scissorsDraw + 1
		      Case TournamentMatch.Results.Lost
		        scissorsLost = scissorsLost + 1
		      End Select
		    End Select
		  Next
		  
		  ResultChart.RemoveAllDatasets
		  ResultChart.RemoveAllLabels
		  ResultChart.AddLabels("???? Rock", "???? Paper", "?????? Scissors")
		  Var won() As Double = Array(rockWon, paperWon, scissorsWon)
		  Var draw() As Double = Array(rockDraw, paperDraw, scissorsDraw)
		  Var lost() As Double = Array(rockLost, paperLost, scissorsLost)
		  ResultChart.AddDataset(New WebChartCircularDataset("Defeats", lost, Array(Color.Red)))
		  ResultChart.AddDataset(New WebChartCircularDataset("Draws", draw, Array(Color.Yellow)))
		  ResultChart.AddDataset(New WebChartCircularDataset("Victories", won, Array(Color.Green)))
		  ResultChart.Visible = True
		End Sub
	#tag EndMethod


	#tag Constant, Name = kRealData, Type = String, Dynamic = False, Default = \"B Z\nA X\nB Z\nB Z\nC Z\nB Z\nA Z\nB X\nC Y\nC Y\nA X\nA X\nA Z\nB Z\nA X\nA Z\nB X\nC Y\nA Y\nA Y\nC Y\nB Y\nC X\nC Y\nB Z\nA X\nA Y\nB Y\nA X\nA Z\nB X\nB Y\nB Z\nB Z\nB Z\nC Y\nB X\nA X\nC Y\nB Z\nB Z\nC X\nA Z\nB Z\nB Z\nC X\nC X\nB X\nB X\nA X\nB X\nC Z\nC Y\nC Y\nC Y\nC X\nB Z\nB Y\nC X\nA X\nC X\nC Y\nC Y\nC Y\nB X\nB Y\nA Z\nB Z\nA X\nB Z\nC Y\nB Y\nB Z\nB X\nC Y\nB Y\nA Y\nA X\nB Z\nB Z\nB Z\nB Z\nC X\nA X\nB Y\nC Y\nC Y\nB Z\nB Z\nA Z\nB Y\nA X\nA Z\nB Z\nA X\nB X\nB X\nB X\nB X\nA X\nA Z\nB X\nB Z\nB X\nB Z\nB X\nC Y\nC Y\nC X\nB X\nA Z\nC Y\nB Z\nC Z\nB X\nB Z\nB Z\nC Z\nC Y\nB X\nB X\nC Y\nA Y\nA X\nC Z\nB X\nB X\nC X\nC X\nC Y\nC X\nC Y\nC Y\nC Y\nB Z\nB Z\nA X\nC Y\nC Y\nA Y\nC Y\nA Z\nB Z\nA Y\nC Y\nC Y\nA X\nB X\nB Z\nC Y\nC Y\nB Z\nB X\nC Y\nB Y\nA Z\nA Z\nC Y\nB X\nC Y\nB Z\nC Y\nB Z\nB Z\nB X\nC Y\nC X\nB Z\nC Z\nA Y\nC Y\nC Y\nA Y\nC X\nA Y\nB Z\nB Y\nC X\nA Y\nC Y\nC X\nC Y\nC Y\nB Z\nA Y\nB Z\nA Y\nB Z\nB Z\nB Z\nC Y\nA Y\nA X\nB Z\nC Y\nC Y\nC Y\nB X\nB Z\nC Y\nC Y\nC Y\nB X\nC X\nB X\nA X\nB Z\nB X\nC Z\nA X\nA X\nA X\nC Y\nC Y\nB Z\nA Z\nC X\nB X\nC Y\nA Y\nA Z\nA Z\nA X\nA X\nC Y\nB Z\nA Z\nB Z\nB X\nC Z\nB X\nB X\nB Y\nA Z\nB Z\nC Y\nB X\nC X\nC X\nA X\nB Z\nB X\nA Y\nB Z\nA X\nB X\nB Z\nA X\nB Z\nC Y\nB Y\nC Y\nA Z\nB X\nB X\nB X\nB Z\nB Z\nB Z\nA X\nB X\nB Z\nB Z\nA X\nB X\nC Z\nB X\nA Z\nA Z\nC Z\nA Y\nC Y\nB X\nB Z\nA X\nB Z\nB X\nC Y\nC Y\nB X\nC Y\nC X\nC Y\nB Z\nA Z\nC Y\nA Z\nB X\nB Z\nB Z\nA X\nA Y\nA X\nB Z\nB Z\nB Y\nA Z\nC Y\nB Z\nB X\nB Z\nA Y\nC X\nB Z\nC Y\nA Y\nA X\nA Z\nC Y\nC Z\nA Y\nB X\nA X\nB X\nC Y\nC Z\nB Y\nB Z\nB Z\nC Y\nB Z\nC Z\nB Y\nA Z\nA Z\nB Z\nB X\nB X\nA Z\nC Y\nB X\nB Z\nA Y\nC Y\nB Z\nC Y\nB X\nC Y\nC Y\nC Y\nA Y\nC Y\nC X\nA X\nC Y\nC Y\nA X\nC Y\nC Z\nB X\nB X\nC Y\nA X\nA Y\nC Y\nA X\nC X\nA Y\nA Z\nA X\nB Z\nB Z\nC X\nC Y\nB X\nA X\nA Z\nB X\nB Z\nA X\nB Z\nB Z\nB Z\nB X\nB Z\nB Z\nA Y\nC X\nA X\nB X\nB Z\nC Y\nC Y\nC Y\nC Y\nB Z\nC Y\nB Y\nC Y\nA Z\nC Y\nB Z\nB X\nB Z\nB Z\nB X\nC Y\nA Z\nB X\nB Z\nB Z\nB X\nC Y\nB X\nC X\nC X\nA X\nC Y\nA X\nB Y\nC Y\nB Z\nB X\nC Y\nB Y\nB X\nB X\nB Y\nB X\nA Z\nB X\nB X\nB X\nB Z\nB Y\nA X\nB X\nC Y\nC Y\nB Y\nB X\nA Y\nC Z\nB X\nC Y\nB X\nC Y\nA Z\nB Y\nA Z\nB Z\nA Y\nA X\nC Y\nB X\nB X\nA X\nB Y\nA Z\nB X\nB Z\nA X\nC Z\nB Y\nA X\nA X\nA X\nA X\nB Y\nC Z\nC Y\nB Y\nC Y\nB X\nB Z\nA X\nC Y\nA Y\nA X\nC Y\nC Y\nB X\nB Y\nA X\nC Y\nA Y\nA Z\nA X\nA Y\nC Y\nA X\nC Z\nC Y\nB Z\nB Y\nC Y\nC Z\nA X\nA X\nC X\nB X\nC X\nB X\nA Z\nB Z\nC Y\nC Y\nA Z\nC Y\nA X\nC X\nB Z\nC X\nC Z\nB X\nB X\nC Y\nB X\nA Y\nB X\nB Z\nC X\nC Y\nB X\nB X\nB Z\nB X\nC Y\nB Z\nC Y\nC Y\nA Z\nC Y\nC Y\nC Y\nB X\nB X\nA X\nC Y\nB X\nB X\nC Y\nB Z\nA X\nB X\nC Y\nB Z\nB Y\nB Z\nA X\nB Y\nB Z\nC X\nC Y\nB Z\nB Z\nB Z\nB Z\nB Z\nC X\nB Z\nC Y\nC X\nB Y\nB X\nB X\nC Y\nB X\nB X\nC Y\nC Y\nA X\nC Y\nC Z\nA Z\nC Y\nC Y\nC Z\nA X\nC Y\nA Y\nB X\nC X\nC Y\nC Z\nC Y\nC Y\nB X\nA X\nB Z\nA Y\nB Z\nB Z\nB X\nB Z\nA Z\nB Y\nB Y\nC Y\nA Y\nC Y\nB X\nA X\nC Z\nB Z\nB X\nA Z\nC Y\nC Y\nC X\nA Z\nC Y\nC Y\nA Y\nB Y\nB Y\nB Z\nB Z\nB X\nB X\nB Z\nB X\nB X\nB Z\nA Y\nA Y\nC Y\nC Y\nB X\nA Y\nA X\nC Y\nA Z\nC X\nB Y\nB Y\nB Y\nA Z\nC Y\nB Z\nB Z\nA Y\nB Z\nB Z\nC Z\nC X\nC X\nB X\nC Y\nB X\nB X\nC Y\nA X\nA Z\nC X\nB X\nA X\nB Z\nA X\nB X\nA Y\nB X\nB Z\nB X\nB X\nC Z\nA Z\nB Z\nC Z\nB X\nB X\nA X\nB Z\nB Z\nB Z\nB Z\nB Z\nB Z\nB X\nC Y\nB Z\nB X\nB X\nC Y\nC Y\nB Z\nB Z\nB X\nA Y\nA X\nA Z\nC Z\nA X\nB Z\nB X\nB Z\nB X\nC Y\nA X\nA Y\nC Y\nC Y\nB X\nB X\nB X\nB Z\nB X\nB Z\nA Y\nA X\nC Y\nA Z\nC Y\nA X\nC Y\nB Z\nA Y\nC Y\nC Y\nC Y\nB Z\nB Z\nA Z\nA X\nB X\nC Y\nA X\nB Y\nC Y\nB X\nB Z\nB Z\nA Z\nB Z\nC Y\nB Z\nA X\nC X\nB Z\nB X\nA X\nC Y\nC Y\nA Z\nC Y\nC Z\nA Z\nA Z\nB X\nB X\nB Z\nC Y\nB Z\nB Z\nC Y\nB X\nB Y\nB Z\nC Y\nA X\nC Y\nA Y\nC Y\nC Y\nC Y\nB X\nB X\nB Z\nB Y\nC Y\nB Y\nA Z\nA Z\nB X\nA Z\nC X\nC Y\nB Z\nB X\nB Z\nB X\nB Z\nB Z\nB X\nB Z\nB Z\nC X\nC Y\nA Z\nC Y\nB Y\nA X\nB Z\nB Y\nA Z\nA X\nB X\nC Y\nB Z\nC Y\nB X\nC Y\nB Z\nB Y\nB X\nA Z\nB Y\nC Y\nB X\nC Y\nA X\nB Y\nB X\nC Y\nC X\nB X\nB X\nC Y\nC Y\nB Z\nA X\nB X\nB Z\nA X\nB X\nA X\nB X\nB X\nB Y\nC Y\nA X\nC X\nC Y\nC X\nB Y\nA Z\nA X\nC Y\nB X\nB X\nB Z\nC Y\nB Z\nB X\nB Z\nB Y\nB Y\nB Z\nB X\nC Y\nB Y\nA X\nC Y\nB Z\nB Z\nC Y\nA Z\nC Y\nB Y\nC Y\nB Y\nB X\nB Z\nB X\nC Y\nB X\nC Y\nB Z\nC Y\nB Z\nB X\nB X\nB Z\nA X\nC Y\nA X\nB X\nC Y\nB X\nC Z\nC Y\nB Z\nA Y\nA Y\nC Y\nB Z\nA Z\nB Z\nC Y\nA Z\nB X\nA X\nB X\nC Y\nB Z\nA X\nB X\nA Y\nB X\nB Z\nA Z\nC Y\nA Z\nC X\nA Z\nB X\nC Y\nB Z\nB Z\nA X\nB Y\nC Z\nB Z\nA Z\nC Y\nB X\nC Y\nB X\nC Y\nB Y\nB Z\nC Y\nB Z\nC Y\nC Y\nB Y\nB Y\nC Y\nC Y\nA Y\nB Y\nB X\nC Y\nC Y\nC X\nC Y\nC Y\nB Z\nB X\nB X\nC Y\nC Y\nA X\nC Y\nC Y\nB X\nA Y\nB X\nA X\nB Y\nB X\nB Z\nB X\nC Y\nB Z\nA Z\nB Z\nC X\nB Z\nB Y\nB Z\nB Z\nC Y\nB X\nB X\nC Y\nB Z\nB Z\nB Z\nB Z\nA X\nC Y\nA Z\nA X\nC X\nB Z\nB Y\nA Y\nB X\nC Y\nB X\nC Y\nC Z\nA Z\nC Y\nC Y\nC Y\nB Z\nB Y\nA X\nC Y\nB X\nB X\nB Z\nB X\nC Y\nC Y\nA X\nB Z\nB Z\nC Y\nB Y\nB Y\nB Z\nA X\nB Z\nA X\nB Y\nC X\nA Z\nB Z\nB Z\nB X\nC Y\nB Y\nB Y\nB X\nC Y\nB X\nB Z\nC Y\nB Z\nA X\nA Z\nB Y\nC Y\nB X\nB Z\nC Y\nB X\nB X\nB Z\nB Y\nC X\nB X\nA X\nB X\nB Z\nB Z\nB Z\nA Z\nA Z\nB X\nC X\nB X\nB Y\nC Z\nC Y\nB Y\nA X\nA Z\nB Z\nB X\nB Z\nB Z\nA Y\nA Z\nC Y\nC Y\nC Y\nA Y\nB Z\nC X\nC Y\nC Y\nA Z\nB Z\nC Y\nB Z\nC Y\nA X\nC Y\nC Y\nB X\nA X\nB X\nA X\nA Z\nA X\nB Y\nB X\nA X\nB Z\nB Z\nB X\nA Z\nB X\nA X\nB Z\nB Z\nB Z\nA X\nB X\nC Y\nC Y\nB Z\nA X\nA X\nB Z\nC X\nB Z\nC Y\nC Y\nC Y\nA Y\nB X\nC Z\nC Y\nB X\nA Y\nA Z\nC X\nB Y\nB Z\nC Y\nB X\nA Z\nC Z\nC Y\nC Y\nB Z\nB X\nB Z\nA Z\nC Y\nB X\nA X\nC Y\nC Y\nB X\nB Y\nB X\nB X\nC Y\nB Y\nC Y\nB Z\nB X\nA Y\nA X\nB Z\nA Z\nB Z\nB Z\nA Y\nC Y\nA X\nB X\nB X\nA X\nC Y\nB Z\nB Y\nB Z\nB Z\nB X\nC Y\nC Y\nC Z\nB Y\nB Y\nB Z\nB X\nB Z\nC Y\nB X\nA Z\nC Y\nB Z\nB X\nC Y\nC Y\nC Y\nB Z\nC Y\nB Z\nC Y\nB Z\nB Z\nB Z\nC Y\nC Y\nB Z\nC Z\nA Y\nA Z\nA Z\nC Y\nC Y\nA Z\nB X\nB X\nA X\nB Z\nB Z\nA X\nA Z\nC Y\nB X\nA Z\nB X\nC Y\nA Z\nC Y\nB Z\nB X\nB X\nB Z\nB X\nC Y\nC Z\nC Z\nB X\nA X\nA Y\nB Y\nB X\nB X\nA Y\nA X\nB X\nC Y\nC Y\nB Z\nB Z\nA X\nC Y\nB Z\nB X\nB Z\nC Y\nB X\nC Y\nB Z\nB Y\nB Z\nB X\nB X\nC Y\nB Z\nB Z\nB Z\nA X\nB Z\nB Z\nB Z\nA Y\nA X\nC Y\nB Z\nB X\nA X\nB Z\nC Y\nB X\nB Z\nC Z\nC Y\nC Y\nB Y\nB Y\nC Y\nA Y\nB Y\nA Y\nC Y\nA Z\nB X\nB Y\nC Y\nA X\nB Z\nC Y\nA X\nB X\nC Y\nB X\nA Y\nC Z\nC X\nC Z\nB Z\nC X\nA Z\nC X\nB Z\nB Z\nB Z\nA X\nC Y\nB X\nA Y\nC Y\nB Z\nA Y\nA Z\nB X\nA Z\nC Y\nC Y\nC Y\nB Z\nB Y\nA X\nC Y\nC X\nA Y\nB Z\nA X\nA Z\nC Y\nA Z\nB Z\nB Z\nC X\nB X\nC Y\nA X\nC Y\nA Z\nB Z\nB Z\nB X\nC Y\nC Y\nC X\nC Z\nC Y\nC X\nC X\nC Y\nB X\nC X\nC Z\nC Y\nB Y\nC X\nA X\nC Y\nA X\nC Z\nC X\nC Y\nB X\nA Z\nB Z\nB X\nB Z\nB X\nC Y\nB Y\nB Z\nB X\nB Z\nC Y\nC Z\nB X\nB Y\nC Y\nC Y\nC Y\nC X\nA Y\nB X\nC X\nB X\nB Y\nB Z\nC X\nB Z\nB Z\nA X\nA X\nB Z\nB Z\nA Y\nA Z\nB Y\nA X\nB X\nB X\nC Y\nA X\nA Y\nB X\nB Z\nC Z\nB Z\nB X\nC Y\nC Y\nB Z\nA Z\nB X\nA Y\nA Y\nC Y\nB Z\nB X\nA X\nB Y\nA Y\nB Z\nB Z\nB Z\nB Y\nC Z\nA X\nC X\nB Y\nA Y\nB Z\nC Y\nA X\nB Z\nC Y\nA X\nB X\nB Z\nB X\nB Z\nB Z\nC Y\nA Z\nB X\nC Y\nB Z\nA Y\nB X\nC X\nB X\nB X\nB Z\nB X\nB Z\nB X\nB Z\nB Z\nC Y\nB Z\nC Y\nB X\nB Z\nB X\nB Z\nC Y\nB X\nC Y\nA Z\nA Z\nB Z\nB X\nB Z\nB X\nC Y\nA Y\nA X\nB Z\nB X\nB X\nA Z\nA X\nC Z\nA X\nA X\nC Z\nC Y\nB X\nB X\nB Z\nA Z\nB X\nC Y\nB X\nB Z\nC X\nC Y\nC Y\nA Z\nB X\nB X\nC Z\nC Y\nB X\nA X\nC X\nB Z\nB Z\nB X\nC Y\nB Z\nA X\nB X\nB Z\nA Z\nB X\nA Y\nB Z\nB X\nC Y\nB Y\nC Y\nA Z\nA X\nC Y\nA Z\nA X\nC Y\nC Y\nC Y\nC Y\nC Y\nB X\nC X\nB Y\nA Z\nB Z\nC Y\nA X\nB Z\nC X\nC Y\nB X\nA Y\nB X\nB Z\nC Y\nB X\nA Y\nB Z\nC Y\nB Z\nA X\nB X\nC Y\nA Y\nB Z\nB X\nA Z\nC Y\nB Y\nA Y\nA Z\nB Y\nC Y\nB Z\nB Z\nB Z\nC X\nC X\nB Y\nB Z\nA X\nC Y\nC Y\nA Y\nA X\nA X\nC Y\nA Y\nB Z\nB Z\nB Z\nB X\nA X\nB X\nC Y\nA Z\nB X\nA Y\nA X\nA X\nB Z\nB Z\nC Y\nB X\nB Z\nC Y\nB Z\nA Z\nC Y\nB X\nB Z\nC X\nC Y\nC Y\nC Z\nB Z\nB X\nA X\nB Z\nC Z\nC Y\nC Y\nC Y\nB Z\nA Y\nC Y\nB X\nC Y\nC Y\nB X\nB X\nC Y\nC Y\nB Z\nB X\nA Z\nC Z\nB Z\nA X\nB Y\nB Z\nA X\nC Y\nC Y\nB Z\nA Y\nC Y\nB Y\nB Z\nC Y\nA X\nC Y\nC X\nC Y\nC Y\nA Y\nB Z\nC Y\nC Y\nB X\nC Y\nB Z\nB Z\nC Z\nB Z\nC Y\nB Z\nB Z\nC Y\nA X\nC Y\nA Z\nB X\nC X\nB X\nC X\nA Z\nC Y\nA X\nA X\nB Z\nC Y\nB Z\nB X\nA Y\nB Z\nC X\nB Z\nA Y\nC Y\nB X\nA Z\nB Z\nB Z\nB Z\nB Z\nB Z\nC Y\nC Y\nC Y\nB X\nA Y\nA Z\nB Z\nC Y\nB Y\nC X\nB X\nB Z\nB X\nC Y\nA X\nC Z\nC Y\nA X\nB X\nC Y\nB X\nA X\nC Z\nC Y\nC Y\nC Z\nC Y\nC Y\nB X\nC Y\nA Y\nB X\nB Z\nB Z\nC Y\nA X\nB Z\nB Z\nC Y\nB X\nB Z\nB Z\nC Y\nC X\nB Z\nB Z\nA Z\nB X\nB Z\nB Z\nB X\nB X\nB X\nA X\nA Z\nB Z\nB Z\nB X\nB X\nC Y\nC Y\nB X\nA Y\nC Y\nB Z\nC Z\nB Y\nB Z\nC X\nA X\nB X\nC Y\nC Y\nA Y\nC X\nB Z\nB Z\nB Z\nB Z\nA Z\nA Y\nA X\nA Y\nB Y\nA Y\nB Z\nC Y\nC X\nC X\nB Z\nC Y\nA X\nB Y\nB X\nB X\nB X\nA Y\nB Z\nB X\nB Z\nB Z\nB Z\nA Z\nC Y\nC Y\nC Y\nB Z\nC X\nB Z\nA X\nA Y\nB Z\nC Z\nB Z\nA X\nB Z\nA X\nB Z\nA Z\nA X\nB Z\nB Z\nB Z\nB X\nA Z\nB X\nC Y\nB Y\nB X\nA X\nB Z\nA Z\nB Z\nB Z\nB Y\nC X\nB X\nB Z\nA X\nB X\nB Z\nB X\nC Y\nC Z\nA Y\nB Y\nA X\nB Z\nB Y\nA Z\nC X\nC Y\nB Z\nA X\nC Y\nA Y\nC Y\nC X\nA Y\nB X\nB X\nB Z\nC Y\nB Y\nA X\nB Z\nB X\nA X\nA X\nB X\nA X\nB Z\nB X\nB Y\nC Y\nB Z\nC Y\nC X\nB Z\nB Z\nB Z\nC Y\nA X\nB Z\nA Y\nA X\nC Y\nB Z\nC Y\nC X\nC Y\nC Y\nA X\nB Z\nA X\nA X\nB X\nB Y\nC Y\nC Y\nA X\nB Z\nC Y\nC X\nB Z\nB Z\nB Z\nB X\nA Y\nB X\nC Y\nA X\nC Y\nB Z\nC Y\nC Y\nA X\nB Y\nB Z\nB Y\nA Y\nB Z\nB Y\nB Z\nA Y\nC Y\nA Y\nA X\nA Z\nA X\nB X\nC Y\nC Y\nB X\nA Z\nB X\nB Z\nB X\nB X\nB Z\nC Y\nB Z\nB Z\nB X\nA Z\nA Y\nC Y\nB Y\nC Y\nC Y\nB Z\nC Y\nC Y\nB Y\nB Z\nB X\nC Y\nB Z\nB Z\nA Y\nA Y\nB X\nB X\nC Y\nB Z\nB Z\nB X\nB X\nC Y\nA Z\nB X\nB X\nA Z\nB X\nB Z\nB X\nB X\nA X\nC Y\nC Y\nC Y\nB X\nA Z\nC Y\nC Y\nB Z\nB X\nB Z\nB Z\nB Z\nB Y\nA X\nA Z\nC Y\nC Y\nB X\nB Y\nC X\nA Z\nC X\nC Y\nC X\nC Y\nC Y\nC X\nA X\nB Z\nB X\nB Z\nC Y\nA Y\nB X\nB Z\nC X\nB X\nB Y\nB Z\nB Z\nA Z\nC X\nB X\nB X\nB Y\nB Z\nC Y\nC Y\nC Y\nA Z\nB Z\nA Z\nB Z\nB X\nC Y\nB X\nB X\nA Y\nC Y\nA X\nB Z\nC Y\nB Z\nB Z\nB Z\nB Y\nC Y\nA Z\nB X\nC Y\nB Z\nC X\nB X\nA X\nB Z\nB X\nA Y\nB Z\nB Z\nC X\nB X\nB X\nB Z\nB Z\nB X\nC Y\nB Z\nA Y\nB X\nC X\nC Y\nB Y\nB Z\nB X\nC X\nC Y\nB X\nB Z\nB Z\nB X\nC Z\nB Z\nB X\nC X\nC X\nB Z\nB Z\nC Y\nB X\nC Y\nA Z\nA Z\nB Z\nB X\nA Z\nB X\nB Z\nB Y\nB Z\nC Y\nB Z\nA Z\nC X\nB Z\nB Z\nC Y\nA Z\nC Y\nC Y\nC Y\nA X\nA Z\nA Z\nB Z\nC X\nA X\nC Y\nB X\nB X\nC Y\nC X\nA Z\nB X\nB Z\nB X\nB Y\nC Y\nA X\nC Y\nC Y\nA X\nC Y\nB Z\nB X\nC Y\nC Y\nB X\nC Y\nC Y\nC Y\nA X\nB Z\nB X\nB Z\nB Y\nA Z\nB Z\nC Y\nB Z\nA X\nA Z\nA Y\nB Y\nB Z\nB Z\nA X\nB Y\nA Z\nB Z\nB Z\nA Y\nC Y\nB X\nB Z\nA X\nB Z\nB Z\nA X\nB Z\nB Z\nB X\nA Z\nB X\nB Z\nA Y\nA Y\nA X\nC Y\nB Z\nA X\nB Z\nC Y\nB Z\nB X\nC Y\nC Y\nC Y\nB X\nA Z\nC Y\nB Y\nB Z\nB Z\nB Z\nB X\nC Y\nC X\nA X\nB Z\nA X\nC Y\nC Y\nB X\nB X\nB Z\nC Z\nC Y\nC Y\nA Y\nC Y\nB Z\nB X\nB X\nB Z\nC Y\nB Z\nB X\nB X\nC Z\nB X\nC X\nC Y\nC Y\nC X\nC Y\nC Y\nB Z\nB X\nB X\nC Y\nC Y\nC Y\nB Y\nA X\nB Z\nB Y\nA Z\nB Z\nC X\nB Y\nB X\nB Z\nB X\nA Z\nA Z\nC Y\nC X\nC Y\nA Z\nB Y\nA Y\nC Y\nB Z\nA Z\nA Z\nC Y\nB Z\nB X\nB Z\nC Z\nC Y\nC X\nB Z\nB X\nA X\nA Y\nB Z\nB X\nA Y\nB X\nB X\nC Y\nB X\nB Z\nA Z\nC Y\nC Y\nA Y\nB Z\nC Y\nB Y\nC Y\nC Y\nC Y\nB Z\nA Y\nB Z\nA X\nB X\nB Z\nB Z\nB Z\nA X\nC X\nB X\nC X\nA Z\nC Y\nB X\nB Z\nB Y\nC Y\nC Y\nB Y\nB Y\nC Y\nC Y\nA X\nC Y\nB Y\nB X\nB X\nA Z\nB X\nC Y\nB Z\nA Z\nC Y\nC X\nA Z\nB Z\nA Z\nC Y\nB Z\nB X\nC Y\nB Z\nB Z\nB X\nC Z\nB X\nB Z\nB Y\nB Y\nB X\nB Z\nC Y\nB Z\nB Z\nB X\nB Z\nB Z\nB Z\nC X\nB X\nC Y\nB Z\nC X\nC Y\nC X\nC X\nB Y\nB Z\nA X\nC X\nB Z\nA Z\nA X\nB Z\nB Z\nB Z\nC Y\nB X\nB X\nC Y\nB X\nC Y\nB Z\nB Y\nB X\nB Y\nA X\nB Z\nA X\nC X\nC X\nB Z\nC Y\nA Y\nB X\nB X\nC Y\nC Y\nC Y\nC Y\nB Z\nB Z\nC Y\nB Z\nB X\nB X\nB Z\nB X\nB X\nB Z\nB Y\nC Z\nC X\nC Y\nB X\nB X\nA X\nB X\nC Y\nA Z\nB Z\nB X\nC Y\nB Z\nB Z\nB Z\nB Z\nB Z\nB Z\nA Y\nC Y\nC X\nC Y\nC Y\nA X\nB X\nB Z\nB Y\nB Z\nC Y\nB Y\nA Y\nA Z\nB Z\nB Y\nC Z\nB Z\nC Y\nB Z\nC Y\nB Z\nB Z\nC Y\nC Z\nA X\nC Y\nC Y\nA Z\nA X\nC Y\nB Z\nC X\nC Y\nB Z\nB Z\nB Z\nC Z\nB Y\nB Z\nB Z\nC Y\nC Y\nA Y\nB Y\nB X\nB X\nB Z\nB Y\nA Z\nA X\nA Y\nC Y\nB Z\nC Z\nA Y\nB X\nB Y\nC Y\nC X\nC Y\nB X\nB X\nC X\nC Y\nB Z\nC Y\nC Y\nC Z\nB Z\nB X\nA X\nC X\nC Y\nB Z\nB X\nB Z\nB Z\nB Z\nC Y\nA X\nC X\nB Y\nB X\nA X\nA Y\nB X\nC Y\nB X\nC Z\nC X\nB X\nA Z\nB Z\nB X\nB Z\nA Y\nC X\nA Z\nB Y\nB Z\nC X\nC Z\nB X\nB Z\nB X\nB Z\nB Z\nC X\nB X\nB X\nA Z\nC Y\nB X\nC Y\nB Z\nB Z\nC X\nC Y\nB Z\nA X\nB Z\nC Y\nB X\nA X\nC Y\nA X\nA X\nC Y", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSampleData, Type = String, Dynamic = False, Default = \"A Y\nB X\nC Z", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events InputButton
	#tag Event
		Sub Pressed()
		  InputDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InputDialog
	#tag Event
		Function TestInputDataRequested() As String
		  Return kSampleData
		End Function
	#tag EndEvent
	#tag Event
		Function RealInputDataRequested() As String
		  Return kRealData
		End Function
	#tag EndEvent
	#tag Event
		Sub InputReady(inputValue As String)
		  TournamentThread.Stop
		  TournamentThread.InputValue = inputValue
		  TournamentThread.Start
		  
		  TournamentData.Matches.RemoveAll
		  ResultListBox.ReloadData
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ResultListBox
	#tag Event
		Sub Opening()
		  Me.DataSource = TournamentData
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TournamentThread
	#tag Event
		Sub UserInterfaceUpdate(data() as Dictionary)
		  For Each update As Dictionary In data
		    Select Case update.Lookup("type", "")
		    Case "final"
		      ScoreTextField.Text = update.Value("total").StringValue
		      Var matches() As TournamentMatch = update.Value("matches")
		      TournamentData.Matches = matches
		      ResultListBox.ReloadData
		      DrawStats(matches)
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
