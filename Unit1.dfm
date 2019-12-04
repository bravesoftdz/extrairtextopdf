object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Extrair TXT do PDF'
  ClientHeight = 457
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 652
    Height = 13
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Align = alTop
    Caption = 'LOCAL DO PDF'
    ExplicitWidth = 72
  end
  object edtPDF: TEdit
    AlignWithMargins = True
    Left = 10
    Top = 29
    Width = 652
    Height = 21
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    TabOrder = 0
  end
  object boExtrairTexto: TButton
    AlignWithMargins = True
    Left = 10
    Top = 56
    Width = 652
    Height = 33
    Margins.Left = 10
    Margins.Right = 10
    Align = alTop
    Caption = 'EXTRAIR TEXTO DO PDF'
    TabOrder = 1
    OnClick = boExtrairTextoClick
  end
  object mmResultado: TMemo
    AlignWithMargins = True
    Left = 10
    Top = 95
    Width = 652
    Height = 352
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 2
  end
end
