#tag Class
Protected Class Day10WebThread
Inherits WebThread
	#tag Event
		Sub Run()
		  ResetCPU
		  
		  // Part 1
		  AddUserInterfaceUpdate("type" : "part1", "result" : CalculatePart1(InputValue))
		  
		  // Part 2
		  Var lineSize As Integer = 80
		  Var pixels As String = String.FromArray(mPixels, "")
		  Var lines() As String
		  For i As Integer = 0 To 5
		    lines.Add(pixels.Middle(lineSize * i, lineSize))
		  Next
		  AddUserInterfaceUpdate("type" : "result_string", "value" : String.FromArray(lines, EndOfLine))
		  
		  // Signal the end
		  AddUserInterfaceUpdate("type" : "finish")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function CalculatePart1(puzzleInput As String) As Integer
		  mRegisters = New Dictionary
		  mInterestingCycles = New Dictionary
		  mCycle = 0
		  
		  Var lines() As String = puzzleInput.Split(EndOfLine)
		  
		  mRegisters.Value("X") = 1
		  
		  For Each line As String In lines
		    cycle = cycle + 1
		    Var parts() As String = line.Split(" ")
		    Var instruction As String = parts(0)
		    
		    Select Case instruction
		    Case "noop"
		      // Nope =)
		    Case "addx"
		      cycle = cycle + 1
		      mRegisters.Value("X") = mRegisters.Value("X") + parts(1).Val
		    End Select
		  Next
		  
		  Var sumOfValues As Integer
		  For Each value As DictionaryEntry In mInterestingCycles
		    sumOfValues = sumOfValues + value.Value
		  Next
		  
		  Return sumOfValues
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ResetCPU()
		  Var pixelSize As Integer = (40 * 60) - 1
		  mPixels.ResizeTo(pixelSize)
		  For i As Integer = 0 To mPixels.LastIndex
		    mPixels(i) = "."
		  Next
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Return mCycle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Var interestingCycles() As Integer = Array(20, 60, 100, 140, 180, 220)
			  
			  // Draw the pixel
			  Var posX As Integer = mRegisters.Value("X")
			  Var pixelX As Integer = mCycle Mod 40
			  Var inside As Boolean = posX - 1 = pixelX Or posX = pixelX Or posX + 1 = pixelX
			  mPixels(mCycle) = If(inside, "⬛️", "⬜️")
			  
			  // Set the new cycle
			  mCycle = value
			  
			  // Calculate part 1
			  If interestingCycles.IndexOf(mCycle) <> -1 Then
			    mInterestingCycles.Value(mCycle) = mCycle * mRegisters.Value("X")
			  End If
			End Set
		#tag EndSetter
		Private Cycle As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		InputValue As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCycle As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mInterestingCycles As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPixels() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRegisters As Dictionary
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
