
-- seceunce and triggers -- 

/************************* genres sequence **************************/
CREATE SEQUENCE genres__seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER genres_trigger
    BEFORE INSERT ON genres
    FOR EACH ROW
BEGIN
    SELECT genres_seq.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/

/************************* branches sequence **************************/  
CREATE SEQUENCE branches_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER branches_trigger
    BEFORE INSERT ON branches
    FOR EACH ROW
BEGIN
    SELECT branches_seq.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/

/************************* books sequence **************************/
CREATE SEQUENCE books_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER books_trigger
    BEFORE INSERT ON books
    FOR EACH ROW
BEGIN
    SELECT books_seq.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/


/************************* members sequence **************************/
CREATE SEQUENCE members_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER members_trigger
    BEFORE INSERT ON members
    FOR EACH ROW
BEGIN
    SELECT members_seq.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/


/************************* staff sequence **************************/
CREATE SEQUENCE staff_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER staff_trigger
    BEFORE INSERT ON staff
    FOR EACH ROW
BEGIN
    SELECT staff_seq.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/



/************************* loans sequence **************************/
CREATE SEQUENCE loans_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER loans_trigger
    BEFORE INSERT ON loans
    FOR EACH ROW
BEGIN
    SELECT loans_seq.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/



/************************* fines sequence **************************/
CREATE SEQUENCE fines_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER fines_trigger
    BEFORE INSERT ON fines
    FOR EACH ROW
BEGIN
    SELECT fines_seq.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/



/************************* reservations sequence **************************/
CREATE SEQUENCE reservations_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER reservations_trigger
    BEFORE INSERT ON reservations
    FOR EACH ROW
BEGIN
    SELECT reservations_seq.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/



/************************* customers sequence **************************/
CREATE SEQUENCE customers_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER customers_trigger
    BEFORE INSERT ON customers
    FOR EACH ROW
BEGIN
    SELECT customers_seq.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/



/************************* employees sequence **************************/
CREATE SEQUENCE employees_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER employees_trigger
    BEFORE INSERT ON employees
    FOR EACH ROW
BEGIN
    SELECT employees_seq.NEXTVAL
    INTO :NEW.id
    FROM dual;
END;
/
