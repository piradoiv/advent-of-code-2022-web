#tag Class
Protected Class GraphNode
	#tag Method, Flags = &h0
		Sub Constructor(x As Integer, y As Integer)
		  Position = New Point(x, y)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function KeyFromPosition(position As Point) As String
		  Return Position.X.ToString + "," + Position.Y.ToString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Char As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FoundBy As GraphNode
	#tag EndProperty

	#tag Property, Flags = &h0
		Height As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return KeyFromPosition(Position)
			End Get
		#tag EndGetter
		Key As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Neighbors() As GraphNode
	#tag EndProperty

	#tag Property, Flags = &h0
		Position As Point
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
