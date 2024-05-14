unit Unit2;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,System.NetEncoding,Clipbrd;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    mmo1: TMemo;
    mmo2: TMemo;
    mmo3: TMemo;
    mmo4: TMemo;
    mmo5: TMemo;
    mmo6: TMemo;
    Button1: TButton;
    Edit3: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 str1, str2: string;
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin

 // encryption
     str1:=  tnetencoding.base64.encode (edt2.text);
     mmo6.text := str1;
     mmo1.Text:=(mmo1.text+edt1.Text);
     mmo2.Text:=(mmo1.Text+mmo2.Text+edt1.text);
     mmo3.Text:=(mmo2.text+mmo3.Text);
     edit3.Text:=edit3.text+str1;
     Mmo3.Lines.Text := Mmo3.text + edit3.text;
     mmo5.Text:=(mmo3.Text+mmo4.Text);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin

str2:=mmo5.text;
Clipboard.asText:=str2;
mmo1.clear;
mmo1.SetSelText('<head> <meta charset="UTF-8"> <style>   .centered {     text-align: center;     font-size: 15px;  }</style></head><body><div id="timerDisplay" class="centered">');
mmo2.Clear;
mmo2.SetSelText('</div><script>document.addEventListener(''DOMContentLoaded'', (event) => {  let timer = ');
mmo3.Clear;
mmo3.SetSelText(';  let timerDisplay = document.getElementById(''timerDisplay'');');
edit3.Text:=('let encodedCompleteMessage =''');
mmo4.Clear;
mmo4.SetSelText(''';  function updateTimerDisplay(seconds) {   timerDisplay.textContent =seconds.toString();    if (seconds <= 0) {      let decodedMessage = atob(encodedCompleteMessage);      let completeMessage =document.createElement(''div'');      completeMessage.textContent =decodedMessage;      completeMessage.className =''centered'';      document.body.appendChild(completeMessage);      clearInterval(timerInterval);    }  }  updateTimerDisplay(timer);  let timerInterval = setInterval(() => {    if (timer > 0) {      timer--;      updateTimerDisplay(timer);    }  }, 1000);});</script></body>');
mmo5.Clear;
mmo6.Clear;
end;

end.
