program ProjectToko;

uses
  Vcl.Forms,
  Umenuutama in 'Umenuutama.pas' {FormMenuUtama},
  Ubarangmasuk in 'Ubarangmasuk.pas' {FormBarangMasuk},
  Ustok in 'Ustok.pas' {FormUstok},
  Ubrangkeluar in 'Ubrangkeluar.pas' {FormBarangKeluar},
  Ucetak in 'Ucetak.pas' {Formcetak};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenuUtama, FormMenuUtama);
  Application.CreateForm(TFormBarangMasuk, FormBarangMasuk);
  Application.CreateForm(TFormUstok, FormUstok);
  Application.CreateForm(TFormBarangKeluar, FormBarangKeluar);
  Application.CreateForm(TFormcetak, Formcetak);
  Application.Run;
end.
