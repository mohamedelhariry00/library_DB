
-- insert data -- 

/*********************** genres ********************************/
INSERT INTO genres (name) VALUES ('Science Fiction');
INSERT INTO genres (name) VALUES ('Fantasy');
INSERT INTO genres (name) VALUES ('Mystery');
INSERT INTO genres (name) VALUES ('Biography');
INSERT INTO genres (name) VALUES ('History');
INSERT INTO genres (name) VALUES ('Romance');
INSERT INTO genres (name) VALUES ('Horror');
INSERT INTO genres (name) VALUES ('Adventure');
INSERT INTO genres (name) VALUES ('Self-help');
INSERT INTO genres (name) VALUES ('Technology');

/*************************** branches **************************/
INSERT INTO branches (name, location, phone, opening_hours) VALUES ('Main Branch', 'Downtown', '0123456789', '9 AM - 9 PM');
INSERT INTO branches (name, location, phone, opening_hours) VALUES ('West Branch', 'West City', '0111234567', '10 AM - 8 PM');
INSERT INTO branches (name, location, phone, opening_hours) VALUES ('East Branch', 'East City', '0109876543', '8 AM - 6 PM');
INSERT INTO branches (name, location, phone, opening_hours) VALUES ('North Branch', 'North Town', '0156789123', '11 AM - 7 PM');
INSERT INTO branches (name, location, phone, opening_hours) VALUES ('South Branch', 'South Village', '0123459876', '7 AM - 5 PM');
INSERT INTO branches (name, location, phone, opening_hours) VALUES ('City Center', 'City Plaza', '0127654321', '9 AM - 9 PM');
INSERT INTO branches (name, location, phone, opening_hours) VALUES ('Library Park', 'Park Avenue', '0134536712', '10 AM - 8 PM');
INSERT INTO branches (name, location, phone, opening_hours) VALUES ('Central Branch', 'Central Street', '0145689732', '8 AM - 10 PM');
INSERT INTO branches (name, location, phone, opening_hours) VALUES ('Old Town', 'Old City', '0124356789', '9 AM - 5 PM');
INSERT INTO branches (name, location, phone, opening_hours) VALUES ('Suburban Branch', 'Suburb Area', '0162347891', '12 PM - 6 PM');

/*************************** books ****************************/
INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available) 
VALUES ('Dune', 'Frank Herbert', 'Penguin', 1965, 21, 21, '9780441013593', 5);
INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available) 
VALUES ('The Hobbit', 'J.R.R. Tolkien', 'HarperCollins', 1937, 22, 22, '9780261102217', 8);
INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available) 
VALUES ('Sherlock Holmes', 'Arthur Conan Doyle', 'Vintage', 1892, 23, 23, '9780099529934', 10);
INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available) 
VALUES ('Steve Jobs', 'Walter Isaacson', 'Simon & Schuster', 2011, 24, 24, '9781451648539', 7);
INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available) 
VALUES ('Sapiens', 'Yuval Noah Harari', 'Harper', 2011, 25, 25, '9780062316097', 3);
INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available) 
VALUES ('Pride and Prejudice', 'Jane Austen', 'Oxford University Press', 1813, 26, 26, '9780199535569', 6);
INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available) 
VALUES ('Dracula', 'Bram Stoker', 'Archibald Constable', 1897, 27, 27, '9780141439846', 4);
INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available) 
VALUES ('Treasure Island', 'Robert Louis Stevenson', 'Cassell', 1883, 28, 28, '9780199536078', 2);
INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available) 
VALUES ('Atomic Habits', 'James Clear', 'Penguin', 2018, 29, 29, '9781847941831', 9);
INSERT INTO books (title, author, publisher, year_published, genre_id, branch_id, isbn, copies_available) 
VALUES ('Clean Code', 'Robert C. Martin', 'Prentice Hall', 2008, 30, 30, '9780132350884', 5);

