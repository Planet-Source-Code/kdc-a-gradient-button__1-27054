VERSION 5.00
Begin VB.UserControl KDCButton 
   AutoRedraw      =   -1  'True
   ClientHeight    =   630
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   2490
   MaskColor       =   &H00000000&
   ScaleHeight     =   630
   ScaleWidth      =   2490
   ToolboxBitmap   =   "KDCButton.ctx":0000
   Begin VB.PictureBox Pic1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   390
      Left            =   90
      ScaleHeight     =   390
      ScaleWidth      =   2220
      TabIndex        =   0
      Top             =   90
      Width           =   2220
      Begin VB.Image Image1 
         Appearance      =   0  'Flat
         Height          =   315
         Left            =   30
         Top             =   30
         Width           =   15
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H00CECFCE&
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   177
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   1065
         TabIndex        =   1
         Top             =   90
         Width           =   75
      End
   End
End
Attribute VB_Name = "KDCButton"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Dim xx, R1, R2, G1, G2, B1, B2, Rs, Gs, Bs, Rx, Gx, Bx
Dim LCol1, Border1, Border2

Public Enum AppearanceConst
    Flat = 0
    Autumn = 1
    Spring = 2
    Summer = 3
    Winter = 4
    Purple = 5
    Pink = 6
    Blue = 7
    Yellow = 8
    Brown = 9
    GrayOrang = 10
    NeonBlue = 11
    NeonGreen = 12
    HardGray = 13
    SoftGray = 14
    Test = 15
End Enum

Private MyCaption As String
Private MyFont As Font
Private MyForeColor As OLE_COLOR
Private DefForeColor As OLE_COLOR
Private NewButtonIcon As Picture
Private MyAppearance As AppearanceConst
Private Const MyDefAppearance = Flat
Private Const DefCaption = "KDC"

Public Event Click()
Public Event KeyDown(KeyCode As Integer, Shift As Integer)
Public Event KeyPress(KeyAscii As Integer)
Public Event KeyUp(KeyCode As Integer, Shift As Integer)
Public Event MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Public Event MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Public Event Resize()
Private Sub Label1_Change()
    Call UserControl_Resize
End Sub
Private Sub Label1_Click()
    Call RaiseEventS("Click")
End Sub
Private Sub image1_Click()
    Call RaiseEventS("Click")
End Sub
Private Sub Pic1_Click()
    Call RaiseEventS("Click")
End Sub
Private Sub Pic1_KeyDown(KeyCode As Integer, Shift As Integer)
    Call RaiseEventS("KeyDown", KeyCode, Shift)
End Sub
Private Sub Pic1_KeyPress(KeyAscii As Integer)
    Call RaiseEventS("KeyPress", KeyAscii)
End Sub
Private Sub Pic1_KeyUp(KeyCode As Integer, Shift As Integer)
    Call RaiseEventS("KeyUp", KeyCode, Shift)
End Sub
Private Sub UserControl_AccessKeyPress(KeyAscii As Integer)
    Call RaiseEventS("Click")
End Sub
Private Sub UserControl_GotFocus()
    bHasFocus = True
End Sub
Private Sub UserControl_LostFocus()
    bHasFocus = False
End Sub
Private Sub Label1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call AllMouseDown
End Sub
Private Sub Label1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call AllMouseUP
End Sub
Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call AllMouseDown
End Sub
Private Sub Image1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call AllMouseUP
End Sub
Private Sub pic1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call AllMouseDown
End Sub
Private Sub Pic1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call AllMouseUP
End Sub
Private Sub AllMouseDown()
    Pic1.Line (0, 0)-(Pic1.Width - 1, Pic1.Height - 1), Border2, B
    Pic1.Line (0, Pic1.Height - 10)-(Pic1.Width, Pic1.Height - 10), Border1
    Pic1.Line (Pic1.Width - 10, 0)-(Pic1.Width - 10, Pic1.Height - 10), Border1
    Image1.Move (Image1.Left + 11), Image1.Top + 11
    Label1.Move (Label1.Left + 20), Label1.Top + 11
End Sub
Private Sub AllMouseUP()
    Image1.Move (Image1.Left - 11), Image1.Top - 11
    Label1.Move (Label1.Left - 20), Label1.Top - 11
    Call UserControl_Resize
End Sub
Private Sub UserControl_Initialize()
    Pic1.Left = 0
    Pic1.Top = 0
    UserControl.Height = Pic1.Height
    UserControl.Width = Pic1.Width
    Call UserControl_Resize
