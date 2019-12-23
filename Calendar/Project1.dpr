program Project1;

uses
  Vcl.Forms,Unit1 in 'Unit1.pas';

type
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
   end;
end.
