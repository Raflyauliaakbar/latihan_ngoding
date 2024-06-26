object Formcetak: TFormcetak
  Left = 0
  Top = 0
  Caption = 'Formcetak'
  ClientHeight = 769
  ClientWidth = 1120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 1081
    Height = 401
    Caption = 'Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -30
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 88
      Top = 72
      Width = 152
      Height = 31
      Caption = 'Kode Barang   :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 88
      Top = 133
      Width = 156
      Height = 31
      Caption = 'Nama Barang  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 88
      Top = 192
      Width = 150
      Height = 31
      Caption = 'Jenis Barang   :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 88
      Top = 256
      Width = 78
      Height = 31
      Caption = 'Stok     :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 415
    Width = 497
    Height = 273
    Caption = 'Riwayat Barang Masuk'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 19
      Top = 24
      Width = 446
      Height = 233
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -17
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object GroupBox3: TGroupBox
    Left = 608
    Top = 415
    Width = 489
    Height = 273
    Caption = 'Riwayat Barang Keluar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 16
      Top = 32
      Width = 457
      Height = 225
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -17
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object BarangMasuk: TDataSource
    Left = 56
    Top = 712
  end
  object TADOQuery
    Active = True
    Connection = FormMenuUtama.ADOToko
    CursorType = ctStatic
    DataSource = BarangMasuk
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 120
        Precision = 255
        Size = 255
        Value = ''
      end>
    Prepared = True
    SQL.Strings = (
      
        'select id_barang_masuk, tanggal_masuk, jumlah from barang_masuk ' +
        'where id_barang_masuk=?')
    Left = 144
    Top = 712
  end
  object BarangKeluar: TDataSource
    Left = 664
    Top = 704
  end
  object ADOQuery1: TADOQuery
    Connection = FormMenuUtama.ADOToko
    DataSource = BarangKeluar
    Parameters = <>
    Left = 752
    Top = 704
  end
end
