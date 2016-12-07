unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TCaption = string;
  TForm3 = class(TForm)
    Table: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Xwin: TLabel;
    Owin: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Turn: TLabel;
    restart: TButton;
    procedure TableSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure restartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;
 procedure CleanField(field:TStringGrid);  //������� ����
  var i,j:integer;
  begin
  for i:=0 to 2 do
    for j:=0 to 2 do
      field.Cells[i,j]:= '';
  end;


{$R *.dfm}



procedure TForm3.TableSelectCell(Sender: TObject; ACol,   //������� �� ����
  ARow: Integer; var CanSelect: Boolean);

function CheckForWin(field:TStringGrid;cturn:string):Boolean; //�������� �� ������
  var i:integer;
  begin
  for i:= 0 to 2 do
      begin
      if (field.Cells[i,0]+field.Cells[i,1]+field.Cells[i,2]) = (cturn + cturn + cturn) then
        CheckForWin := True;
      if (field.Cells[0,i]+field.Cells[1,i]+field.Cells[2,i]) = (cturn + cturn + cturn) then
        CheckForWin := True;
      end;
  if (field.Cells[0,0]+field.Cells[1,1]+field.Cells[2,2]) = (cturn + cturn + cturn) then
        CheckForWin := True;
  if (field.Cells[0,2]+field.Cells[1,1]+field.Cells[2,0]) = (cturn + cturn + cturn) then
        CheckForWin := True;
  end;


function CheckIfFull(field:TStringGrid):Boolean;   //�������� �������������
  var i,j:integer;
  begin
  for i:=0 to 2 do
    for j:=0 to 2 do
      if field.Cells[i,j] = '' then
        begin
        CheckIfFull:= False;
        abort;
        end;
  CheckIfFull:= True;
  end;

procedure IIturn(field:TStringGrid);
  var i,j:integer;
  begin
  if ((field.Cells[0,0]+field.Cells[1,1]= 'XX')  or (field.Cells[2,0]+field.Cells[2,1] = 'XX') or (field.Cells[0,2]+field.Cells[1,2] = 'XX')) and (field.Cells[2,2]='') then
  begin
  field.Cells[2,2]:='O';
  exit;
  end;
  for i:=0 to 2 do
    for j:=0 to 2 do

      if field.Cells[i,j] = '' then
      begin
      field.Cells[i,j]:='O';
      exit;
      end;
  end;

begin
if Table.Cells[ACol,ARow] <> '' then     //�����, ���� ������ ��� ���������
  exit;

Table.Cells[ACol,ARow]:= turn.caption;           //���������� ������

IIturn(Table);
if CheckForWin(Table,Turn.caption) = True then
    begin
    ShowMessage('X �������!');
    Xwin.caption:= IntToStr(StrToInt(Xwin.caption) + 1);
    CleanField(Table);
    end;
if CheckForWin(Table,'O') = True then
    begin
    ShowMessage('O �������!');
    Owin.caption:= IntToStr(StrToInt(Owin.caption) + 1);
    CleanField(Table);
    end;


if CheckIfFull(Table) = True then
    begin
    ShowMessage('�����');
    CleanField(Table);
    end;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
Owin.caption:= '0';
Xwin.caption:= '0';
CleanField(table);
Form3.close;
Form2.visible:=True;
end;

procedure TForm3.restartClick(Sender: TObject);
begin
Owin.caption:= '0';
Xwin.caption:= '0';
CleanField(table);
end;

end.
