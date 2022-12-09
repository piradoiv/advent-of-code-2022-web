#tag WebContainerControl
Begin WebContainer Day7Container
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   486
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
   Width           =   732
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mName          =   ""
   _mPanelIndex    =   -1
   Begin WebTextField Part1TextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Part 1:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   70
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   542
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   0
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   80
      Visible         =   True
      Width           =   170
      _mPanelIndex    =   -1
   End
   Begin WebButton SetupDataButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "OK"
      ControlID       =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   542
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
      Width           =   170
      _mPanelIndex    =   -1
   End
   Begin WebTextField Part2TextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Part 2:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   70
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   542
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   2
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   158
      Visible         =   True
      Width           =   170
      _mPanelIndex    =   -1
   End
   Begin PuzzleInputWebDialog PuzzleInputDialog
      ControlID       =   ""
      Enabled         =   True
      Height          =   480
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   189
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   3
      Tooltip         =   ""
      Top             =   89
      Visible         =   True
      Width           =   640
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin WebChart FolderChart
      ControlID       =   ""
      DatasetCount    =   0
      Enabled         =   True
      HasAnimation    =   False
      HasLegend       =   False
      Height          =   446
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Mode            =   2
      Scope           =   2
      TabIndex        =   4
      Title           =   ""
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   502
      _mMode          =   ""
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Shown()
		  Part1Tests(kTestData)
		  Part2Tests(kTestData)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function GetAllDirectories(folder As VirtualFolderItem) As VirtualFolderItem()
		  Var result() As VirtualFolderItem
		  
		  For Each child As VirtualFolderItem In folder.Children
		    If child.Type <> VirtualFolderItem.Types.Folder Then Continue
		    Var directories() As VirtualFolderItem = GetAllDirectories(child)
		    result.Add(child)
		    For Each current As VirtualFolderItem In directories
		      result.Add(current)
		    Next
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetSumOfDirectories(tree As VirtualFolderItem, minimum As Integer, maximum As Integer) As Integer
		  Var result As Integer
		  Var directories() As VirtualFolderItem = GetAllDirectories(tree)
		  
		  For Each folder As VirtualFolderItem In directories
		    Var size As Integer = SumOfDirectoriesSize(folder)
		    If size >= minimum And size <= maximum Then
		      result = result + size
		    End If
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Part1Tests(value As String)
		  Var tree As VirtualFolderItem = PrepareTreeFromLog(value)
		  Var result As Integer = GetSumOfDirectories(tree, 0, 100000)
		  Var expected As Integer = 95437
		  Var success As Boolean = True
		  
		  If result <> expected Then
		    System.DebugLog("Expected '" + expected.ToString + "', got: '" + result.ToString + "'")
		    success = False
		  End If
		  
		  If Not success Then
		    MessageBox("Tests failed, check debug log")
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Part2Tests(value As String)
		  Var tree As VirtualFolderItem = PrepareTreeFromLog(value)
		  Var directories() As VirtualFolderItem = GetAllDirectories(tree)
		  Var sizes() As Integer
		  
		  sizes.Add(SumOfDirectoriesSize(tree))
		  For Each folder As VirtualFolderItem In directories
		    Var size As Integer = SumOfDirectoriesSize(folder)
		    If size > 8381165 Then sizes.Add(SumOfDirectoriesSize(folder))
		  Next
		  sizes.Sort
		  
		  Var result As Integer = sizes(0)
		  
		  Var expected As Integer = 24933642
		  Var success As Boolean = True
		  
		  If result <> expected Then
		    System.DebugLog("Expected '" + expected.ToString + "', got: '" + result.ToString + "'")
		    success = False
		  End If
		  
		  If Not success Then
		    MessageBox("Tests failed, check debug log")
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PrepareTreeFromLog(value As String) As VirtualFolderItem
		  Var lines() As String = value.Split(EndOfLine)
		  Var root As New VirtualFolderItem
		  root.Name = "/"
		  root.Type = VirtualFolderItem.Types.Folder
		  
		  Var cwd As VirtualFolderItem = root
		  
		  For i As Integer = 0 To lines.LastIndex
		    Var line As String = lines(i)
		    If line.BeginsWith("$") Then
		      Var commandLine() As String = line.Split(" ")
		      Var command As String = commandLine(1)
		      Select Case command
		      Case "cd"
		        Select Case commandLine(2)
		        Case "/"
		          cwd = root
		        Case ".."
		          cwd = cwd.Parent
		        Else
		          cwd = cwd.GetFolderByName(commandLine(2))
		        End Select
		      Case "ls"
		        Do
		          i = i + 1
		          If i > lines.LastIndex Then
		            Exit Do
		          End If
		          
		          line = lines(i)
		          If line.BeginsWith("$") Then
		            i = i - 1
		            Exit Do
		          End If
		          
		          Var parts() As String = line.Split(" ")
		          If parts(0) = "dir" Then
		            cwd.MakeDirectory(parts(1))
		            Continue
		          End If
		          
		          cwd.AddFile(parts(1), parts(0).Val)
		        Loop Until line.BeginsWith("$") Or i > lines.LastIndex
		      End Select
		    End If
		  Next
		  
		  Return root
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SumOfDirectoriesSize(tree As VirtualFolderItem) As Integer
		  Var result As Integer
		  For Each child As VirtualFolderItem In tree.Children
		    If child.Type = VirtualFolderItem.Types.Folder Then
		      Var size As Integer = SumOfDirectoriesSize(child)
		      result = result + size
		    Else
		      result = result + child.Size
		    End If
		  Next
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub VisualizeTree(tree As VirtualFolderItem)
		  Var directories() As VirtualFolderItem = GetAllDirectories(tree)
		  // For Each child As VirtualFolderItem In tree.Children
		  // directories.Add(child)
		  // Next
		  
		  Var labels() As String
		  Var sizes() As Double
		  Var colors() As Color
		  Var maxSize As Integer
		  For Each directory As VirtualFolderItem In directories
		    maxSize = Max(maxSize, SumOfDirectoriesSize(directory))
		  Next
		  
		  For Each directory As VirtualFolderItem In directories
		    Var size As Double = SumOfDirectoriesSize(directory)
		    If size > maxSize / 10 Then
		      labels.Add(directory.Name)
		      sizes.Add(size)
		      colors.Add(Color.HSV(1 / maxSize * size, 1, 1))
		    End If
		  Next
		  
		  Var ds As New WebChartCircularDataset("Sizes", sizes, colors)
		  
		  FolderChart.RemoveAllLabels
		  FolderChart.RemoveAllDatasets
		  
		  FolderChart.AddLabels(labels)
		  FolderChart.AddDataset(ds)
		End Sub
	#tag EndMethod


	#tag Constant, Name = kRealData, Type = String, Dynamic = False, Default = \"$ cd /\n$ ls\n268495 jgfbgjdb\ndir ltcqgnc\n272455 pct.bbd\n200036 phthcq\n174378 qld\ndir rbmstsf\n130541 trhbvp.fmm\ndir twjcmp\n$ cd ltcqgnc\n$ ls\n227634 brjmpbfg.hjh\ndir cmdzcq\ndir dnbf\n203609 fpj\ndir frt\n288222 lcr.nlr\ndir ngm\ndir ngsrlzc\n5927 phrnnw.dzj\ndir shjv\ndir wsvfbb\n$ cd cmdzcq\n$ ls\n37316 cfvhc.qsw\n41839 mgwlr\ndir pfmbt\n281659 tlpqzz\ndir vmd\n189667 zdvj.sbl\n$ cd pfmbt\n$ ls\n120151 bhzsnw.gft\n45035 cfvhc.zpp\n$ cd ..\n$ cd vmd\n$ ls\ndir dnc\ndir rgftffp\n$ cd dnc\n$ ls\ndir dvndwjzs\n216199 fzwrr.ndp\ndir gwhtzlpg\ndir lsfn\ndir lzcv\n237080 qld\n131509 rwhffw.ldj\n84024 wph\n$ cd dvndwjzs\n$ ls\n264750 htjvzrv.plg\n$ cd ..\n$ cd gwhtzlpg\n$ ls\ndir cfvhc\n285900 fpj\n112604 gqng.zww\n188180 phthcq\ndir prgbvj\n$ cd cfvhc\n$ ls\n136528 bbsmm\n$ cd ..\n$ cd prgbvj\n$ ls\n180538 hfgg.fbm\n$ cd ..\n$ cd ..\n$ cd lsfn\n$ ls\n133375 fzwrr.ndp\n242940 gcftj.nlb\n$ cd ..\n$ cd lzcv\n$ ls\n121565 plnqnqq.zwr\n100302 wdmqc\n$ cd ..\n$ cd ..\n$ cd rgftffp\n$ ls\n259406 rwhffw\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd dnbf\n$ ls\ndir bft\n219468 czjvl.brj\n130503 fpj\n120522 rwhffw.hrn\n92338 sngz.qsd\ndir vpmvnmfj\n$ cd bft\n$ ls\ndir zdvj\n$ cd zdvj\n$ ls\n50020 sngz.qsd\n$ cd ..\n$ cd ..\n$ cd vpmvnmfj\n$ ls\n78395 dlch.vfb\n270867 hnmq\n172551 pct.bbd\n186790 phthcq\n65750 sjjlnf.bjn\n$ cd ..\n$ cd ..\n$ cd frt\n$ ls\ndir bbsmm\ndir cfvhc\n22983 dpvmzlv\ndir fptlqh\n290097 fzwrr.ndp\ndir hvwdzbsw\ndir nlm\n57046 pct.bbd\n208565 qld.mms\n261556 wcfvpmz\n$ cd bbsmm\n$ ls\ndir bbsmm\n238522 hmjvg.pfn\n228873 nvvsml.bcg\ndir rwhffw\ndir sgbnzbqt\n$ cd bbsmm\n$ ls\ndir lnz\ndir msmpndgh\ndir ncpbn\ndir wfr\n$ cd lnz\n$ ls\n99970 fjbmpmrz.ldw\n$ cd ..\n$ cd msmpndgh\n$ ls\ndir sfsqwrhg\n$ cd sfsqwrhg\n$ ls\ndir vfqg\n$ cd vfqg\n$ ls\n17855 bbsmm\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd ncpbn\n$ ls\ndir nltglc\n$ cd nltglc\n$ ls\n247577 qld.vjz\n$ cd ..\n$ cd ..\n$ cd wfr\n$ ls\n135424 bbps\n243274 hsvjddff.nfw\ndir prg\n158111 qld.zff\ndir rwhffw\n$ cd prg\n$ ls\n214834 lfpqlt.bdt\ndir nclpwh\n104870 phthcq\ndir trrtpgd\n$ cd nclpwh\n$ ls\n104441 mjjftn.sqt\n$ cd ..\n$ cd trrtpgd\n$ ls\n137542 qld\n$ cd ..\n$ cd ..\n$ cd rwhffw\n$ ls\ndir glsrf\n$ cd glsrf\n$ ls\n189772 phthcq\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd rwhffw\n$ ls\ndir bbsmm\n$ cd bbsmm\n$ ls\n104690 cfvhc.nwc\n$ cd ..\n$ cd ..\n$ cd sgbnzbqt\n$ ls\n191204 cfvhc.jnv\n127263 vwfbr\n$ cd ..\n$ cd ..\n$ cd cfvhc\n$ ls\n72894 bbsmm.dns\n$ cd ..\n$ cd fptlqh\n$ ls\ndir bbsmm\ndir bdvp\n162052 vnnjfh.stw\ndir zshvq\n$ cd bbsmm\n$ ls\ndir bbsmm\ndir pchdq\ndir rwhffw\n$ cd bbsmm\n$ ls\n174590 bbsmm\n45636 fpj\n102831 qld\ndir vpwcmgq\n229136 zdvj.rtw\ndir znw\n$ cd vpwcmgq\n$ ls\ndir cfvhc\ndir jvd\ndir zdvj\n$ cd cfvhc\n$ ls\n55907 ccvdlc\n272581 fpj\n29765 phthcq\n$ cd ..\n$ cd jvd\n$ ls\ndir cfvhc\n$ cd cfvhc\n$ ls\n289471 cjzwdvs.gtn\n$ cd ..\n$ cd ..\n$ cd zdvj\n$ ls\n98507 cmldvpnc.qtl\n$ cd ..\n$ cd ..\n$ cd znw\n$ ls\ndir zdvj\n$ cd zdvj\n$ ls\n46012 wrgvln.lmf\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd pchdq\n$ ls\ndir cbssm\n98102 cfvhc\n259488 pct.bbd\ndir rwhffw\n7541 sngz.qsd\n167971 wvgrzn.bds\n$ cd cbssm\n$ ls\n45025 bbsmm\n22500 fpj\n$ cd ..\n$ cd rwhffw\n$ ls\ndir fncszbm\n166012 phthcq\n165925 rbs\n171350 tsbv.zws\n$ cd fncszbm\n$ ls\ndir wzrlzvm\n$ cd wzrlzvm\n$ ls\n191811 qzzs\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd rwhffw\n$ ls\n218844 dnbmcbr.wrc\n201091 mmpvsgjv.wgs\ndir mzt\n223628 pct.bbd\ndir qftlpdt\n56441 sngz.qsd\n33730 zdvj.jfs\n$ cd mzt\n$ ls\n25768 sngz.qsd\n283843 vjrmbw.jcs\n$ cd ..\n$ cd qftlpdt\n$ ls\n287536 mzhmjrg\n223797 pcp\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd bdvp\n$ ls\ndir lnvvwlm\n$ cd lnvvwlm\n$ ls\n210345 zll.scl\n$ cd ..\n$ cd ..\n$ cd zshvq\n$ ls\n251997 cfvhc.mcr\n220501 pct.bbd\n$ cd ..\n$ cd ..\n$ cd hvwdzbsw\n$ ls\ndir cfvhc\n21816 fpj\n251732 vcfcwjh.pjh\n187137 zdvj.bzd\ndir zgprrg\n$ cd cfvhc\n$ ls\n99722 zgq.bbh\n$ cd ..\n$ cd zgprrg\n$ ls\ndir brzpsnjl\n$ cd brzpsnjl\n$ ls\ndir qld\n$ cd qld\n$ ls\n30055 phqdjs.zwv\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd nlm\n$ ls\n176700 fzwrr.ndp\n256184 pct.bbd\n25442 qhngw.jwm\ndir rwhffw\n160900 wqr.wdn\n$ cd rwhffw\n$ ls\n240085 pcjjgjcr\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd ngm\n$ ls\n118461 bbsmm\ndir czjzwl\ndir gjwws\n43114 nwvltczv.jpf\ndir qjpgzsj\n145909 rjdzrjzc.fdr\ndir tvmpgrq\n75554 zdmfhpwz.rhc\ndir zdvj\n196704 zdvj.nfm\n$ cd czjzwl\n$ ls\ndir btnsjtl\ndir cfvhc\n100911 cfvhc.mqg\ndir gljbgjq\n247017 jmrq\ndir qld\n$ cd btnsjtl\n$ ls\n76658 pmgnqr\n$ cd ..\n$ cd cfvhc\n$ ls\n189214 jvrcttm\n265333 mmgd.sbn\n$ cd ..\n$ cd gljbgjq\n$ ls\ndir ccqsnp\ndir fng\n104525 fzwrr.ndp\n31517 gmqhmwj.rbs\n122232 htddmr.wjm\n51362 rtlnr.mwh\n42769 rvddl\n$ cd ccqsnp\n$ ls\n192021 cfvhc.lww\ndir mbmsfgtb\n222388 nvgppmv\ndir qbpnbsv\n$ cd mbmsfgtb\n$ ls\n104492 jfwl.jlv\n273739 phthcq\n238815 rwhffw.tjp\n$ cd ..\n$ cd qbpnbsv\n$ ls\n176577 tlqnmmsc.gpt\n$ cd ..\n$ cd ..\n$ cd fng\n$ ls\n243298 cfvhc.pvb\n54364 fbrtb.hqd\ndir hvhwh\ndir rtcsp\n$ cd hvhwh\n$ ls\n87079 zdvj.gfq\n$ cd ..\n$ cd rtcsp\n$ ls\ndir zdvj\n$ cd zdvj\n$ ls\n288617 rwhffw.lzl\n161000 sngz.qsd\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd qld\n$ ls\n113942 bbsmm.msn\n239442 cchgv.mtd\n181920 nnlfh.gwz\n274766 rqtvc.frp\n$ cd ..\n$ cd ..\n$ cd gjwws\n$ ls\ndir bpzsc\ndir cfvhc\ndir fsnf\ndir zdvj\n$ cd bpzsc\n$ ls\n88033 cndwmvj.pzm\n275297 hslg.smz\ndir qld\n25067 qvntlcd.nzs\n$ cd qld\n$ ls\n240593 bbsmm.bgn\ndir dpqgcc\n277540 fpj\ndir qld\n$ cd dpqgcc\n$ ls\ndir rhqvcfd\n$ cd rhqvcfd\n$ ls\n199386 fzwrr.ndp\n$ cd ..\n$ cd ..\n$ cd qld\n$ ls\n269177 cjrc.dvq\n21631 fpj\n263874 pct.bbd\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd cfvhc\n$ ls\ndir nzd\n$ cd nzd\n$ ls\n273225 qld.jmn\n$ cd ..\n$ cd ..\n$ cd fsnf\n$ ls\n17887 fzwrr.ndp\n$ cd ..\n$ cd zdvj\n$ ls\n160076 rwhffw.trf\n$ cd ..\n$ cd ..\n$ cd qjpgzsj\n$ ls\n227586 njqbnz.hwl\n239840 zdvj.qcp\n$ cd ..\n$ cd tvmpgrq\n$ ls\ndir hdrsmnvc\ndir psrjr\n$ cd hdrsmnvc\n$ ls\ndir rjm\ndir zdvj\n$ cd rjm\n$ ls\n244666 bzvmdcm\n$ cd ..\n$ cd zdvj\n$ ls\n132943 gnz.ntd\n$ cd ..\n$ cd ..\n$ cd psrjr\n$ ls\ndir nfvllp\ndir plfgfs\n94173 qmdhr\n3133 swjh.rbg\ndir zmp\n$ cd nfvllp\n$ ls\n39707 zbsm.vsd\n$ cd ..\n$ cd plfgfs\n$ ls\n186603 cfvhc.sgb\n183833 ljn\n$ cd ..\n$ cd zmp\n$ ls\n123313 fzwrr.ndp\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd zdvj\n$ ls\ndir hzzs\n230054 nhcvn.dfl\ndir rgwfsqdc\ndir zwtjr\n$ cd hzzs\n$ ls\n58585 cbfhrf.vqn\ndir cfvhc\ndir fbzpmc\ndir fdtjp\n28182 fzwrr.ndp\n35581 nzwndl.zzs\ndir pmrv\n253508 qgdnnl.tqq\n$ cd cfvhc\n$ ls\n256186 nlgzqw.frl\n$ cd ..\n$ cd fbzpmc\n$ ls\ndir cfvhc\n$ cd cfvhc\n$ ls\n193322 rwhffw.vwc\n$ cd ..\n$ cd ..\n$ cd fdtjp\n$ ls\ndir bbsmm\n140927 fzwrr.ndp\ndir lcmpbs\n94413 mpnfgpsm\ndir qvrd\n247202 tlp\n$ cd bbsmm\n$ ls\n206896 clsqp.hbr\n$ cd ..\n$ cd lcmpbs\n$ ls\ndir bbsmm\ndir cfvhc\ndir rplqgm\ndir tmh\ndir zdvj\n$ cd bbsmm\n$ ls\n235479 sngz.qsd\n$ cd ..\n$ cd cfvhc\n$ ls\n285029 fpj\n29405 mhpr.czj\n$ cd ..\n$ cd rplqgm\n$ ls\ndir bbsmm\ndir cfvhc\ndir mwhf\n$ cd bbsmm\n$ ls\n257187 hsldvt.jdt\n186098 pct.bbd\n$ cd ..\n$ cd cfvhc\n$ ls\ndir rfw\n$ cd rfw\n$ ls\n254454 fzf.ltl\n$ cd ..\n$ cd ..\n$ cd mwhf\n$ ls\n3915 dtcjptnd\n116218 fzwrr.ndp\n$ cd ..\n$ cd ..\n$ cd tmh\n$ ls\n49016 ljsvgl.npd\n258257 mlfq.rrr\n$ cd ..\n$ cd zdvj\n$ ls\ndir jjj\n154441 lcpvwhp.mpq\n$ cd jjj\n$ ls\n31731 bbsmm.mhb\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd qvrd\n$ ls\n199473 pgqbpq\n$ cd ..\n$ cd ..\n$ cd pmrv\n$ ls\n120831 cfvhc.btv\n$ cd ..\n$ cd ..\n$ cd rgwfsqdc\n$ ls\n281099 cfvhc.trc\n119483 mntqrvw.qwz\n275572 zhphps\n$ cd ..\n$ cd zwtjr\n$ ls\n187404 gwjsj\n230074 qmr\n212641 wdhl.dfl\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd ngsrlzc\n$ ls\n164729 lnc.mdg\n33748 pct.bbd\n119803 rfst.blw\ndir zdvj\n$ cd zdvj\n$ ls\ndir bbsmm\n251550 sngz.qsd\n120940 zlmcvg\n$ cd bbsmm\n$ ls\n206509 bsddjdv\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd shjv\n$ ls\n17754 lqqz.qmf\n265175 rdmsqztj.lnt\n$ cd ..\n$ cd wsvfbb\n$ ls\ndir bhbb\n271856 fzwrr.ndp\n114188 hgfjq.jvn\ndir jgnl\ndir qnddp\n51700 rwdnzwhv.vtr\n$ cd bhbb\n$ ls\n107036 rwhffw.pld\n$ cd ..\n$ cd jgnl\n$ ls\ndir qld\n$ cd qld\n$ ls\n39294 rbsvwh\n$ cd ..\n$ cd ..\n$ cd qnddp\n$ ls\ndir vzmrb\n58723 wcbz.dwh\n$ cd vzmrb\n$ ls\n203361 rvrbgd.cpw\n167876 zgpdcb.rql\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd rbmstsf\n$ ls\ndir bbsmm\ndir cfvhc\n63250 hcdlfmt.ccg\ndir mgzl\ndir ngflwbmp\ndir shvjprl\n123258 spqchmj.wpv\n$ cd bbsmm\n$ ls\ndir cfvhc\ndir gtvszgs\n6558 nzdhg\n121160 qld\ndir rfjfp\ndir rwhffw\ndir sbfshph\n$ cd cfvhc\n$ ls\ndir btmbjrw\ndir pzq\n133178 sngz.qsd\n$ cd btmbjrw\n$ ls\ndir ftpvz\ndir tjflfshs\ndir wvncjmf\n$ cd ftpvz\n$ ls\ndir lqlrh\n$ cd lqlrh\n$ ls\n114380 pcn.cbn\n$ cd ..\n$ cd ..\n$ cd tjflfshs\n$ ls\n274555 bbsmm.wpr\n$ cd ..\n$ cd wvncjmf\n$ ls\ndir nnrqcfmm\n$ cd nnrqcfmm\n$ ls\n217188 pct.bbd\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd pzq\n$ ls\n89797 sngz.qsd\n255100 thg\n$ cd ..\n$ cd ..\n$ cd gtvszgs\n$ ls\n87661 sngz.qsd\n$ cd ..\n$ cd rfjfp\n$ ls\n130164 cfvhc.rbt\ndir lhf\ndir qld\n20799 qld.gts\ndir qwzj\n150977 sngz.qsd\n$ cd lhf\n$ ls\n125848 lvgv.jtg\n81087 mdcw.rbv\n80091 qld\ndir rmsggp\n49093 thf.jnh\ndir tmf\ndir zdvj\n$ cd rmsggp\n$ ls\ndir fznsmbq\ndir lhghnn\ndir zdvj\n$ cd fznsmbq\n$ ls\ndir wqzwsspq\ndir zdvj\n$ cd wqzwsspq\n$ ls\ndir gbzfpfq\n$ cd gbzfpfq\n$ ls\n185410 pct.bbd\n$ cd ..\n$ cd ..\n$ cd zdvj\n$ ls\n140384 pct.bbd\n$ cd ..\n$ cd ..\n$ cd lhghnn\n$ ls\n36868 fpj\n181925 pct.bbd\n$ cd ..\n$ cd zdvj\n$ ls\n256916 bbsmm.mtr\ndir rwhffw\n75846 rwztfcj.qns\n$ cd rwhffw\n$ ls\n234834 bbsmm.gtp\n140315 pbwqrps\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd tmf\n$ ls\n88583 dhndg\n52796 qld.mlp\n$ cd ..\n$ cd zdvj\n$ ls\n8822 pct.bbd\n221658 sngz.qsd\n$ cd ..\n$ cd ..\n$ cd qld\n$ ls\n119026 dfc.bgr\n87684 fzwrr.ndp\ndir zdvj\n212120 zdvj.jhw\n$ cd zdvj\n$ ls\ndir cfvhc\n169434 mhlpvf.vjz\n$ cd cfvhc\n$ ls\n243919 brtvv\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd qwzj\n$ ls\n101395 qcjvs.mjs\n$ cd ..\n$ cd ..\n$ cd rwhffw\n$ ls\n94012 fzwrr.ndp\n205816 hqrgfm.wwt\ndir lzbmzw\n155203 qjv\n$ cd lzbmzw\n$ ls\ndir dfrdczdj\n$ cd dfrdczdj\n$ ls\n126459 tphtshwc\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd sbfshph\n$ ls\n229389 ccbgcv\n135997 cfvhc.ctl\n119490 rwhffw.pqp\n94530 vjtjz.cfs\n$ cd ..\n$ cd ..\n$ cd cfvhc\n$ ls\ndir cmr\ndir jvh\ndir mjs\n$ cd cmr\n$ ls\n227026 fpj\n$ cd ..\n$ cd jvh\n$ ls\ndir qld\n$ cd qld\n$ ls\n96968 phthcq\n$ cd ..\n$ cd ..\n$ cd mjs\n$ ls\n98117 qld.ftd\n$ cd ..\n$ cd ..\n$ cd mgzl\n$ ls\n198793 nfvnfqn.zwd\n$ cd ..\n$ cd ngflwbmp\n$ ls\ndir bbsmm\ndir jthnmqs\n137176 nrn\n80344 ntbq.ssw\n133166 phthcq\n210691 sngz.qsd\n255501 vgwn.gqr\ndir zdvj\n$ cd bbsmm\n$ ls\n98501 npwwzjgt\n134593 sngz.qsd\n46020 tjszcpm.brs\n213591 zdvj.sgj\n$ cd ..\n$ cd jthnmqs\n$ ls\ndir bbsmm\ndir cfdbp\ndir dpwqmbw\n67233 lzz.tmg\n21344 pzvjlt.qdb\ndir rwhffw\ndir sdtntw\n268059 vwhqh\ndir zdvj\n$ cd bbsmm\n$ ls\n263767 fpj\n46528 tpq.wtb\n$ cd ..\n$ cd cfdbp\n$ ls\ndir grczc\n$ cd grczc\n$ ls\n241829 vnnjnz.nww\n$ cd ..\n$ cd ..\n$ cd dpwqmbw\n$ ls\n287899 pct.bbd\n$ cd ..\n$ cd rwhffw\n$ ls\n41741 ffsqr.cwc\ndir ffzc\ndir nrs\n279620 qchg\n$ cd ffzc\n$ ls\n10583 pct.bbd\n$ cd ..\n$ cd nrs\n$ ls\n195239 zdvj.npp\n$ cd ..\n$ cd ..\n$ cd sdtntw\n$ ls\n245601 fpj\n9552 lgftw.ntj\n$ cd ..\n$ cd zdvj\n$ ls\ndir smjvcql\n$ cd smjvcql\n$ ls\ndir qcqljj\n$ cd qcqljj\n$ ls\n286791 fhm\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd zdvj\n$ ls\ndir bcghd\n57663 fzwrr.ndp\n177473 gzpfmsz.tnw\n53543 pswpr\n251188 sngz.qsd\ndir snqjl\n$ cd bcghd\n$ ls\n106732 sjvhjd\ndir vtgsnb\n$ cd vtgsnb\n$ ls\ndir gtj\n$ cd gtj\n$ ls\n151689 nncsjvn.vhd\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd snqjl\n$ ls\n104993 bjjqd.pqv\n233367 fzwrr.ndp\n11942 sngz.qsd\n$ cd ..\n$ cd ..\n$ cd ..\n$ cd shvjprl\n$ ls\n130539 jpzsdjw.hlz\n$ cd ..\n$ cd ..\n$ cd twjcmp\n$ ls\n86053 pct.bbd", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTestData, Type = String, Dynamic = False, Default = \"$ cd /\n$ ls\ndir a\n14848514 b.txt\n8504156 c.dat\ndir d\n$ cd a\n$ ls\ndir e\n29116 f\n2557 g\n62596 h.lst\n$ cd e\n$ ls\n584 i\n$ cd ..\n$ cd ..\n$ cd d\n$ ls\n4060174 j\n8033020 d.log\n5626152 d.ext\n7214296 k", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events SetupDataButton
	#tag Event
		Sub Pressed()
		  PuzzleInputDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PuzzleInputDialog
	#tag Event
		Sub InputReady(inputValue As String)
		  Var tree As VirtualFolderItem = PrepareTreeFromLog(inputValue)
		  Part1TextField.Text = GetSumOfDirectories(tree, 0, 100000).ToString
		  
		  Var hardDriveSize As Integer = 70000000
		  Var updateSize As Integer = 30000000
		  Var usedSpace As Integer = SumOfDirectoriesSize(tree)
		  Var freeSpace As Integer = hardDriveSize - usedSpace
		  Var needToCleanAtLeast As Integer = updateSize - freeSpace
		  
		  Var sizes() As Integer
		  
		  sizes.Add(SumOfDirectoriesSize(tree))
		  Var directories() As VirtualFolderItem = GetAllDirectories(tree)
		  For Each folder As VirtualFolderItem In directories
		    Var size As Integer = SumOfDirectoriesSize(folder)
		    If size >= needToCleanAtLeast Then sizes.Add(SumOfDirectoriesSize(folder))
		  Next
		  sizes.Sort
		  
		  Part2TextField.Text = sizes(0).ToString
		  
		  VisualizeTree(tree)
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
