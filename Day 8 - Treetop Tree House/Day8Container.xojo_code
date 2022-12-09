#tag WebContainerControl
Begin WebContainer Day8Container
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
   Begin Day8WebThread Day8Thread
      DebugIdentifier =   ""
      Index           =   -2147483648
      LockedInPosition=   False
      Priority        =   5
      Scope           =   2
      StackSize       =   0
      TabIndex        =   4
      TabStop         =   True
      ThreadID        =   0
      ThreadState     =   ""
   End
   Begin WebProgressWheel Spinner
      Colorize        =   False
      ControlID       =   ""
      Enabled         =   True
      Height          =   32
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   680
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      SVGColor        =   &c00000000
      SVGData         =   ""
      TabIndex        =   4
      TabStop         =   True
      Tooltip         =   ""
      Top             =   244
      Visible         =   False
      Width           =   32
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Constant, Name = kRealData, Type = String, Dynamic = False, Default = \"122202212311200210333041243104410211022242435153422552354101423030331120103122123201123013212020121\n212122122000221311323440442444413314215241554351515445144551151103011402331412314230102131310221002\n200010233110132032201044033410403402323542453441213225433145441453242244421030303220011011132300002\n120101110203333110240120011412225434434121313542334144355225111454523132420142243111113223031311111\n120110223201233140434331404320315125532452213233242311511524412523343520430421042000030001030200222\n000102322010022341104032321113312242521134214543411111515333425154553221421211441143024103333323012\n012132022020312444102430014331221411222235334515444152433144133435532224431441304412411212000133031\n120233223310314441323131225313444245412451315432455236445534542223421552522450312102202033233322003\n110303300214411413041135513123311333342254632434525246464244653512154122151153240314331404133102032\n320333021041401210342112413252521354154654526224624264656643323243514213144525443140321100432322102\n213333013400314344445512541224344542425335542246245535342346525455632342143432241440034221113121103\n103101323212441144514541213255356562253454324423562254643435566355652443131311521310340011410023010\n232231310023333125425145335413643646335436344645256622626244424566265461143132555442033102212102133\n230012330403333244113122423525434543453346345442546444536356456656653336522243141515320031310242132\n001331331400242344452535542244353454256436245444356344633623323223624634633531345443212332124100001\n320213230430015352541121166364225342324465546743674376745764665342525653462642431254322120131320301\n030030441321345531435352552565634242236456747547675667333646754662532244322223425143335202013410331\n130323430403445155252353542665556632743644346337573354575553473564426335656353332452444512100342303\n000124441244513213434222225365536245467565344634335675756354647753423526454264443544455252333100012\n303404133431225152343544434244326457656763736537576455577647443546747235534536353521453342020431303\n311104212215444221552335243356444654364337535373347655455775663756457363653523325323222244130341434\n033113243413224543336252525236557657445633537454545454747556455455777455542442433541422521522303132\n032301305335212345536223463445733334466466456857685556646643443634434366755622423221321152153211112\n432413234435244244452452522766657337677487457667574884664485837634653735355652265344225135521142200\n214204451352332225552233236447335656736454774865747468575666547736456546737626423225514542353132003\n033032334245244345353263544373576764747865456884456784664774575446775657546624634322432214245131331\n121012311135135242665226463546373455674886866675578444744865445486444436446765632254623534551121111\n341323122332344433445227455474347888748648456446654846846776658764776443766657642346253535143552144\n324244533333334656636247465677737577755486464656557545574668654666685345546335423322234653144345021\n043204235524544223242334547537787887788644766889958956876454754674478577343347433636323431422535420\n132053544243564633627466765775657547755548985595865776876887476476586773674345367554624423333443214\n434145415151462624423574737777874646757869897568985857768555766747845787346556464366425553353151300\n033552122413443664556665676655648855845975596556995967956566699866477545537554553645645553335523524\n413544333326325544236357664865456474858595889756579986899779997968486748464773366656464426231155442\n004332522265552444763374547484644488886789598575569799777767888975656856667647455453254435233141511\n035354414545334263444765576467446658985699666669667988675585776867776657644544534734656653433441431\n442122443263522535743777354555686688857759689956668767555979587695855866658755676536345652311311234\n231314151362463367455573668565545776596986867687779777769576568988867748688753444556446645553534525\n045415334236364244375435664665477567587759896768777886876768796985898556758446336336326243331233454\n342353524362463357737675678645755585686559698888978699669989566777695575467773733463432243352222445\n244133134532623377737577688575658856867977866698779767897688987856558847648874553573743553546523534\n021553556544442474674534678684779989779667798977898967696766875855597978664786474743343545232141545\n045425316553544766676736774475658985557769887677898986998789979958865786565747357474546425542554235\n123511255462335663763334745464955879987988867676898776768888899576578976678476464757366443234425311\n325533243442663433734555785478977676679868889789787989899689977975777578786878557777434464652443351\n341155355546553356347757544788568965668697968997877777976676899896768799766576567645554342336334233\n421521345226644475636665485646689879769887867898789798988788768788759989487445577633675662663234325\n225431534432355354466644477659579957678999798898887898798887799686577775655556855457566334643614134\n254522334642647433556585856548559868968877679888988778897876767896886779646466464564775265336232441\n312113532345553345433444768455667856989979687989987899997988898888658869478687547476363665422513141\n152555423534245354346564447446976597699676889998999887989796789797775977768544533373735436335515423\n341213542653444767556388768885878975698787998799977787779899987685979877545764473357337423424514315\n322113552445453574657574755545799689867898669877988877997779898765669858668546477767666242656344212\n523331354363325454365675645869975977878797967999887779897978887888798999548865636336353426535355452\n523523423432344663765375787446557887679766968878979887789796777987687596555667445376536663356525141\n551114235346366563637355556866885895767877798798797989787886976886787698548687646557754363564525313\n251223245223334447766584755447956898986768669897979798997768689676988975874646433446733346424411335\n214241355255455766365674476646975968859866869967978898867967666685895878644875637565576656255154544\n455352455253232666575668454867955886956998987678966896777867699977589755646464755747533332342424541\n444515424223524645435648587576677675775989869686879869776776888598575688877564767577434234326235545\n431313414332525265734668687845775796567769886777989778777997885578687756877567364366345652533512134\n333555123263656354334546784878748996895956799868879687768998999597665865666673657464554445565315153\n234251415355332356354555748857549756797677788669666779776896855789587868886666535745644366551433223\n425342555454555443357573485485875677656895597978676766678885768675668576658854377547455252453332433\n323212322142542547356336654885588587756876988878668876996855885757567666665664655447625566342455323\n145453124156454236753637566754554586888986779659899875656867888757855674866346635564564335311444142\n241532355322446443663343474577685666578989895777658988767886579994465878877675775646446644411214331\n144121414316432226357635465574878648885659856586566979685759558986575567664637365426532646212254243\n110513511415656625443556556674684868678895878785759566769757697468556564753375577435453525411543113\n010054252444265234547356444555575676545757579699968766586568964546866767534346564224265623245525511\n120212515152224263635534376453556487856658876995968869757756754456584754356376564445254454534225340\n334403322452135643232646334553464468686466757956767796875866688444464456337547673543644223334124002\n424345231535522355445635437664744565688755754586858454858554458475568756654735523654265235423342312\n031443144424522463542544764444765767644457666757567678447484574545767543635774453342345411351542313\n321403155315156656344554665775567644878587754546578686767855867554637477555573424362546151514131330\n100300432342253325546433443636475644557666885556847555458755555684535636335545343542245513545400031\n241103243345314352532434567355636677768477667655874858784887748363644434657254223342542521512523103\n013432002255524532425326442376655436757756476784578755546658775744775577372453335234234123311334110\n224312132351342113543625426364775474475555435685668887764654565767573537642634534534253412535033121\n342013333254343554666262433657555734443433335545744436575736345777633344224223656361344225330312223\n234442324252344452264263235643446676735646567555767567465473767566476572456525232422431125340421040\n030302023035452131512323435555347556466757645454545634364636667436454662255465636151444354004144240\n002004133214113555342264554265222355765774744775436734535556664773753352634233435412243552441100341\n011422341232151553353542265363535632735746674664776744464473335435625662443566132542533542101243120\n203021201322125111143244446544365445365774633366633765656576533325536225455355341443312221224423103\n311021234200144512534253453355352253535542456754747757743743435344545565465655544322254011444341222\n101203222013410332153151244543442433553342325366345652255264423465522455665453535113251410414031300\n103101032340424335231434112162665465333242654445464443552552544226533654451145222233401204012240023\n300000234304043032354531115322565425623354453256432525255636642566343622125151231523130220222300331\n320320110121204431154322441252432253656645325532363344542646546553223512543244125154443233034012021\n223211323021301334023554115315242234323456322565626332455546252636654333515412114103233412041213321\n020331330004113222113544411442545513454442262444225546542423526322541134153211543210202143401031310\n033131211214044030334411533413134451124346654653645545223652313534244341353254324212241333001202010\n011223212020313313300223232314353315524525531133464633645121312251455142242212211423301012011010012\n202131322330230012310003211315154334411525215354321214224515115324133412515133121340021221223011311\n102233123000103132110110422414142252322414331525452331522255224253512324323332322332002033332200121\n010112331222023221443321410332323442443211235352422543351522342441341212433312114143012011012301012\n102001321100332034112010340431405521533133132514423245132455311232555303030103043321011110131121202\n102100020233112322130014030443133042115515544424443514351353232214340221142434234013000032002122000", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTestData, Type = String, Dynamic = False, Default = \"30373\n25512\n65332\n33549\n35390", Scope = Private
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
		  Day8Thread.Stop
		  Day8Thread.InputValue = inputValue
		  Day8Thread.Start
		  
		  Spinner.Visible = True
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
#tag Events Day8Thread
	#tag Event
		Sub UserInterfaceUpdate(data() as Dictionary)
		  For Each current As Dictionary In data
		    Select Case current.Lookup("type", "")
		    Case "part1"
		      Part1TextField.Text = current.Value("result").StringValue
		    Case "part2"
		      Part2TextField.Text = current.Value("result").StringValue
		    Case "finish"
		      Spinner.Visible = False
		    End Select
		  Next
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