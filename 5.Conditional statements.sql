set SERVEROUTPUT on;
-----------------------------------If Else 1----------------------------------
--DECLARE
--    v_number NUMBER := 20;
--    --v_number NUMBER; -- if we dont assign anything by default it is null
--    --v_number NUMBER := NULL;
--BEGIN
--    IF v_number < 10 THEN
--        dbms_output.put_line('I am smaller than 10');
--    ELSIF v_number <= 20 THEN
--        dbms_output.put_line('I am smaller than 20');
--    ELSIF v_number < 30 THEN
--        dbms_output.put_line('I am smaller than 30');
--    ELSE
--        dbms_output.put_line('Nothing matches!..');
--    END IF;
--END;

-----------------------------------Nested If Else 1----------------------------------
--DECLARE
--    v_number NUMBER := 233;
--    --v_number NUMBER; -- if we dont assign anything by default it is null
--   --v_number NUMBER := NULL;
--BEGIN
--    IF v_number < 10 THEN
--        dbms_output.put_line('I am smaller than 10');
--    ELSIF v_number <= 20 THEN
--        dbms_output.put_line('I am smaller than 20');
--    ELSIF v_number < 30 THEN
--        dbms_output.put_line('I am smaller than 30');
--    ELSE
--        IF v_number IS NULL THEN
--            dbms_output.put_line('The number is null!..');
--        ELSE
--            dbms_output.put_line('You are confused!..');
--        END IF;
--    END IF;
--END;

-----------------------------------Nested If Else 2----------------------------------
DECLARE
    v_number NUMBER := 20;
    --v_number NUMBER; -- if we dont assign anything by default it is null
   --v_number NUMBER := NULL;
    v_name   VARCHAR(20) := 'Bunty';
BEGIN
    IF
        v_number < 10
        AND v_name = 'Ansh'
    THEN
        dbms_output.put_line('I am smaller than 10 and my name is ' || v_name);
    ELSIF
        v_number <= 20
        AND v_name = 'Bunty'
    THEN
        dbms_output.put_line('I am smaller than 20 and my name is ' || v_name);
    ELSIF
        v_number < 30
        AND v_name = 'Rohini'
    THEN
        dbms_output.put_line('I am smaller than 30 and my name is ' || v_name);
    ELSE
        IF v_number IS NULL THEN
            dbms_output.put_line('The number is null!..');
        ELSE
            dbms_output.put_line('You are confused!..');
        END IF;
    END IF;
END;