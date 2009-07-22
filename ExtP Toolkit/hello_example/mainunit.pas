unit mainunit;

interface

uses
  SysUtils, Classes, 
{$IFDEF UseRuntime}
  Ext, ExtPascal, ExtPascalUtils, ExtForm, 
  ExtGlobal, ExtData, ExtGrid, ExtUtil, ExtAir, ExtDd, 
  ExtLayout, ExtMenu, ExtState, ExtTree
{$ELSE}
  ExtP_Design_Ctrls
{$ENDIF}; 

type

  { TMainWindow }

  TMainWindow = class(TExtWindow)
    ExtButton1: TExtButton;
    procedure ExtButton1Click;
  private
  public
    constructor Create; 
    procedure Show; 
  end; 

var
  MainWindow: TMainWindow;

implementation

uses
  AppThread, aboutunit;

procedure TMainWindow.ExtButton1Click;
begin
  AboutWindow.Free;
  AboutWindow := TAboutWindow.Create;
  AboutWindow.Show;
end;

constructor TMainWindow.Create;
begin
  inherited; 
{$IFDEF UseRuntime}
 {$I mainunit.inc}
{$ENDIF}
end; 

procedure TMainWindow.Show;
begin
  inherited Show; 
end; 

end.
