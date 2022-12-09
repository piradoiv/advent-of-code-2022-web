#tag WebContainerControl
Begin WebContainer Day4Container
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   414
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   ScrollDirection =   0
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   586
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin PuzzleInputWebDialog PuzzleInputDialog
      ControlID       =   ""
      Enabled         =   True
      Height          =   480
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   168
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   0
      Tooltip         =   ""
      Top             =   82
      Visible         =   True
      Width           =   640
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin WebButton InputButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Setup Data"
      ControlID       =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   386
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   180
      _mPanelIndex    =   -1
   End
   Begin WebListBox ResultListBox
      ColumnCount     =   2
      ColumnWidths    =   ""
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   160
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   "Section	Cleaning Assignments"
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      NoRowsMessage   =   ""
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   1
      Scope           =   2
      SearchCriteria  =   ""
      SelectedRowColor=   &c0272D300
      SelectedRowIndex=   0
      TabIndex        =   2
      Tooltip         =   ""
      Top             =   234
      Visible         =   True
      Width           =   342
      _mPanelIndex    =   -1
   End
   Begin WebChart ResultsChart
      ControlID       =   ""
      DatasetCount    =   0
      Enabled         =   True
      HasAnimation    =   False
      HasLegend       =   False
      Height          =   206
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Mode            =   0
      Scope           =   2
      TabIndex        =   3
      Title           =   ""
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   342
      _mMode          =   ""
      _mPanelIndex    =   -1
   End
   Begin WebTextField PartlyContainsTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Partly contains:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   70
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   386
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   4
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   77
      Visible         =   True
      Width           =   180
      _mPanelIndex    =   -1
   End
   Begin WebTextField FullyContainsTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Fully contains:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   70
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   386
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   5
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   155
      Visible         =   True
      Width           =   180
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Method, Flags = &h21
		Private Function CompareContains(a As Pair, b As Pair) As Boolean
		  If a.Left >= b.Left And a.Right <= b.Right Then Return True
		  If b.Left >= a.Left And b.Right <= a.Right Then Return True
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ComparePart(a As Pair, b As Pair) As Boolean
		  For i As Integer = a.Left To a.Right
		    If i >= b.Left And i <= b.Right Then Return True
		  Next
		  
		  For i As Integer = b.Left To b.Right
		    If i >= a.Left And i <= a.Right Then Return True
		  Next
		  
		  Return False
		End Function
	#tag EndMethod


	#tag Constant, Name = kRealData, Type = String, Dynamic = False, Default = \"71-71\x2C42-72\n27-28\x2C27-99\n15-79\x2C14-78\n3-36\x2C4-36\n5-67\x2C32-57\n7-85\x2C5-86\n2-97\x2C97-97\n10-73\x2C41-55\n34-99\x2C34-55\n80-80\x2C25-80\n50-76\x2C50-79\n42-70\x2C43-70\n95-96\x2C81-96\n6-7\x2C6-94\n37-39\x2C17-38\n39-95\x2C26-96\n52-77\x2C53-76\n2-99\x2C9-95\n23-94\x2C79-91\n19-78\x2C44-77\n47-47\x2C1-48\n4-88\x2C3-52\n51-60\x2C50-52\n49-90\x2C21-89\n76-95\x2C97-99\n78-96\x2C79-95\n90-90\x2C77-90\n8-73\x2C9-72\n54-54\x2C54-74\n20-40\x2C19-40\n7-96\x2C7-7\n16-73\x2C54-77\n8-30\x2C33-59\n71-99\x2C71-72\n22-74\x2C21-74\n58-94\x2C93-95\n92-96\x2C34-94\n5-60\x2C6-61\n2-78\x2C41-79\n63-63\x2C54-64\n21-55\x2C78-88\n1-97\x2C6-95\n14-52\x2C14-73\n5-30\x2C6-30\n4-82\x2C3-91\n9-98\x2C8-97\n1-99\x2C9-95\n35-46\x2C34-79\n2-3\x2C2-45\n2-78\x2C2-78\n11-57\x2C56-57\n78-79\x2C54-78\n17-81\x2C18-43\n76-79\x2C77-88\n4-90\x2C11-91\n1-94\x2C94-95\n57-93\x2C56-92\n13-13\x2C14-99\n42-50\x2C10-50\n34-86\x2C33-85\n2-25\x2C1-95\n6-95\x2C3-95\n5-31\x2C8-30\n3-13\x2C4-19\n10-97\x2C9-60\n13-94\x2C12-14\n9-93\x2C8-93\n18-96\x2C18-97\n53-94\x2C53-74\n33-33\x2C11-74\n58-76\x2C76-77\n7-66\x2C8-82\n38-76\x2C37-77\n1-2\x2C1-96\n24-98\x2C23-99\n2-67\x2C2-66\n30-84\x2C1-30\n8-99\x2C7-99\n89-94\x2C78-89\n11-13\x2C12-66\n75-83\x2C12-75\n2-34\x2C1-92\n36-38\x2C36-93\n4-94\x2C2-93\n6-95\x2C6-99\n19-52\x2C20-52\n49-95\x2C48-94\n5-45\x2C45-46\n3-96\x2C4-84\n21-37\x2C30-83\n33-67\x2C67-67\n30-87\x2C86-87\n73-73\x2C7-73\n4-89\x2C1-88\n5-60\x2C60-61\n51-69\x2C52-68\n3-92\x2C2-3\n3-95\x2C2-95\n13-73\x2C70-71\n7-83\x2C8-60\n62-94\x2C94-94\n23-36\x2C32-39\n17-52\x2C45-53\n53-72\x2C67-68\n48-95\x2C49-49\n14-17\x2C11-16\n70-97\x2C70-96\n13-14\x2C13-30\n9-9\x2C8-97\n2-12\x2C3-43\n79-79\x2C37-79\n3-97\x2C1-96\n56-77\x2C55-77\n34-34\x2C33-91\n2-80\x2C81-81\n17-94\x2C49-95\n25-84\x2C13-85\n23-88\x2C24-24\n1-35\x2C2-23\n30-92\x2C29-92\n37-37\x2C37-38\n63-80\x2C78-80\n4-83\x2C1-83\n9-97\x2C8-79\n2-98\x2C3-88\n17-87\x2C17-89\n37-38\x2C38-60\n79-84\x2C77-89\n5-96\x2C96-97\n3-57\x2C4-56\n50-91\x2C46-50\n7-21\x2C7-76\n79-96\x2C25-79\n1-65\x2C55-65\n16-93\x2C15-97\n12-13\x2C15-99\n68-97\x2C18-61\n7-91\x2C7-91\n16-89\x2C15-90\n8-8\x2C8-99\n28-28\x2C10-29\n17-82\x2C83-83\n17-74\x2C19-73\n17-88\x2C87-89\n11-31\x2C10-32\n85-89\x2C47-76\n34-61\x2C34-35\n82-99\x2C92-99\n14-41\x2C13-42\n46-97\x2C97-99\n3-51\x2C4-51\n40-88\x2C41-68\n58-64\x2C55-63\n87-90\x2C14-87\n7-39\x2C8-9\n15-67\x2C14-68\n21-95\x2C20-92\n27-99\x2C28-60\n50-87\x2C50-88\n39-95\x2C38-39\n67-67\x2C66-67\n30-75\x2C30-75\n54-89\x2C53-90\n10-46\x2C2-45\n30-90\x2C12-94\n29-58\x2C30-57\n22-22\x2C21-73\n31-57\x2C11-54\n10-65\x2C10-89\n17-45\x2C29-35\n43-58\x2C44-73\n8-94\x2C8-93\n26-43\x2C8-26\n22-37\x2C37-37\n26-57\x2C13-56\n47-86\x2C86-87\n89-89\x2C58-89\n5-76\x2C4-5\n96-96\x2C30-97\n8-44\x2C43-44\n22-78\x2C22-77\n35-69\x2C35-70\n7-93\x2C6-59\n3-3\x2C3-99\n23-99\x2C23-98\n75-89\x2C90-90\n13-97\x2C97-97\n93-97\x2C22-94\n36-46\x2C45-46\n16-28\x2C17-28\n26-78\x2C78-91\n6-99\x2C5-6\n55-94\x2C40-94\n2-80\x2C3-71\n13-13\x2C12-94\n77-79\x2C6-78\n1-80\x2C5-74\n54-95\x2C67-96\n23-89\x2C80-89\n6-36\x2C2-50\n2-3\x2C3-65\n39-98\x2C27-98\n59-66\x2C35-78\n9-83\x2C1-8\n41-66\x2C58-67\n4-67\x2C4-68\n9-77\x2C77-78\n65-85\x2C32-99\n43-94\x2C31-44\n1-33\x2C1-33\n5-50\x2C5-19\n39-71\x2C14-70\n1-99\x2C53-99\n6-71\x2C5-70\n17-88\x2C18-88\n41-63\x2C13-63\n4-4\x2C3-89\n3-95\x2C2-2\n15-21\x2C6-21\n22-99\x2C27-96\n1-87\x2C56-71\n73-73\x2C74-89\n65-95\x2C66-94\n5-69\x2C25-69\n21-86\x2C21-55\n14-88\x2C15-87\n20-33\x2C19-34\n14-50\x2C63-85\n7-23\x2C22-55\n56-90\x2C55-89\n60-85\x2C60-61\n82-85\x2C79-84\n66-66\x2C99-99\n1-1\x2C2-63\n6-61\x2C1-6\n26-97\x2C26-26\n36-81\x2C76-82\n49-78\x2C49-79\n17-99\x2C12-98\n1-92\x2C91-91\n11-97\x2C99-99\n33-96\x2C42-44\n8-71\x2C3-76\n67-71\x2C67-68\n49-72\x2C49-71\n28-28\x2C13-29\n38-68\x2C67-67\n15-48\x2C14-88\n16-37\x2C16-36\n76-84\x2C76-76\n5-96\x2C26-97\n35-36\x2C4-35\n1-96\x2C2-97\n71-71\x2C3-70\n37-87\x2C37-86\n29-52\x2C52-53\n12-79\x2C16-80\n46-88\x2C8-87\n8-91\x2C8-84\n21-96\x2C21-95\n17-97\x2C7-96\n51-77\x2C36-77\n13-21\x2C6-13\n64-77\x2C63-64\n4-8\x2C2-44\n63-80\x2C64-66\n51-90\x2C52-89\n34-34\x2C34-73\n3-81\x2C1-81\n19-19\x2C19-53\n68-73\x2C14-51\n4-58\x2C59-59\n8-30\x2C12-30\n4-82\x2C5-81\n26-99\x2C27-99\n27-89\x2C26-88\n38-62\x2C55-85\n6-95\x2C7-94\n18-56\x2C17-55\n44-81\x2C44-74\n16-20\x2C14-19\n37-68\x2C14-78\n6-11\x2C7-10\n24-86\x2C25-99\n10-97\x2C1-97\n52-80\x2C53-81\n28-64\x2C28-63\n67-69\x2C68-69\n3-5\x2C3-5\n12-64\x2C64-64\n3-4\x2C4-71\n34-34\x2C5-34\n29-36\x2C28-74\n3-60\x2C2-97\n36-93\x2C35-92\n51-81\x2C52-80\n13-80\x2C10-96\n17-97\x2C96-98\n90-92\x2C19-91\n76-77\x2C77-98\n42-42\x2C48-73\n88-97\x2C16-85\n70-75\x2C37-74\n55-89\x2C55-65\n38-73\x2C41-72\n74-75\x2C27-74\n32-43\x2C41-43\n39-98\x2C21-97\n43-71\x2C42-43\n93-93\x2C72-94\n19-45\x2C19-44\n45-46\x2C46-70\n2-70\x2C2-69\n16-97\x2C15-97\n26-63\x2C25-62\n19-21\x2C19-20\n7-98\x2C10-98\n21-22\x2C22-88\n51-93\x2C49-92\n14-87\x2C86-86\n37-50\x2C36-72\n14-71\x2C14-91\n27-29\x2C28-73\n98-98\x2C44-97\n20-41\x2C19-24\n42-81\x2C81-81\n54-55\x2C10-55\n56-66\x2C67-67\n46-77\x2C46-78\n6-7\x2C7-72\n74-95\x2C69-76\n10-88\x2C2-87\n45-84\x2C44-84\n43-89\x2C18-93\n19-77\x2C19-76\n12-93\x2C11-93\n60-61\x2C18-60\n1-29\x2C4-29\n39-52\x2C25-51\n5-86\x2C5-88\n3-95\x2C5-90\n78-80\x2C9-79\n29-56\x2C29-55\n24-96\x2C23-96\n19-93\x2C92-94\n91-91\x2C8-92\n53-58\x2C22-67\n46-48\x2C25-49\n22-28\x2C29-29\n7-87\x2C7-90\n14-94\x2C13-14\n2-98\x2C3-99\n14-80\x2C13-81\n6-99\x2C7-35\n3-86\x2C2-87\n41-98\x2C42-88\n15-15\x2C11-15\n32-75\x2C31-32\n11-45\x2C16-26\n4-79\x2C80-98\n90-92\x2C91-93\n2-2\x2C1-98\n24-65\x2C23-23\n7-69\x2C7-70\n76-84\x2C77-83\n38-63\x2C63-79\n11-11\x2C10-46\n10-89\x2C10-99\n16-73\x2C16-72\n22-77\x2C17-78\n99-99\x2C25-99\n6-96\x2C95-96\n52-90\x2C52-62\n76-76\x2C76-77\n14-88\x2C14-88\n26-81\x2C25-96\n53-81\x2C81-81\n38-97\x2C37-73\n16-81\x2C15-15\n30-58\x2C30-58\n61-89\x2C5-89\n14-60\x2C13-15\n22-93\x2C23-94\n19-43\x2C18-31\n6-87\x2C1-87\n1-99\x2C2-98\n3-84\x2C75-84\n70-76\x2C71-72\n15-15\x2C15-39\n6-92\x2C5-93\n3-32\x2C2-31\n30-83\x2C56-83\n78-78\x2C79-98\n7-98\x2C6-42\n18-57\x2C18-57\n8-76\x2C3-91\n12-97\x2C13-98\n36-51\x2C37-83\n3-95\x2C1-97\n25-67\x2C25-25\n14-79\x2C14-33\n91-92\x2C91-91\n3-80\x2C2-81\n38-92\x2C91-92\n93-98\x2C93-97\n21-22\x2C22-36\n31-89\x2C27-30\n14-95\x2C13-13\n25-36\x2C24-36\n43-71\x2C30-79\n37-37\x2C36-83\n2-94\x2C3-98\n2-89\x2C60-88\n7-98\x2C6-8\n66-70\x2C65-70\n11-71\x2C97-99\n9-95\x2C8-94\n4-77\x2C5-76\n38-85\x2C37-86\n18-51\x2C17-19\n13-13\x2C6-13\n71-81\x2C70-80\n46-81\x2C47-47\n69-69\x2C68-76\n37-56\x2C37-56\n96-97\x2C6-96\n53-59\x2C54-58\n45-50\x2C2-49\n5-33\x2C6-6\n16-61\x2C16-61\n13-51\x2C3-51\n5-82\x2C4-53\n5-81\x2C54-81\n2-18\x2C18-19\n29-29\x2C5-29\n12-81\x2C13-81\n2-71\x2C16-71\n48-92\x2C32-42\n8-12\x2C8-75\n47-86\x2C86-86\n5-97\x2C4-96\n75-75\x2C16-74\n13-95\x2C8-97\n10-90\x2C9-91\n48-62\x2C47-63\n3-18\x2C2-2\n1-18\x2C17-81\n45-83\x2C25-84\n36-91\x2C37-92\n85-99\x2C15-85\n39-85\x2C2-96\n24-96\x2C11-94\n12-89\x2C11-58\n47-72\x2C59-73\n31-91\x2C30-81\n33-43\x2C34-41\n16-83\x2C15-83\n22-55\x2C21-54\n39-82\x2C26-97\n10-95\x2C11-96\n2-98\x2C4-79\n17-37\x2C16-41\n76-76\x2C25-77\n65-73\x2C74-77\n9-82\x2C82-83\n30-57\x2C31-76\n4-74\x2C5-34\n31-87\x2C86-87\n65-74\x2C15-73\n36-36\x2C35-36\n1-99\x2C1-2\n31-79\x2C78-79\n6-88\x2C7-96\n73-86\x2C74-93\n31-49\x2C49-85\n2-98\x2C1-3\n14-57\x2C15-58\n83-96\x2C96-97\n6-92\x2C6-93\n6-95\x2C3-94\n16-96\x2C26-92\n6-85\x2C2-85\n38-39\x2C38-92\n96-97\x2C33-93\n12-13\x2C13-51\n5-5\x2C4-4\n1-95\x2C1-95\n69-71\x2C69-73\n27-98\x2C26-99\n5-25\x2C4-26\n43-68\x2C68-69\n8-56\x2C15-56\n3-99\x2C4-98\n5-5\x2C5-96\n17-71\x2C18-32\n53-53\x2C53-99\n12-18\x2C14-19\n20-94\x2C20-93\n15-62\x2C14-63\n59-59\x2C59-73\n99-99\x2C11-96\n47-98\x2C46-47\n4-86\x2C86-86\n1-1\x2C3-64\n19-45\x2C18-84\n1-86\x2C9-87\n45-45\x2C32-46\n41-63\x2C63-64\n3-5\x2C5-38\n34-70\x2C33-70\n34-91\x2C3-92\n12-45\x2C11-45\n29-30\x2C34-86\n24-55\x2C55-56\n6-41\x2C7-99\n87-88\x2C5-87\n5-63\x2C6-6\n63-63\x2C63-68\n2-95\x2C96-98\n17-25\x2C33-98\n40-99\x2C41-82\n21-41\x2C42-46\n50-86\x2C12-91\n11-64\x2C10-63\n21-21\x2C21-39\n10-96\x2C10-95\n18-95\x2C18-94\n73-79\x2C80-93\n14-69\x2C15-70\n25-83\x2C26-26\n83-94\x2C61-82\n16-90\x2C64-96\n2-3\x2C3-21\n7-45\x2C7-57\n6-85\x2C5-84\n22-94\x2C21-21\n5-64\x2C5-63\n96-99\x2C70-96\n18-87\x2C17-18\n6-99\x2C6-11\n49-49\x2C2-48\n7-64\x2C65-69\n41-46\x2C14-47\n92-92\x2C8-92\n6-96\x2C5-24\n57-85\x2C57-84\n39-99\x2C40-99\n80-86\x2C86-86\n52-91\x2C94-98\n67-88\x2C15-66\n15-39\x2C40-40\n22-92\x2C23-23\n31-84\x2C74-84\n43-43\x2C25-43\n16-90\x2C15-85\n5-36\x2C7-36\n53-58\x2C52-59\n14-96\x2C99-99\n3-94\x2C2-95\n97-99\x2C49-97\n7-67\x2C54-67\n12-72\x2C72-73\n69-76\x2C75-75\n59-79\x2C60-64\n72-99\x2C78-92\n80-80\x2C80-86\n25-26\x2C25-88\n27-43\x2C27-44\n27-76\x2C18-75\n22-23\x2C5-23\n52-69\x2C53-70\n16-64\x2C16-98\n3-51\x2C5-96\n3-72\x2C2-20\n26-26\x2C27-37\n58-91\x2C90-91\n14-20\x2C11-44\n5-99\x2C5-6\n31-32\x2C31-99\n9-93\x2C93-93\n21-81\x2C20-80\n47-99\x2C49-50\n28-89\x2C27-28\n30-77\x2C30-30\n91-93\x2C59-92\n4-78\x2C40-89\n38-95\x2C39-78\n27-58\x2C26-58\n32-92\x2C24-32\n69-91\x2C35-69\n31-95\x2C13-94\n8-8\x2C7-99\n14-93\x2C8-93\n36-78\x2C16-79\n7-53\x2C10-52\n98-99\x2C5-98\n9-15\x2C10-14\n1-98\x2C2-98\n2-60\x2C3-60\n33-70\x2C32-32\n83-97\x2C82-89\n92-92\x2C32-91\n1-97\x2C1-96\n85-95\x2C48-77\n3-26\x2C4-4\n14-14\x2C13-88\n13-90\x2C14-91\n28-67\x2C27-66\n69-75\x2C76-76\n31-97\x2C16-96\n21-47\x2C46-47\n50-51\x2C40-51\n17-97\x2C8-97\n3-98\x2C4-97\n58-97\x2C59-92\n8-15\x2C7-15\n94-95\x2C4-94\n45-56\x2C44-50\n21-44\x2C22-43\n16-72\x2C15-71\n65-84\x2C65-84\n18-46\x2C63-72\n61-71\x2C41-54\n10-36\x2C9-66\n3-68\x2C3-69\n19-19\x2C18-20\n69-70\x2C4-69\n72-72\x2C71-73\n30-95\x2C30-31\n76-77\x2C76-86\n21-71\x2C21-66\n36-36\x2C37-47\n17-98\x2C98-98\n38-74\x2C39-39\n1-95\x2C3-94\n9-17\x2C11-18\n1-93\x2C1-94\n49-75\x2C67-76\n83-91\x2C90-91\n8-71\x2C37-62\n31-51\x2C22-50\n45-99\x2C46-98\n8-32\x2C6-32\n50-50\x2C50-78\n75-80\x2C75-81\n1-68\x2C14-83\n13-90\x2C6-95\n3-47\x2C3-85\n25-47\x2C25-25\n15-77\x2C5-57\n7-69\x2C48-69\n21-74\x2C22-73\n48-84\x2C83-84\n14-14\x2C13-65\n41-96\x2C20-98\n73-93\x2C24-92\n14-45\x2C15-15\n98-98\x2C6-99\n34-63\x2C33-34\n10-93\x2C92-94\n2-97\x2C31-97\n30-99\x2C30-86\n6-89\x2C89-90\n65-94\x2C42-64\n38-40\x2C39-74\n1-1\x2C1-40\n9-26\x2C25-25\n2-95\x2C95-96\n14-93\x2C10-92\n84-86\x2C4-84\n21-21\x2C20-92\n56-98\x2C31-97\n4-31\x2C3-31\n2-20\x2C21-21\n12-91\x2C13-91\n1-90\x2C2-79\n3-4\x2C4-80\n12-89\x2C13-88\n6-88\x2C88-88\n22-90\x2C22-22\n18-87\x2C19-35\n28-71\x2C29-49\n39-52\x2C52-53\n73-82\x2C72-74\n70-98\x2C30-99\n31-40\x2C37-40\n10-28\x2C15-86\n48-92\x2C65-91\n10-96\x2C9-11\n22-98\x2C21-23\n2-98\x2C3-21\n34-34\x2C33-72\n23-42\x2C2-58\n26-98\x2C49-97\n65-95\x2C29-94\n48-48\x2C47-49\n23-66\x2C22-65\n97-98\x2C83-98\n32-47\x2C31-53\n24-26\x2C15-25\n82-88\x2C89-89\n85-96\x2C85-98\n22-76\x2C24-77\n84-85\x2C84-86\n26-27\x2C26-98\n10-88\x2C14-71\n73-81\x2C1-72\n79-88\x2C15-88\n74-86\x2C64-87\n27-56\x2C28-55\n37-38\x2C36-89\n1-47\x2C17-48\n50-94\x2C45-76\n35-90\x2C34-90\n7-98\x2C6-6\n2-95\x2C5-96\n60-95\x2C60-98\n94-96\x2C5-93\n25-97\x2C28-98\n9-9\x2C9-98\n6-15\x2C15-83\n11-32\x2C12-75\n7-97\x2C7-99\n17-17\x2C17-58\n46-95\x2C45-94\n10-86\x2C11-11\n41-43\x2C40-43\n7-74\x2C34-75\n8-97\x2C9-97\n72-82\x2C82-98\n19-20\x2C19-38\n7-94\x2C6-95\n9-48\x2C10-97\n47-73\x2C48-48\n32-93\x2C8-99\n12-65\x2C11-13\n43-51\x2C27-50\n35-67\x2C34-66\n9-28\x2C9-28\n25-86\x2C18-85\n92-92\x2C11-93\n66-66\x2C36-66\n59-60\x2C12-59\n5-21\x2C4-4\n40-93\x2C40-93\n56-86\x2C57-87\n2-97\x2C1-2\n61-94\x2C60-93\n36-64\x2C35-65\n62-94\x2C62-95\n27-99\x2C27-27\n36-52\x2C35-36\n31-91\x2C30-31\n35-93\x2C92-94\n2-98\x2C1-3\n74-74\x2C6-74\n46-79\x2C80-80\n19-95\x2C17-94\n15-16\x2C16-83\n1-94\x2C3-93\n79-79\x2C10-79\n10-75\x2C9-74\n2-84\x2C1-83\n19-83\x2C19-82\n13-14\x2C14-34\n33-57\x2C33-58\n3-7\x2C4-91\n25-25\x2C24-48\n46-47\x2C44-46\n85-86\x2C19-85\n40-42\x2C37-42\n72-88\x2C64-84\n25-68\x2C25-25\n88-88\x2C89-89\n3-14\x2C4-15\n12-98\x2C12-92\n5-90\x2C38-91\n41-58\x2C42-59\n24-63\x2C64-84\n47-48\x2C29-47\n30-62\x2C62-77\n43-80\x2C44-97\n90-99\x2C5-90\n12-58\x2C58-58\n18-66\x2C6-87\n30-89\x2C65-83\n23-93\x2C93-93\n7-19\x2C6-18\n12-99\x2C13-57\n5-27\x2C27-30\n3-4\x2C4-75\n14-26\x2C14-23\n91-95\x2C34-94\n52-83\x2C53-53\n16-24\x2C13-23\n56-70\x2C70-71\n10-80\x2C80-81\n58-97\x2C91-99\n16-82\x2C46-83\n15-16\x2C15-83\n26-81\x2C27-80\n65-65\x2C46-65\n23-93\x2C24-92\n42-92\x2C6-91\n25-65\x2C25-25\n9-72\x2C8-77\n36-94\x2C35-37\n44-86\x2C43-45\n51-89\x2C50-90\n69-71\x2C68-77\n10-36\x2C28-37\n22-75\x2C74-74\n38-38\x2C37-94\n42-70\x2C41-70\n3-92\x2C2-72\n18-89\x2C89-95\n82-89\x2C6-89\n75-76\x2C11-75\n12-26\x2C19-27\n21-83\x2C21-84\n2-97\x2C3-99\n13-97\x2C13-97\n89-92\x2C89-89\n29-73\x2C2-5\n41-60\x2C50-59\n12-68\x2C11-67\n26-59\x2C26-58\n22-64\x2C22-72\n31-74\x2C30-75\n41-49\x2C41-49\n26-92\x2C19-92\n53-65\x2C52-52\n47-54\x2C53-55\n81-99\x2C80-81\n22-81\x2C23-81\n15-40\x2C14-40\n5-96\x2C4-96\n21-98\x2C2-97\n13-57\x2C6-56\n13-47\x2C12-31\n66-66\x2C58-65\n2-39\x2C10-39\n11-82\x2C10-81\n94-96\x2C11-66\n5-61\x2C4-60\n35-88\x2C89-98\n58-80\x2C58-81\n15-98\x2C14-16\n33-99\x2C32-34\n4-97\x2C77-98\n14-15\x2C40-47\n31-51\x2C30-52\n28-97\x2C29-97\n79-84\x2C79-85\n19-64\x2C19-63\n3-3\x2C3-75\n36-72\x2C37-92\n6-26\x2C4-75\n4-4\x2C3-13\n44-44\x2C44-69\n3-93\x2C4-93\n47-96\x2C47-96\n15-54\x2C16-41\n78-98\x2C77-97\n53-55\x2C32-55\n88-89\x2C76-88\n16-84\x2C15-95\n82-82\x2C3-83\n43-44\x2C28-43\n66-66\x2C65-81\n6-96\x2C5-95\n83-90\x2C30-84\n61-72\x2C39-61\n2-51\x2C1-52\n11-18\x2C10-24\n65-66\x2C63-65\n7-97\x2C1-96\n6-33\x2C6-6\n50-89\x2C51-51\n22-53\x2C14-52\n49-97\x2C48-98\n5-98\x2C6-44\n15-85\x2C14-84\n29-95\x2C30-96\n75-76\x2C42-75\n37-53\x2C37-52\n3-84\x2C3-3\n33-97\x2C33-69\n49-98\x2C63-99\n77-84\x2C75-83\n3-77\x2C1-76\n60-94\x2C59-85\n79-80\x2C3-79\n32-35\x2C32-36\n30-31\x2C31-89\n15-16\x2C16-86\n8-98\x2C8-97\n42-87\x2C43-88\n34-64\x2C20-63\n7-97\x2C46-98\n4-19\x2C19-67\n39-90\x2C41-90\n40-78\x2C78-79\n50-73\x2C14-92\n58-87\x2C59-60\n4-82\x2C3-4\n61-63\x2C60-68\n1-6\x2C6-61\n17-19\x2C17-18\n5-62\x2C10-36\n15-40\x2C14-39\n59-70\x2C60-69\n93-95\x2C37-92\n14-97\x2C7-99\n91-92\x2C55-91\n38-88\x2C26-42\n6-72\x2C5-7\n77-96\x2C77-97\n5-84\x2C84-84\n29-47\x2C22-32\n53-54\x2C52-53\n11-95\x2C95-96\n7-40\x2C21-95\n99-99\x2C47-99\n18-76\x2C18-82\n1-93\x2C26-93\n37-37\x2C2-41\n71-71\x2C4-71\n26-97\x2C26-26\n68-69\x2C3-68\n96-96\x2C24-97\n41-80\x2C40-65\n54-99\x2C67-95\n80-90\x2C81-93\n35-59\x2C35-59\n16-44\x2C16-44\n2-78\x2C19-79\n16-16\x2C16-97\n2-38\x2C2-2\n8-16\x2C2-16\n47-72\x2C48-73\n15-28\x2C14-29\n4-90\x2C5-5\n46-99\x2C19-95\n66-86\x2C66-77\n61-97\x2C61-96\n30-93\x2C47-93\n59-81\x2C60-80\n21-22\x2C21-22\n36-78\x2C35-77\n35-93\x2C35-35\n34-34\x2C33-49\n24-69\x2C1-68\n9-84\x2C15-84\n11-11\x2C10-94\n3-59\x2C3-4\n25-69\x2C68-68\n93-94\x2C3-93\n72-98\x2C85-98\n36-95\x2C36-94\n36-85\x2C36-86\n9-39\x2C9-40\n97-98\x2C34-97\n24-84\x2C77-85\n37-85\x2C38-38\n92-93\x2C34-91\n44-69\x2C43-78\n2-83\x2C82-84\n19-37\x2C40-62\n56-79\x2C54-78\n60-60\x2C60-97\n46-66\x2C46-67\n18-76\x2C19-86\n40-67\x2C20-67\n13-98\x2C14-97\n63-65\x2C62-64\n22-88\x2C21-89\n45-77\x2C46-78\n14-52\x2C14-53\n38-59\x2C38-60\n1-21\x2C21-21\n62-70\x2C61-62\n50-56\x2C23-99\n4-96\x2C53-97\n68-69\x2C19-68\n35-76\x2C34-76\n29-76\x2C30-77\n12-91\x2C13-90\n7-94\x2C96-99\n5-85\x2C5-81\n56-57\x2C57-58\n26-26\x2C27-98\n12-28\x2C11-58\n11-32\x2C10-32\n10-42\x2C10-56\n46-63\x2C38-62\n31-95\x2C3-94\n76-82\x2C41-75\n87-88\x2C4-88\n21-33\x2C20-32", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTestData, Type = String, Dynamic = False, Default = \"2-4\x2C6-8\n2-3\x2C4-5\n5-7\x2C7-9\n2-8\x2C3-7\n6-6\x2C4-6\n2-6\x2C4-8", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events PuzzleInputDialog
	#tag Event
		Sub InputReady(inputValue As String)
		  Var lines() As String = inputValue.Split(EndOfLine)
		  Var counterContains As Integer
		  Var counterPart As Integer
		  Var assignments() As Pair
		  
		  For Each line As String In lines
		    Var parts() As String = line.Split(",")
		    Var elfA As Pair = parts(0).NthField("-", 1).Val : parts(0).NthField("-", 2).Val
		    Var elfB As Pair = parts(1).NthField("-", 1).Val : parts(1).NthField("-", 2).Val
		    If compareContains(elfA, elfB) Then counterContains = counterContains + 1
		    If comparePart(elfA, elfB) Then counterPart = counterPart + 1
		    
		    assignments.Add(elfA)
		    assignments.Add(elfB)
		  Next
		  
		  PartlyContainsTextField.Text = counterPart.ToString
		  FullyContainsTextField.Text = counterContains.ToString
		  
		  // Display data
		  Var values As New Dictionary
		  
		  For Each assignment As Pair In assignments
		    For i As Integer = assignment.Left To assignment.Right
		      Var value As Integer = values.Lookup(i, 0)
		      value = value + 1
		      values.Value(i) = value
		    Next
		  Next
		  
		  Var labels() As String
		  Var data() As Double
		  ResultListBox.RemoveAllRows
		  For Each value As DictionaryEntry In values
		    ResultListBox.AddRow(value.Key, value.Value)
		    labels.Add(value.Key)
		    data.Add(value.Value)
		  Next
		  
		  ResultsChart.RemoveAllDatasets
		  ResultsChart.RemoveAllLabels
		  ResultsChart.AddDataset(New WebChartLinearDataset("Assignments", Color.Teal, True, data))
		  ResultsChart.AddLabels(labels)
		End Sub
	#tag EndEvent
	#tag Event
		Function RealInputDataRequested() As String
		  Return kRealData
		End Function
	#tag EndEvent
	#tag Event
		Function TestInputDataRequested() As String
		  Return kTestData
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events InputButton
	#tag Event
		Sub Pressed()
		  PuzzleInputDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
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
	#tag ViewProperty
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScrollDirection"
		Visible=true
		Group="Behavior"
		InitialValue="ScrollDirections.None"
		Type="WebContainer.ScrollDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - None"
			"1 - Horizontal"
			"2 - Vertical"
			"3 - Both"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="View"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="View"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
