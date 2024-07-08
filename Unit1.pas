unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : String;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  bersih;
  posisiawal;
end;

procedure TForm1.posisiawal;
begin
bersih;
btn1.Enabled:=True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= True;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:=False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
posisiawal;
bersih;
end;

procedure TForm1.edt3Change(Sender: TObject);
begin
if Assigned(DataModule2) and Assigned(DataModule2.Zsatuan) then
  begin
    DataModule2.Zsatuan.SQL.Clear;
    DataModule2.Zsatuan.SQL.Add('SELECT * FROM satuan WHERE nama LIKE "%' + edt3.Text + '%"');
    DataModule2.Zsatuan.Open; // Tidak menggunakan ExecSQL
  end
  else
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
begin
if edt1.Text = '' then
begin
ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end else
if edt2.Text = '' then
begin
ShowMessage('Deskripsi Satuan Tidak Boleh Kosong!');
end else
if DataModule2.Zsatuan.Locate('nama',edt1.Text,[])and
DataModule2.Zsatuan.locate('deskripsi',edt2.Text,[])
then
begin
ShowMessage('Nama Satuan '+edt1.Text+' dan Deskripsi '+edt2.Text+' Sudah Ada Didalam Sistem');
end else
Begin // simpan
with DataModule2.Zsatuan do
begin
SQL.Clear;
SQL.Add('insert into satuan values(null,"'+edt1.Text+'","'+edt2.Text+'")');
ExecSQL ;
SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil Disimpan!');
end;
posisiawal;
end;

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
begin
 if edt1.Text = '' then
begin
ShowMessage('Nama Satuan Tidak Boleh Kosong!');
end else
if edt2.Text = '' then
begin
ShowMessage('Deskripsi Satuan Tidak Boleh Kosong!');
end else
if DataModule2.Zsatuan.Locate('nama',edt1.Text,[])and
DataModule2.Zsatuan.locate('deskripsi',edt2.Text,[])
then
begin
ShowMessage('Nama Satuan '+edt1.Text+' dan Deskripsi '+edt2.Text+' Tidak ada perubahan');
end else
begin //kode
with DataModule2.Zsatuan do
begin
SQL.Clear;
SQL.Add('update satuan set nama="'+edt1.Text+'",deskripsi="'+edt2.Text+'" where id= "'+a+'"');
ExecSQL ;
SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil Diupdate!');
end;
posisiawal;
end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin//kode delete
if MessageDlg('Apakah Anda Yakin Menghapus Data ini',mtWarning,[mbYes,mbNo],0)=mryes then
begin
with DataModule2.Zsatuan do
begin
SQL.Clear;
SQL.Add('delete from satuan where id= "'+a+'"');
ExecSQL ;

SQL.Clear;
SQL.Add('select * from satuan');
Open;
end;
ShowMessage('Data Berhasil Dihapus!!!');
end else
begin
ShowMessage('Data Batal Dihapus!!');
end;
posisiawal;

end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
begin
edt1.Text:= DataModule2.Zsatuan.Fields[1].AsString;
edt2.Text:= DataModule2.Zsatuan.Fields[2].AsString;
a:= DataModule2.Zsatuan.Fields[0].AsString;

edt1.Enabled:= True;
edt2.Enabled:=True;
btn4.Enabled:= True;
btn3.Enabled:=True;
btn5.Enabled:= True;
btn1.Enabled:= False;
btn2.Enabled:= False;
end;
end;

end.
