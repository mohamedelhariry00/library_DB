
-- Book loan registration 

CREATE OR REPLACE PROCEDURE issue_book (
    p_book_id IN NUMBER,
    p_member_id IN NUMBER,
    p_due_date IN DATE
) AS
    v_available NUMBER;
BEGIN
-- Check book availability
    SELECT COUNT(*)
    INTO v_available
    FROM books
    WHERE id = p_book_id AND status = 'Available';

    IF v_available = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Book is not available for loan.');
    END IF;

--Loan registration
    INSERT INTO loans (book_id, member_id, loan_date, due_date, fine_amount)
    VALUES (p_book_id, p_member_id, SYSDATE, p_due_date, 0);

-- Update the book's status to "Loaned"
    UPDATE books
    SET status = 'Loaned'
    WHERE id = p_book_id;

    DBMS_OUTPUT.PUT_LINE('Book issued successfully.');
END;
/
