unit u_konsumen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, jpeg, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids,
  ActnList, ImgList, Menus, Buttons;

type
  Tf_konsumen = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    e_id_k: TEdit;
    e_n_k: TEdit;
    e_umur_k: TEdit;
    e_nohp_k: TEdit;
    e_ak_k: TEdit;
    Bevel2: TBevel;
    Image1: TImage;
    dtp_k: TDateTimePicker;
    Bevel3: TBevel;
    btn_simpan_k: TBitBtn;
    btn_hapus_k: TBitBtn;
    btn_baru: TBitBtn;
    btn_keluar: TBitBtn;
    mm_k: TMainMenu;
    Halaman1: TMenuItem;
    Home1: TMenuItem;
    Konsumen1: TMenuItem;
    Kopi1: TMenuItem;
    ransaksi1: TMenuItem;
    Laporan1: TMenuItem;
    Konsumen2: TMenuItem;
    Kopi2: TMenuItem;
    ransaksi2: TMenuItem;
    Keluar1: TMenuItem;
    il_k: TImageList;
    al_k: TActionList;
    a_simpan: TAction;
    a_hapus: TAction;
    a_baru: TAction;
    a_keluar: TAction;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    adotable_k: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure btn_keluarClick(Sender: TObject);
    procedure btn_simpan_kClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_konsumen: Tf_konsumen;

implementation

{$R *.dfm}

procedure Tf_konsumen.btn_keluarClick(Sender: TObject);
begin
  application.terminate;
end;

procedure Tf_konsumen.btn_simpan_kClick(Sender: TObject);
begin
  adotable_k.open;
  adotable_k.append;
  adotable_k.fieldbyname('ID_Konsumen').asstring := e_id_k.text;
  adotable_k.fieldbyname('Nama_Konsumen').asstring := e_n_k.text;
  adotable_k.fieldbyname('Umur').asstring := e_umur_k.text;
  adotable_k.fieldbyname('Nomor_Hp').asstring := e_nohp_k.text;
  adotable_k.fieldbyname('Asal_Kota').asstring := e_ak_k.text;
  adotable_k.post;
  e_id_k.setfocus;
end;

end.
