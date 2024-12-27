--

CREATE OR REPLACE PROCEDURE fine_collect_reports AS
BEGIN

    -- Fines Collection
    DBMS_OUTPUT.PUT_LINE('Fines Collected:');
    FOR fine_rec IN (
        SELECT SUM(loans.fine_amount) AS total_fines, TO_CHAR(loans.return_date, 'YYYY-MM') AS month
        FROM loans 
        WHERE loans.fine_amount > 0
        GROUP BY TO_CHAR(loans.return_date, 'YYYY-MM')
        ORDER BY month
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Month: ' || fine_rec.month || ', Total Fines: $' || fine_rec.total_fines);
    END LOOP;
END;
/
