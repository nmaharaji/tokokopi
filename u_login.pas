unit u_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  Tf_login = class(TForm)
    logo: TImage;
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    e_uname: TEdit;
    e_pass: TEdit;
    btn_login: TBitBtn;
    btn_exit: TBitBtn;
    il_login: TImageList;
    al_login: TActionList;
    a_login: TAction;
    a_exit: TAction;
    procedure btn_loginClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_login: Tf_login;

implementation

uses u_home;

{$R *.dfm}

procedure Tf_login.btn_loginClick(Sender: TObject);
begin
  if (e_uname.text = 'admin') and (e_pass.text = 'admin') then
    begin
      f_home.show;
    end
  else
    showmessage('Username atau Password Anda salah');
end;

procedure Tf_login.btn_exitClick(Sender: TObject);
begin
  close;
end;

end.
