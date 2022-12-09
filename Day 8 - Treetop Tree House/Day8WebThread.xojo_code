#tag Class
Protected Class Day8WebThread
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
		  Var result As Integer
		  
		  // Convert puzzle input in data
		  Var gridSize As Point = GetGridDimensions(puzzleInput)
		  Var trees(-1, -1) As Integer = GetTreesFromData(puzzleInput)
		  
		  // Calculate result
		  Var visibleTrees As Integer
		  For x As Integer = 0 To gridSize.X
		    For y As Integer = 0 To gridSize.Y
		      visibleTrees = visibleTrees + If(IsTreeVisible(trees, gridSize, x, y), 1, 0)
		    Next
		  Next
		  
		  Return visibleTrees
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculatePart2(puzzleInput As String) As Integer
		  Var result As Integer
		  
		  // Convert puzzle input in data
		  Var gridSize As Point = GetGridDimensions(puzzleInput)
		  Var trees(-1, -1) As Integer = GetTreesFromData(puzzleInput)
		  
		  // Calculate result
		  Var highestScenicScore As Integer
		  For x As Integer = 0 To gridSize.X
		    For y As Integer = 0 To gridSize.Y
		      highestScenicScore = Max(highestScenicScore, GetScenicScore(trees, gridSize, x, y))
		    Next
		  Next
		  
		  Return highestScenicScore
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetGridDimensions(value As String) As Point
		  Var lines() As String = value.Split(EndOfLine)
		  Return New Point(lines(0).Split("").Count - 1, lines.Count - 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetScenicScore(trees(, ) As Integer, dimensions As Point, posX As Integer, posY As Integer) As Integer
		  Var result As Integer
		  Var height, maxHeight As Integer
		  Var treeHeight As Integer = trees(posX, posY)
		  
		  // South, West, North, East
		  Var directions() As Pair = Array(0 : -1, -1 : 0, 0 : 1, 1 : 0)
		  
		  For Each direction As Pair In directions
		    maxHeight = treeHeight
		    Var pos As Point = New Point(posX, posY)
		    Var score As Integer
		    
		    While True
		      pos.X = pos.X + direction.Left
		      pos.Y = pos.Y + direction.Right
		      If pos.X < 0 Or pos.X > dimensions.X Or pos.Y < 0 Or pos.Y > dimensions.Y Then
		        Exit While
		      End If
		      height = trees(pos.X, pos.Y)
		      score = score + 1
		      If height >= maxHeight Then Exit While
		      maxHeight = Max(maxHeight, height)
		    Wend
		    result = If(direction = directions(0), score, result * score)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetTreesFromData(value As String) As Integer(,)
		  Var trees(-1,-1) As Integer
		  Var lines() As String = value.Split(EndOfLine)
		  Var chars() As String
		  Var char As String
		  Var treeHeight As Integer
		  
		  Var x, y As Integer
		  Var key, position As Point
		  
		  Var dimensions As Point = GetGridDimensions(value)
		  trees.ResizeTo(dimensions.X, dimensions.Y)
		  
		  For y = 0 To dimensions.Y
		    chars = lines(y).Split("")
		    For x = 0 To dimensions.X
		      char = chars(x)
		      treeHeight = char.Val
		      trees(x, y) = treeHeight
		    Next
		  Next
		  
		  Return trees
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function IsTreeVisible(trees(, ) As Integer, dimensions As Point, posX As Integer, posY As Integer) As Boolean
		  Var x, y As Integer
		  Var maxHeight As Integer
		  Var treeHeight As Integer = trees(posX, posY)
		  
		  // Edges are always visible
		  If posX = 0 Or posY = 0 Or posX = dimensions.X Or posY = dimensions.Y Then Return True
		  
		  // Is visible from the left
		  maxHeight = 0
		  y = posY
		  For x = 0 To posX - 1
		    maxHeight = Max(maxHeight, trees(x, y))
		  Next
		  If maxHeight < treeHeight Then Return True
		  
		  // Is visible from the right
		  maxHeight = 0
		  y = posY
		  For x = posX + 1 To dimensions.X
		    maxHeight = Max(maxHeight, trees(x, y))
		  Next
		  If maxHeight < treeHeight Then Return True
		  
		  // Is visible from above
		  maxHeight = 0
		  x = posX
		  For y = 0 To posY - 1
		    maxHeight = Max(maxHeight, trees(x, y))
		  Next
		  If maxHeight < treeHeight Then Return True
		  
		  // Is visible from below
		  maxHeight = 0
		  x = posX
		  For y = posY + 1 To dimensions.Y
		    maxHeight = Max(maxHeight, trees(x, y))
		  Next
		  If maxHeight < treeHeight Then Return True
		  
		  Return False
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
