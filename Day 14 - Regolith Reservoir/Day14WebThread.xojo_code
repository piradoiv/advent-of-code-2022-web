#tag Class
Protected Class Day14WebThread
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
		  Var lines() As String = puzzleInput.Split(EndOfLine)
		  Var grid As New Dictionary
		  
		  Var minX As Integer = 500
		  Var width, height As Double
		  width = 500
		  
		  // Parse the input
		  For Each line As String In lines
		    Var segments() As String = line.Split(" -> ")
		    For i As Integer = 0 To segments.LastIndex - 1
		      Var pathFrom() As String = segments(i).Split(",")
		      Var pathTo() As String = segments(i + 1).Split(",")
		      Var isHorizontal As Boolean = pathFrom(0).Val <> pathTo(0).Val
		      
		      minX = Min(minX, pathFrom(0).Val, pathTo(0).Val, pathFrom(0).Val, pathTo(0).Val)
		      width = Max(width, pathFrom(0).Val, pathTo(0).Val)
		      height = Max(height, pathFrom(1).Val, pathTo(1).Val)
		      
		      If isHorizontal Then
		        Var y As Integer = pathFrom(1).Val
		        For x As Integer = Min(pathFrom(0).Val, pathTo(0).Val) To Max(pathFrom(0).Val, pathTo(0).Val)
		          grid.Value(x.ToString + "," + y.ToString) = "X"
		        Next
		      Else
		        Var x As Integer = pathFrom(0).Val
		        For y As Integer = Min(pathFrom(1).Val, pathTo(1).Val) To Max(pathFrom(1).Val, pathTo(1).Val)
		          grid.Value(x.ToString + "," + y.ToString) = "X"
		        Next
		      End If
		    Next
		  Next
		  
		  // Add the source of sand
		  grid.Value("500,0") = "+"
		  
		  Var overflowing As Boolean = False
		  While Not overflowing
		    Var pos As New Point(500, 0)
		    
		    Var directions() As Pair = Array(0 : 1, -1 : 1, 1 : 1)
		    While True
		      Var possibilities() As Point
		      For Each direction As Pair In directions
		        possibilities.Add(New Point(pos.X + direction.Left, pos.Y + direction.Right))
		      Next
		      
		      For Each possibility As Point In possibilities
		        Var empty As Boolean = Not grid.HasKey(possibility.X.ToString + "," + possibility.Y.ToString)
		        If empty Then
		          pos = possibility
		          
		          // Check if we've finished
		          If pos.X < minX Or pos.X > width Or pos.Y > height Then
		            overflowing = True
		            Exit While
		          End If
		          
		          Continue While
		        End If
		      Next
		      
		      // Can't move, a new sand block needs to be generated
		      grid.Value(pos.X.ToString + "," + pos.Y.ToString) = "o"
		      Exit While
		    Wend
		  Wend
		  
		  DrawGrid(grid, minX, width, height)
		  
		  // Count the amount of blocks of sands
		  Var sandBlocks As Integer
		  For Each entry As DictionaryEntry In grid
		    If entry.Value = "o" Then
		      sandBlocks = sandBlocks + 1
		    End If
		  Next
		  
		  Return sandBlocks
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculatePart2(puzzleInput As String) As Integer
		  Var lines() As String = puzzleInput.Split(EndOfLine)
		  Var grid As New Dictionary
		  
		  Var minX As Integer = 500
		  Var width, height As Double
		  width = 500
		  
		  // Parse the input
		  For Each line As String In lines
		    Var segments() As String = line.Split(" -> ")
		    For i As Integer = 0 To segments.LastIndex - 1
		      Var pathFrom() As String = segments(i).Split(",")
		      Var pathTo() As String = segments(i + 1).Split(",")
		      Var isHorizontal As Boolean = pathFrom(0).Val <> pathTo(0).Val
		      
		      minX = Min(minX, pathFrom(0).Val, pathTo(0).Val, pathFrom(0).Val, pathTo(0).Val)
		      width = Max(width, pathFrom(0).Val, pathTo(0).Val)
		      height = Max(height, pathFrom(1).Val, pathTo(1).Val)
		      
		      If isHorizontal Then
		        Var y As Integer = pathFrom(1).Val
		        For x As Integer = Min(pathFrom(0).Val, pathTo(0).Val) To Max(pathFrom(0).Val, pathTo(0).Val)
		          grid.Value(x.ToString + "," + y.ToString) = "X"
		        Next
		      Else
		        Var x As Integer = pathFrom(0).Val
		        For y As Integer = Min(pathFrom(1).Val, pathTo(1).Val) To Max(pathFrom(1).Val, pathTo(1).Val)
		          grid.Value(x.ToString + "," + y.ToString) = "X"
		        Next
		      End If
		    Next
		  Next
		  
		  // Add the source of sand
		  grid.Value("500,0") = "+"
		  
		  // Add the floor
		  height = height + 2
		  For x As Integer = minX To width
		    grid.Value(x.ToString + "," + height.ToString) = "X"
		  Next
		  
		  Var overflowing As Boolean = False
		  While Not overflowing
		    Var pos As New Point(500, 0)
		    
		    Var directions() As Pair = Array(0 : 1, -1 : 1, 1 : 1)
		    While True
		      Var possibilities() As Point
		      For Each direction As Pair In directions
		        possibilities.Add(New Point(pos.X + direction.Left, pos.Y + direction.Right))
		      Next
		      
		      For Each possibility As Point In possibilities
		        Var empty As Boolean = Not grid.HasKey(possibility.X.ToString + "," + possibility.Y.ToString)
		        If possibility.Y = height Then
		          empty = False
		        End If
		        
		        If empty Then
		          pos = possibility
		          Continue While
		        End If
		      Next
		      
		      // Can't move, a new sand block needs to be generated
		      grid.Value(pos.X.ToString + "," + pos.Y.ToString) = "o"
		      
		      // Check if we've finished
		      If pos.X = 500 And pos.Y = 0 Then
		        overflowing = True
		      End If
		      
		      Exit While
		    Wend
		  Wend
		  
		  DrawGrid(grid, minX, width, height)
		  
		  // Count the amount of blocks of sands
		  Var sandBlocks As Integer
		  For Each entry As DictionaryEntry In grid
		    If entry.Value = "o" Then
		      sandBlocks = sandBlocks + 1
		    End If
		  Next
		  
		  Return sandBlocks
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawGrid(grid As Dictionary, minX As Integer, width As Integer, height As Integer)
		  // Draw the current state of the grid
		  Var output() As String
		  For y As Integer = 0 To height
		    Var line As String
		    For x As Integer = minX To width
		      line = line + grid.Lookup(x.ToString + "," + y.ToString, ".")
		    Next
		    output.Add(line)
		  Next
		  
		  // And send it to the GUI
		  AddUserInterfaceUpdate("type" : "asciiCave", "cave" : String.FromArray(output, EndOfLine))
		End Sub
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
