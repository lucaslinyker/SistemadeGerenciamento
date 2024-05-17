unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cliente1: TMenuItem;
    Cliente2: TMenuItem;
    Cliente3: TMenuItem;
    Produto1: TMenuItem;
    Produto2: TMenuItem;
    ipo1: TMenuItem;
    Movimento1: TMenuItem;
    PedidodeVenda1: TMenuItem;
    PedidodeVenda2: TMenuItem;
    Consulta1: TMenuItem;
    Pedidodevenda3: TMenuItem;
    PedidodeCompra1: TMenuItem;
    Relatrios1: TMenuItem;
    Relatrios2: TMenuItem;
    Produto3: TMenuItem;
    Produto4: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    Departamento1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure Departamento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UDepartamento;

procedure TForm1.Departamento1Click(Sender: TObject);
begin
  FrmDepto.show;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:= datetostr(date);
  StatusBar1.Panels[2].Text:= timetostr(time);
end;

end.
