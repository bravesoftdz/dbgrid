unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, DBGridZebrado, DBGridOrdenacaoColunas,
  DBGridPickList, DBGridLookup;

type
  TfrmPrincipal = class(TForm)
    btnGridEfeitoZebrado: TBitBtn;
    btnGridOrdenacaoColunas: TBitBtn;
    btnGridComPickList: TBitBtn;
    btnGridComLookup: TBitBtn;
    procedure btnGridEfeitoZebradoClick(Sender: TObject);
    procedure btnGridOrdenacaoColunasClick(Sender: TObject);
    procedure btnGridComPickListClick(Sender: TObject);
    procedure btnGridComLookupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnGridComLookupClick(Sender: TObject);
var
  frmDBGridLookup: TfrmDBGridLookup;
begin
  frmDBGridLookup := TfrmDBGridLookup.Create(Self);
  try
    frmDBGridLookup.ShowModal;
  finally
    FreeAndNil(frmDBGridLookup);
  end;
end;

procedure TfrmPrincipal.btnGridComPickListClick(Sender: TObject);
var
  frmDBGridPickList: TfrmDBGridPickList;
begin
  frmDBGridPickList := TfrmDBGridPickList.Create(Self);
  try
    frmDBGridPickList.ShowModal;
  finally
    FreeAndNil(frmDBGridPickList);
  end;
end;

procedure TfrmPrincipal.btnGridEfeitoZebradoClick(Sender: TObject);
var
  frmDBGridZebrado: TfrmDBGridZebrado;
begin
  frmDBGridZebrado := TfrmDBGridZebrado.Create(Self);
  try
    frmDBGridZebrado.ShowModal;
  finally
    FreeAndNil(frmDBGridZebrado);
  end;
end;

procedure TfrmPrincipal.btnGridOrdenacaoColunasClick(Sender: TObject);
var
  frmDBGridOrdenacaoColunas: TfrmDBGridOrdenacaoColunas;
begin
  frmDBGridOrdenacaoColunas := TfrmDBGridOrdenacaoColunas.Create(Self);
  try
    frmDBGridOrdenacaoColunas.ShowModal;
  finally
    FreeAndNil(frmDBGridOrdenacaoColunas);
  end;
end;

end.
