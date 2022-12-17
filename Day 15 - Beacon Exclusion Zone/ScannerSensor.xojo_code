#tag Class
Protected Class ScannerSensor
	#tag Method, Flags = &h0
		Sub Constructor(position As Point, closestBeacon As Point)
		  Self.Position = position
		  Self.ClosestBeacon = closestBeacon
		  Self.Radius = position.ManhattanDistanceTo(closestBeacon)
		  Self.Bounds = New Rect
		  Self.Bounds.Left = position.X - Radius
		  Self.Bounds.Top = position.Y - Radius
		  Self.Bounds.Width = Radius * 2
		  Self.Bounds.Height = Radius * 2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPerimeter(grow As Integer = 1) As Point()
		  Var result() As Point
		  Var distance As Integer
		  For y As Integer = Bounds.Top - grow To Bounds.Bottom + grow
		    distance = Abs(Abs(y - Position.Y) - grow - Radius)
		    result.Add(New Point(Position.X - distance, y)) // Left
		    If y <> Bounds.Top - grow And y <> Bounds.Bottom + grow Then
		      result.Add(New Point(Position.X + distance, y)) // Right
		    End If
		  Next
		  
		  Return result
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Bounds As Rect
	#tag EndProperty

	#tag Property, Flags = &h0
		ClosestBeacon As Point
	#tag EndProperty

	#tag Property, Flags = &h0
		Position As Point
	#tag EndProperty

	#tag Property, Flags = &h0
		Radius As Integer
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
