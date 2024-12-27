


CREATE OR REPLACE PROCEDURE generate_top_books_report AS
BEGIN
    SELECT b.title, COUNT(l.id) AS loan_count
    FROM books b
    JOIN loans l ON b.id = l.book_id
    GROUP BY b.title
    ORDER BY loan_count DESC;
END;
/
