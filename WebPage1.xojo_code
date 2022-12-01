#tag WebPage
Begin WebPage WebPage1
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   False
   Height          =   400
   ImplicitInstance=   True
   Index           =   -2147483648
   Indicator       =   0
   IsImplicitInstance=   False
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   MinimumHeight   =   400
   MinimumWidth    =   600
   TabIndex        =   0
   Title           =   "Untitled"
   Top             =   0
   Visible         =   True
   Width           =   600
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mName          =   ""
   _mPanelIndex    =   -1
   Begin WebToolbar MainToolbar
      ControlID       =   ""
      Enabled         =   True
      FullWidth       =   False
      Height          =   56
      Index           =   -2147483648
      Indicator       =   4
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Position        =   0
      Scope           =   0
      TabIndex        =   0
      TabStop         =   True
      Title           =   "Advent of Code 2022"
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   600
      _mPanelIndex    =   -1
   End
   Begin WebPagePanel Pages
      ControlID       =   ""
      Enabled         =   True
      Height          =   344
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelCount      =   1
      Scope           =   0
      SelectedPanelIndex=   0
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   56
      Visible         =   True
      Width           =   600
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin Day1Container Day1
         ControlID       =   ""
         Enabled         =   True
         Height          =   344
         Index           =   -2147483648
         Indicator       =   0
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   0
         Parent          =   "Pages"
         Scope           =   0
         ScrollDirection =   0
         TabIndex        =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   56
         Visible         =   True
         Width           =   600
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
      End
   End
End
#tag EndWebPage

#tag WindowCode
#tag EndWindowCode

#tag Events MainToolbar
	#tag Event
		Sub Opening()
		  Var sections() As String = Array("Calories")
		  
		  For i As Integer = 0 To sections.LastIndex
		    Var button As New WebToolbarButton(sections(i))
		    button.Tag = i
		    Me.AddItem(button)
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed(Item as WebToolbarButton)
		  Pages.SelectedPanelIndex = Item.Tag.IntegerValue
		End Sub
	#tag EndEvent
#tag EndEvents
