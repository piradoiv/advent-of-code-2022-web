#tag Class
Protected Class Day12WebThread
Inherits WebThread
	#tag Event
		Sub Run()
		  Var update As Dictionary
		  
		  Var path() As GraphNode = CreateGraphAndSolve(InputValue)
		  
		  update = New Dictionary
		  update.Value("type") = "part1"
		  update.Value("result") = CalculatePart1(path)
		  AddUserInterfaceUpdate(update)
		  
		  update = New Dictionary
		  update.Value("type") = "part2"
		  update.Value("result") = CalculatePart2(path)
		  AddUserInterfaceUpdate(update)
		  
		  AddUserInterfaceUpdate("type" : "finish")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function Build2DGraph(width As Integer, height As Integer) As Dictionary
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
		Private Function CalculatePart1(path() As GraphNode) As Integer
		  Return path.Count - 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculatePart2(path() As GraphNode) As Integer
		  Var steps() As GraphNode
		  For i As Integer = path.LastIndex DownTo 0
		    steps.Add(path(i))
		    If path(i).Height = Asc("a") Then
		      Exit For
		    End If
		  Next
		  
		  Return steps.Count - 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreateGraphAndSolve(puzzleInput As String) As GraphNode()
		  Var lines() As String = puzzleInput.Split(EndOfLine)
		  Var possiblePaths As New Dictionary
		  
		  Var width As Integer = lines(0).Length
		  Var height As Integer = lines.Count
		  Var graph As Dictionary = Build2DGraph(width, height)
		  
		  Var startPoint, endPoint As Point
		  
		  For y As Integer = 0 To lines.LastIndex
		    Var chars() As String = lines(y).Split("")
		    For x As Integer = 0 To width - 1
		      Var node As GraphNode = graph.Value(GraphNode.KeyFromPosition(New Point(x, y)))
		      node.Char = chars(x)
		      
		      Select Case Asc(chars(x))
		      Case Asc("S")
		        startPoint = New Point(x, y)
		        node.Height = Asc("a")
		      Case Asc("E")
		        endPoint = New Point(x, y)
		        node.Height = Asc("z")
		      Else
		        node.Height = Asc(chars(x))
		      End Select
		    Next
		  Next
		  
		  Return SolveBFS(graph, startPoint, endPoint)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawPath(graph As Dictionary, path() As GraphNode, visitedNodes() As GraphNode, forceDraw As Boolean = False)
		  If mLastDrawTimestamp = Nil Then mLastDrawTimestamp = New DateTime(0)
		  Var diff As DateInterval = DateTime.Now - mLastDrawTimestamp
		  If Not forceDraw And diff.Nanoseconds < 1000000 Then
		    Return
		  End If
		  
		  Var lines() As String = InputValue.Split(EndOfLine)
		  Var width As Integer = lines(0).Length - 1
		  Var height As Integer = lines.Count - 1
		  
		  Var pathGrid(-1, -1) As String
		  pathGrid.ResizeTo(width, height)
		  For Each entry As DictionaryEntry In graph
		    Var node As GraphNode = entry.Value
		    pathGrid(node.Position.X, node.Position.Y) = node.Char
		  Next
		  
		  Var currentPos As New Point
		  
		  Var closestLowerPoint As Point
		  For i As Integer = path.LastIndex DownTo 0
		    If path(i).Char = "a" Or Asc(path(i).Char) = Asc("S") Then
		      closestLowerPoint = path(i).Position
		      Exit For
		    End If
		  Next
		  
		  For y As Integer = 0 To height
		    For x As Integer = 0 To width
		      Select Case Asc(pathGrid(x, y))
		      Case Asc("S")
		        pathGrid(x, y) = "🟥"
		      Case Asc("E")
		        pathGrid(x, y) = "🟩"
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
		  
		  For Each node As GraphNode In visitedNodes
		    If node.Char <> "S" And node.Char <> "E" Then
		      pathGrid(node.Position.X, node.Position.Y) = "🔲"
		    End If
		  Next
		  
		  For Each node As GraphNode In path
		    If node.Char <> "S" And node.Char <> "E" Then
		      pathGrid(node.Position.X, node.Position.Y) = "⏺"
		    End If
		    
		    If closestLowerPoint <> Nil And closestLowerPoint = node.Position Then
		      pathGrid(node.Position.X, node.Position.Y) = "🟥"
		    End If
		  Next
		  
		  Var output As String
		  For y As Integer = 0 To height
		    For x As Integer = 0 To width
		      output = output + pathGrid(x, y)
		    Next
		    output = output + EndOfLine
		  Next
		  
		  AddUserInterfaceUpdate("type" : "path", "path" : output)
		  mLastDrawTimestamp = DateTime.Now
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SolveBFS(graph As Dictionary, beginAt As Point, endAt As Point) As GraphNode()
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
		        If neighbor.FoundBy = Nil And current.FoundBy <> neighbor Then
		          neighbor.FoundBy = current
		        End If
		        If neighbor.Key = GraphNode.KeyFromPosition(endAt) Then
		          lastNode = neighbor
		          Exit While
		        End If
		      End If
		    Next
		    DrawPath(graph, result, visitedNodes)
		  Wend
		  
		  If lastNode = Nil Then Return result
		  
		  Var empty() As GraphNode
		  
		  result.Add(lastNode)
		  While lastNode.FoundBy <> Nil
		    result.AddAt(0, lastNode.FoundBy)
		    lastNode = lastNode.FoundBy
		    DrawPath(graph, result, empty, True)
		  Wend
		  
		  DrawPath(graph, result, empty, True)
		  
		  Return result
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		InputValue As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLastDrawTimestamp As DateTime
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
