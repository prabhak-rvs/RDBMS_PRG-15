SET SERVEROUTPUT ON;

DECLARE
    marks NUMBER := 75;
BEGIN

    IF marks >= 50 THEN
        DBMS_OUTPUT.PUT_LINE('Student has Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Student has Failed');
    END IF;

END;
/
