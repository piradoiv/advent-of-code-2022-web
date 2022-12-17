#tag Module
Protected Module Extensions
	#tag Method, Flags = &h0
		Function ManhattanDistanceTo(Extends origin As Point, target As Point) As Integer
		  Return Abs(origin.X - target.X) + Abs(origin.Y - target.Y)
		End Function
	#tag EndMethod


End Module
#tag EndModule
