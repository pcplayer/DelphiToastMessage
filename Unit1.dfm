object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #27979#35797' Toast'
  ClientHeight = 323
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnResize = FormResize
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 323
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 776
    ExplicitHeight = 322
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 778
      Height = 88
      Align = alTop
      Caption = 'Panel2'
      TabOrder = 0
      ExplicitWidth = 774
      object Button1: TButton
        Left = 72
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Edit1: TEdit
      Left = 128
      Top = 232
      Width = 121
      Height = 23
      TabOrder = 1
      Text = 'Edit1'
    end
  end
end
