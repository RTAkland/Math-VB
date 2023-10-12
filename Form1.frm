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
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   4920
      TabIndex        =   7
      Text            =   "Text3"
      Top             =   720
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   2640
      TabIndex        =   4
      Text            =   "Text2"
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   840
      TabIndex        =   3
      Text            =   "Text1"
      Top             =   600
      Width           =   855
   End
   Begin VB.CommandButton Command3 
      Caption         =   "退出(&Q)"
      Height          =   615
      Left            =   6120
      TabIndex        =   2
      Top             =   2280
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "检查"
      Height          =   615
      Left            =   3360
      TabIndex        =   1
      Top             =   2280
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "出题"
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "="
      Height          =   255
      Left            =   3840
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
