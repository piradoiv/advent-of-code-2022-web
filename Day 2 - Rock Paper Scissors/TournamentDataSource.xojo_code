#tag Class
Protected Class TournamentDataSource
Implements WebDataSource
	#tag Method, Flags = &h0
		Function ColumnData() As WebListboxColumnData()
		  // Part of the WebDataSource interface.
		  
		  Var result() As WebListBoxColumnData
		  
		  result.Add(New WebListBoxColumnData("#", "id", False, 70))
		  result.Add(New WebListBoxColumnData("Opponent", "opponent", False, 150))
		  result.Add(New WebListBoxColumnData("You", "you", False, 150))
		  result.Add(New WebListBoxColumnData("Result", "result", False, 150))
		  result.Add(New WebListBoxColumnData("Score", "score", False))
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FigureToString(figure As TournamentMatch.Figures) As String
		  Select Case figure
		  Case TournamentMatch.Figures.Rock
		    Return "Rock"
		  Case TournamentMatch.Figures.Paper
		    Return "Paper"
		  Case TournamentMatch.Figures.Scissor
		    Return "Scissors"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ResultToString(result As TournamentMatch.Results) As String
		  Select Case result
		  Case TournamentMatch.Results.Lost
		    Return "Lost"
		  Case TournamentMatch.Results.Draw
		    Return "Draw"
		  Case TournamentMatch.Results.Won
		    Return "Won"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount() As Integer
		  // Part of the WebDataSource interface.
		  
		  Return Matches.Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowData(RowCount as Integer, RowOffset as Integer, SortColumns as String) As WebListboxRowData()
		  // Part of the WebDataSource interface.
		  
		  Var result() As WebListBoxRowData
		  
		  Var lastIndex As Integer = RowCount + RowOffset
		  For i As Integer = RowOffset To lastIndex
		    If i > Matches.LastIndex Then Continue
		    Var row As New WebListBoxRowData
		    Var id As Integer = i + 1
		    Var style As New WebStyle
		    Select Case Matches(i).Result
		    Case TournamentMatch.Results.Lost
		      style.BackgroundColor = &cffad92
		    Case TournamentMatch.Results.Draw
		      style.BackgroundColor = &cffff86
		    Case TournamentMatch.Results.Won
		      style.BackgroundColor = &ca8ff92
		    End Select
		    
		    row.Value("id") = id.ToString
		    row.Value("opponent") = FigureToString(Matches(i).Opponent)
		    row.Value("you") = FigureToString(Matches(i).You)
		    Var cellRenderer As New WebListBoxStyleRenderer(style, ResultToString(Matches(i).Result))
		    cellRenderer.CellOnly = False
		    row.Value("result") = cellRenderer
		    row.Value("score") = Matches(i).Score.ToString
		    result.Add(row)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SortedPrimaryKeys(sortColumns as String) As Integer()
		  // Part of the WebDataSource interface.
		  
		  Var result() As Integer
		  For i As Integer = 0 To Matches.LastIndex
		    result.Add(i)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnsortedPrimaryKeys() As Integer()
		  // Part of the WebDataSource interface.
		  
		  Var result() As Integer
		  For i As Integer = 0 To Matches.LastIndex
		    result.Add(i)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Matches() As TournamentMatch
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
	#tag EndViewBehavior
End Class
#tag EndClass
