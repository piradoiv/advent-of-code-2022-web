#tag Class
Protected Class Day13WebThread
Inherits WebThread
	#tag Event
		Sub Run()
		  Var update As Dictionary
		  
		  update = New Dictionary
		  update.Value("type") = "part1"
		  update.Value("result") = CalculatePart1(InputValue)
		  AddUserInterfaceUpdate(update)
		  
		  update = New Dictionary
		  update.Value("type") = "part2"
		  update.Value("result") = CalculatePart2(InputValue)
		  AddUserInterfaceUpdate(update)
		  
		  AddUserInterfaceUpdate("type" : "finish")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function CalculatePart1(puzzleInput As String) As Integer
		  Var rawPackets() As Pair
		  
		  Var packetBlocks() As String = puzzleInput.Split(EndOfLine + EndOfLine)
		  For Each packetBlock As String In packetBlocks
		    Var data() As String = packetBlock.Split(EndOfLine)
		    rawPackets.Add(New JSONItem(data(0)) : New JSONItem(data(1)))
		  Next
		  
		  Var rightIndex() As Integer
		  
		  For i As Integer = 0 To rawPackets.LastIndex
		    Var rawPacket As Pair = rawPackets(i)
		    Var a As JSONItem = rawPacket.Left
		    Var b As JSONItem = rawPacket.Right
		    Var pairNumber As Integer = i + 1
		    If Compare(a, b) = 1 Then
		      rightIndex.Add(i + 1)
		    End If
		  Next
		  
		  Var result As Integer
		  For Each index As Integer In rightIndex
		    result = result + index
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculatePart2(puzzleInput As String) As Integer
		  // 5566 too low
		  Return -1
		  
		  Var packets() As String
		  Var data() As String = puzzleInput.Split(EndOfLine)
		  For Each packetData As String In data
		    If packetData.Trim = "" Then Continue
		    packets.Add(packetData.Trim)
		  Next
		  
		  packets.Add("[[2]]")
		  packets.Add("[[6]]")
		  
		  packets.Sort(WeakAddressOf SortPackets)
		  
		  For Each packet As String In packets
		    System.DebugLog(packet)
		  Next
		  
		  Var firstIndex As Integer = packets.IndexOf("[[2]]") + 1
		  Var secondIndex As Integer = packets.IndexOf("[[6]]") + 1
		  
		  Return firstIndex * secondIndex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Compare(a As JSONItem, b As JSONItem) As Integer
		  Var result As Integer = 0
		  
		  If a.LastRowIndex = -1 Then
		    Return 1
		  End If
		  
		  For i As Integer = 0 To a.LastRowIndex
		    Var _aStr As String = a.ToString
		    Var _bStr As String = b.ToString
		    
		    If i > b.LastRowIndex Then
		      Return -1
		    End If
		    
		    Var valueA As Variant = a.ValueAt(i)
		    Var valueB As Variant = b.ValueAt(i)
		    
		    If valueA.IsNumeric And valueB.IsNumeric Then
		      result = Sign(valueB - valueA)
		      If result <> 0 Then
		        Return result
		      End If
		    Else
		      If valueA.IsNumeric Then
		        valueA = New JSONItem("[" + valueA + "]")
		      End If
		      If valueB.IsNumeric Then
		        valueB = New JSONItem("[" + valueB + "]")
		      End If
		      
		      result = Compare(valueA, valueB)
		      If result <> 0 Then
		        Return result
		      End If
		    End If
		    
		    If i = a.LastRowIndex Then
		      Return 1
		    End If
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SortPackets(a As String, b As String) As Integer
		  Return Compare(New JSONItem(b), New JSONItem(a))
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		InputValue As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ThreadState"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ThreadStates"
			EditorType="Enum"
			#tag EnumValues
				"0 - Running"
				"1 - Waiting"
				"2 - Paused"
				"3 - Sleeping"
				"4 - NotRunning"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugIdentifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
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
			Name="InputValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
