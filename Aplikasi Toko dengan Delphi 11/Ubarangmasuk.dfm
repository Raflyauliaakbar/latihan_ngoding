object FormBarangMasuk: TFormBarangMasuk
  Left = 0
  Top = 0
  Caption = 'FormBarangMasuk'
  ClientHeight = 631
  ClientWidth = 1069
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
  object Label2: TLabel
    Left = 0
    Top = 80
    Width = 68
    Height = 15
    Caption = 'kode_barang'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 0
    Top = 144
    Width = 72
    Height = 15
    Caption = 'nama_barang'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 0
    Top = 208
    Width = 66
    Height = 15
    Caption = 'jenis_barang'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 0
    Top = 267
    Width = 37
    Height = 15
    Caption = 'jumlah'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 0
    Top = 328
    Width = 80
    Height = 15
    Caption = 'tanggal_masuk'
  end
  object DBEdit2: TDBEdit
    Left = 0
    Top = 101
    Width = 257
    Height = 23
    DataField = 'kode_barang'
    DataSource = DsBarangMasuk
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 0
    Top = 165
    Width = 257
    Height = 23
    DataField = 'nama_barang'
    DataSource = DsBarangMasuk
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 0
    Top = 229
    Width = 257
    Height = 23
    DataField = 'jenis_barang'
    DataSource = DsBarangMasuk
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 0
    Top = 288
    Width = 169
    Height = 23
    DataField = 'jumlah'
    DataSource = DsBarangMasuk
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 0
    Top = 349
    Width = 186
    Height = 23
    Date = 45406.000000000000000000
    Time = 45406.000000000000000000
    TabOrder = 4
  end
  object Button1: TButton
    Left = 0
    Top = 413
    Width = 92
    Height = 36
    Caption = 'Tambah'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 111
    Top = 413
    Width = 91
    Height = 36
    Caption = 'Simpan'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 224
    Top = 413
    Width = 81
    Height = 36
    Caption = 'Ubah'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 328
    Top = 413
    Width = 81
    Height = 36
    Caption = 'Hapus'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 432
    Top = 413
    Width = 89
    Height = 36
    Caption = 'Batal'
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 545
    Top = 413
    Width = 80
    Height = 36
    Caption = 'Keluar'
    TabOrder = 10
    OnClick = Button6Click
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 32
    Width = 713
    Height = 340
    DataSource = DsBarangMasuk
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_barang_masuk'
        Title.Caption = 'No'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_barang'
        Title.Caption = 'Kode Barang'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_barang'
        Title.Caption = 'Nama'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_barang'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_masuk'
        Visible = True
      end>
  end
  object TabelBarangMasuk: TADOTable
    CursorType = ctStatic
    TableName = 'barang_masuk'
    Left = 816
    Top = 464
    object TabelBarangMasukid_barang_masuk: TAutoIncField
      FieldName = 'id_barang_masuk'
    end
    object TabelBarangMasukkode_barang: TWideStringField
      FieldName = 'kode_barang'
      Size = 25
    end
    object TabelBarangMasuknama_barang: TWideStringField
      FieldName = 'nama_barang'
      Size = 50
    end
    object TabelBarangMasukjenis_barang: TWideStringField
      FieldName = 'jenis_barang'
      Size = 25
    end
    object TabelBarangMasukjumlah: TWideStringField
      FieldName = 'jumlah'
      Size = 11
    end
    object TabelBarangMasuktanggal_masuk: TDateField
      FieldName = 'tanggal_masuk'
    end
  end
  object DsBarangMasuk: TDataSource
    DataSet = TabelBarangMasuk
    Left = 920
    Top = 464
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = TabelBarangMasuk
    ScopeMappings = <>
    Left = 920
    Top = 528
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 812
    Top = 525
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tanggal_masuk'
      Control = DateTimePicker1
      Track = True
    end
  end
end
