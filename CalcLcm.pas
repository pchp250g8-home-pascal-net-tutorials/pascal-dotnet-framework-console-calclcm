uses
  System;
begin
  var iNum1:Int64;
  var iNum2:Int64;
  Console.Clear();
  Console.WriteLine('Input the First Integer Number:');
  var strNum := Console.ReadLine();
  Int64.TryParse(strNum, iNum1);
  Console.WriteLine('Input The Second Integer Number:');
  strNum := Console.ReadLine();
  Int64.TryParse(strNum, iNum2);
  var iVal1 := Math.Abs(iNum1);
  var iVal2 := Math.Abs(iNum2);
  if (iVal1 > 0) and (iVal2 > 0) then
  begin
    var iVal3:=iVal1;
    var iVal4:=iVal2;
    while (iVal1 <> iVal2) do
    begin
      if (iVal1 > iVal2) then
      begin
        iVal1 -= iVal2;
        iVal3 +=iVal4;
      end
      else
      begin
        iVal2 -= iVal1;
        iVal4 +=iVal3;
      end;
    end;
    var nLcm := (iVal3 + iVal4) div 2;
    Console.WriteLine('The Lcm of the numbers {0} and {1} is {2}', iNum1, iNum2, nLcm);
  end
  else
    Console.WriteLine('The numbers must not be equal 0');
  Console.Read();
end.