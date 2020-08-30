unit u_home;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls;

type
  Tf_home = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Bevel10: TBevel;
    Label22: TLabel;
    mm_h: TMainMenu;
    Kon1: TMenuItem;
    h_ho: TMenuItem;
    h_k: TMenuItem;
    h_ko: TMenuItem;
    Laporan1: TMenuItem;
    l_k: TMenuItem;
    l_ko: TMenuItem;
    l_t: TMenuItem;
    k: TMenuItem;
    h_t: TMenuItem;
    procedure kClick(Sender: TObject);
    procedure h_kClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_home: Tf_home;

implementation

uses u_konsumen;

{$R *.dfm}

procedure Tf_home.kClick(Sender: TObject);
begin
  application.terminate;
end;

procedure Tf_home.h_kClick(Sender: TObject);
begin
  f_konsumen.show;
end;

end.
