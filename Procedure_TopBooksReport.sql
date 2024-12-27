--

CREATE OR REPLACE PROCEDURE top_books_reports AS
BEGIN
    -- Top Borrowed Books
    DBMS_OUTPUT.PUT_LINE('Top Borrowed Books:');
    FOR book_rec IN (
        SELECT * FROM (
            SELECT books.title, COUNT(loans.id) AS loan_count
            FROM books 
            JOIN loans ON books.id = loans.book_id
            GROUP BY books.title
            ORDER BY loan_count DESC
         -- FETCH FIRST 10 ROWS ONLY
        )
        WHERE ROWNUM <= 10
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(book_rec.title || ': ' || book_rec.loan_count || ' loans');
    END LOOP;
END;
/
