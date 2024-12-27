--

CREATE OR REPLACE PROCEDURE add_new_book (
    p_title  books.title %TYPE,
    p_author  books.author %TYPE,
    p_publisher  books.publisher %TYPE,
    p_year_published  books.year_published %TYPE,
    p_genre_id  books.genre_id %TYPE,
    p_branch_id  books.branch_id %TYPE,
    p_isbn  books.isbn %TYPE,
    p_copies_available  books.copies_available %TYPE
) AS
    v_genre_exists  books.genre_id %TYPE;
    v_branch_exists  books.branch_id %TYPE;
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
