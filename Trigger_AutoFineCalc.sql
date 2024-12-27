

CREATE OR REPLACE TRIGGER trg_fine_calculation
BEFORE UPDATE OF return_date ON loans
FOR EACH ROW
WHEN (NEW.return_date > OLD.due_date)
BEGIN
    :NEW.fine_amount := (:NEW.return_date - OLD.due_date) * 10; -- $10 per يوم
END;
/
