object Form1: TForm1
  Left = 929
  Top = 153
  Width = 870
  Height = 450
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object tresc: TMemo
    Left = 0
    Top = 0
    Width = 854
    Height = 391
    Align = alClient
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 72
    object Plik1: TMenuItem
      Caption = '&Plik'
      object Nowy1: TMenuItem
        Caption = '&Nowy'
        OnClick = Nowy1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Otworz1: TMenuItem
        Caption = 'Otworz'
        OnClick = Otworz1Click
      end
      object Zapisz1: TMenuItem
        Caption = 'Zapisz  Ctr+S'
        OnClick = Zapisz1Click
      end
      object Zapiszjako1: TMenuItem
        Caption = 'Zapisz jako'
        OnClick = Zapiszjako1Click
      end
      object Zakoncz1: TMenuItem
        Caption = 'Zakoncz'
      end
    end
    object Edycja1: TMenuItem
      Caption = '&Edycja'
    end
    object Format1: TMenuItem
      Caption = '&Format'
    end
    object Pomoc1: TMenuItem
      Caption = '&Pomoc'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 120
    Top = 72
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Plik Tekstowy (TXT)|*.txt|Dowolny Plik|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 184
    Top = 80
  end
end
