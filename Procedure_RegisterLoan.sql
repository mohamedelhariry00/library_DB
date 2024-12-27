--

-- Book loan registration 

CREATE OR REPLACE PROCEDURE loan_book (
    p_book_id IN books.id %TYPE,
    p_member_id IN members.id %TYPE,
    p_staff_id IN staff.id %TYPE
) AS
    v_copies_available books.copies_available %TYPE;
    v_has_overdue_loans NUMBER;
BEGIN
    -- Check for overdue loans for the member
    SELECT COUNT(*)
    INTO v_has_overdue_loans
    FROM loans
    WHERE member_id = p_member_id
      AND return_date IS NULL
      AND due_date < SYSDATE;

    IF v_has_overdue_loans > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Loan denied: Member has overdue loans.');
        RETURN;
    END IF;

    -- Check book availability
    SELECT copies_available
    INTO v_copies_available
    FROM books
    WHERE id = p_book_id;

    IF v_copies_available > 0 THEN
        -- Insert loan record
        INSERT INTO loans (book_id, member_id, loan_date, due_date, staff_id)
        VALUES (p_book_id, p_member_id, SYSDATE, SYSDATE + 14, p_staff_id);

        -- Decrease the available copies count
        UPDATE books
        SET copies_available = copies_available - 1
        WHERE id = p_book_id;

        DBMS_OUTPUT.PUT_LINE('Book loaned successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Loan denied: Book is not available.');
    END IF;
END;
/
