unit Ubarangmasuk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.StdCtrls, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.ComCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormBarangMasuk = class(TForm)
    TabelBarangMasuk: TADOTable;
    TabelBarangMasukid_barang_masuk: TAutoIncField;
    TabelBarangMasukkode_barang: TWideStringField;
    TabelBarangMasuknama_barang: TWideStringField;
    TabelBarangMasukjenis_barang: TWideStringField;
    TabelBarangMasukjumlah: TWideStringField;
    TabelBarangMasuktanggal_masuk: TDateField;
    DsBarangMasuk: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBarangMasuk: TFormBarangMasuk;

implementation
uses Umenuutama, Ustok;

{$R *.dfm}

procedure TFormBarangMasuk.Button1Click(Sender: TObject);
begin
TabelBarangMasuk.Insert;
FormUstok.Tabelstok.Requery();
end;

procedure TFormBarangMasuk.Button2Click(Sender: TObject);
begin
TabelBarangMasuk.post;
FormUstok.Tabelstok.Requery();
end;

procedure TFormBarangMasuk.Button3Click(Sender: TObject);
begin
TabelBarangMasuk.edit;
end;

procedure TFormBarangMasuk.Button4Click(Sender: TObject);
begin
TabelBarangMasuk.delete;
end;

procedure TFormBarangMasuk.Button5Click(Sender: TObject);
begin
TabelBarangMasuk.cancel;
end;

procedure TFormBarangMasuk.Button6Click(Sender: TObject);
begin
FormBarangMasuk.close;
end;

end.
