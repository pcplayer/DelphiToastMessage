unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uTToastMessage;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  AType: TpLabelType;
begin
  AType := TpLabelType(RadioGroup1.ItemIndex);
  TToastMessage.ToastIt(Self, AType, tpError,'Error','Hello, found a error!');
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Edit1.Left := Trunc(Self.Width /2);
end;

end.
