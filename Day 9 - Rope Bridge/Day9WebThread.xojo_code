#tag Class
Protected Class Day9WebThread
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
		  Return SimulateRopeMovement(2, puzzleInput)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculatePart2(puzzleInput As String) As Integer
		  Return SimulateRopeMovement(14, puzzleInput)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SimulateRopeMovement(knots As Integer, movements As String) As Integer
		  Var rope() As Point
		  For i As Integer = 0 To knots - 1
		    rope.Add(New Point(0, 0))
		  Next
		  
		  // Digest the input
		  Var lines() As String = movements.Split(EndOfLine)
		  Var steps() As Pair
		  For Each line As String In lines
		    Var parts() As String = line.Split(" ")
		    steps.Add(parts(0) : parts(1))
		  Next
		  
		  // This is a Set to store each place where the
		  // tail has been
		  Var tailSet As New Dictionary
		  
		  // Start walking
		  For Each currentStep As Pair In steps
		    For i As Integer = 1 To currentStep.Right
		      Select Case currentStep.Left
		      Case "R" // Right
		        rope(0).X = rope(0).X + 1
		      Case "U" // Up
		        rope(0).Y = rope(0).Y - 1
		      Case "L" // Left
		        rope(0).X = rope(0).X - 1
		      Case "D" // Down
		        rope(0).Y = rope(0).Y + 1
		      End Select
		      
		      For j As Integer = 1 To rope.LastIndex
		        Var distance As Double = rope(j).DistanceTo(rope(j - 1))
		        If distance >= 2 Then
		          If distance > 2 And distance < 3 Then
		            If rope(j - 1).X > rope(j).X Then
		              rope(j).X = rope(j).X + 1
		            End If
		            
		            If rope(j - 1).Y > rope(j).Y Then
		              rope(j).Y = rope(j).Y + 1
		            End If
		            
		            If rope(j - 1).X < rope(j).X Then
		              rope(j).X = rope(j).X - 1
		            End If
		            
		            If rope(j - 1).Y < rope(j).Y Then
		              rope(j).Y = rope(j).Y - 1
		            End If
		          Else
		            Var moved As Boolean = False
		            If Not moved And rope(j - 1).X > rope(j).X Then
		              rope(j).X = rope(j).X + 1
		              moved = True
		            End If
		            
		            If Not moved And rope(j - 1).Y > rope(j).Y Then
		              rope(j).Y = rope(j).Y + 1
		              moved = True
		            End If
		            
		            If Not moved And rope(j - 1).X < rope(j).X Then
		              rope(j).X = rope(j).X - 1
		              moved = True
		            End If
		            
		            If Not moved And rope(j - 1).Y < rope(j).Y Then
		              rope(j).Y = rope(j).Y - 1
		              moved = True
		            End If
		          End If
		        End If
		      Next
		      
		      tailSet.Value(rope(rope.LastIndex).X.ToString + "," + rope(rope.LastIndex).Y.ToString) = True
		    Next
		  Next
		  
		  Return tailSet.KeyCount
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