End Sub
Private Sub UserControl_Resize()
    If UserControl.Width <> 0 Then
        Pic1.Width = UserControl.Width
        Pic1.Height = UserControl.Height
        If Image1.Width > 15 Then
        Label1.Left = (Pic1.Width / 2) - ((Label1.Width + Image1.Width) / 2) + Image1.Width
        Image1.Left = (Pic1.Width / 2) - ((Label1.Width + Image1.Width) / 2) - 40
        Else
        Label1.Left = (Pic1.Width / 2) - ((Label1.Width + Image1.Width) / 2)
        End If
        Label1.Top = (Pic1.Height / 2) - (Label1.Height / 2)
        Image1.Top = (Pic1.Height / 2) - (Image1.Height / 2)
        Call SetGradient
    End If
End Sub
Private Function RaiseEventS(ByVal Name As String, ParamArray Params() As Variant)
  Select Case Name
        Case "Click"
            RaiseEvent Click
        Case "KeyDown"
            RaiseEvent KeyDown(CInt(Params(0)), CInt(Params(1)))
        Case "KeyPress"
            RaiseEvent KeyPress(CInt(Params(0)))
        Case "KeyUp"
            RaiseEvent KeyUp(CInt(Params(0)), CInt(Params(1)))
        Case "MouseDown"
            RaiseEvent MouseDown(CInt(Params(0)), CInt(Params(1)), CSng(Params(2)), CSng(Params(3)))
        Case "MouseUp"
            RaiseEvent MouseUp(CInt(Params(0)), CInt(Params(1)), CSng(Params(2)), CSng(Params(3)))
        Case "Resize"
            RaiseEvent Resize
    End Select
End Function
Public Property Get Caption() As String
    Caption = MyCaption
End Property
Public Property Let Caption(ByVal vData As String)
    MyCaption = vData
    Label1.Caption = vData
PropertyChanged "Caption"
End Property
Public Property Get ForeColor() As OLE_COLOR
    ForeColor = MyForeColor
End Property
Public Property Let ForeColor(ByVal vData As OLE_COLOR)
    MyForeColor = vData
    Label1.ForeColor = MyForeColor
PropertyChanged "ForeColor"
End Property
Public Property Get Font() As Font
    Set Font = MyFont
End Property
Public Property Set Font(ByVal vData As Font)
    Set MyFont = vData
    Set UserControl.Font = vData
    Set Label1.Font = MyFont
    Call UserControl_Resize
PropertyChanged "Font"
End Property
Private Sub UserControl_WriteProperties(PropBag As PropertyBag)
    Call PropBag.WriteProperty("Appearance", MyAppearance, MyDefAppearance)
    Call PropBag.WriteProperty("Caption", MyCaption, DefCaption)
    Call PropBag.WriteProperty("ForeColor", MyForeColor, DefForeColor)
    Call PropBag.WriteProperty("Font", MyFont, Ambient.Font)
    Call PropBag.WriteProperty("ButtonIcon", Me.ButtonIcon, Nothing)
End Sub
Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
    Appearance = PropBag.ReadProperty("Appearance", MyDefAppearance)
    Caption = PropBag.ReadProperty("Caption", DefCaption)
    ForeColor = PropBag.ReadProperty("ForeColor", DefForeColor)
    Set Font = PropBag.ReadProperty("Font", Ambient.Font)
    Set ButtonIcon = PropBag.ReadProperty("ButtonIcon", Nothing)
End Sub
Private Sub UserControl_InitProperties()
    Appearance = Yellow
    Caption = DefCaption
    ForeColor = DefForeColor
    Set Font = Ambient.Font
End Sub
Public Property Get Appearance() As AppearanceConst
    Appearance = MyAppearance
End Property
Public Property Let Appearance(ByVal vData As AppearanceConst)
    MyAppearance = vData
    Call SetGradient
    ForeColor = DefForeColor
PropertyChanged "ForeColor"
PropertyChanged "Appearance"
End Property
Public Property Get ButtonIcon() As Picture
    Set ButtonIcon = Image1.Picture
End Property
Public Property Set ButtonIcon(ByVal NewButtonIcon As Picture)
    Set Image1.Picture = NewButtonIcon
    Set Image1.Picture = NewButtonIcon
    UserControl_Resize
