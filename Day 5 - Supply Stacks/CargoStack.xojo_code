#tag Class
Protected Class CargoStack
	#tag Method, Flags = &h0
		Function Clone() As CargoStack
		  Var result As New CargoStack
		  
		  Var crates() As String
		  For Each crate As String In mStack
		    crates.Add(crate)
		  Next
		  
		  result.Push(crates)
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As Integer
		  Return mStack.Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetMarkAt(index As Integer) As String
		  If index > mStack.LastIndex Then Return ""
		  Return mStack(mStack.LastIndex - index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTopCrateMark() As String
		  Return If(mStack.Count >= 1, mStack(0), "")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Pull(amount As Integer) As String()
		  Var result() As String
		  
		  If mStack.Count = 0 Then Return result
		  
		  For i As Integer = 0 To amount - 1
		    result.Add(mStack(0))
		    mStack.RemoveAt(0)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Push(crates() As String, reverse As Boolean = False)
		  If reverse Then
		    For i As Integer = 0 To crates.LastIndex
		      mStack.AddAt(0, crates(i))
		    Next
		  Else
		    For i As Integer = crates.LastIndex DownTo 0
		      mStack.AddAt(0, crates(i))
		    Next
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mStack() As String
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
