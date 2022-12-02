#tag WebContainerControl
Begin WebContainer Day1Container
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   638
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
   Width           =   568
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mName          =   ""
   _mPanelIndex    =   -1
   Begin WebTextField MaxCaloriesTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Max calories:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   70
      Hint            =   "n/a"
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   370
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
      TabIndex        =   1
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   112
      Visible         =   True
      Width           =   178
      _mPanelIndex    =   -1
   End
   Begin WebButton CalculateButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Configure Data"
      ControlID       =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   370
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   2
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   178
      _mPanelIndex    =   -1
   End
   Begin WebTextField TopThreeTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Top three:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   70
      Hint            =   "n/a"
      Index           =   -2147483648
      Indicator       =   0
      Left            =   370
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
      TabIndex        =   3
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   190
      Visible         =   True
      Width           =   178
      _mPanelIndex    =   -1
   End
   Begin WebChart CaloriesChart
      ControlID       =   ""
      DatasetCount    =   0
      Enabled         =   True
      HasAnimation    =   False
      HasLegend       =   False
      Height          =   250
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
      Mode            =   1
      Scope           =   2
      TabIndex        =   4
      Title           =   ""
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   329
      _mMode          =   ""
      _mPanelIndex    =   -1
   End
   Begin WebListBox CaloriesListBox
      ColumnCount     =   2
      ColumnWidths    =   "100,*"
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   303
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   "Elf	Calories"
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
      NoRowsMessage   =   "No rows to show. Add some data."
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   2
      Scope           =   2
      SearchCriteria  =   ""
      SelectedRowColor=   &c0272D300
      SelectedRowIndex=   0
      TabIndex        =   5
      Tooltip         =   ""
      Top             =   278
      Visible         =   True
      Width           =   329
      _mPanelIndex    =   -1
   End
   Begin PuzzleInputWebDialog InputDialog
      ControlID       =   ""
      Enabled         =   True
      Height          =   330
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   33
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   6
      Tooltip         =   ""
      Top             =   62
      Visible         =   True
      Width           =   414
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin WebLabel SumLabel
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Multiline       =   False
      Scope           =   2
      TabIndex        =   8
      Text            =   "Sum of selected rows: -"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   580
      Underline       =   False
      Visible         =   True
      Width           =   329
      _mPanelIndex    =   -1
   End
   Begin WebCheckbox SortResultCheckbox
      Caption         =   "Sort result"
      ControlID       =   ""
      Enabled         =   True
      Height          =   34
      Indeterminate   =   False
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   370
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   9
      Tooltip         =   ""
      Top             =   70
      Value           =   False
      Visible         =   True
      Width           =   178
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub DisplayData()
		  Var sorted As Boolean = SortResultCheckbox.Value
		  Var caloriesByElf() As Double = If(sorted, mSortedCalories, mCalories)
		  
		  // Display data in a listbox
		  CaloriesListBox.HeaderAt(0) = If(sorted, "Rank", "Elf")
		  CaloriesListBox.RemoveAllRows
		  For i As Integer = 1 To caloriesByElf.LastIndex + 1
		    CaloriesListBox.AddRow("#" + i.ToString, caloriesByElf(i - 1).ToString)
		  Next
		  
		  // Display data in a chart
		  Var ds As New WebChartLinearDataset("Calories", Color.Teal, True, caloriesByElf)
		  Var labels() As String
		  For i As Integer = 1 To mCalories.LastIndex + 1
		    labels.Add(If(sorted, "Rank", "Elf") + " #" + i.ToString)
		  Next
		  
		  ds.ChartType = If(sorted, WebChartLinearDataset.ChartTypes.Line, WebChartLinearDataset.ChartTypes.Bar)
		  CaloriesChart.RemoveAllDatasets
		  CaloriesChart.RemoveAllLabels
		  
		  CaloriesChart.AddDataset(ds)
		  CaloriesChart.AddLabels(labels)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetCaloriesByElf(input As String) As Double()
		  Var lines() As String = input.Split(EndOfLine)
		  Var elves As Integer = input.CountFields(EndOfLine + EndOfLine) - 1
		  Var elvesCalories() As Double
		  elvesCalories.ResizeTo(elves)
		  
		  Var index As Integer
		  For Each line As String In lines
		    If line.Trim = "" Then
		      index = index + 1
		      Continue
		    End If
		    
		    elvesCalories(index) = elvesCalories(index) + line.Val
		  Next
		  
		  Return elvesCalories
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mCalories() As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSortedCalories() As Double
	#tag EndProperty


	#tag Constant, Name = kPuzzleInput, Type = String, Dynamic = False, Default = \"7569\n1357\n10134\n4696\n4423\n8869\n3562\n6597\n\n4038\n9038\n1352\n8005\n4811\n6281\n3961\n4023\n\n7234\n3510\n7728\n1569\n4583\n7495\n3941\n6015\n6531\n2637\n\n18211\n19347\n16113\n7314\n\n3359\n7199\n4527\n5384\n1752\n2422\n6301\n1923\n5957\n3000\n6835\n1986\n\n9837\n5600\n11944\n9188\n2356\n7054\n7549\n\n19258\n32524\n\n15237\n10665\n11603\n3047\n6430\n\n3218\n3421\n5897\n4950\n6920\n3118\n5140\n2364\n4650\n3216\n5223\n2402\n6073\n\n16733\n10846\n10699\n5704\n\n16364\n7679\n5249\n\n69625\n\n2432\n3304\n1846\n11421\n9850\n7406\n\n11788\n10569\n9105\n13946\n5825\n5780\n\n5701\n3011\n4082\n3895\n9127\n8124\n7818\n1398\n5443\n\n9172\n11176\n4400\n4126\n3226\n6516\n\n4784\n3620\n1087\n2533\n6306\n6601\n2539\n2634\n8533\n\n1765\n4859\n7129\n5595\n2936\n3340\n7565\n7752\n3834\n5943\n6931\n\n3516\n1217\n5776\n2286\n2197\n3014\n4302\n2294\n5915\n1744\n1007\n2695\n\n5728\n8002\n4340\n1468\n2743\n8017\n6742\n5924\n1490\n4792\n\n32995\n20012\n\n57974\n\n12603\n10225\n6899\n9986\n1811\n\n3991\n3427\n1641\n1997\n4577\n5141\n6317\n3869\n2086\n2394\n5451\n4061\n3912\n3968\n\n13322\n7684\n17919\n14291\n\n8875\n11474\n10009\n2836\n2999\n13462\n\n3708\n7178\n2303\n6047\n3002\n4253\n2620\n6321\n6538\n1672\n5623\n4445\n\n7594\n9506\n11613\n4382\n11164\n11772\n\n4143\n4863\n6876\n5387\n3223\n4621\n5344\n6356\n6151\n2687\n5774\n3570\n5506\n\n14826\n18705\n22216\n\n2109\n10543\n9216\n2103\n4909\n11592\n11574\n\n7076\n7210\n13392\n9010\n11206\n2430\n\n5524\n5266\n3474\n5772\n4389\n2866\n5281\n3445\n5062\n5624\n1289\n5082\n4932\n3702\n4462\n\n8903\n15889\n12929\n15606\n12521\n\n3958\n2105\n6631\n5906\n5366\n5698\n6452\n7522\n5595\n7892\n2611\n\n11540\n15585\n10410\n11433\n15924\n\n13538\n7274\n25109\n\n2027\n8353\n4550\n3143\n5959\n1361\n8119\n4990\n6639\n5914\n\n4288\n3407\n4919\n5857\n1737\n1100\n2123\n4001\n6954\n3470\n4972\n\n63284\n\n22745\n25713\n6948\n\n2671\n5918\n2996\n5049\n5552\n2862\n4148\n2699\n1267\n3203\n4101\n1669\n3841\n1645\n\n12339\n13808\n5765\n9380\n5878\n11724\n\n6944\n2942\n4488\n3205\n3266\n4343\n5902\n2415\n6376\n3563\n4262\n4253\n\n24318\n8839\n\n13143\n3079\n8421\n16182\n4310\n\n3940\n1588\n4554\n7978\n3061\n5421\n1413\n3283\n3457\n2084\n4425\n\n6041\n16098\n8298\n\n6346\n3091\n4566\n2749\n2025\n4206\n4649\n1535\n5881\n6502\n2848\n2816\n3764\n2020\n\n7370\n4174\n6795\n1962\n7711\n4206\n6495\n5526\n4480\n2180\n\n12796\n3793\n13517\n12324\n1675\n12092\n\n3519\n2768\n4696\n4921\n5713\n10465\n10032\n6721\n\n8037\n6647\n6670\n3163\n6700\n2015\n4590\n2144\n2485\n3831\n3996\n\n7363\n2114\n3645\n4102\n6663\n3757\n3043\n1488\n1566\n3300\n\n20413\n24591\n24088\n\n7261\n16967\n3491\n\n14354\n11988\n5752\n1080\n\n4160\n5598\n5430\n1042\n6909\n7422\n5222\n4580\n7077\n6009\n4473\n3132\n\n38094\n\n3052\n1814\n5217\n2138\n6224\n2081\n6237\n3829\n6332\n6364\n1612\n3923\n4533\n2415\n\n1732\n1869\n5762\n4834\n3595\n3105\n4997\n3525\n6270\n5260\n4952\n5466\n3703\n3859\n\n3781\n4919\n5489\n4348\n2027\n1542\n2328\n4875\n4317\n2274\n5421\n1528\n3963\n4940\n\n1085\n1745\n5093\n7798\n3642\n7681\n5792\n3291\n7482\n5889\n5784\n\n10489\n6344\n10829\n7847\n10808\n11986\n1223\n\n15486\n12689\n6161\n13613\n15818\n\n2208\n3272\n6446\n4202\n5845\n4708\n6976\n7997\n2047\n\n2882\n7606\n6394\n4353\n6458\n4477\n6710\n8184\n1986\n3996\n\n4096\n5903\n5149\n2970\n5896\n3044\n3801\n2703\n2063\n3652\n6083\n1325\n1921\n\n7255\n6622\n4108\n3272\n8626\n6466\n5211\n\n3189\n18089\n3687\n14113\n\n3376\n1179\n6295\n4694\n5730\n4580\n4831\n4738\n6097\n2199\n5472\n5424\n2997\n\n3656\n5742\n4953\n6405\n7948\n3400\n2571\n1898\n3720\n1919\n7725\n\n8235\n7985\n6168\n2276\n1521\n8539\n2794\n6916\n3589\n7893\n\n5274\n2480\n1861\n2970\n7096\n5896\n5236\n6596\n4901\n3928\n4092\n2193\n\n5578\n6132\n1902\n4091\n7470\n2037\n3949\n6953\n5154\n6307\n4244\n\n1454\n3537\n6539\n8978\n1877\n1454\n3516\n2550\n6548\n\n8176\n10883\n1159\n5666\n10115\n\n1909\n2160\n4754\n1500\n6248\n6766\n3776\n1757\n7563\n6897\n5468\n\n5776\n1295\n14577\n\n1467\n1628\n4841\n2712\n5274\n5645\n5030\n2980\n2148\n2494\n1391\n3978\n4273\n\n5892\n5325\n6605\n4615\n5939\n1734\n4169\n2864\n6916\n3003\n5691\n6886\n\n3207\n1313\n6940\n5545\n1307\n2515\n5310\n2719\n5037\n2852\n4270\n5482\n2629\n\n3113\n3184\n3103\n3874\n2053\n4348\n2034\n5610\n5564\n1245\n2760\n4184\n4388\n4924\n5294\n\n30280\n20633\n\n7281\n4704\n7154\n4633\n4685\n6490\n2221\n4097\n2155\n5782\n2259\n2187\n\n3375\n\n2564\n2306\n7714\n1233\n6833\n1254\n\n3714\n2329\n1168\n6477\n5418\n4491\n7480\n6478\n6092\n3240\n5209\n\n4555\n7903\n4052\n6201\n7707\n2317\n6661\n2402\n2158\n\n3752\n6799\n1474\n9554\n3071\n2588\n7440\n5000\n8195\n\n3945\n8862\n9254\n1049\n6590\n9350\n9632\n6202\n2607\n\n5825\n8152\n1095\n1176\n5725\n8096\n7452\n2804\n\n4902\n4036\n4145\n2369\n4783\n5874\n6162\n2016\n5293\n3958\n7302\n1201\n\n3421\n3339\n4445\n9464\n4824\n9299\n7335\n\n6879\n12322\n7258\n2357\n6743\n\n6630\n4201\n5648\n7472\n3316\n6413\n3651\n5112\n3704\n4059\n6615\n2342\n\n7681\n4263\n1806\n2522\n6200\n1800\n1684\n4629\n5588\n7604\n5150\n\n32417\n\n11824\n4356\n6128\n13448\n\n8280\n9281\n3856\n4534\n8755\n8085\n9197\n\n6955\n7042\n6791\n2400\n6051\n5380\n4118\n4139\n5099\n1114\n3525\n3402\n\n13183\n9082\n12948\n13297\n7114\n9971\n\n63036\n\n9084\n9962\n14352\n12961\n\n3679\n5437\n2514\n2561\n6014\n2091\n2512\n2685\n2395\n3386\n3456\n5414\n1796\n3727\n\n1846\n6054\n9570\n10656\n6468\n12149\n\n4785\n7420\n8022\n6261\n5671\n2126\n6538\n6793\n4723\n5504\n2839\n\n1152\n3372\n10954\n6464\n2765\n\n3398\n4853\n5512\n2553\n8012\n2860\n4092\n5288\n4618\n4616\n3996\n\n1918\n1632\n3795\n3530\n5571\n6305\n5669\n5444\n4991\n2367\n4511\n3484\n3936\n5420\n\n10711\n\n7735\n4055\n8903\n10180\n3356\n5725\n5101\n\n31657\n\n12997\n15132\n13791\n15184\n\n13021\n2125\n7652\n4939\n14287\n\n4244\n8543\n3071\n8029\n6778\n2814\n5218\n6955\n5265\n7921\n\n46784\n\n3526\n3133\n10593\n4638\n9539\n1227\n4904\n5965\n\n7848\n\n3178\n1014\n3628\n7149\n1430\n1663\n2236\n4653\n5188\n2240\n\n6429\n5092\n2605\n1027\n1822\n7407\n2638\n4967\n4244\n3371\n4413\n4861\n\n2470\n9469\n2051\n7278\n9351\n10480\n2860\n4206\n\n9007\n3043\n1424\n9081\n2827\n2652\n5879\n6789\n7120\n\n37743\n\n6312\n5845\n3742\n5544\n3759\n3562\n7319\n2738\n2626\n1534\n2820\n6553\n\n9864\n2966\n6757\n5962\n7093\n1905\n\n4948\n9976\n7084\n8037\n7204\n11131\n\n9115\n\n5691\n3512\n4281\n5631\n2820\n3271\n6239\n2636\n7654\n7050\n3363\n\n7004\n4165\n3989\n6436\n2973\n2194\n4570\n2609\n5751\n6194\n7048\n6261\n\n5831\n1130\n7172\n12886\n8062\n13840\n\n1823\n9111\n6212\n4168\n7883\n10579\n8924\n2743\n\n7852\n5075\n5924\n7389\n3248\n9369\n1453\n9882\n\n21170\n15061\n\n10447\n5517\n10469\n13881\n13602\n\n2267\n6183\n1055\n6806\n4409\n5327\n1873\n2598\n3547\n6547\n5317\n5075\n5351\n\n2380\n3511\n8386\n7944\n8501\n1220\n6635\n9384\n6583\n\n1650\n3461\n5357\n2618\n6668\n6831\n2428\n1581\n6028\n1982\n6315\n3992\n4223\n\n4231\n7521\n7927\n7876\n5052\n5488\n3247\n2191\n1723\n5970\n\n5328\n3471\n5900\n1596\n1013\n3057\n2245\n2850\n3026\n4661\n6302\n5058\n6246\n\n1090\n18730\n17742\n16057\n\n5408\n4499\n2145\n2659\n6971\n7444\n6004\n1196\n3617\n4493\n1812\n3386\n\n1379\n7387\n14347\n12050\n1633\n\n1614\n7776\n11559\n10026\n7185\n\n10478\n1228\n9847\n12113\n12639\n\n2392\n7476\n3785\n6363\n5557\n2393\n1509\n8462\n7233\n6604\n\n1525\n9057\n3723\n12048\n8403\n1434\n7829\n\n11321\n1931\n11036\n5443\n7082\n7616\n10227\n\n5535\n4730\n6475\n4748\n2431\n3575\n3469\n6250\n3313\n5085\n3851\n1218\n3918\n1990\n\n30221\n23041\n\n2861\n5908\n4268\n1877\n1016\n4468\n4593\n1281\n3582\n1108\n2850\n\n3786\n3112\n2359\n4122\n6426\n6756\n2602\n3666\n2640\n3074\n3129\n4290\n6741\n\n11824\n6880\n9944\n1970\n3533\n\n3108\n5050\n\n1122\n3124\n6005\n3098\n4970\n4113\n4703\n5529\n3149\n6373\n5106\n3294\n\n11319\n25294\n15963\n\n1807\n5908\n6709\n5818\n4504\n10170\n6378\n\n5606\n13402\n10945\n6909\n11245\n12279\n\n1666\n6313\n7546\n5273\n4450\n4582\n6319\n7687\n2229\n7612\n2849\n\n5483\n4903\n4321\n3371\n1117\n6806\n6352\n2281\n2598\n6433\n6849\n4444\n4318\n\n7274\n1350\n6505\n6123\n1327\n3259\n2046\n4395\n2081\n3429\n6128\n\n10392\n3224\n8237\n1788\n5544\n11058\n\n13668\n12456\n4385\n13156\n13073\n10019\n\n8544\n1540\n1472\n5529\n4076\n1141\n6039\n5256\n5524\n5986\n\n3721\n5171\n4997\n5498\n6807\n1778\n5120\n2830\n2733\n\n1629\n6387\n4685\n1162\n6393\n1118\n1628\n6786\n5507\n5745\n1914\n2043\n4954\n\n11968\n5263\n6691\n11191\n10725\n2462\n7162\n\n1911\n5528\n8016\n5798\n2448\n7299\n3742\n2756\n1710\n5342\n\n1612\n5217\n2630\n4768\n5942\n2414\n6278\n2422\n3603\n5110\n4823\n3115\n3616\n3872\n\n20562\n\n21492\n\n6167\n22813\n6117\n\n1746\n1883\n5639\n2251\n4456\n1289\n2850\n5350\n6211\n1971\n1628\n4259\n5732\n1522\n\n2427\n19825\n15898\n9510\n\n10822\n\n5729\n8357\n1089\n6622\n3631\n\n9226\n4811\n4979\n4748\n4686\n10536\n8734\n10183\n\n6483\n1553\n6871\n2817\n1964\n4610\n4267\n3258\n6700\n4836\n6902\n1354\n4994\n\n5293\n1858\n1504\n2783\n6933\n6112\n3433\n5478\n4998\n5578\n4112\n4924\n5567\n\n6550\n5932\n6154\n1424\n6667\n7476\n1573\n5597\n3271\n3732\n6926\n5812\n\n9452\n4356\n6277\n3167\n3323\n6475\n2026\n8759\n6115\n\n14299\n\n63447\n\n2635\n5931\n6323\n8330\n3177\n7588\n4316\n3837\n7060\n3915\n\n48633\n\n4750\n2846\n4007\n5026\n6205\n2760\n3031\n2748\n5059\n4779\n2110\n2238\n5475\n\n5832\n3148\n3556\n1924\n5265\n5802\n3515\n1606\n1437\n1210\n2961\n2408\n2580\n5539\n1380\n\n66449\n\n2996\n3761\n4582\n5321\n1600\n5507\n1384\n3288\n2201\n3423\n4042\n1109\n5464\n3278\n5813\n\n8499\n6999\n5484\n2524\n6885\n5701\n5513\n4086\n7943\n4973\n\n1159\n7531\n1852\n15286\n\n4539\n8693\n1014\n1828\n8482\n8082\n5404\n3261\n8635\n6019\n\n3048\n6786\n5651\n1378\n2938\n3365\n5968\n3120\n3338\n6905\n2580\n6653\n3288\n\n11131\n7146\n18154\n\n3907\n4060\n5426\n3596\n5290\n1701\n5058\n5641\n5510\n3599\n4874\n4125\n4174\n4347\n1031\n\n16519\n\n2653\n3214\n8189\n6240\n2010\n9114\n2936\n5757\n\n27107\n\n4099\n1252\n4620\n5294\n6455\n1170\n5050\n4196\n2488\n4760\n7425\n\n4275\n9064\n19197\n2605\n\n4278\n8197\n3238\n3410\n5384\n2670\n5818\n4744\n7541\n6172\n\n13214\n2791\n8165\n8198\n9405\n4916\n\n15390\n7196\n\n8611\n7289\n4196\n1729\n6994\n6587\n5544\n1110\n5397\n2882\n\n2351\n4784\n3193\n6033\n2193\n1767\n5487\n3421\n1503\n3221\n2610\n5334\n3596\n5869\n2536\n\n21247\n12819\n5427\n\n10652\n4957\n2236\n9504\n9850\n11495\n8799\n\n1295\n1117\n4578\n2757\n8310\n7539\n1563\n7445\n9248\n\n1154\n7145\n2494\n1170\n5617\n7106\n1500\n7359\n7355\n7312\n6374\n6591\n\n8635\n4722\n2581\n1321\n4876\n8887\n2091\n5882\n3667\n\n2555\n2895\n5862\n4002\n1331\n2902\n4189\n5844\n4167\n3075\n3559\n3807\n4633\n2562\n2182\n\n7326\n7752\n9975\n9509\n10360\n9290\n4799\n7985\n\n2025\n3129\n10778\n4050\n15824\n\n8875\n12920\n13121\n8778\n4115\n2725\n\n2640\n7696\n9232\n4533\n3279\n3792\n3060\n\n1928\n1954\n7144\n4484\n2340\n7079\n4401\n2149\n4172\n2331\n7733\n\n10089\n1850\n10613\n10002\n7258\n10227\n1377\n4110\n\n1993\n5191\n1557\n6222\n5479\n4984\n6453\n5099\n4422\n4870\n6401\n2377\n1590\n2023\n\n11578\n12357\n5959\n6164\n2562\n\n6504\n3906\n2703\n5974\n3143\n1620\n4910\n2133\n3240\n5300\n2309\n3464\n1256\n\n10982\n7910\n7625\n11675\n10215\n1163\n9569\n\n2915\n3767\n3745\n3972\n1852\n7935\n7429\n5175\n6558\n1430\n1602\n\n3817\n3327\n1928\n4831\n3908\n2935\n1922\n4557\n2762\n4731\n4974\n3861\n2073\n3692\n4205\n\n7336\n2964\n15357\n13398\n7906\n\n3525\n4721\n4014\n3612\n2369\n2023\n2847\n4074\n1129\n2179\n3614\n4281\n3818\n5191\n5381\n\n61042\n\n3819\n4305\n6299\n2583\n1370\n1380\n3654\n2856\n2461\n1332\n1901\n2910\n\n6827\n13660\n16816\n2018\n\n3748\n7348\n8889\n8319\n2671\n7852\n5415\n3932\n8902\n\n3614\n4741\n5864\n5082\n4251\n5216\n6408\n6951\n1828\n1279\n5092\n5998\n1599\n\n2630\n3617\n4473\n5203\n4772\n7763\n3033\n7055\n7533\n3649\n\n2201\n1324\n5999\n5250\n3899\n4327\n7485\n5573\n5759\n6442\n2955\n\n4682\n4459\n6026\n6998\n1943\n4534\n4555\n5575\n5046\n7549\n\n18939\n6157\n4911\n\n3975\n4193\n4442\n4336\n1650\n4874\n4756\n6106\n2389\n2783\n3412\n3343\n3794\n1072\n3170\n\n9191\n9214\n7209\n6637\n9086\n9123\n8213\n9269\n4298\n\n6182\n7624\n3395\n5847\n1575\n6110\n2981\n5999\n5480\n5971\n3642\n\n11213\n13891\n3627\n7688\n11077\n2119\n\n20695\n17278\n14874\n\n6613\n1752\n7179\n7575\n5803\n2655\n5733\n1441\n6247\n3254\n\n3667\n1157\n3324\n1195\n5982\n3444\n5185\n4061\n4297\n4364\n3399\n\n8517\n6424\n4847\n3985\n13460\n2559\n\n4043\n2124\n3622\n5129\n4750\n3882\n6512\n2024\n2053\n4534\n5507\n3312\n5172\n\n9086\n7581\n2686\n12674\n6833\n4967\n\n2401\n12176\n6352\n4439\n8153\n\n8222\n9993\n4988\n10170\n9853\n7487\n10533\n1892\n\n2527\n4255\n4377\n4312\n2549\n2005\n4011\n4803\n5879\n6038\n2382\n3758\n1079\n1875\n2549\n\n3962\n4758\n5211\n5023\n11911\n8809\n1896\n\n6166\n12840\n7486\n9772\n\n3481\n4655\n6998\n2009\n8754\n7585\n8723\n7766\n9118\n\n3997\n6810\n6988\n9613\n7982\n8594\n1229\n7588\n3507", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kTestInput, Type = String, Dynamic = False, Default = \"1000\n2000\n3000\n\n4000\n\n5000\n6000\n\n7000\n8000\n9000\n\n10000", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events CalculateButton
	#tag Event
		Sub Pressed()
		  InputDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CaloriesListBox
	#tag Event
		Sub SelectionChanged(Rows() as Integer)
		  Var sum As Integer
		  For i As Integer = 0 To Me.LastRowIndex
		    If Not Me.Selected(i) Then Continue
		    
		    sum = sum + Me.CellTextAt(i, 1).IntegerValue
		  Next
		  
		  SumLabel.Text = "Sum of selected rows: " + sum.ToString
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.ColumnSortTypeAt(0) = WebListBox.SortTypes.Unsortable
		  Me.ColumnSortTypeAt(1) = WebListBox.SortTypes.Unsortable
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InputDialog
	#tag Event
		Sub InputReady(input As String)
		  mCalories = GetCaloriesByElf(input)
		  If mCalories.Count < 3 Then
		    MessageBox("Invalid input data")
		    Return
		  End If
		  
		  Var sorted() As Double
		  For i As Integer = 0 To mCalories.LastIndex
		    sorted.Add(mCalories(i))
		  Next
		  sorted.Sort
		  
		  mSortedCalories.RemoveAll
		  For i As Integer = sorted.LastIndex DownTo 0
		    mSortedCalories.Add(sorted(i))
		  Next
		  
		  // Just for fun, display the data in chart and a listbox.
		  DisplayData
		  
		  // Part 1
		  MaxCaloriesTextField.Text = mSortedCalories(0).ToString
		  
		  // Part 2
		  Var topThreeSum As Integer
		  For i As Integer = 0 To 2
		    topThreeSum = topThreeSum + mSortedCalories(i)
		  Next
		  
		  TopThreeTextField.Text = topThreeSum.ToString
		End Sub
	#tag EndEvent
	#tag Event
		Function RealInputDataRequested() As String
		  Return kPuzzleInput
		End Function
	#tag EndEvent
	#tag Event
		Function TestInputDataRequested() As String
		  Return kTestInput
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events SortResultCheckbox
	#tag Event
		Sub ValueChanged()
		  DisplayData
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
