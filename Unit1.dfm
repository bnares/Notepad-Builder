object Form1: TForm1
  Left = 329
  Top = 159
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
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 854
    Height = 391
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 72
    object Plik1: TMenuItem
      Caption = '&Plik'
      object Nowy1: TMenuItem
        Caption = '&Nowy'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Otworz1: TMenuItem
        Caption = 'Otworz'
      end
      object Zapisz1: TMenuItem
        Caption = 'Zapisz  Ctr+S'
      end
      object Zapiszjako1: TMenuItem
        Caption = 'Zapisz jako'
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
end
