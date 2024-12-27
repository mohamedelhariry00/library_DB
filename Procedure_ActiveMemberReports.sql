


CREATE OR REPLACE PROCEDURE generate_reports AS
BEGIN
    
    -- تقرير الأعضاء الأكثر نشاطًا
    DBMS_OUTPUT.PUT_LINE('Most Active Members:');
    FOR member_rec IN (
        SELECT m.name, COUNT(l.id) AS loan_count
        FROM members m
        JOIN loans l ON m.id = l.member_id
        GROUP BY m.name
        ORDER BY loan_count DESC
        FETCH FIRST 10 ROWS ONLY
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(member_rec.name || ': ' || member_rec.loan_count || ' loans');
    END LOOP;

    -- تقرير الغرامات المحصلة خلال فترة معينة
    DBMS_OUTPUT.PUT_LINE('Fines Collected:');
    FOR fine_rec IN (
        SELECT SUM(l.fine_amount) AS total_fines, TO_CHAR(l.return_date, 'YYYY-MM') AS month
        FROM loans l
        WHERE l.fine_amount > 0
        GROUP BY TO_CHAR(l.return_date, 'YYYY-MM')
        ORDER BY month
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Month: ' || fine_rec.month || ', Total Fines: $' || fine_rec.total_fines);
    END LOOP;
END;
/
