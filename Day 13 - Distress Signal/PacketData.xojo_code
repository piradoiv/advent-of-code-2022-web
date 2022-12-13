#tag Class
Protected Class PacketData
	#tag Method, Flags = &h0
		Function Compare(another As PacketData) As Boolean
		  For i As Integer = 1 To Data.LastRowIndex
		    If i > another.Data.LastRowIndex Then
		      Return True
		    End If
		    
		    Var a As Variant = Data.ValueAt(i)
		    Var b As Variant = another.Data.ValueAt(i)
		    
		    If Not a.IsArray And Not b.IsArray Then
		      If a > b Then
		        Return False
		      End If
		    Else
		      If Not a.IsArray Then a = Array(a)
		      If Not b.IsArray Then b = Array(b)
		      
		      Var wop As String
		    End If
		    
		    Var wop As String
		  Next
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(rawData As String)
		  Self.Data = New JSONItem(rawData)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Data As JSONItem
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
