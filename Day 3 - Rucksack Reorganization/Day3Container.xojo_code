#tag WebContainerControl
Begin WebContainer Day3Container
   Compatibility   =   ""
   ControlID       =   ""
   Enabled         =   True
   Height          =   420
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
   Width           =   696
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebButton InputButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Configure Data"
      ControlID       =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   496
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   0
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   180
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
      Left            =   223
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   1
      Tooltip         =   ""
      Top             =   85
      Visible         =   True
      Width           =   640
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin WebListBox ExpeditionListBox
      ColumnCount     =   5
      ColumnWidths    =   "120,120,110,*"
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   167
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   "Elf #	Group #	Badge	Compartment 1	Compartment 2"
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
      Top             =   233
      Visible         =   True
      Width           =   454
      _mPanelIndex    =   -1
   End
   Begin WebTextField SumOfPrioritiesTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Sum of Priorities:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   70
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   496
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
      Top             =   77
      Visible         =   True
      Width           =   180
      _mPanelIndex    =   -1
   End
   Begin WebTextField SumOfBadgesTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Sum of Badges:"
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   3
      Height          =   70
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   496
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
      Top             =   155
      Visible         =   True
      Width           =   180
      _mPanelIndex    =   -1
   End
   Begin WebChart ItemsChart
      ControlID       =   ""
      DatasetCount    =   0
      Enabled         =   True
      HasAnimation    =   False
      HasLegend       =   False
      Height          =   205
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
      TabIndex        =   5
      TabStop         =   True
      Title           =   ""
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   454
      _mMode          =   ""
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Method, Flags = &h21
		Private Function PairCompare(value1 As Pair, value2 As Pair) As Integer
		  Return Sign(value2.Right - value1.Right)
		End Function
	#tag EndMethod


	#tag Constant, Name = kRealData, Type = String, Dynamic = False, Default = \"LHLRlCCvCLVgHPfCHtVjBGrBDNzWFBsBGBfscGsD\nnQwbnwwpbrJBrNWB\nhmnSdSdQpTpdnlPdvddPNglLjH\nRZhwpDsNqVmQClwl\nTLJfLTPqcvTrvvLMLMlVzzvVVQQtmQCmtzmV\nMJjccdfTMcbqjNSRSZsSDZ\nLLrNNqCTCwLTttwcNctqFGmRBSBjzjbSzbBbjNbzjB\nGnhhZQPDGdldgQmQSjpzjzQssb\ngDJZPMnPnhlhJWhZntLCLcTqVMLrGVtMfM\nrrBgDBGnVnffDnfQQqngJhhSRQvhhCRRRSZbRpRzwQ\nNtLmcHPHMHHssFJphZpbhwpNRbbC\nLJPHlmdJDgrrqrnl\nnJhrcNnfrFwNhPdMQSgZSCMjQn\nLjqGWsGWllRRlHVsqGGWsZZSSHQgPmHZZSPvdPCmvQ\nzqqVTWjqBsTJprNbppFb\nzSMgWzlgFSWFcGZlCZGlrrTc\nspnQHdQmHddNmpWrpWcChccTWc\nBsRsnmBQdNWsvRPzbzbLzDVSPSbVLM\nlDfbffptlrJZTBJHjjBWjT\nLcwwgQLgzvztwtMQGCMVCHWmnmjWnGhFHnZjmZhjhT\nsCqtzsswCgccbSqrDSqbNNfN\nsnnnjwRRwGSSnVmhhVMhGFbgQgbzFFPPgQQmPbbgQd\nqCrccvcDDcvqDZlCcrcfQNQFdsbgWzFfQddQQPgQ\nZcrvrBqBTCZnBBswjwpSRs\nqSczBfBcjMZMfctsmsGmFJsmQQcQCr\nwPhTLNVNGLNdGHPHwlQsnrnmnrQvHFFHQn\ndLdwbNLRdgGbgTjZfDbqDWjftSzW\nrZwlrtRtNtlHqVBtdqQgdq\nfbwzpPwbhJzpwfTSHgdgqcJVcBjHvHdJ\nLLPbhzPpTTbTshfGhPwSFWnNmMrrZZmNmZDmWNCCZs\ntMHgMWMQWgFJTHsWMvJrVdlmvlSvdvlpvG\nRNfZZfRttBtdlZlmmmplSS\nDzzNDDRwnwwbLnMFtsMntQFM\nqHqBMNqgMwHMbnGStHSbndnt\nPwWZPjpfsDsDsPfPfjdbSvbWhdFSbFGSWFtr\nwfpjpJcfVsspzZRRszDpwcRggLTQQBLqNqcqcggLCgNmlq\nTmmFjtvFdDGjdFFJjFRDLNLHGBVcqgLcLgVBLqgV\nWbWSPSwQCWrWQSrCbwNVlLlBZLBvLlvZVqPl\nSfwbhrwQQbbMwCwWCrbwJRvptJfjDTDRvzTttRjp\njzqSMszqsbVVMVMgWhWCgMrpGgpB\nwrwLcFQmPlFFlwLZmFGTfPvWGfPvhWWWvGgf\nwRZtHFHmzNDHSqrs\nNprlCgrrnrNCjplSCtljpFrFZLzzgwmVgBzBZZPwzBPQBwVL\nHsDMvHTDfsfQZfZzmPWL\nJcPsDGTqcTqSdrSCtnCt\ncFcmfmJFtFmtlTNtLlCWTT\nQPQzjRRsVsQqBqwlTlNBpLNSWDpN\nQblgzRPgbgQsVvgPVQhgQqjvMnJfccnZddcGGfrFJMFGGF\nPWbWmFFnPFPWbDVVmmDHDFGdGhTQdLdnTZQZZcGSGGdQ\nClzjNBlBJvlsBdcPLZdLPQjLQZ\nvJMBpBzzzfNCCzCffJlzgMWDWwPDtVtmVHPMwVHD\nbJjWzWFlTMjjSNBrRcBrZR\nmwnwqPwnGQPCqmJmPQJPCVNcRZBRRrrNrmrcVpSrRf\nPGvQQGPqvhWFWlJbDv\nPNPrdmPGRJlZCrCJlGQzjRFLpFRppjgppgcj\nDwfVnssbVnSWShDwsnnhBLFjFgjFBzDBjHDLpHDj\nvSsMgbsTfTwwfMffnTvgNNCmrPJtCNrJrCrrtvGm\ncRnRplCzccVcrwcnppVVzRCNhfhgChNJfPgHJdHDNtNCtP\nWFmbLMZdLBqfJNbPTfttDD\nBdMWdQsGsSsrpzrswr\nllhhZzSLqlzwRrffzwzT\nGvBbNjHbjjTGGHHFcsFvfRrtJQPvtRfwwfrPJD\nHGbcbTTjHFNpppmLnSdplWqZ\nFhwFbPwsvtRgVCgvMT\nHJVHdHBWdBQSSSQnqSQLqZHtcCctppgBtRrgtMCgTprRMM\nQNzZLVSLLLDGPPzPmbFs\nVdTHmWCVZDTPBBWBQBFQQg\nMzjMjzCjJsbJhhPz\ncrfGGLwwLGrtrvCtdTmdDH\nwRLvLmGQLwFPBRmnLCLmGQTzNNqVNZMMVzzQbzVbNZpMVb\njsgJWjdHghsglHtWsjSfHzVNqzfpCCzqDpzDrVVrrD\njJtWWsWhtSHsSSgchthHcjHCvcFCRvwvvTTFBGvBmmGLnL\nLpjWLNqWpwRWMqLRGjwJlStgbtrVgHFrGllDDrVH\nSQmmTcZZvSZBTmTSzhPTddbVDhHllgFCDHtrDHgDVVDr\nPzTTvznBncnfTmTTQcPdmzzMqWNfqwRLpWJsNfwLJjsSwJ\nlsGdGwBsflGrfsHvHwQLdFrmPhDhCFhhjWCVmhDzmbmPhC\nqtMSNNZZMpcnVzmVbCqjWjzB\nZZcgRJpBtTMNnntncwgQQdfGHHHlsQffLH\njBBtjjqfnwStBSrVVFwSVVvvWzHmcWvWbvPmPbWrbMRM\nGTdNDlpJhlCvPbHgcDmgDH\nJZQdQhNldLdTpGdJGdNCpLZdSBnnBFfHHswqqjffZsqsFjns\nphJhDPQLDSJvpHhvDJhfrFQVRrnsslrgwrVrrRjg\nmWNWqZWWZBMdCGMNCdWmWCNCsnVFTRsVnZFlsrlFwFgVsgjr\ndWdjttGmNCBchJfhHvhPtvJt\nCSFSFdfCzJhtSCHQFjQHQWFHRNHG\nwnbrgZnwZgDLsLbwsLrsrNWQNjPZHHvPPQHNqHHvqB\nLbmTLDsgggQmzmCCppdtSJtM\nSzSSchCdZgHbwHSZ\nGsMMmslnsfmNGNNNVVtZWdwbqQbpgWjjgWZjQm\nDvlMtflGGVGthhzdvLvhrTcc\ndvfVNqHlQfGRcjDczlCDnC\nPsPsStLprtTTFSTLmhSVSFSsCzRRjzDnMJDCMWWDjMnMnpjW\nhBFPhSBFttBhStLwmsPTtPsFHZNGfQgdgdZbdqZwdgNVvwvH\nrhjcChdgjdCrjLjLLSLmLFMmFtNnnbQNNNPMbbmtQF\nlwWRZDlsWzrbbQpN\nrTRqsqDRRRsDRVrqDgBCdCVShjCBHchjdh\nPsspltlPsmTsmbmfTPSTTCGjhJJjCnpqJJNhhJwNJh\nBdrLVvgQLQVLHRZGnqRhRNdwNC\nWrFVHDgDQFHVLVVDFQMLltmPsssPztwsPTzsWcmc\nCBvvSzFGSGGWfFZpcHqjvjcvcqccJq\nbRQwgbbhrRhdwmQbWtdjnJHqVJccJqgHVJHJcl\nRRmbPrNRRPLLtmbQmbNwddCTSTzBSDBDSMFTBSSPZFFW\ncppsSgNrSgwrGRdHRrwd\nLzqqmCLCLWQvCzmzZwHnZZHSwvwnlDlS\nhzFqFLLLFtSNVsFF\nzpZcZZZdppzDLWDtJGgfGbTGGJTGcc\nqhvNSClCShRrRBBWTQfgBFbgtfgg\nHlHqvjqmCvCvlSSHvVdsVDzjpVjMWdwLpP\nqLdsfNsTHQwnSNSBNS\ngFhWzrhfbmlpmZhJWrFSvRMnwwvvpBpBSpQBMv\nrgWZrbmlmbzFfglgWzGggFJLccVPqLPqtPLGcPsPHcPLTd\njTTWRCCbwJJNTHrffqNnzh\nDZVmDpgGBVdcMZnqfhlNHQMlNNhl\nsDcpsDZBcmgdssZcnmSWCPWRSRwJWwvFLvRwWj\nhWwhgQlQQgjPhFChZVdbcJ\nzHsrMPNMtDDTmbcJbccmDb\nznzPzrtHtHtMzqHHrsSSLwljqfgwGggjlQjQQgQBGj\nJpnRtqlJsqDJJBBNNmQmgdmRNGGmvv\nhTCbTwMCwVhTWdmDgDvjWD\nMDhhMSwZCbbLVhbLcDSwCwZtZznlzlnqBPBpHPPlBlHJ\nCtvnvqNNDchrhFVpwftmgQgpQfwS\nMbdqPWGjBjMBbwlfVgdmfSfJJS\njWzbzjWWjWMMbRbMsjzBhChrNHcNqHcrNnhssnsc\nLlLJSWgWllSShRmRlBLJSVBzpTHzTTJcpTHzpTTcPpGpTr\nMfMqnvbvDfbFFZDfFNjsGrRppHpZGGcGrcPprz\nwfNFvtwMvbnntftjfNtVmlgmStBmlBWdQQRg\nGpFRRPGWqzHwdqpzqbjjgfZptBBVMSjSfBZc\nTClllrnsJvDMBgcjfmtssB\nNlhNNchrNJlLvClNDrzbGRqwqqqwqPPFLGdd\nqFmVtvmmVvzzFtzzGzzMNNMSSTjNJlStjSfNgf\nsWrPBCnCTMsTJfSM\nQTLbpnRpRppnRQdRzRZqGzFFVVRz\nWGGPjFvMVNjlcQJr\nbslfldbgtpSmwmSNHQhLJhcwLcQrQV\ngTltCsSsssPFnDzWPTMz\nhhRRhQgGrHjhRsrgqznbzncZjVVJVjncjd\nDSFfNTBFSDmMSTDlFbBBdccCdJJZCbZCbW\nDDLmdSmTvQQgsgvGHH\ndNqNgNvFnvdZHFWnZWNBTQlPTppPGlCTpBQppq\nLJrtLrsLjsGvTCTpQP\nmtLhjVjMhhmVMvtJmLfhFWHnngbRRdZHngnZWZ\nNzdVNzqqCtCHMMZBCGBW\npsjllRjFpjpbjspFmWmWnLBmMMQMmHbm\nDhsTPDRTDHpsvRjdNtzJJJdhqwcdqc\nVbhRbZgRHMFhQpHd\nfvlqPzmzJJqJSPsWmPTNddNFHbNFGHNTHSbc\nCqzlfqrCnbrBZjBr\nSNSrDZFHnTqFsFddsCmsMC\nctVthlGjfhGljcCJmcqMCqcqBB\nVtjvtjhhPPtWqVPLjvqjLVNRppRTvNSnbnZRZTHRnpTD\nfzsBSsNBMNMszNGGJvgjjPggzjdFPgpJ\nbmrVVVrmRrrvRmwvqlbHTDgwdLFjQPJPFddwJPFggj\nHHHrZqhqbTMcZBCZfvcN\ntzsJsnsmBzlVqjssZZrg\nMQZHfNCffpMfpGSpPvpfCGCTTVwFTlwrggjSgqFjVjTwwg\nNfMGGGPZpvLDvLCGGfQHMpZRDRWchRRtBBzmJnmzmnBznb\nBSRBjtNjZrsjRjjNsVBjbrMwCgGCCwCdHrlcdccGcH\nDJTTJLpFnFLdJJqPLTWqLTpwHzCGccCzvvcHwMvWzggCMC\nPmpTTdndmmLqfLTTLDqJVBssbbStVmjjSsZNsBZm\nddCnZvCDSgghFhbbmFVQ\nJzlMcJTMMPPfJJfsMsjWlHVhLbQVlFWmHbbb\nBPwwsPfsqszfFqppwTsqzpntDSnCBnDRZrSZdnDdtvZD\nSllzzPplWldwLGlzbtPZZjVScnnNSjnNsqNqsc\nBrCfFDJFDHBhJCChQFhCCBDcTnNVpZZcNcvQTcjvvcTcZV\nRCmFHJDJhCmBmRCgDCFRpmGbWWbLPlbMWzzGttzgLMbt\nvGTfsZnfvfzTjsnfzTJlwqQjwmCqqMFjFFQMlq\nLHtHRVLRLNtWcmVbRrPbRcwgQwgwMwClwClwrgFpwqpw\nVDPtbVLBmLbLbDDNnnnzJJfJfBfvSGBn\nlpPCRVVQppzHlZgzglgF\nrtfttLdLdscmGtzngPHHFHFH\nLPLLhfhbTDLmPdcrcWdTcDSjjRqwwbqpRwNBNpBwjQwR\ndWQfCJrwvQCfFqNwRbbzVbVVLGTR\nZpZshPMzBjGjtVMN\nphpSlSlDlcZpcZPrdHCFzFzFWFDWQH\ntfMMZhjLlChsdsds\nPHQRMHRwpRPBMvWvPRBpPdWDslGrbscTlTGcCsGddG\nFqPSvHPHPBzQRBBwwRJfVtgjzntMntjJLMtJ\nVBwJvwVwNbVRdPwMgWggGMgH\njDhqflDDhrqshNhdgPGHphLg\nFltsrtcFrclrNqDfqmzQJQQRBzBCvCFvBR\nRZsSSJDJZLDWnGDMLD\nClbnlfmpNtmgbtmMqWdjNGjLQjLqLj\ngcblTlVCnVmcPrvRPFRrZs\nmbJcScmbDWLmSBzwjPRTfjmmRhpl\ntFFFtGttdClHVMCHFMMwTpwNjGpzPpNRRzzpPN\ngCCdvZCVHsFvJnnDSglSglDn\ndSndnRRvVSpLSphfqvTgWqrzqvvw\nPBFQbQbDhGfjTTFzqG\ntPmCJMtDDNcMVdhhVc\nQVRVHCQRmdTRqrZFCWrLZNZFbb\nncncsPnhslBRSSSbFhtbZDLMbLbtLb\nlvflPcfPSsPzlJlPlcPBfHJQwRwHmqdVpRGGGdQmww\nGTCGMCcGdgRnnbbbMLwmMz\nDQFZzllWDDLwDJLnJpnp\nqBVrNNlZfFNlWlWqfRzhgvhCqHRdCGGSvc\nZnMnGbLZfJcBcLTgWF\ndHJjdzqssHHNJwCHpHtDccvtBTtvccWWrrTWSg\nCmlqCNzCzHlmdsqzNzRhMhZRbZMPmRfRJQPb\nLsLLrFLcFjrtmZhhmhHGhJGGhH\nffvbsbWpSBSSCCQbsSBSwwJHHvhZHHGdGVGlMlTVdZlT\npSzWNPSfCwWNPBfsFqtFLtsqRzqFgj\nhwwpvjVppGpwWGLrcPjrbrrdbjdL\nFBqFFMFHHsHssNHtslqtFmldnnLrPhMnccrnMzZnbLgPLz\nmJBSstlJQpwGSVhC\ncgJDVWsrWggpcHhMzwwPnQMWMm\nSZGBjdBqBBjGjjqNGfGNNHPnRSQFzhnwmnQzQnPHMR\nbjjCZddjZbZBCtLhCZhftrgJglcTlJgvTllJvDVDLg\nQpRJpCFdpqTQcqSTBBGBZVjZjVjFvwVB\nnnnWfnHhPDlDnlLwGjBBbVVZGbCGbP\nLhhLMLMrMWMrCprTqpJQpz\ndqGGZJdZbTTMFFTGJFFbMdnCHSdWcmNmcCdWSggfSW\nQsjjtrzLrQwDPjrQLrCfSSnmCmHWlCgmzlNl\nPQpQPjQPsBstLBPttDrjBwTZMFMZFvJFJhMhnMJqpTJJ\nJMLrSvHJdJvvJfrHMJRfWzWDFPwCcWqRRRcq\nljZsZTmmtTBlpTlTjQZCtNFPVqDRwWwWWVPcDRVpFRDz\nmBgQgNNTNvrvJSvgCb\nDWbWtzWDfDffbsMbZMffDDLncnnCJmLVsJJJnhgcngLs\nTjgNGSBRTRTQrFRjFGBVLwLnnNncCLLCCcmhPC\nGgGjvgddvvWqqfdZftWH\nzMmsQlMfQQMhjsmjfsmHlhncRRZnRRRJRvZWWnhccdRC\nBptFtDSSrTrpgtgqqgtZtvVVdVvccVnJdVnG\nqpgPqBLDNTgqBrSLpDBMJfjzmbJMHjLMfjslzH\nDPgLgPhfNDRqhDFDsBTtrrrdbbztCbtf\nMjGSScGVGSlJjbbrtTvdzsTq\nJJwJGWMZwMlWnFFgqNQFpF\nWRGDHmGqWHlrmtVVVRVqpNZvZvvvTNPMPjbPdM\nBwhBwsnzwhzSfCfswFvpvTzTdpMpjvPMZNTb\nLFFQgnbfChSFBhFnftRRLrttDmmRJHtlGH\nMhqhRHmDdRlRlGnfZbJVsNNZDnNb\nQwvzgtwvFpmjwzLjFLJZrsZbPfPZbsVpfPsb\ngvjTzBLztLTjwFjtgLTgtzwdWRqdqRTMSWcWTmWlqdhHHm\nZfzzfmhdpNLNBDDsFfQVCDggfV\nHPFjljSnHrqVDgtgQgQMqC\nrGnSJHvjSwGzwFhGZG\nHqmHRDprrNTZTMbh\nCJvzQRQVQCgNzZbzgMNd\nvPCvFPcfQFlSJBcfRcPHmDGqWGDqpGtjjtGGHl\nwcfpJVHfJBffBBGWRprNRWWWNdhv\nDzMzMPqjDnjgCMZPZjzjCjChGdvvbhNdSvrhNWSNqWRRdS\njjCTtnMTDsMBtLRQwwQlFV\nJqGnVqCTpDVCTnNLgmPzdgjcGmRg\nHrSBJSHblsJthsBBSBhMsrzmdNRccjLzgcLmjgPPjlLL\nHSwSttbswWJrbrSWppvVqvvnQVppQQ\nJDCHssRTTwcRJDcnCDzRHsHNPZGBtPzFPSPttZSZGBqPBZ\nvWhLmTlfrhFqGWSNQNqF\nvpMhhpfvmTfhvbLhhgvmgvvlCCJCCMnDnDCnsjRMVDMDswCC\nZgjdlmlmmlJgHJlbZrSDrnrMrmLLDFprmp\nTvqdTtdctvvDrGGSDn\nCWPBhtWqPPwcdVwlNJfVVNNbbb\nvgmrrwlPPrwPBPtmvFcMMrsMSJHscJcMSHDH\nTWdLnZjCLGLMQLHBLS\njqVTTZqjdTVjNFNPqBvgvBNl\njmcgMzsmjmfvJwFpFfRWZRWp\ndrdSldTmCmTDCNCtbRRWqRwtttFZpZWZqw\nNLCVLNLTbbTrQNQDvnzschgghnmnHQcH\nsRVhVQDVDQRRMQhsqtRRNzqzbNzRqNGp\nWdjCLHLjdFnCCnjnFnLHHmPmNJbztJJpprBpbGzbpJbqGWtB\nCCFFCnFjdnjCTHmCLTLLCnFnQVhQQVDMhQQVgZZNVVDDsTVh\ncGLzZgfzcNNzzRZvjvRmVDmmqCCDSdVVChVnDf\nQstsPlWHQlWhMMtpsbtpQtlpDqBVqPSCSVnTTqmVdDVDVdBV\nstptQFJrHptlQsFJMHtHhFbvNwvjLGvvNgzgjcwczzJcNJ\nSQHCrCFPJZcnWrqn\nvfJvJjfGGDggqZGcWD\npjLpRwzhRFtHdMQJ\nHNSHNDvnvdffDNfqdZfdStcFFMGmmrRBcmFcrMrqrWFB\nVblwzwhwPLlCGGzgzhmFjbjFrMFrjFBmbcrM\nhlVPTCCQCCzVlPzhGgPVJCpHtdtSpQSZNNfnZdSSdnSD\ncBVmfwqwmWggTRmQzTQl\nCDnnHjSDPLCSCLHLHCHNCDFgwJljFQRRhlglbzJFQQhl\nGptHLtNGHtCHSnCMtGWdcsqqWwMcqvdsVwfd\nHsMFNRNWnbWfZLzWzQ\nPqrpjqNdjjhPcdbpvmfzfbffbzmv\nGjhhcPjPccVrqcPCldCjssHNnTnNttRwwVMTHMnV\njjCcBswcfnwgpPFPwFFGSFSwFb\nVvmVhVvRRQqttRtQDLzLhqRlrBFMWrGPBSMSZSMFqBWZZP\nmvQmLRvJtBJVnTcJCjsjsdgp\nqgqvPbdMDMMPwpbLFGwtNlNF\nTTQmdJTnSllFGtJNtw\nCSSHmQHfmVcHjQmSvPBdBDDWMVhMhRMB\nWCvQNZdhCDnnPfQPfTzjHcppsHjpsSjHNS\nmFMgMBlMmBqHjjBfTjHzBc\ngrJbrqfqMVFJrlJrtCtvhPPQdnvnnvnwdW\nFdQQJRdfSSfrJsRZfFsRSvtDBmDHGtGqbgvnmbDnvDGq\nlcMzjCPTVtMqgWWGqn\nVpLjcVPczhzznPLcPhTwFQFRZNfFNrNZFpZNsZJR\nVWgJhmdDdJDdVPggPSTSTWvvfRzfFfFbNb\njCQtnpGQrHMctnpzRbFfgSwHvgwfwv\nntcMcqLMcQccQLgjBPLdhZDVlJPVdDLJ\nRnPnwtqHnJthjLMcWWncMn\nmsdCrCdNpBBsCrlNTpNBDNGzcLchQjFQzccQLQpzLzWtFS\nsTbdTBNrTCTTBCNBlVbwgVPJHtPgPvqgff\nQmBsmpmcZQNqPqVnPFVpGh\ngDDMDLMJgHfJwJMzfTfdGLhChPtvnGRPRRLFGPGv\nDTlzgwfDrrrMWlncbscNnlSW\ntBwvGHFttrFrvRgRhCmCmwQmMg\nJWbNJZjzfbVjWjBhqfmSnhqCqgnQ\nZZJJJbclzJcsTPdvTTPTBFtHDF\nLszmFTFpTmszLrpqSmFpzcvQjtQjvLJgJtcBjgtJjj\nVHNwwNCVCChddfwHlWdnlnGRQPcQjRvMWBJJtMMWcvPJMM\nnGHNVHhnfnHDNhCfdhNNlwHvmpDrZDmpzmbZSZFsmmbqrrsz", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSampleData, Type = String, Dynamic = False, Default = \"vJrwpWtwJgWrhcsFMMfFFhFp\njqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL\nPmmdzqPrVvPwwTWBwg\nwMqvLMZHhHMvwLHjbvcjnnSBnvTQFn\nttgJtRGJQctTZtZT\nCrZsJsPPZsGzwwsLwLmpwMDw", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events InputButton
	#tag Event
		Sub Pressed()
		  PuzzleInputDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PuzzleInputDialog
	#tag Event
		Sub InputReady(input As String)
		  Var organizer As New RucksackReorganizer(input)
		  
		  SumOfPrioritiesTextField.Text = organizer.CalculatePriorities.ToString
		  SumOfBadgesTextField.Text = organizer.CalculateGroupPriorities.ToString
		  
		  // The rest is just for displaying the data
		  ExpeditionListBox.RemoveAllRows
		  Var groups() As ExpeditionGroup
		  Var lines() As String = input.Split(EndOfLine)
		  Var itemList As New Dictionary
		  Var i As Integer
		  While i < lines.LastIndex
		    groups.Add(New ExpeditionGroup(New Rucksack(lines(i)), New Rucksack(lines(i + 1)), New Rucksack(lines(i + 2))))
		    i = i + 3
		  Wend
		  
		  i = 1
		  Var groupNumber As Integer = 1
		  For Each group As ExpeditionGroup In Groups
		    Var badge As String = group.Badge
		    For Each member As Rucksack In group.Members
		      Var contents As String
		      Var duplicatedItem As String
		      duplicatedItem = member.GetDuplicatedItem
		      Var chars() As String = member.RawData.Split("")
		      For Each char As String In chars
		        Var emoji As String = Rucksack.GetFoodEmoji(char)
		        contents = contents + emoji
		        Var item As Integer = itemList.Lookup(emoji, 0)
		        item = item + 1
		        itemList.Value(emoji) = item
		      Next
		      Var leftCompartment, rightCompartment As String
		      leftCompartment = contents.Left(contents.Length / 2)
		      rightCompartment = contents.Right(contents.Length / 2)
		      ExpeditionListBox.AddRow(i.ToString, groupNumber.ToString, Rucksack.GetFoodEmoji(badge), leftCompartment, rightCompartment)
		      i = i + 1
		    Next
		    groupNumber = groupNumber + 1
		  Next
		  
		  // Prepare the graph
		  Var items() As Pair
		  For Each item As DictionaryEntry In itemList
		    items.Add(item.Key : item.Value)
		  Next
		  
		  items.Sort(WeakAddressOf PairCompare)
		  
		  Var labels() As String
		  Var data() As Double
		  For Each item As Pair In items
		    labels.Add(item.Left)
		    data.Add(item.Right)
		  Next
		  
		  ItemsChart.RemoveAllDatasets
		  ItemsChart.RemoveAllLabels
		  ItemsChart.AddLabels(labels)
		  ItemsChart.AddDataset(New WebChartLinearDataset("Items", Color.Teal, True, data))
		End Sub
	#tag EndEvent
	#tag Event
		Function RealInputDataRequested() As String
		  Return kRealData
		End Function
	#tag EndEvent
	#tag Event
		Function TestInputDataRequested() As String
		  Return kSampleData
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ExpeditionListBox
	#tag Event
		Sub Opening()
		  For i As Integer = 0 To Me.ColumnCount - 1
		    Me.ColumnSortTypeAt(i) = WebListBox.SortTypes.Unsortable
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
