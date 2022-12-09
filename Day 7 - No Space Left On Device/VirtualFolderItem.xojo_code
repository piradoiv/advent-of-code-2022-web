#tag Class
Protected Class VirtualFolderItem
	#tag Method, Flags = &h0
		Sub AddFile(name As String, size As Integer)
		  Var child As New VirtualFolderItem
		  child.Name = name
		  child.Size = size
		  child.Parent = Self
		  child.Type = VirtualFolderItem.Types.File
		  
		  Children.Add(child)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFolderByName(name As String) As VirtualFolderItem
		  For Each child As VirtualFolderItem In children
		    If child.Name = name Then Return child
		  Next
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeDirectory(name As String)
		  Var child As New VirtualFolderItem
		  child.Name = name
		  child.Parent = Self
		  child.Type = VirtualFolderItem.Types.Folder
		  
		  Children.Add(child)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Children() As VirtualFolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mParent As WeakRef
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mParent <> Nil And mParent.Value <> Nil Then
			    Return VirtualFolderItem(mParent.Value)
			  End If
			  
			  Return Nil
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mParent = New WeakRef(value)
			End Set
		#tag EndSetter
		Parent As VirtualFolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Path As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Size As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Type As VirtualFolderItem.Types = VirtualFolderItem.Types.File
	#tag EndProperty


	#tag Enum, Name = Types, Type = Integer, Flags = &h0
		Folder
		File
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Path"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
