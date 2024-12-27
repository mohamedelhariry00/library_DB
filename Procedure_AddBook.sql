


CREATE OR REPLACE PROCEDURE add_new_book (
    p_title IN VARCHAR2,
    p_author IN VARCHAR2,
    p_publisher IN VARCHAR2,
    p_year_published IN NUMBER,
    p_genre_id IN NUMBER,
    p_branch_id IN NUMBER,
    p_isbn IN VARCHAR2,
    p_copies_available IN NUMBER
) AS
    v_genre_exists NUMBER;
    v_branch_exists NUMBER;
BEGIN
    -- Check if genre exists
    SELECT COUNT(*)
    INTO v_genre_exists
    FROM genres
    WHERE id = p_genre_id;

    IF v_genre_exists = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Error: Genre ID does not exist.');
        RETURN;
    END IF;

    -- Check if branch exists
    SELECT COUNT(*)
    INTO v_branch_exists
    FROM branches
    WHERE id = p_branch_id;

    IF v_branch_exists = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Error: Branch ID does not exist.');
        RETURN;
    END IF;

    -- Insert the new book
    INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available)
    VALUES (p_title, p_author, p_publisher, p_year_published, p_genre_id, p_branch_id, p_isbn, p_copies_available);

    DBMS_OUTPUT.PUT_LINE('New book added successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/
