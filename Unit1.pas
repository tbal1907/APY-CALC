unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure EditeSadeceSayiGir(Sender: TObject; var Key: Char; Ondalikli: Boolean = True);
begin
  //http://www.delphiturkiye.com/forum/viewtopic.php?t=22662
  if Ondalikli then
      begin
        if not (key in ['0'..'9', #8, ',']) then    //Nokta Giriþide var orjinalde ben sildim
            Key := #0
      end
  else
      begin
        if not (key in ['0'..'9', #8]) then
          Key := #0
      end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  apy,fon,gun,sonuc,kayip,tekgun:Currency;
begin
      apy:=strtocurr(Edit1.Text);
      fon:=StrToCurr(Edit2.Text);
      gun:=StrToCurr(Edit3.Text);
      apy:=apy/100;
      apy:=apy/365;
      tekgun:=apy*fon;
      apy:=apy*gun;
      sonuc:=apy*fon;
      kayip:=tekgun-strtocurr(edit4.text);
      Label4.Caption:='Toplam ' + CurrToStr(gun) + ' Gün de '  + CurrToStr(sonuc) + ' Adet Kazanýlacak';
      Label6.Caption:=currtostr(kayip*gun) + ' Adet ise hak edip alamýyacaksýn';
      Label4.Visible:=True;
      Label6.Visible:=True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
      Application.Terminate;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    EditeSadeceSayiGir(Sender, Key); // Bu ondalýklý giriþide izin verir
    //EditeSadeceSayiGir(Sender, Key,False); // Bu ondalýklý giriþe izin vermez.
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
    EditeSadeceSayiGir(Sender, Key); // Bu ondalýklý giriþide izin verir
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
    EditeSadeceSayiGir(Sender, Key); // Bu ondalýklý giriþide izin verir
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
    EditeSadeceSayiGir(Sender, Key); // Bu ondalýklý giriþide izin verir
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    Edit1.Text:='5';
    Edit2.Text:='75000';
    Edit3.Text:='30';
    Label1.Caption:='APY';
    Label2.Caption:='FON';
    label3.Caption:='GÜN';
    Label4.Caption:='0';
    Label4.Visible:=False;
    Label6.Visible:=False;
end;

end.
