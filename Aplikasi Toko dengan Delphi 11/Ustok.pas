unit Ustok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormUstok = class(TForm)
    TabelStok: TADOTable;
    TabelStokkode_barang: TWideStringField;
    TabelStoknama_barang: TWideStringField;
    TabelStokjenis_barang: TWideStringField;
    TabelStokstok: TWideStringField;
    DsStok: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    PrintDialog1: TPrintDialog;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUstok: TFormUstok;

implementation
uses Umenuutama, Ubarangmasuk;

{$R *.dfm}

procedure TFormUstok.Button1Click(Sender: TObject);
begin

TabelStok.delete;

end;

procedure TFormUstok.Button2Click(Sender: TObject);
begin
Button2.visible:=false;
Button1.visible:=false;
if PrintDialog1.Execute then
Self.Print;
Button1.visible:=true;
Button2.Visible:=true;
end;

end.
