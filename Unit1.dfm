object Form1: TForm1
  Left = 687
  Top = 230
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object tresc: TMemo
    Left = 0
    Top = 0
    Width = 854
    Height = 391
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyDown = trescKeyDown
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
        OnClick = Zakoncz1Click
      end
    end
    object Edycja1: TMenuItem
      Caption = '&Edycja'
      object WytnijCtrX1: TMenuItem
        Caption = 'Wytnij Ctr+X'
        OnClick = WytnijCtrX1Click
      end
      object KopiujCtrC1: TMenuItem
        Caption = 'Kopiuj Ctr+C'
        OnClick = KopiujCtrC1Click
      end
      object WklejCtrV1: TMenuItem
        Caption = 'Wklej Ctr+V'
        OnClick = WklejCtrV1Click
      end
    end
    object Format1: TMenuItem
      Caption = '&Format'
      object Zawijaniewierszy1: TMenuItem
        Caption = 'Zawijanie wierszy'
        Checked = True
        OnClick = Zawijaniewierszy1Click
      end
      object Czcionka1: TMenuItem
        Caption = 'Czcionka...'
      end
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
