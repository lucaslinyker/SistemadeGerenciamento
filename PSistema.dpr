program PSistema;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Form1},
  Umodulo in 'Umodulo.pas' {DataModule1: TDataModule},
  UDepartamento in 'UDepartamento.pas' {FrmDepto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmDepto, FrmDepto);
  Application.Run;
end.
