program Toko_Kopi;

uses
  Forms,
  u_login in 'u_login.pas' {f_login},
  u_home in 'u_home.pas' {f_home},
  u_konsumen in 'u_konsumen.pas' {f_konsumen};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tf_login, f_login);
  Application.CreateForm(Tf_home, f_home);
  Application.CreateForm(Tf_konsumen, f_konsumen);
  Application.Run;
end.
