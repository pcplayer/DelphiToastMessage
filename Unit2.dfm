object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 622
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 536
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 89
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 826
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 822
      Height = 81
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      ExplicitWidth = 818
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 830
    Height = 128
    Align = alTop
    Caption = 'hello world'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    ExplicitWidth = 826
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
  object Edit1: TEdit
    Left = 56
    Top = 568
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object RadioGroup1: TRadioGroup
    Left = 224
    Top = 496
    Width = 185
    Height = 105
    Caption = 'RadioGroup1'
    Items.Strings = (
      'Label'
      'HTMLPanel')
    TabOrder = 3
  end
end