/*************************** members **************************/
INSERT INTO members (name, address, phone, email, date_of_birth) 
VALUES ('Ahmed Ali', 'Cairo', '01012345678', 'ahmed@gmail.com', TO_DATE('1990-05-14', 'YYYY-MM-DD'));
INSERT INTO members (name, address, phone, email, date_of_birth) 
VALUES ('Mona Hassan', 'Giza', '01298765432', 'mona@gmail.com', TO_DATE('1995-08-20', 'YYYY-MM-DD'));
INSERT INTO members (name, address, phone, email, date_of_birth) 
VALUES ('Omar Farouk', 'Alexandria', '01145678912', 'omar@gmail.com', TO_DATE('1988-11-03', 'YYYY-MM-DD'));
-- Add more similar rows as needed...

/*************************** staff **************************/
INSERT INTO staff (name, position, hire_date, salary, email, phone, branch_id) 
VALUES ('Ali Hassan', 'Librarian', TO_DATE('2015-03-01', 'YYYY-MM-DD'), 5000, 'mohamed@gmail.com', '011111111', 21);
INSERT INTO staff (name, position, hire_date, salary, email, phone, branch_id) 
VALUES ('Sara Khaled', 'Assistant Librarian', TO_DATE('2018-07-15', 'YYYY-MM-DD'), 4000, 'mohamed@gmail.com', '011111111', 21);
INSERT INTO staff (name, position, hire_date, salary, email, phone, branch_id) 
VALUES ('Mahmoud Tarek', 'Branch Manager', TO_DATE('2013-05-20', 'YYYY-MM-DD'), 7000, 'mohamed@gmail.com', '011111111', 21);
INSERT INTO staff (name, position, hire_date, salary, email, phone, branch_id) 
VALUES ('Fatma Adel', 'IT Specialist', TO_DATE('2019-09-10', 'YYYY-MM-DD'), 6000, 'mohamed@gmail.com', '011111111', 21);
INSERT INTO staff (name, position, hire_date, salary, email, phone, branch_id) 
VALUES ('Hassan Omar', 'Clerk', TO_DATE('2020-01-25', 'YYYY-MM-DD'), 3000, 'mohamed@gmail.com', '011111111', 21);
INSERT INTO staff (name, position, hire_date, salary, email, phone, branch_id) 
VALUES ('Aya Salah', 'Library Technician', TO_DATE('2016-11-18', 'YYYY-MM-DD'), 4500, 'mohamed@gmail.com', '011111111', 21);
INSERT INTO staff (name, position, hire_date, salary, email, phone, branch_id) 
VALUES ('Yasser Fathy', 'Security Officer', TO_DATE('2017-04-05', 'YYYY-MM-DD'), 3500, 'mohamed@gmail.com', '011111111', 21);
INSERT INTO staff (name, position, hire_date, salary, email, phone, branch_id) 
VALUES ('Nour Gamal', 'Archivist', TO_DATE('2014-08-12', 'YYYY-MM-DD'), 5500, 'mohamed@gmail.com', '011111111', 21);
INSERT INTO staff (name, position, hire_date, salary, email, phone, branch_id) 
VALUES ('Eman Hamed', 'Cataloguer', TO_DATE('2012-12-21', 'YYYY-MM-DD'), 5200, 'mohamed@gmail.com', '011111111', 21);
INSERT INTO staff (name, position, hire_date, salary, email, phone, branch_id) 
VALUES ('Kareem Mostafa', 'Library Assistant', TO_DATE('2021-03-30', 'YYYY-MM-DD'), 3200, 'mohamed@gmail.com', '011111111', 21);

