#tag Class
Protected Class TournamentMatch
	#tag Method, Flags = &h0
		Sub Constructor(opponent As Figures, you As Figures)
		  Self.Opponent = opponent
		  Self.You = you
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Result() As Results
		  Select Case Opponent
		  Case Figures.Rock
		    Select Case You
		    Case Figures.Rock
		      Return Results.Draw
		    Case Figures.Paper
		      Return Results.Won
		    Case Figures.Scissor
		      Return Results.Lost
		    End Select
		  Case Figures.Paper
		    Select Case You
		    Case Figures.Rock
		      Return Results.Lost
		    Case Figures.Paper
		      Return Results.Draw
		    Case Figures.Scissor
		      Return Results.Won
		    End Select
		  Case Figures.Scissor
		    Select Case You
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
		  Var score As Integer
		  
		  Select Case Result
		  Case Results.Lost
		    score = 0
		  Case Results.Draw
		    score = 3
		  Case Results.Won
		    score = 6
		  End Select
		  
		  Select Case You
		  Case Figures.Rock
		    Return score + 1
		  Case Figures.Paper
		    Return score + 2
		  Case Figures.Scissor
		    Return score + 3
		  End Select
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Opponent As TournamentMatch.Figures
	#tag EndProperty

	#tag Property, Flags = &h0
		You As TournamentMatch.Figures
	#tag EndProperty


	#tag Enum, Name = Figures, Type = Integer, Flags = &h0
		Rock
		  Paper
		Scissor
	#tag EndEnum

	#tag Enum, Name = Results, Type = Integer, Flags = &h0
		Lost
		  Draw
		Won
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
			Name="You"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Figures"
			EditorType="Enum"
			#tag EnumValues
				"0 - Rock"
				"1 - Paper"
				"2 - Scissor"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
