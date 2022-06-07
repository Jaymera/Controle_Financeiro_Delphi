program Sistema_Estoque;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmSistemaEstoque},
  UfrmCadastroProdutos in 'UfrmCadastroProdutos.pas' {frmCadastroProdutos},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TfrmSistemaEstoque, frmSistemaEstoque);
  Application.Run;
end.
