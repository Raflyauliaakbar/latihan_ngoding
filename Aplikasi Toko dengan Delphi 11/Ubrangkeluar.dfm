object FormBarangKeluar: TFormBarangKeluar
  Left = 0
  Top = 0
  Caption = 'FormBarangKeluar'
  ClientHeight = 559
  ClientWidth = 1039
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
    Left = -2
    Top = 99
    Width = 68
    Height = 15
    Caption = 'kode_barang'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 0
    Top = 155
    Width = 72
    Height = 15
    Caption = 'nama_barang'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 0
    Top = 211
    Width = 66
    Height = 15
    Caption = 'jenis_barang'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 0
    Top = 272
    Width = 37
    Height = 15
    Caption = 'jumlah'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 0
    Top = 336
    Width = 51
    Height = 15
    Caption = 'tgl_keluar'
  end
  object DBEdit2: TDBEdit
    Left = 0
    Top = 120
    Width = 209
    Height = 23
    DataField = 'kode_barang'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 0
    Top = 176
    Width = 209
    Height = 23
    DataField = 'nama_barang'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 0
    Top = 232
    Width = 209
    Height = 23
    DataField = 'jenis_barang'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 0
    Top = 293
    Width = 209
    Height = 23
    DataField = 'jumlah'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 0
    Top = 357
    Width = 186
    Height = 23
    Date = 45405.000000000000000000
    Time = 45405.000000000000000000
    TabOrder = 4
  end
  object Button1: TButton
    Left = 0
    Top = 432
    Width = 89
    Height = 41
    Caption = 'Tambah'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 584
    Top = 432
    Width = 89
    Height = 41
    Caption = 'Keluar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 464
    Top = 432
    Width = 89
    Height = 41
    Caption = 'Batal'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 344
    Top = 432
    Width = 89
    Height = 41
    Caption = 'Hapus'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 224
    Top = 432
    Width = 89
    Height = 41
    Caption = 'Ubah'
    TabOrder = 9
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 111
    Top = 432
    Width = 89
    Height = 41
    Caption = 'Simpan'
    TabOrder = 10
    OnClick = Button6Click
  end
  object DBGrid1: TDBGrid
    Left = 224
    Top = 64
    Width = 807
    Height = 316
    DataSource = DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_barang_keluar'
        Title.Alignment = taCenter
        Title.Caption = 'No'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_barang'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_keluar'
        Width = 80
        Visible = True
      end>
  end
  object TabelBarangKeluar: TADOTable
    Active = True
    Connection = FormMenuUtama.ADOToko
    CursorType = ctStatic
    TableName = 'barang_keluar'
    Left = 832
    Top = 416
    object TabelBarangKeluarid_barang_keluar: TAutoIncField
      FieldName = 'id_barang_keluar'
      ReadOnly = True
    end
    object TabelBarangKeluarkode_barang: TWideStringField
      FieldName = 'kode_barang'
      Size = 25
    end
    object TabelBarangKeluarnama_barang: TWideStringField
      FieldName = 'nama_barang'
      Size = 50
    end
    object TabelBarangKeluarjenis_barang: TWideStringField
      FieldName = 'jenis_barang'
      Size = 25
    end
    object TabelBarangKeluarjumlah: TWideStringField
      FieldName = 'jumlah'
      Size = 11
    end
    object TabelBarangKeluartgl_keluar: TDateField
      FieldName = 'tgl_keluar'
    end
  end
  object DataSource1: TDataSource
    DataSet = TabelBarangKeluar
    Left = 944
    Top = 416
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = TabelBarangKeluar
    ScopeMappings = <>
    Left = 832
    Top = 480
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 940
    Top = 485
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'tgl_keluar'
      Control = DateTimePicker1
      Track = True
    end
  end
end
