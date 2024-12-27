
CREATE OR REPLACE PROCEDURE active_members_reports AS
BEGIN
    
    -- Most Active Members
    DBMS_OUTPUT.PUT_LINE('Most Active Members:');
    FOR member_rec IN (
    SELECT * FROM(
        SELECT members.name, COUNT(loans.id) AS loan_count
        FROM members 
        JOIN loans  ON members.id = loans.member_id
        GROUP BY members.name
        ORDER BY loan_count DESC
     -- FETCH FIRST 10 ROWS ONLY
        )
        WHERE ROWNUM <= 10
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(member_rec.name || ': ' || member_rec.loan_count || ' loans');
    END LOOP;

END;
/
