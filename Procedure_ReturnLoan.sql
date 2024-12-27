
-- Return a Book

CREATE OR REPLACE PROCEDURE return_book (
    p_loan_id IN NUMBER
) AS
    v_book_id NUMBER;
    v_due_date DATE;
    v_fine_amount NUMBER;
    v_days_late NUMBER;
BEGIN
    -- Retrieve book ID and due date for the loan
    SELECT book_id, due_date
    INTO v_book_id, v_due_date
    FROM loans
    WHERE id = p_loan_id AND return_date IS NULL;

    -- Update the loan record with the return date
    UPDATE loans
    SET return_date = SYSDATE
    WHERE id = p_loan_id;

    -- Update the book's available copies
    UPDATE books
    SET copies_available = copies_available + 1
    WHERE id = v_book_id;

    -- Calculate fine if the book is returned late
    IF SYSDATE > v_due_date THEN
        v_days_late := SYSDATE - v_due_date;
        v_fine_amount := v_days_late * 10; -- Assume $10 fine per day late

        UPDATE loans
        SET fine_amount = v_fine_amount
        WHERE id = p_loan_id;
		
		UPDATE fines
        SET amount = v_fine_amount
        WHERE loan_id = p_loan_id;

        DBMS_OUTPUT.PUT_LINE('Book returned late. Fine applied: ' || v_fine_amount);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Book returned on time. No fine applied.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Book returned successfully.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: Loan record not found or book already returned.');
END;
/
