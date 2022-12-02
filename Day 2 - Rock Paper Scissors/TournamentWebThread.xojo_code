#tag Class
Protected Class TournamentWebThread
Inherits WebThread
	#tag Event
		Sub Run()
		  Var lines() As String = input.Split(EndOfLine)
		  Var matches() As TournamentMatch
		  Var maxValue As Integer = lines.LastIndex
		  
		  For i As Integer = 0 To maxValue
		    Var line As String = lines(i)
		    
		    Var parts() As String = line.Split(" ")
		    Select Case parts(1)
		    Case "X"
		      Select Case parts(0)
		      Case "A"
		        matches.Add(New TournamentMatch(TournamentMatch.Figures.Rock, TournamentMatch.Figures.Scissor))
		      Case "B"
		        matches.Add(New TournamentMatch(TournamentMatch.Figures.Paper, TournamentMatch.Figures.Rock))
		      Case "C"
		        matches.Add(New TournamentMatch(TournamentMatch.Figures.Scissor, TournamentMatch.Figures.Paper))
		      End Select
		    Case "Y"
		      Select Case parts(0)
		      Case "A"
		        matches.Add(New TournamentMatch(TournamentMatch.Figures.Rock, TournamentMatch.Figures.Rock))
		      Case "B"
		        matches.Add(New TournamentMatch(TournamentMatch.Figures.Paper, TournamentMatch.Figures.Paper))
		      Case "C"
		        matches.Add(New TournamentMatch(TournamentMatch.Figures.Scissor, TournamentMatch.Figures.Scissor))
		      End Select
		    Case "Z"
		      Select Case parts(0)
		      Case "A"
		        matches.Add(New TournamentMatch(TournamentMatch.Figures.Rock, TournamentMatch.Figures.Paper))
		      Case "B"
		        matches.Add(New TournamentMatch(TournamentMatch.Figures.Paper, TournamentMatch.Figures.Scissor))
		      Case "C"
		        matches.Add(New TournamentMatch(TournamentMatch.Figures.Scissor, TournamentMatch.Figures.Rock))
		      End Select
		    End Select
		    
		    If i Mod 250 = 0 Then
		      Var update As New Dictionary
		      Var progress As Integer = i / lines.LastIndex * 100
		      update.Value("type") = "status"
		      update.Value("max_value") = maxValue
		      update.Value("progress") = progress
		      AddUserInterfaceUpdate(update)
		    End If
		  Next
		  
		  Var totalScore As Integer
		  For Each match As TournamentMatch In matches
		    totalScore = totalScore + match.Score
		  Next
		  
		  Var result As New Dictionary
		  result.Value("type") = "final"
		  result.Value("matches") = matches
		  result.Value("total") = totalScore
		  AddUserInterfaceUpdate(result)
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		Input As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ThreadState"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ThreadStates"
			EditorType="Enum"
			#tag EnumValues
				"0 - Running"
				"1 - Waiting"
				"2 - Paused"
				"3 - Sleeping"
				"4 - NotRunning"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugIdentifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
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
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
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
			Name="Input"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
