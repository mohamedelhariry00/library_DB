--

-- Auto fine calculation trigger
CREATE OR REPLACE TRIGGER trg_fine_calculation
BEFORE UPDATE OF return_date ON loans
FOR EACH ROW
BEGIN
    BEGIN
        -- Calculate fine only if the book is returned late
        IF :NEW.return_date IS NOT NULL AND :NEW.return_date > :OLD.due_date THEN
            :NEW.fine_amount := NVL((:NEW.return_date - :OLD.due_date) * 10, 0); -- $10 fine per day
        ELSE
            :NEW.fine_amount := 0; -- No fine for on-time returns
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error calculating fine. Please check return_date or due_date.');
    END;
END;
/
