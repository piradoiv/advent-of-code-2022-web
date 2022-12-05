#tag Class
Protected Class CargoCraneStep
	#tag Method, Flags = &h0
		Function Clone() As CargoCraneStep
		  Var result As New CargoCraneStep
		  result.Id = Id
		  result.Amount = Amount
		  result.Origin = Origin
		  result.Destination = Destination
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(id As Integer, instructions As String)
		  Var expr As New RegEx
		  expr.SearchPattern = "move (\d+) from (\d+) to (\d+)"
		  Var matches As RegExMatch = expr.Search(instructions)
		  
		  If matches = Nil Then Return
		  
		  Self.Id = id
		  Self.Amount = matches.SubExpressionString(1).Val
		  Self.Origin = matches.SubExpressionString(2).Val
		  Self.Destination = matches.SubExpressionString(3).Val
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Amount As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Destination As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Origin As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		TopCratesMarks As String
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
