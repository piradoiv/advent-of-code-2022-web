#tag Class
Protected Class TournamentMatch
	#tag Method, Flags = &h0
		Sub Constructor(opponent As Figures, player As Figures)
		  Self.Opponent = opponent
		  Self.Player = player
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(line As String)
		  Select Case line
		  Case "A X"
		    Constructor(Figures.Rock, Figures.Scissor)
		  Case "B X"
		    Constructor(Figures.Paper, Figures.Rock)
		  Case "C X"
		    Constructor(Figures.Scissor, Figures.Paper)
		  Case "A Y"
		    Constructor(Figures.Rock, Figures.Rock)
		  Case "B Y"
		    Constructor(Figures.Paper, Figures.Paper)
		  Case "C Y"
		    Constructor(Figures.Scissor, Figures.Scissor)
		  Case "A Z"
		    Constructor(Figures.Rock, Figures.Paper)
		  Case "B Z"
		    Constructor(Figures.Paper, Figures.Scissor)
		  Case "C Z"
		    Constructor(Figures.Scissor, Figures.Rock)
		  End Select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Result() As Results
		  Select Case Opponent
		  Case Figures.Rock
		    Select Case Player
		    Case Figures.Rock
		      Return Results.Draw
		    Case Figures.Paper
		      Return Results.Won
		    Case Figures.Scissor
		      Return Results.Lost
		    End Select
		  Case Figures.Paper
		    Select Case Player
		    Case Figures.Rock
		      Return Results.Lost
		    Case Figures.Paper
		      Return Results.Draw
		    Case Figures.Scissor
		      Return Results.Won
		    End Select
		  Case Figures.Scissor
		    Select Case Player
		    Case Figures.Rock
		      Return Results.Won
		    Case Figures.Paper
		      Return Results.Lost
		    Case Figures.Scissor
		      Return Results.Draw
		    End Select
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Score() As Integer
		  Return Integer(Result) + Integer(Player)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Opponent As TournamentMatch.Figures
	#tag EndProperty

	#tag Property, Flags = &h0
		Player As TournamentMatch.Figures
	#tag EndProperty


	#tag Enum, Name = Figures, Type = Integer, Flags = &h0
		Rock = 1
		  Paper
		Scissor
	#tag EndEnum

	#tag Enum, Name = Results, Type = Integer, Flags = &h0
		Lost
		  Draw = 3
		Won = 6
	#tag EndEnum


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
		#tag ViewProperty
			Name="Player"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="TournamentMatch.Figures"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rock"
				"1 - Paper"
				"2 - Scissor"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Opponent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="TournamentMatch.Figures"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
