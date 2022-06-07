unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.Buttons;

type
  Tfrmprincipal = class(TForm)
    imgusuarios: TImage;
    imgreceber: TImage;
    imgpagar: TImage;
    imgcaixa: TImage;
    imgconreceber: TImage;
    imgconpagar: TImage;
    Label4: TLabel;
    imgrelpagar: TImage;
    imgconfig: TImage;
    imgnavegador: TImage;
    imgrelreceber: TImage;
    imgrelcaixa: TImage;
    BalloonHint1: TBalloonHint;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure imgusuariosClick(Sender: TObject);
    procedure imgcaixaClick(Sender: TObject);
    procedure imgpagarClick(Sender: TObject);
    procedure imgreceberClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprincipal: Tfrmprincipal;

implementation

{$R *.dfm}

uses ufrmCadastroBasico, ufrmCadastroUsuarios, ufrmCadastroCaixa,
  ufrmCadastroPagar, UFuncoes, ModConexao, ufrmCadastroReceber;

procedure Tfrmprincipal.BitBtn1Click(Sender: TObject);
begin
   frmCadastroBasico := TfrmCadastroBasico.Create(nil);
   try
    frmCadastroBasico.ShowModal;

   finally
    FreeAndNil(frmCadastroBasico);
   end;
end;

procedure Tfrmprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Application.MessageBox('Deseja Realmente Sair',  'Informação', MB_YESNO+MB_ICONQUESTION) = mrYes then

Application.Terminate

else
Abort;

end;

procedure Tfrmprincipal.imgcaixaClick(Sender: TObject);
begin
 frmCadastroCaixa := TfrmCadastroCaixa.Create(nil);
   try
    frmCadastroCaixa.ShowModal;

   finally
    FreeAndNil(frmCadastroCaixa);
   end;
end;

procedure Tfrmprincipal.imgpagarClick(Sender: TObject);
begin
  frmCadastroPagar := TfrmCadastroPagar.Create(nil);
   try
    frmCadastroPagar.ShowModal;

   finally
    FreeAndNil(frmCadastroPagar);
   end;
end;

procedure Tfrmprincipal.imgreceberClick(Sender: TObject);
begin
frmCadastroReceber := TfrmCadastroReceber.Create(nil);
   try
    frmCadastroReceber.ShowModal;

   finally
    FreeAndNil(frmCadastroReceber);
   end;
end;

procedure Tfrmprincipal.imgusuariosClick(Sender: TObject);
begin
  frmCadastroUsuarios := TfrmCadastroUsuarios.Create(nil);
   try
    frmCadastroUsuarios.ShowModal;

   finally
    FreeAndNil(frmCadastroUsuarios);
   end;
end;

procedure Tfrmprincipal.Timer1Timer(Sender: TObject);
begin
   StatusBar1.Panels.Items[0].Text := DateTimeToStr(now)  ;
end;

end.
