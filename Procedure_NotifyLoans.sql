

CREATE OR REPLACE PROCEDURE notify_due_loans AS
    CURSOR due_loans_cursor IS
        SELECT c.name, c.email, b.title, l.due_date
        FROM customers c
        JOIN loans l ON c.id = l.member_id
        JOIN books b ON l.book_id = b.id
        WHERE l.due_date = TRUNC(SYSDATE + 1);

    member_info due_loans_cursor%ROWTYPE;
BEGIN
    OPEN due_loans_cursor;
    LOOP
        FETCH due_loans_cursor INTO member_info;
        EXIT WHEN due_loans_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Notify: ' || member_info.name || ' (' || member_info.email || ')');
        DBMS_OUTPUT.PUT_LINE('Book: ' || member_info.title || ' is due on ' || member_info.due_date);
    END LOOP;
    CLOSE due_loans_cursor;
END;
/
