object FormUstok: TFormUstok
  Left = 0
  Top = 0
  Caption = 'FormStok'
  ClientHeight = 458
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 785
    Height = 353
    DataSource = DsStok
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'kode_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stok'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 16
    Top = 384
    Width = 153
    Height = 49
    Caption = 'Hapus'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 382
    Width = 137
    Height = 54
    Caption = 'Print'
    TabOrder = 2
    OnClick = Button2Click
  end
  object TabelStok: TADOTable
    Active = True
    Connection = FormMenuUtama.ADOToko
    CursorType = ctStatic
    TableName = 'stok'
    Left = 736
    Top = 400
    object TabelStokkode_barang: TWideStringField
      FieldName = 'kode_barang'
      Size = 25
    end
    object TabelStoknama_barang: TWideStringField
      FieldName = 'nama_barang'
      Size = 50
    end
    object TabelStokjenis_barang: TWideStringField
      FieldName = 'jenis_barang'
      Size = 25
    end
    object TabelStokstok: TWideStringField
      FieldName = 'stok'
      Size = 11
    end
  end
  object DsStok: TDataSource
    DataSet = TabelStok
    Left = 792
    Top = 400
  end
  object PrintDialog1: TPrintDialog
    Copies = 1
    Left = 664
    Top = 400
  end
end
