#tag Class
Protected Class Rucksack
	#tag Method, Flags = &h0
		Sub Constructor(contents As String)
		  mRawData = contents
		  mCompartments = Array(contents.Left(contents.Length / 2), contents.Right(contents.Length / 2))
		  
		  Var rightItems() As String = mCompartments(1).Split("")
		  Var result() As String
		  
		  For Each item As String In rightItems
		    If mCompartments(0).IndexOf(0, item, ComparisonOptions.CaseSensitive) <> -1 Then
		      mDuplicatedItem = item
		      Exit For item
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDuplicatedItem() As String
		  Return mDuplicatedItem
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetFoodEmoji(item As String) As String
		  Return Chr(GetItemValue(item) + 127822)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetItemValue(item As String) As Integer
		  Var value As Integer = Asc(item) - Asc("a") + 1
		  Return If(value > 0, value, value + 58)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasType(type As String) As Boolean
		  Return mRawData.IndexOf(0, type, ComparisonOptions.CaseSensitive) <> -1
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mCompartments() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDuplicatedItem As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mFirstPocketContents As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRawData As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSecondPocketContents As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mRawData
			End Get
		#tag EndGetter
		RawData As String
	#tag EndComputedProperty


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
			Name="mRawData"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
