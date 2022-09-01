--------------------------BIND VARIABLES--------------------------
Set Serveroutput On;
Set Autoprint On;
/
Variable Var_Text Varchar2(30);
/
Variable Var_Number Number;
/
Variable Var_Date Date;
/
Declare
V_Text Varchar2(30);
Begin
:Var_Text := 'Hello SQL';
:Var_Number := 20;
V_Text := :Var_Text;
--dbms_output.put_line(v_text);
--dbms_output.put_line(:var_text);
End;
/
Print Var_Text;
/
Variable Var_Sql Number;
/
Begin 
  :Var_Sql := 100;
End;
/
Select * From Employees Where Employee_Id = :Var_Sql;
 
-----NOTE: When you run a bind variable creation and select statement together, SQL Developer may return an error. But when you execute them separately, there will be no problem--------
------------------------------------------------------------------