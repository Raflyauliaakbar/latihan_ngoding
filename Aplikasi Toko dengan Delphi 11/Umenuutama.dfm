object FormMenuUtama: TFormMenuUtama
  Left = 0
  Top = 0
  Caption = 'Toko'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 448
    Top = 192
    object BarangMasuk1: TMenuItem
      Caption = 'BarangMasuk'
      OnClick = BarangMasuk1Click
    end
    object Stok1: TMenuItem
      Caption = 'Stok'
      OnClick = Stok1Click
    end
    object Stok2: TMenuItem
      Caption = 'Barang Keluar'
      OnClick = Stok2Click
    end
  end
  object ADOToko: TADOConnection
    Connected = True
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=toko'
    LoginPrompt = False
    Left = 448
    Top = 257
  end
end
