unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtPDF: TEdit;
    Label1: TLabel;
    boExtrairTexto: TButton;
    mmResultado: TMemo;
    procedure boExtrairTextoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  uPDFExtrator;

procedure TForm1.boExtrairTextoClick(Sender: TObject);
var
  conteudo: TStringList;
  strArquivo: String;
  dir,
  nome: String;
begin

  dir := ExtractFilePath(edtPDF.Text);
  nome:= ExtractFileName(edtPDF.Text);
  strArquivo := dir + '\' + copy(nome,0,nome.Length-3) + 'txt';
  strArquivo := StringReplace(strArquivo,'\\','\',[rfReplaceAll]);

  ShellExecuteAndWait('.\Ppdf2Txt.jar', edtPDF.Text);

    conteudo := TStringList.Create;
      conteudo.LoadFromFile(  strArquivo );
      mmResultado.Text := conteudo.Text;
    conteudo.Free;

  ShowMessage('Gerado!');

end;

end.
