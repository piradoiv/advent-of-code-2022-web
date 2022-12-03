#tag Class
Protected Class RucksackReorganizer
	#tag Method, Flags = &h0
		Function CalculateGroupPriorities() As Integer
		  Var result As Integer
		  Var i As Integer
		  Var group As ExpeditionGroup
		  
		  While i < mLines.LastIndex
		    group = New ExpeditionGroup(New Rucksack(mLines(i)), New Rucksack(mLines(i + 1)), New Rucksack(mLines(i + 2)))
		    result = result + Rucksack.GetItemValue(group.Badge)
		    i = i + 3
		  Wend
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CalculatePriorities() As Integer
		  Var result As Integer
		  
		  For Each sack As Rucksack In mRucksacks
		    result = result + Rucksack.GetItemValue(sack.GetDuplicatedItem)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(data As String)
		  mData = data
		  mLines = data.Split(EndOfLine)
		  
		  For Each line As String In mLines
		    mRucksacks.Add(New Rucksack(line))
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mData As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLines() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRucksacks() As Rucksack
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
