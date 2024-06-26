unit Umenuutama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Data.Win.ADODB;

type
  TFormMenuUtama = class(TForm)
    MainMenu1: TMainMenu;
    BarangMasuk1: TMenuItem;
    Stok1: TMenuItem;
    Stok2: TMenuItem;
    ADOToko: TADOConnection;
    procedure BarangMasuk1Click(Sender: TObject);
    procedure Stok2Click(Sender: TObject);
    procedure Stok1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuUtama: TFormMenuUtama;

implementation
uses Ubarangmasuk, Ustok, Ubrangkeluar;
{$R *.dfm}

procedure TFormMenuUtama.BarangMasuk1Click(Sender: TObject);
begin
     FormBarangMasuk.Show;
end;

procedure TFormMenuUtama.Stok1Click(Sender: TObject);
begin
FormUstok.Show;
end;

procedure TFormMenuUtama.Stok2Click(Sender: TObject);
begin
FormBarangKeluar.Show;
end;

end.