PropertyChanged "ButtonIcon"
End Property
Private Sub SetGradient()
    Select Case MyAppearance
        Case Is = Flat
            R1 = &H80: R2 = &H80
            G1 = &H80: G2 = &H80
            B1 = &H80: B2 = &H80
            DefForeColor = &HFFFFFF
            Border1 = &HE0E0E0
            Border2 = &H606060
        Case Is = Autumn
            R1 = &HA0: R2 = &H60
            G1 = &HA0: G2 = &H60
            B1 = &H80: B2 = &H40
            DefForeColor = &HC0F0F0
            Border1 = &HB0D0D0
            Border2 = &H608080
        Case Is = Spring
            R1 = &H80: R2 = &H20
            G1 = &HA0: G2 = &H40
            B1 = &H60: B2 = &H0
            DefForeColor = &H80F0C0
            Border1 = &H90D0B0
            Border2 = &H406060
        Case Is = Summer
            R1 = &HD0: R2 = &H40
            G1 = &H60: G2 = &H0
            B1 = &H40: B2 = &H0
            DefForeColor = &H40A0F0
            Border1 = &H7090D0
            Border2 = &H102040
        Case Is = Winter
            R1 = &HF0: R2 = &H60
            G1 = &HF0: G2 = &H60
            B1 = &HF0: B2 = &H80
            DefForeColor = &H804040
            Border1 = &HF08080
            Border2 = &H802040
        Case Is = Purple
            R1 = &HA0: R2 = &H40
            G1 = &H90: G2 = &H0
            B1 = &HA0: B2 = &H40
            DefForeColor = &HC0C0C0
            Border1 = &H908090
            Border2 = &H402040
        Case Is = Pink
            R1 = &HD0: R2 = &H80
            G1 = &HA0: G2 = &H70
            B1 = &HA0: B2 = &H70
            DefForeColor = &H202080
            Border1 = &HC0C0F0
            Border2 = &H8080A0
        Case Is = Blue
            R2 = &H20: R1 = &H70
            G2 = &H20: G1 = &H80
            B2 = &H40: B1 = &HA0
            DefForeColor = &HFFFFFF
            Border1 = &HD05050
            Border2 = &H802020
        Case Is = Yellow
            R1 = &HF0: R2 = &HA0
            G1 = &HF0: G2 = &HA0
            B1 = &H80: B2 = &H20
            DefForeColor = &H206000
            Border1 = &H80FFFF
            Border2 = &H208080
        Case Is = Brown
            R1 = &HF0: R2 = &H80
            G1 = &HA0: G2 = &H30
            B1 = &H60: B2 = &H20
            DefForeColor = &H20F0A0
            Border1 = &H2080F0
            Border2 = &H104080
        Case Is = GrayOrang
            R1 = &HFF: R2 = &HCC
            G1 = &HFF: G2 = &HCC
            B1 = &HFF: B2 = &HCC
            DefForeColor = &H80FF&
            Border1 = &H2080F0
            Border2 = &H104080
        Case Is = NeonBlue
            R1 = &H22: R2 = &H44
            G1 = &HCC: G2 = &H44
            B1 = &HFF: B2 = &H44
            DefForeColor = &HFFFFFF
            Border1 = &HF3CD69
            Border2 = &H6B5007
        Case Is = NeonGreen
            R1 = &H22: R2 = &H44
            G1 = &HCC: G2 = &H44
            B1 = &HCC: B2 = &H44
            DefForeColor = &HFFFFFF
            Border1 = &HBFBB0D
            Border2 = &H525805
        Case Is = HardGray
            R1 = &H77: R2 = &H11
            G1 = &H77: G2 = &H11
            B1 = &H77: B2 = &H11
            DefForeColor = &HFFFFFF
            Border1 = &HC0C0C0
            Border2 = &H404040
        Case Is = SoftGray
            R1 = &HEE: R2 = &HAA
            G1 = &HEE: G2 = &HAA
            B1 = &HEE: B2 = &HAA
            DefForeColor = &H0
            Border1 = &HC0C0C0
            Border2 = &H404040
        Case Is = Test
            R1 = &HDD: R2 = &H59
            G1 = &HDD: G2 = &H19
            B1 = &HDD: B2 = &H59
            DefForeColor = &H0
            Border1 = &HC0C0C0
            Border2 = &H404040
    End Select

Rx = R1: Gx = G1: Bx = B1
Rs = (R1 - R2) / (Pic1.ScaleHeight - 1)
Gs = (G1 - G2) / (Pic1.ScaleHeight - 1)
Bs = (B1 - B2) / (Pic1.ScaleHeight - 1)
    For xx = 0 To Pic1.Height - 1
      Pic1.Line (0, xx)-(Pic1.Width, xx), RGB(Rx, Gx, Bx)
        Rx = Rx - Rs
        Gx = Gx - Gs
        Bx = Bx - Bs
    Next xx

Pic1.Line (0, 0)-(Pic1.Width - 1, Pic1.Height - 1), Border1, B
Pic1.Line (0, Pic1.Height - 10)-(Pic1.Width, Pic1.Height - 10), Border2
Pic1.Line (Pic1.Width - 10, 0)-(Pic1.Width - 10, Pic1.Height - 10), Border2

Bord1 = Pic1.Point(0, 0)
Bord2 = Pic1.Point(Pic1.Width - 10, Pic1.Height - 10)
End Sub

