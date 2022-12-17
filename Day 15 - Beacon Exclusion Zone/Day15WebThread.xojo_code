#tag Class
Protected Class Day15WebThread
Inherits WebThread
	#tag Event
		Sub Run()
		  Var update As Dictionary
		  
		  update = New Dictionary
		  update.Value("type") = "part1"
		  // update.Value("result") = CalculatePart1(InputValue)
		  // AddUserInterfaceUpdate(update)
		  
		  update = New Dictionary
		  update.Value("type") = "part2"
		  update.Value("result") = CalculatePart2(InputValue)
		  AddUserInterfaceUpdate(update)
		  
		  AddUserInterfaceUpdate("type" : "finish")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function CalculatePart1(puzzleInput As String) As Integer
		  #Pragma BoundsChecking False
		  #Pragma NilObjectChecking False
		  #Pragma StackOverflowChecking False
		  
		  Const targetY = 2000000
		  Var sensors() As ScannerSensor = ParseSensors(puzzleInput)
		  Var boundaries As Rect = GetBoundaries(sensors)
		  
		  // Remove sensors operating outside of our area of interest
		  For i As Integer = sensors.LastIndex DownTo 0
		    Var sensor As ScannerSensor = sensors(i)
		    If sensor.Bounds.Top > targetY Or sensor.Bounds.Bottom < targetY Then
		      sensors.RemoveAt(i)
		    End If
		  Next
		  
		  // Add places where there cannot be a beacon
		  Var posibilities As New Dictionary
		  For x As Double = boundaries.Left To boundaries.Right
		    For Each sensor As ScannerSensor In sensors
		      If Abs(sensor.Position.X - x) + Abs(sensor.Position.Y - targetY) <= sensor.Radius Then
		        posibilities.Value(x) = True
		      End If
		    Next
		  Next
		  
		  // Remove places where there is already a sensor or a beacon
		  For Each sensor As ScannerSensor In sensors
		    If sensor.ClosestBeacon.Y = targetY And posibilities.HasKey(sensor.ClosestBeacon.X) Then
		      posibilities.Remove(sensor.ClosestBeacon.X)
		    End If
		    
		    If sensor.Position.Y = targetY And posibilities.HasKey(sensor.Position.X) Then
		      posibilities.Remove(sensor.Position.X)
		    End If
		  Next
		  
		  Return posibilities.KeyCount
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculatePart2(puzzleInput As String) As Integer
		  Var sensors() As ScannerSensor = ParseSensors(puzzleInput)
		  Var candidates() As Point = GetCandidatesForBeacon(sensors, 4000000)
		  
		  For Each candidate As Point In candidates
		    If Not IsCoveredBySensors(candidate, sensors) Then
		      System.DebugLog(candidate.X.ToString + ", " + candidate.Y.ToString)
		      Return 4000000 * candidate.X + candidate.Y
		    End If
		  Next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetBoundaries(sensors() As ScannerSensor) As Rect
		  Var result As New Rect
		  For Each sensor As ScannerSensor In sensors
		    result.Left = Min(result.Left, sensor.Bounds.Left)
		    result.Right = Max(result.Right, sensor.Bounds.Right)
		    result.Top = Min(result.Top, sensor.Bounds.Top)
		    result.Bottom = Max(result.Bottom, sensor.Bounds.Bottom)
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetCandidatesForBeacon(sensors() As ScannerSensor, limit As Integer) As Point()
		  Var result() As Point
		  
		  Var possibleSensors() As ScannerSensor
		  For Each sensor As ScannerSensor In sensors
		    If sensor.Bounds.Right >= 0 And sensor.Bounds.Left <= limit And _
		      sensor.Bounds.Top >= 0 And sensor.Bounds.Bottom <= limit Then
		      possibleSensors.Add(sensor)
		    End If
		  Next
		  
		  For Each sensor As ScannerSensor In possibleSensors
		    Var perimeter() As Point = sensor.GetPerimeter
		    For Each currentPoint As Point In sensor.GetPerimeter
		      result.Add(currentPoint)
		    Next
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function IsCoveredBySensors(candidate As Point, sensors() As ScannerSensor) As Boolean
		  For Each sensor As ScannerSensor In sensors
		    If Abs(sensor.Position.X - candidate.X) + Abs(sensor.Position.Y - candidate.Y) <= sensor.Radius Then
		      Return True
		    End If
		  Next
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ParseSensors(puzzleInput As String) As ScannerSensor()
		  Var lines() As String = puzzleInput.Split(EndOfLine)
		  Var sensors() As ScannerSensor
		  
		  Var pointRegex As New RegEx
		  pointRegex.SearchPattern = "x=(-?\d+), y=(-?\d+)"
		  For Each line As String In lines
		    Var parts() As String = line.Split(": ")
		    Var sensorMatch As RegExMatch = pointRegex.Search(parts(0))
		    Var beaconMatch As RegExMatch = pointRegex.Search(parts(1))
		    
		    Var sensorPos As New Point(sensorMatch.SubExpressionString(1).Val, sensorMatch.SubExpressionString(2).Val)
		    Var beaconPos As New Point(beaconMatch.SubExpressionString(1).Val, beaconMatch.SubExpressionString(2).Val)
		    
		    Var sensor As New ScannerSensor(sensorPos, beaconPos)
		    sensors.Add(sensor)
		  Next
		  
		  Return sensors
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
