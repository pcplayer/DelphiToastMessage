unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uTToastMessage,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    BtnSuccess: TButton;
    BtnInfo: TButton;
    BtnError: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnSuccessClick(Sender: TObject);
    procedure BtnInfoClick(Sender: TObject);
    procedure BtnErrorClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }

    FPanel: TPanel;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.BtnErrorClick(Sender: TObject);
begin
  TToastMessage.ToastIt(Self, tpError,'Error','My Text');
end;

procedure TForm2.BtnInfoClick(Sender: TObject);
begin
  TToastMessage.ToastIt(Self, tpInfo,'Info','����һ���ܳ�����ʾ��Ϣ�����������Ƿ���Էŵ��£���������this is a test text');
end;

procedure TForm2.BtnSuccessClick(Sender: TObject);
begin
  TToastMessage.ToastIt(Self, tpSuccess,'Success','My Text');
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  //ToastMessage := TToastMessage.Create(Self);

  //�󴴽��ľͻ��� Z �᷽��ĸ�����һ�㣬���� Toast �� Panel ��ס����ʾ���ˡ�����취��Toast ��������һ�����Լ�����ǰ��� BringToFront ������
  FPanel := TPanel.Create(Self);
  FPanel.Name := 'MyPanel';
  FPanel.Parent := Self;
  FPanel.Align := alTop;
  FPanel.Height := 100;
  //FPanel.SendToBack;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
//  if Assigned(ToastMessage) then
//    FreeAndNil(ToastMessage);
end;

procedure TForm2.FormResize(Sender: TObject);
begin
  Edit1.Left := Trunc(Self.Width /2);
end;

end.
