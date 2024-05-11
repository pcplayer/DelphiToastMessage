object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 326
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 706
    Height = 89
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 698
      Height = 81
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      ExplicitLeft = 192
      ExplicitTop = 16
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 706
    Height = 128
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    object BtnError: TButton
      Left = 386
      Top = 103
      Width = 75
      Height = 25
      Caption = 'Error'
      TabOrder = 0
      OnClick = BtnErrorClick
    end
    object BtnInfo: TButton
      Left = 305
      Top = 103
      Width = 75
      Height = 25
      Caption = 'Info'
      TabOrder = 1
      OnClick = BtnInfoClick
    end
    object BtnSuccess: TButton
      Left = 224
      Top = 103
      Width = 75
      Height = 25
      Caption = 'Success'
      TabOrder = 2
      OnClick = BtnSuccessClick
    end
    object Button1: TButton
      Left = 600
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Form1'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
end
