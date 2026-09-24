#!/bin/bash

echo "=========================================="
echo " PL/SQL IF-ELSE AUTOGRADING"
echo "=========================================="

FILE="answers.sql"

# Check answers.sql
if [ ! -f "$FILE" ]; then
    echo "FAIL: answers.sql not found."
    exit 1
fi

echo "PASS: answers.sql found."

# Read file and convert to lowercase
CONTENT=$(cat "$FILE" | tr '[:upper:]' '[:lower:]')

# Test 1
if echo "$CONTENT" | grep -q "set serveroutput on"; then
    echo "PASS: SET SERVEROUTPUT ON found."
else
    echo "FAIL: SET SERVEROUTPUT ON not found."
    exit 1
fi

# Test 2
if echo "$CONTENT" | grep -q "declare"; then
    echo "PASS: DECLARE found."
else
    echo "FAIL: DECLARE not found."
    exit 1
fi

# Test 3
if echo "$CONTENT" | grep -Eq "marks[[:space:]]+number"; then
    echo "PASS: marks NUMBER found."
else
    echo "FAIL: marks NUMBER not found."
    exit 1
fi

# Test 4
if echo "$CONTENT" | grep -q "if"; then
    echo "PASS: IF statement found."
else
    echo "FAIL: IF statement not found."
    exit 1
fi

# Test 5
if echo "$CONTENT" | grep -q "then"; then
    echo "PASS: THEN found."
else
    echo "FAIL: THEN not found."
    exit 1
fi

# Test 6
if echo "$CONTENT" | grep -q "else"; then
    echo "PASS: ELSE found."
else
    echo "FAIL: ELSE not found."
    exit 1
fi

# Test 7
if echo "$CONTENT" | grep -Eq "end[[:space:]]+if"; then
    echo "PASS: END IF found."
else
    echo "FAIL: END IF not found."
    exit 1
fi

# Test 8
if echo "$CONTENT" | grep -Eq "marks[[:space:]]*>=[[:space:]]*50"; then
    echo "PASS: marks >= 50 condition found."
else
    echo "FAIL: marks >= 50 condition not found."
    exit 1
fi

# Test 9
if echo "$CONTENT" | grep -q "student has passed"; then
    echo "PASS: Passed message found."
else
    echo "FAIL: Student has Passed message not found."
    exit 1
fi

# Test 10
if echo "$CONTENT" | grep -q "student has failed"; then
    echo "PASS: Failed message found."
else
    echo "FAIL: Student has Failed message not found."
    exit 1
fi

echo ""
echo "=========================================="
echo " ALL TESTS PASSED"
echo "=========================================="

exit 0
