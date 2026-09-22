-- Automated tests for the Student Pass/Fail PL/SQL assignment.

-- This test file expects the submitted program to use a variable named
-- v_marks and produce PASS/FAIL using DBMS_OUTPUT.

SET SERVEROUTPUT ON;

PROMPT ========================================
PROMPT Test 1: Marks = 39
PROMPT Expected: FAIL
PROMPT ========================================

DECLARE
v_marks NUMBER := 39;
BEGIN
IF v_marks >= 40 THEN
DBMS_OUTPUT.PUT_LINE('PASS');
ELSE
DBMS_OUTPUT.PUT_LINE('FAIL');
END IF;
END;
/

PROMPT ========================================
PROMPT Test 2: Marks = 40
PROMPT Expected: PASS
PROMPT ========================================

DECLARE
v_marks NUMBER := 40;
BEGIN
IF v_marks >= 40 THEN
DBMS_OUTPUT.PUT_LINE('PASS');
ELSE
DBMS_OUTPUT.PUT_LINE('FAIL');
END IF;
END;
/

PROMPT ========================================
PROMPT Test 3: Marks = 75
PROMPT Expected: PASS
PROMPT ========================================

DECLARE
v_marks NUMBER := 75;
BEGIN
IF v_marks >= 40 THEN
DBMS_OUTPUT.PUT_LINE('PASS');
ELSE
DBMS_OUTPUT.PUT_LINE('FAIL');
END IF;
END;
/

PROMPT ========================================
PROMPT Test 4: Marks = 0
PROMPT Expected: FAIL
PROMPT ========================================

DECLARE
v_marks NUMBER := 0;
BEGIN
IF v_marks >= 40 THEN
DBMS_OUTPUT.PUT_LINE('PASS');
ELSE
DBMS_OUTPUT.PUT_LINE('FAIL');
END IF;
END;
/

PROMPT ========================================
PROMPT Test 5: Marks = 100
PROMPT Expected: PASS
PROMPT ========================================

DECLARE
v_marks NUMBER := 100;
BEGIN
IF v_marks >= 40 THEN
DBMS_OUTPUT.PUT_LINE('PASS');
ELSE
DBMS_OUTPUT.PUT_LINE('FAIL');
END IF;
END;
/

PROMPT ========================================
PROMPT All test cases completed.
PROMPT ========================================
