Declare UTToastMessage in uses

uses uTToastMessage;

procedure TForm2.BtnErrorClick(Sender: TObject);
begin
  ToastMessage.Toast(tpError,'Error','My Text');
end;

procedure TForm2.BtnInfoClick(Sender: TObject);
begin
  ToastMessage.Toast(tpInfo,'Info','My Text');
end;

procedure TForm2.BtnSuccessClick(Sender: TObject);
begin
  ToastMessage.Toast(tpSuccess,'Success','My Text');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ToastMessage := TToastMessage.Create(Self);
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  if Assigned(ToastMessage) then
    FreeAndNil(ToastMessage);
end;

end.

---------
update by pcplayer 2024-5-12

add class var and calss function to simplified the use of this class.

So, you don't need to create it and free it. In any form of your project, just call: 

**TToastMessage.ToastIt(Self, tpInfo, 'Info', 'My Info');**
