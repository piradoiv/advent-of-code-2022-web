#tag Class
Protected Class Day12WebThread
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


	#tag Method, Flags = &h0
		Function Build2DGraph(width As Integer, height As Integer) As Dictionary
		  Var result As New Dictionary
		  
		  Var directions() As Pair = Array(-1 : 0, 1 : 0, 0 : -1, 0 : 1)
		  For y As Integer = 0 To height - 1
		    For x As Integer = 0 To width - 1
		      Var node As GraphNode
		      Var key As String = GraphNode.KeyFromPosition(New Point(x, y))
		      If result.HasKey(key) Then
		        node = result.Value(key)
		      Else
		        node = New GraphNode(x, y)
		        result.Value(node.Key) = node
		      End If
		      
		      For Each direction As Pair In directions
		        Var neighborPos As New Point(x + direction.Left, y + direction.Right)
		        If neighborPos.X < 0 Or neighborPos.X > width - 1 Or _
		          neighborPos.Y < 0 Or neighborPos.Y > height - 1 Then
		          Continue
		        End If
		        
		        Var newNeighbor As New GraphNode(neighborPos.X, neighborPos.Y)
		        If Not result.HasKey(newNeighbor.Key) Then
		          result.Value(newNeighbor.Key) = newNeighbor
		        End If
		        
		        newNeighbor = result.Value(newNeighbor.Key)
		        If node.Neighbors.IndexOf(newNeighbor) = -1 Then
		          node.Neighbors.Add(newNeighbor)
		        End If
		        
		        If newNeighbor.Neighbors.IndexOf(node) = -1 Then
		          newNeighbor.Neighbors.Add(node)
		        End If
		      Next
		    Next
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculatePart1(puzzleInput As String) As Integer
		  Var lines() As String = puzzleInput.Split(EndOfLine)
		  Var possiblePaths As New Dictionary
		  
		  Var width As Integer = lines(0).Length
		  Var height As Integer = lines.Count
		  Var graph As Dictionary = Build2DGraph(width, height)
		  
		  For y As Integer = 0 To lines.LastIndex
		    Var chars() As String = lines(y).Split("")
		    For x As Integer = 0 To width - 1
		      If Asc(chars(x)) = Asc("S") Then
		        mStartPoint = New Point(x, y)
		        chars(x) = "a"
		      ElseIf Asc(chars(x)) = Asc("E") Then
		        mDestination = New Point(x, y)
		        chars(x) = "z"
		      End If
		      Var node As GraphNode = graph.Value(GraphNode.KeyFromPosition(New Point(x, y)))
		      node.Height = Asc(chars(x))
		    Next
		  Next
		  
		  Var result() As GraphNode = SolveBFS(graph, New Point(0, 0), New Point(5, 2))
		  Return result.Count - 1
		  
		  // possiblePaths.Value(0) = CalculatePath(grid, width, height, True)
		  // possiblePaths.Value(1) = CalculatePath(grid, width, height, False)
		  // 
		  // DrawPath(puzzleInput, grid, possiblePaths, width, height)
		  
		  // 469 is too high
		  Var minimumSteps As Integer = -1
		  For Each entry As DictionaryEntry In possiblePaths
		    Var path() As Point = entry.Value
		    If minimumSteps = -1 Then
		      minimumSteps = path.Count - 1
		    Else
		      minimumSteps = Min(minimumSteps, path.Count - 1)
		    End If
		  Next
		  
		  Return minimumSteps
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculatePart2(puzzleInput As String) As Integer
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculatePath(grid(, ) As String, width As Integer, height As Integer, lowest As Boolean) As Point()
		  Var currentPos As Point = New Point(mStartPoint.X, mStartPoint.Y)
		  
		  Var path() As Point
		  path.Add(currentPos)
		  // DrawPath(puzzleInput, grid, path, width, height, path(0), mDestination)
		  
		  Var directions() As Pair = Array(1 : 0, 0 : 1, -1 : 0, 0 : -1)
		  Var visitedPoints(-1, -1) As Boolean
		  visitedPoints.ResizeTo(width, height)
		  visitedPoints(currentPos.X, currentPos.Y) = True
		  Var newX, newY As Integer
		  While currentPos.DistanceTo(mDestination) > 0
		    Var possibilities() As Point
		    For Each direction As Pair In directions
		      newX = currentPos.X + direction.Left
		      newY = currentPos.Y + direction.Right
		      If newX < 0 Or newX > width Or newY < 0 Or newY > height Then
		        Continue
		      End If
		      Var char As String = grid(newX, newY)
		      Var currentPosChar As String = grid(currentPos.X, currentPos.Y)
		      If Asc(char) - Asc(grid(currentPos.X, currentPos.Y)) > 1 Then
		        Continue
		      End If
		      If visitedPoints(newX, newY) Then
		        Continue
		      End If
		      
		      possibilities.Add(New Point(newX, newY))
		    Next
		    
		    If possibilities.Count = 0 Then
		      path.RemoveAt(path.LastIndex)
		      currentPos.X = path(path.LastIndex).X
		      currentPos.Y = path(path.LastIndex).Y
		      // DrawPath(puzzleInput, grid, path, width, height, path(0), mDestination)
		      Continue
		    End If
		    
		    possibilities.Sort(If(lowest, AddressOf SortByLowestDistance, AddressOf SortByLongerDistance))
		    Var winner As Point = possibilities(0)
		    
		    visitedPoints(winner.X, winner.Y) = True
		    path.Add(winner)
		    currentPos = winner
		    // DrawPath(puzzleInput, grid, path, width, height, path(0), mDestination)
		  Wend
		  
		  // DrawPath(puzzleInput, grid, path, width, height, path(0), mDestination)
		  
		  // Optimize removing redundant steps
		  #If True
		    For i As Integer = 0 To path.LastIndex - 2
		      Var stepPos As Point = path(i)
		      Var nextPos As Point = path(i + 1)
		      For Each direction As Pair In directions
		        Var checkPos As Point = New Point(stepPos.X + direction.Left, stepPos.Y + direction.Right)
		        Var index As Integer = GetPointIndex(path, checkPos)
		        If index = -1 Or index <= i + 1 Then Continue
		        If Asc(grid(checkPos.X, checkPos.Y)) <= Asc(grid(stepPos.X, stepPos.Y)) + 1 Then
		          System.DebugLog(checkPos.X.ToString + "," + checkPos.Y.ToString + " seems to be redundant")
		          For j As Integer = index - 1 DownTo i + 1
		            path.RemoveAt(j)
		          Next
		          i = GetPointIndex(path, checkPos)
		        End If
		        // DrawPath(puzzleInput, grid, path, width, height, path(0), mDestination)
		        // Sleep(100)
		      Next
		    Next
		  #EndIf
		  
		  Return path
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawPath(puzzleInput As String, grid(, ) As String, possiblePaths As Dictionary, width As Integer, height As Integer)
		  Var pathGrid(-1, -1) As String
		  pathGrid.ResizeTo(width, height)
		  Var currentPos As New Point
		  
		  For y As Integer = 0 To height
		    For x As Integer = 0 To width
		      Select Case Asc(grid(x, y))
		      Case Is < Asc("b")
		        pathGrid(x, y) = "⬜️"
		      Case Is < Asc("d")
		        pathGrid(x, y) = "🟨"
		      Case Is < Asc("g")
		        pathGrid(x, y) = "🟧"
		      Case Is < Asc("j")
		        pathGrid(x, y) = "🟪"
		      Case Is < Asc("o")
		        pathGrid(x, y) = "🟫"
		      Else
		        pathGrid(x, y) = "⬛️"
		      End Select
		    Next
		  Next
		  
		  Var possiblePathChars() As String = Array("🟦", "🅰️", "⏺", "⚛️", "❇️")
		  Var pathIndex As Integer
		  For Each entry As DictionaryEntry In possiblePaths
		    Var path() As Point = entry.Value
		    Var begin As Point = path(0)
		    Var finish As Point = path(path.LastIndex)
		    currentPos.X = path(0).X
		    currentPos.Y = path(0).Y
		    
		    For Each winner As Point In path
		      Var pathChar As String
		      If winner.X > currentPos.X Then
		        pathChar = "▶️"
		      ElseIf winner.X < currentPos.X Then
		        pathChar = "◀️"
		      ElseIf winner.Y > currentPos.Y Then
		        pathChar = "🔽"
		      Else
		        pathChar = "🔼"
		      End If
		      pathChar = possiblePathChars(pathIndex)
		      pathGrid(currentPos.X, currentPos.Y) = pathChar
		      currentPos = winner
		    Next
		    
		    pathGrid(begin.X, begin.Y) = "🟥"
		    pathGrid(finish.X, finish.Y) = "🟩"
		    pathIndex = pathIndex + 1
		  Next
		  
		  Var output As String
		  For y As Integer = 0 To height
		    For x As Integer = 0 To width
		      output = output + pathGrid(x, y)
		    Next
		    output = output + EndOfLine
		  Next
		  // output = output + EndOfLine + EndOfLine + puzzleInput
		  
		  AddUserInterfaceUpdate("type" : "path", "path" : output)
		  // Self.Sleep(5)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetPointIndex(path() As Point, checkPos As Point) As Integer
		  For i As Integer = 0 To path.LastIndex
		    Var current As Point = New Point(path(i).X, path(i).Y)
		    If current.X = checkPos.X And current.Y = checkPos.Y Then
		      Return i
		    End If
		  Next
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SolveBFS(graph As Dictionary, beginAt As Point, endAt As Point) As GraphNode()
		  Var result() As GraphNode
		  Var lastNode As GraphNode
		  Var startingNode As GraphNode = graph.Value(GraphNode.KeyFromPosition(beginAt))
		  Var queue() As GraphNode = Array(startingNode)
		  Var visitedNodes() As GraphNode = Array(startingNode)
		  
		  While queue.Count > 0
		    Var current As GraphNode = queue(0)
		    queue.RemoveAt(0)
		    
		    For Each neighbor As GraphNode In current.Neighbors
		      If neighbor.Height > current.Height + 1 Then
		        Continue
		      End If
		      
		      If visitedNodes.IndexOf(neighbor) = -1 Then
		        queue.Add(neighbor)
		        visitedNodes.Add(neighbor)
		        neighbor.FoundBy = current
		        If neighbor.Key = GraphNode.KeyFromPosition(endAt) Then
		          lastNode = neighbor
		          Exit While
		        End If
		      End If
		    Next
		  Wend
		  
		  result.Add(lastNode)
		  While lastNode.FoundBy <> Nil
		    result.AddAt(0, lastNode.FoundBy)
		    lastNode = lastNode.FoundBy
		  Wend
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SortByLongerDistance(a As Point, b As Point) As Integer
		  Return Sign(b.DistanceTo(mDestination) - a.DistanceTo(mDestination))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SortByLowestDistance(a As Point, b As Point) As Integer
		  Return Sign(a.DistanceTo(mDestination) - b.DistanceTo(mDestination))
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		InputValue As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDestination As Point
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mStartPoint As Point
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
