#tag Class
Protected Class Day6DataSource
Implements WebDataSource
	#tag Method, Flags = &h21
		Private Function ColumnData() As WebListboxColumnData()
		  // Part of the WebDataSource interface.
		  
		  Return Array(New WebListBoxColumnData("Configuration", "config", False), _
		  New WebListBoxColumnData("Result", "result", False))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowCount() As Integer
		  // Part of the WebDataSource interface.
		  
		  Return Configurations.Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowData(RowCount as Integer, RowOffset as Integer, SortColumns as String) As WebListboxRowData()
		  // Part of the WebDataSource interface.
		  
		  Var result() As WebListBoxRowData
		  
		  For i As Integer = RowOffset To RowOffset + RowCount
		    If i > Configurations.LastIndex Then Continue
		    Var row As New WebListBoxRowData
		    row.PrimaryKey = i
		    row.Value("config") = Configurations(i)
		    
		    Var configResult() As String
		    Var configChars() As String = Configurations(i).Split("")
		    For j As Integer = 0 To configChars.LastIndex
		      configResult.Add(If(configChars(j) = mResultChars(j), "🟩", "🟥"))
		    Next
		    row.Value("result") = String.FromArray(configResult, "")
		    result.Add(row)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SortedPrimaryKeys(sortColumns as String) As Integer()
		  // Part of the WebDataSource interface.
		  
		  Var result() As Integer
		  For i As Integer = 0 To Configurations.LastIndex
		    result.Add(i)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UnsortedPrimaryKeys() As Integer()
		  // Part of the WebDataSource interface.
		  
		  Var result() As Integer
		  For i As Integer = 0 To Configurations.LastIndex
		    result.Add(i)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Configurations() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		mResultChars() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mValidResult As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mValidResult
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mValidResult = value
			  mResultChars = value.Split("")
			End Set
		#tag EndSetter
		ValidResult As String
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
	#tag EndViewBehavior
End Class
#tag EndClass
