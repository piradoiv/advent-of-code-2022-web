#tag Class
Protected Class Day11WebThread
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
		  Var monkeys() As AngryMonkey = GetMonkeysFromInput(puzzleInput)
		  Return CalculateRounds(monkeys, 20)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculatePart2(puzzleInput As String) As Integer
		  Var monkeys() As AngryMonkey = GetMonkeysFromInput(puzzleInput)
		  Return CalculateRounds(monkeys, 10000, False)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CalculateRounds(monkeys() As AngryMonkey, rounds As Integer, divideWorryLevel As Boolean = True) As Integer
		  Var result As Integer = 0
		  
		  // Prepare modulo
		  Var values() As Integer
		  Var modulo As Integer = 1
		  For Each monkey As AngryMonkey In monkeys
		    values.Add(monkey.TestDibisibleBy)
		  Next
		  
		  For Each value As Integer In values
		    modulo = modulo * value
		  Next
		  
		  // Play the rounds
		  Var a, b, worryLevel, toMonkey As Integer
		  Var isDivisible As Boolean
		  For round As Integer = 1 To rounds
		    For Each monkey As AngryMonkey In monkeys
		      Var operands() As String = monkey.Operation.LastField("=").Trim.Split(" ")
		      
		      For Each item As Integer In monkey.Items
		        monkey.ItemsInspected = monkey.ItemsInspected + 1
		        worryLevel = item
		        
		        a = If(operands(0).Trim = "old", worryLevel, operands(0).Trim.Val)
		        b = If(operands(2).Trim = "old", worryLevel, operands(2).Trim.Val)
		        
		        Select Case operands(1).Trim
		        Case "+"
		          worryLevel = a + b
		        Case "*"
		          worryLevel = a * b
		        End Select
		        
		        // "[...] find another way to keep your worry levels manageable."
		        worryLevel = If(divideWorryLevel, Floor(worryLevel / 3), worryLevel Mod modulo)
		        
		        isDivisible = worryLevel Mod monkey.TestDibisibleBy = 0
		        toMonkey = If(isDivisible, monkey.DestinationWhenTrue, monkey.DestinationWhenFalse)
		        monkeys(toMonkey).Items.Add(worryLevel)
		      Next
		      
		      monkey.Items.RemoveAll
		    Next
		  Next
		  
		  monkeys.Sort(WeakAddressOf SortByItemsInspected)
		  
		  Return monkeys(0).ItemsInspected * monkeys(1).ItemsInspected
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetMonkeysFromInput(value As String) As AngryMonkey()
		  Var blocks() As String = InputValue.Split(EndOfLine + EndOfLine)
		  Var monkeys() As AngryMonkey
		  
		  For Each block As String In blocks
		    Var lines() As String = block.Split(EndOfLine)
		    
		    // Starting items
		    Var itemParts() As String = lines(1).Split(":")
		    Var items() As Integer
		    For Each item As String In itemParts(1).Split(",")
		      items.Add(item.Trim.Val)
		    Next
		    
		    // Operation
		    Var operation As String = lines(2).NthField(": ", 2).Trim
		    
		    // Divisible by test
		    Var divisibleBy As Integer = lines(3).LastField(" ").Trim.Val
		    
		    // Throw to monkey
		    Var monkey1 As Integer = lines(4).LastField(" ").Trim.Val
		    Var monkey2 As Integer = lines(5).LastField(" ").Trim.Val
		    
		    Var monkey As New AngryMonkey
		    monkey.Items = items
		    monkey.Operation = operation
		    monkey.TestDibisibleBy = divisibleBy
		    monkey.DestinationWhenTrue = monkey1
		    monkey.DestinationWhenFalse = monkey2
		    
		    monkeys.Add(monkey)
		  Next
		  
		  Return monkeys
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SortByItemsInspected(a As AngryMonkey, b As AngryMonkey) As Integer
		  Return Sign(b.ItemsInspected - a.ItemsInspected)
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
