#tag Class
Protected Class CargoCraneStepDataSource
Implements WebDataSource
	#tag Method, Flags = &h0
		Function ColumnData() As WebListboxColumnData()
		  // Part of the WebDataSource interface.
		  
		  Var result() As WebListBoxColumnData
		  
		  result.Add(New WebListBoxColumnData("Id", "id", False, 140))
		  result.Add(New WebListBoxColumnData("Amount", "amount", False, 140))
		  result.Add(New WebListBoxColumnData("Origin", "origin", False, 140))
		  result.Add(New WebListBoxColumnData("Destination", "destination", False, 140))
		  result.Add(New WebListBoxColumnData("Top crates marks", "top_crates_marks", False))
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mStacks = New Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetStacksAt(index As Integer) As CargoStack()
		  Var result() As CargoStack
		  
		  If Not mStacks.HasKey(index) Then
		    Return result
		  End If
		  
		  Var stacks() As CargoStack = mStacks.Value(index)
		  For Each stack As CargoStack In stacks
		    result.Add(stack.Clone)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount() As Integer
		  // Part of the WebDataSource interface.
		  
		  Return mSteps.Count
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowData(RowCount as Integer, RowOffset as Integer, SortColumns as String) As WebListboxRowData()
		  // Part of the WebDataSource interface.
		  
		  Var result() As WebListBoxRowData
		  
		  For i As Integer = RowOffset To RowOffset + RowCount
		    If i > mSteps.LastIndex Then Continue
		    Var row As New WebListBoxRowData
		    Var craneStep As CargoCraneStep = mSteps(i)
		    row.PrimaryKey = craneStep.Id
		    row.Value("id") = craneStep.Id.ToString
		    row.Value("amount") = craneStep.Amount.ToString
		    row.Value("origin") = craneStep.Origin.ToString
		    row.Value("destination") = craneStep.Destination.ToString
		    row.Value("top_crates_marks") = craneStep.TopCratesMarks
		    result.Add(row)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCargoSteps(steps() As CargoCraneStep)
		  Self.mStacks = New Dictionary
		  Self.mSteps.RemoveAll
		  For Each cargoStep As CargoCraneStep In steps
		    Self.mSteps.Add(cargoStep.Clone)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCratesMarksAt(row As Integer, value As String)
		  mSteps(row).TopCratesMarks = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetStacksAt(row As Integer, stacks() As CargoStack)
		  mStacks.Value(row) = stacks
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SortedPrimaryKeys(sortColumns as String) As Integer()
		  // Part of the WebDataSource interface.
		  
		  Var result() As Integer
		  For i As Integer = 1 To mSteps.LastIndex + 1
		    result.Add(i)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UnsortedPrimaryKeys() As Integer()
		  // Part of the WebDataSource interface.
		  
		  Var result() As Integer
		  For i As Integer = 1 To mSteps.LastIndex + 1
		    result.Add(i)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mStacks As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSteps() As CargoCraneStep
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
