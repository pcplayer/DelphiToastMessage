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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnSuccessClick(Sender: TObject);
    procedure BtnInfoClick(Sender: TObject);
    procedure BtnErrorClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  ToastMessage.Toast(Self, tpError,'Error','My Text');
end;

procedure TForm2.BtnInfoClick(Sender: TObject);
begin
  ToastMessage.Toast(Self, tpInfo,'Info','My Text');
end;

procedure TForm2.BtnSuccessClick(Sender: TObject);
begin
  ToastMessage.Toast(Self, tpSuccess,'Success','My Text');
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.ShowModal;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  //ToastMessage := TToastMessage.Create(Self);

  //后创建的就会在 Z 轴方向的更上面一层，则会把 Toast 的 Panel 挡住，显示不了。解决办法：Toast 里面增加一个把自己拉到前面的 BringToFront 操作。
  FPanel := TPanel.Create(Self);
  FPanel.Name := 'MyPanel';
  FPanel.Parent := Self;
  FPanel.Align := alTop;
  FPanel.Height := 200;
  //FPanel.SendToBack;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
//  if Assigned(ToastMessage) then
//    FreeAndNil(ToastMessage);
end;

end.