/*************************** loans **************************/
INSERT INTO loans (book_id, member_id, loan_date, return_date, due_date, fine_amount, staff_id) 
VALUES (41, 21, TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_DATE('2024-12-15', 'YYYY-MM-DD'), TO_DATE('2024-12-10', 'YYYY-MM-DD'), 0, 1);
INSERT INTO loans (book_id, member_id, loan_date, return_date, due_date, fine_amount, staff_id) 
VALUES (42, 22, TO_DATE('2024-12-03', 'YYYY-MM-DD'), NULL, TO_DATE('2024-12-17', 'YYYY-MM-DD'), 0, 2);
INSERT INTO loans (book_id, member_id, loan_date, return_date, due_date, fine_amount, staff_id) 
VALUES (43, 23, TO_DATE('2024-12-05', 'YYYY-MM-DD'), TO_DATE('2024-12-20', 'YYYY-MM-DD'), TO_DATE('2024-12-15', 'YYYY-MM-DD'), 10, 3);
INSERT INTO loans (book_id, member_id, loan_date, return_date, due_date, fine_amount, staff_id) 
VALUES (44, 23, TO_DATE('2024-12-07', 'YYYY-MM-DD'), TO_DATE('2024-12-14', 'YYYY-MM-DD'), TO_DATE('2024-12-12', 'YYYY-MM-DD'), 5, 4);
INSERT INTO loans (book_id, member_id, loan_date, return_date, due_date, fine_amount, staff_id) 
VALUES (45, 23, TO_DATE('2024-12-09', 'YYYY-MM-DD'), NULL, TO_DATE('2024-12-23', 'YYYY-MM-DD'), 0, 5);          

/*************************** fines **************************/
INSERT INTO fines (loan_id, amount, paid_date, paid) 
VALUES (26, 10, TO_DATE('2024-12-18', 'YYYY-MM-DD'), 1);
INSERT INTO fines (loan_id, amount, paid_date, paid) 
VALUES (27, 5, NULL, 0);

/*************************** reservations **************************/
INSERT INTO reservations (book_id, member_id, reservation_date, status) 
VALUES (46, 21, TO_DATE('2024-12-10', 'YYYY-MM-DD'), 'Pending');
INSERT INTO reservations (book_id, member_id, reservation_date, status) 
VALUES (47, 22, TO_DATE('2024-12-12', 'YYYY-MM-DD'), 'Completed');
INSERT INTO reservations (book_id, member_id, reservation_date, status) 
VALUES (48, 23, TO_DATE('2024-12-14', 'YYYY-MM-DD'), 'Cancelled');
INSERT INTO reservations (book_id, member_id, reservation_date, status) 
VALUES (49, 23, TO_DATE('2024-12-16', 'YYYY-MM-DD'), 'Pending');
INSERT INTO reservations (book_id, member_id, reservation_date, status) 
VALUES (50, 23, TO_DATE('2024-12-18', 'YYYY-MM-DD'), 'Completed');

/*************************** customers **************************/
INSERT INTO customers (name, contact_number, email, address, branch_id) 
VALUES ('Youssef Ibrahim', '0123456789', 'youssef@gmail.com', 'Cairo', 21);
INSERT INTO customers (name, contact_number, email, address, branch_id) 
VALUES ('Laila Ahmed', '0112233445', 'laila@gmail.com', 'Giza', 21);
INSERT INTO customers (name, contact_number, email, address, branch_id) 
VALUES ('Hassan Mohamed', '0109876543', 'hassan@gmail.com', 'Alexandria', 21);
INSERT INTO customers (name, contact_number, email, address, branch_id) 
VALUES ('Dina Salem', '0156677889', 'dina@gmail.com', 'Aswan', 21);
INSERT INTO customers (name, contact_number, email, address, branch_id) 
VALUES ('Ali Mostafa', '0123334445', 'ali@gmail.com', 'Luxor', 21);

/*************************** employees **************************/
INSERT INTO employees (name, job_title, hire_date, salary) 
VALUES ('Khaled Mansour', 'Manager', TO_DATE('2015-03-01', 'YYYY-MM-DD'), 12000);
INSERT INTO employees (name, job_title, hire_date, salary) 
VALUES ('Rania Mostafa', 'Sales Executive', TO_DATE('2018-07-15', 'YYYY-MM-DD'), 8000);
INSERT INTO employees (name, job_title, hire_date, salary) 
VALUES ('Omar Ali', 'Accountant', TO_DATE('2020-05-20', 'YYYY-MM-DD'), 9000);
INSERT INTO employees (name, job_title, hire_date, salary) 
VALUES ('Nour Hassan', 'HR Specialist', TO_DATE('2019-09-10', 'YYYY-MM-DD'), 8500);
INSERT INTO employees (name, job_title, hire_date, salary) 
VALUES ('Salma Fathy', 'IT Support', TO_DATE('2021-01-25', 'YYYY-MM-DD'), 7000);

