unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TfrmSistemaEstoque = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Sair1: TMenuItem;
    Salvar1: TMenuItem;
    Editar1: TMenuItem;
    Produtos1: TMenuItem;
    Usurios1: TMenuItem;
    N1: TMenuItem;
    Sair2: TMenuItem;
    Panel1: TPanel;
    Button1: TButton;
    btnsalvar: TButton;
    btneditar: TButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);

  private
    { Private declarations }
  public
      a : string;
  end;

var
  frmSistemaEstoque: TfrmSistemaEstoque;

implementation

{$R *.dfm}

uses UfrmCadastroProdutos;



procedure TfrmSistemaEstoque.btneditarClick(Sender: TObject);
 var vendas, media : integer;
 var mensagemboa, mensagemruim : string;
begin
vendas := 8;
media := 10;
mensagemboa := 'As vendas foram Boas';
mensagemruim := 'As vendas foram Ruins';

  if vendas > media then
  begin
    showmessage(mensagemboa);
  end
  else
  begin
    showmessage(mensagemruim);
  end;

end;

procedure TfrmSistemaEstoque.btnsalvarClick(Sender: TObject);
var a : string;
var b : integer;
begin
a := 'Fora dos Valores';
b := 200;

case b of
0 :  a := 'Vale 10';
1 :  a := 'Vale 50';
100 : a := 'Vale 100';
200 : a := 'Valor igual a 200';
end;
showmessage(a);
end;

procedure TfrmSistemaEstoque.Button1Click(Sender: TObject);
begin

//Área de Impressão

a := 'Mensagem ao Imprimir';
showmessage(a);
end;



procedure TfrmSistemaEstoque.FormCreate(Sender: TObject);

var dinheiro, valorini, valorfinal : integer;


begin


end;

procedure TfrmSistemaEstoque.Produtos1Click(Sender: TObject);
begin
frmCadastroProdutos := TfrmCadastroProdutos.Create(nil);
try
  frmCadastroProdutos.ShowModal;
finally
 FreeAndNil(frmCadastroProdutos);
end;
end;

procedure TfrmSistemaEstoque.Sair1Click(Sender: TObject);
begin
 close;
end;

end.
