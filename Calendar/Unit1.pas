 unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids,TypInfo, Vcl.StdCtrls,
  Vcl.WinXCalendars, Vcl.ExtCtrls;

type
Tday=(Mon, Tue, Wed,Thu, Fri, Sat,Sun);
TD= 1..31;
TMonth= (Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec);
 TDateRec = record
     m: TMonth;
     D:TD;
     dow: Tday ;
  End;
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Calendar1: TComboBox;
    procedure StringGrid1Click(Sender: TObject);


private

{ Private declarations }
{type
Tday=(Mon, Tue, Wed,Thu, Fri, Sat,Sun);
TD= 1..31;
TMonth= (Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec);
 TDateRec = record
     m: TMonth;
     D:TD;
     dow: Tday ;
  End;

 var
     calendar:file of TDateRec;
     cal1:TDateRec;
     dow1,i,k,j:integer;
     Day:TDay;
     m:TMonth;
     week:tday;

procedure weighty(dow1:integer);
var
  dow2:TDay;
  Ves:boolean;
  s,q,Year,a:integer;
begin
    Year:=2019;
      dow2:=Mon;
    Ves:=True;
    //calculation of the first dow of January according to leap
    if (Year mod 4 =0) or (Year mod 400 =0) then
    begin
      S:=(Year div 4)*5;
        q:=(s mod 31) mod 7;
      for a:=1 to q do
       begin
        dow2:=succ(dow2);
       end;
    end
    else
    begin
      Ves:=not Ves;
      s:=(Year div 4)*5+(Year-(Year div 4)*4) ;
      q:=(s mod 31) mod 7;
      for a:=1 to q do
       begin
        dow2:= succ(dow2);
       end;
    end;
    dow1:=ord(dow2);
end;


begin
  dow1:=0;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
  weighty(dow1);
   begin
  day:=Mon;
  for i := 1 to 7 do
  begin
    cal1.dow:=day;
    day:=succ(day);
  end;
  m:=Jan;
  for i := 1 to 12 do
  begin
    cal1.m:=m;
    m:=succ(m);
  end;
  dow1:=0;
  assignfile(calendar,'2019.dat');
  rewrite(calendar);
  week:=Mon;
  for i := 1 to dow1 do
  begin
    week:=succ(week);
  end;
  cal1.dow:=week;
  with cal1 do
  begin
    m:=Jan;
    d:=1;
  end;
  for i := 1 to 12 do
  begin
    cal1.m:=succ(cal1.m);
    for j := 1 to 7 do
    begin
      cal1.dow:=succ(cal1.dow);
      for k := 1 to 7 do
      begin
        cal1.d:=succ(cal1.d);

      end;
    end;
  end;
  write(calendar, cal1);
  close(calendar);
   end;}
public

{ Public declarations }

end;

var
  Form1: TForm1;
   var
     calendar:file of TDateRec;
     cal1:TDateRec;
     dow1,i,k,j:integer;
     Ves:boolean;
     Day:TDay;
     m:TMonth;
     s:Char;
implementation




{procedure CreationoFile(Cal: file of TDateRec);
var
  shift,i,i1,i2,n,pos:integer;
  call:TDateRec;

begin

    Assign(calendar,'2019 ');
    Rewrite(calendar);
    shift:=dow1;
    i:=1;
    ord(cal1.m):=1;


      with calendar do
      begin
        case Ord(cal1.m) of
        1,3,5,7,8,10,12: n:=31;
        4,6,9,11: n:=30;
        2: if (Ves) then n:=29
                else n:=28
         end;
      readln(cal1.m);
      for i1:= 1 to 7 do
      begin
        readln(cal1.dow);
      end;
        for i2 := 1 to n do
        begin
          readln(Cal1.D);
        end;
        shift:= shift+(n mod 7);
      end;
       write(calendar,cal1);
    close(calendar);
end;}

procedure TForm1.StringGrid1Click(Sender: TObject);

  var
  i,h,j,i1,l,n1,n: Integer;
  month:TDateRec;
begin

  reset(calendar);
  read(calendar,month);
  {l:=FileSize(Calendar);
  stringgrid1.rowCount := l + 1;}
  Read(calendar, month);
  for  i:=1 to 8 do
  begin

     stringgrid1.Cells[1,i] := GetEnumName(TypeInfo(TDateRec),Ord(month.m));
     stringgrid1.Cells[2,i] := GetEnumName(TypeInfo(TDateRec),Ord(month.dow));
     stringgrid1.Cells[3,i] := GetEnumName(TypeInfo(TDateRec),Ord(month.d));
     stringgrid1.Cells[4,i] := GetEnumName(TypeInfo(TDateRec),Ord(month.d));;
     stringgrid1.Cells[5,i] := GetEnumName(TypeInfo(TDateRec),Ord(month.d));;
  end;

end;

end.
