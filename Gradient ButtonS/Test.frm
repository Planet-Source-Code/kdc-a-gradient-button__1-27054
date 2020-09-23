VERSION 5.00
Begin VB.Form Test 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Gradient ButtonS"
   ClientHeight    =   7635
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7110
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   177
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   7635
   ScaleWidth      =   7110
   StartUpPosition =   2  'CenterScreen
   Begin KDC.KDCButton WebFaceButton19 
      Height          =   1305
      Left            =   240
      TabIndex        =   19
      Top             =   5580
      Width           =   6465
      _ExtentX        =   11404
      _ExtentY        =   2302
      Appearance      =   3
      Caption         =   "  Gradient ButtonS"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   177
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ButtonIcon      =   "Test.frx":0000
   End
   Begin KDC.KDCButton WebFaceButton1 
      Height          =   1335
      Left            =   4590
      TabIndex        =   18
      Top             =   4140
      Width           =   2115
      _ExtentX        =   3731
      _ExtentY        =   2355
      Appearance      =   8
      Caption         =   ""
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   177
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ButtonIcon      =   "Test.frx":1CDA
   End
   Begin KDC.KDCButton WebFaceButton18 
      Height          =   1320
      Left            =   240
      TabIndex        =   17
      Top             =   4140
      Width           =   4275
      _ExtentX        =   7541
      _ExtentY        =   2328
      Appearance      =   7
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   177
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ButtonIcon      =   "Test.frx":39B4
   End
   Begin KDC.KDCButton WebFaceButton9 
      Height          =   465
      Left            =   240
      TabIndex        =   16
      Top             =   3600
      Width           =   6465
      _ExtentX        =   11404
      _ExtentY        =   820
      Caption         =   "With ICON"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ButtonIcon      =   "Test.frx":568E
   End
   Begin KDC.KDCButton WebFaceButton15 
      Height          =   525
      Left            =   4620
      TabIndex        =   13
      Top             =   2400
      Width           =   2085
      _ExtentX        =   3625
      _ExtentY        =   926
      Appearance      =   14
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton12 
      Height          =   525
      Left            =   2430
      TabIndex        =   10
      Top             =   3000
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   11
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton10 
      Height          =   525
      Left            =   2430
      TabIndex        =   7
      Top             =   1800
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   9
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton8 
      Height          =   525
      Left            =   4620
      TabIndex        =   6
      Top             =   1800
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   7
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton7 
      Height          =   525
      Left            =   240
      TabIndex        =   5
      Top             =   1200
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   6
      Caption         =   "All Size ICON"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton6 
      Height          =   525
      Left            =   2430
      TabIndex        =   4
      Top             =   1200
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   5
      Caption         =   "Fonts Selection"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton5 
      Height          =   525
      Left            =   240
      TabIndex        =   3
      Top             =   1800
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   4
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton4 
      Height          =   525
      Left            =   2430
      TabIndex        =   2
      Top             =   600
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   3
      Caption         =   "Fixed Color Sets"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton3 
      Height          =   525
      Left            =   4620
      TabIndex        =   1
      Top             =   1200
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   2
      Caption         =   "And More"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton2 
      Height          =   525
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   1
      Caption         =   "Fixed Fore Color"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton11 
      Height          =   525
      Left            =   240
      TabIndex        =   9
      Top             =   3000
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton13 
      Height          =   525
      Left            =   4620
      TabIndex        =   11
      Top             =   600
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   12
      Caption         =   "Resize Ability"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton14 
      Height          =   525
      Left            =   4620
      TabIndex        =   12
      Top             =   3000
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   13
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton16 
      Height          =   525
      Left            =   240
      TabIndex        =   14
      Top             =   2400
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   15
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin KDC.KDCButton WebFaceButton17 
      Height          =   525
      Left            =   2430
      TabIndex        =   15
      Top             =   2400
      Width           =   2085
      _ExtentX        =   3678
      _ExtentY        =   926
      Appearance      =   8
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "if you are making new color plese send it to my mail above thnX"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   177
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   390
      TabIndex        =   21
      Top             =   7320
      Width           =   6225
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "kobi@webface.co.il"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   177
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1260
      TabIndex        =   20
      Top             =   6990
      Width           =   4215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "What you see is what you get"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   177
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1410
      TabIndex        =   8
      Top             =   150
      Width           =   4215
   End
End
Attribute VB_Name = "Test"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
