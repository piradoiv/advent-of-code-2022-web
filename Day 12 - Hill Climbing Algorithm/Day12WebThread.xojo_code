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
		  
		  Return SolveBFS(graph, mStartPoint, mDestination)
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
		  Wend
		  
		  If lastNode = Nil Then Return result
		  
		  result.Add(lastNode)
		  While lastNode.FoundBy <> Nil
		    result.AddAt(0, lastNode.FoundBy)
		    lastNode = lastNode.FoundBy
		  Wend
		  
		  Return result
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
