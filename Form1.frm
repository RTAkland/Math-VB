VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4365
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8565
   LinkTopic       =   "Form1"
   ScaleHeight     =   4365
   ScaleWidth      =   8565
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton reset 
      Caption         =   "重置"
      Height          =   615
      Left            =   4440
      TabIndex        =   8
      Top             =   2280
      Width           =   1575
   End
   Begin VB.TextBox result_text 
      Height          =   495
      Left            =   4920
      TabIndex        =   7
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox num2 
      Enabled         =   0   'False
      Height          =   495
      Left            =   2640
      TabIndex        =   4
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox num1 
      Enabled         =   0   'False
      Height          =   495
      Left            =   840
      TabIndex        =   3
      Top             =   600
      Width           =   855
   End
   Begin VB.CommandButton quit 
      Caption         =   "退出(&Q)"
      Height          =   615
      Left            =   6360
      TabIndex        =   2
      Top             =   2280
      Width           =   1575
   End
   Begin VB.CommandButton checkout 
      Caption         =   "检查"
      Enabled         =   0   'False
      Height          =   615
      Left            =   2520
      TabIndex        =   1
      Top             =   2280
      Width           =   1575
   End
   Begin VB.CommandButton question 
      Caption         =   "出题"
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Label times 
      Caption         =   "0"
      Height          =   375
      Left            =   6960
      TabIndex        =   12
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label times_label 
      Caption         =   "次数:"
      Height          =   375
      Left            =   6360
      TabIndex        =   11
      Top             =   720
      Width           =   495
   End
   Begin VB.Label result 
      Height          =   375
      Left            =   6960
      TabIndex        =   10
      Top             =   360
      Width           =   975
   End
   Begin VB.Label result_label 
      Caption         =   "结果:"
      Height          =   255
      Left            =   6360
      TabIndex        =   9
      Top             =   360
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   "="
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4080
      TabIndex        =   6
      Top             =   720
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2040
      TabIndex        =   5
      Top             =   720
      Width           =   375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub checkout_Click()
    num1_result = Val(num1.Text)
    num2_result = Val(num2.Text)
    number_result = num1_result + num2_result
    input_result = Val(result_text.Text)
    If number_result = input_result Then
        result.Caption = "正确"
        num1.Text = Int((Rnd * 100) + 1)
        num2.Text = Int((Rnd * 100) + 1)
        question.Enabled = True
        result_label.Caption = ""
        checkout.Enabled = False
    Else
        result.Caption = "错误"
    End If
    times = times + 1
End Sub

Private Sub Form_Load()
    Randomize
    Dim times As Integer
End Sub

Private Sub question_Click()
    num1.Text = Int((Rnd * 100) + 1)
    num2.Text = Int((Rnd * 100) + 1)
    checkout.Enabled = True
    question.Enabled = False
End Sub

Private Sub quit_Click()
    End
End Sub

Private Sub reset_Click()
    num1.Text = ""
    num2.Text = ""
    result_text.Text = ""
    result.Caption = ""
    times = 0
    question.Enabled = True
End Sub
