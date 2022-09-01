--DECLARE
--    v_job_code        VARCHAR2(20) := 'xx';
--    v_salary_increase NUMBER;
--BEGIN
--    v_salary_increase :=
--        CASE v_job_code
--            WHEN 'SA_MAN' THEN
--                0.2
--            WHEN 'SA_REP' THEN
--                0.3
--            ELSE 0
--        END;
--    dbms_output.put_line('Your salary increase is ' || v_salary_increase);
--END;
--------------------------------------------------------------------------------
--DECLARE
--    v_job_code        VARCHAR2(20) := 'xx';
--    v_salary_increase NUMBER;
--BEGIN
--    v_salary_increase :=
--        CASE
--            WHEN v_job_code = 'SA_MAN' THEN
--                0.2
--            WHEN v_job_code IN ( 'SA_REP', 'SR_MAN', 'xx' ) THEN
--                0.5
--            ELSE 0
--        END;
--    dbms_output.put_line('Your salary increase is ' || v_salary_increase);
--END;
----------------------------------------------------------------------------------
--DECLARE
--    v_job_code        VARCHAR2(20) := 'IT Prog';
--    v_salary_increase NUMBER;
--    v_department      VARCHAR2(20) := 'IT';
--BEGIN
--    v_salary_increase :=
--        CASE
--            WHEN v_job_code = 'SA_MAN' THEN
--                0.2
--            WHEN v_job_code IN ( 'SA_REP', 'SR_MAN', 'xx' ) THEN
--                0.5
--            WHEN
--                v_department = 'IT'
--                AND v_job_code IN ( 'IT Prog', 'App Architecture' )
--            THEN
--                1.5
--            ELSE 0
--        END;
--
--    dbms_output.put_line('Your salary increase is ' || v_salary_increase);
--END;
--------------------------------------------------------------------------------
DECLARE
    v_job_code        VARCHAR2(20) := 'IT Prog';
    v_salary_increase NUMBER;
    v_department      VARCHAR2(20) := 'IT';
BEGIN
    CASE
        WHEN v_job_code = 'SA_MAN' THEN
            v_salary_increase := 0.2;
        WHEN v_job_code IN ( 'SA_REP', 'SR_MAN', 'xx' ) THEN
            v_salary_increase := 0.5;
        WHEN
            v_department = 'IT'
            AND v_job_code IN ( 'IT Prog', 'App Architecture' )
        THEN
            v_salary_increase := 1.5;
        ELSE
            v_salary_increase := 0;
    END CASE;

    dbms_output.put_line('Your salary increase is ' || v_salary_increase);
END;