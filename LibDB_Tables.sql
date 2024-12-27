
--create table--

/****************** create generes table ****************/
CREATE TABLE genres (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL
);

/****************** create branches table ****************/
CREATE TABLE branches (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    location VARCHAR2(255),
    phone VARCHAR2(15),
    opening_hours VARCHAR2(100)
);

/****************** create books table ****************/
CREATE TABLE books (
    id NUMBER PRIMARY KEY,
    title VARCHAR2(255) NOT NULL,
    author VARCHAR2(255) NOT NULL,
    publisher VARCHAR2(255),
    year_published NUMBER,
    genre_id NUMBER,
    branch_id NUMBER,
    isbn VARCHAR2(20),
    copies_available NUMBER,
    FOREIGN KEY (genre_id) REFERENCES genres(id),
    FOREIGN KEY (branch_id) REFERENCES branches(id)
);

/****************** create members table ****************/
CREATE TABLE members (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    address VARCHAR2(255),
    phone VARCHAR2(15),
    email VARCHAR2(100),
    date_of_birth DATE,
	branch_id NUMBER
);

/****************** create staff table ****************/
CREATE TABLE staff (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    position VARCHAR2(100),
    hire_date DATE,
	email VARCHAR2(100),
	phone VARCHAR2(20),
    salary NUMBER,
	branch_id NUMBER
);

/****************** create loans table ****************/
CREATE TABLE loans (
    id NUMBER PRIMARY KEY,
    book_id NUMBER,
    member_id NUMBER,
    loan_date DATE,
    return_date DATE,
    due_date DATE,
    fine_amount NUMBER DEFAULT 0,
	staff_id NUMBER,
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (member_id) REFERENCES members(id),
	FOREIGN KEY (staff_id) REFERENCES staff(id)
);

/****************** create fines table ****************/
CREATE TABLE fines (
    id NUMBER PRIMARY KEY,
    loan_id NUMBER,
    amount NUMBER,
    paid_date DATE,
	paid BOOLEAN, 
    FOREIGN KEY (loan_id) REFERENCES loans(id)
);

/****************** create reservations table ****************/
CREATE TABLE reservations (
    id NUMBER PRIMARY KEY,
    book_id NUMBER,
    member_id NUMBER,
    reservation_date DATE,
    status VARCHAR2(50),
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (member_id) REFERENCES members(id)
);

/****************** create customers table ****************/
CREATE TABLE customers (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    contact_number VARCHAR2(15),
    email VARCHAR2(100),
    address VARCHAR2(255),
	branch_id NUMBER,
	FOREIGN KEY (branch_id) REFERENCES branches(id)
);

/****************** create employees table ****************/
CREATE TABLE employees (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(255) NOT NULL,
    job_title VARCHAR2(100),
    hire_date DATE,
    salary NUMBER,
);


-- Add FOREIGN KEYS to tables

-- FOREIGN KEY in books (genre_id references genres)
ALTER TABLE books
ADD CONSTRAINT fk_books_genre
FOREIGN KEY (genre_id) REFERENCES genres (id);

-- FOREIGN KEY in books (branch_id references branches)
ALTER TABLE books
ADD CONSTRAINT fk_books_branch
FOREIGN KEY (branch_id) REFERENCES branches (id);

-- FOREIGN KEY in loans (book_id references books)
ALTER TABLE loans
ADD CONSTRAINT fk_loans_book
FOREIGN KEY (book_id) REFERENCES books (id);

-- FOREIGN KEY in loans (member_id references members)
ALTER TABLE loans
ADD CONSTRAINT fk_loans_member
FOREIGN KEY (member_id) REFERENCES members (id);

-- FOREIGN KEY in loans (staff_id references staff)
ALTER TABLE loans
ADD CONSTRAINT fk_loans_staff
FOREIGN KEY (staff_id) REFERENCES staff (id);

-- FOREIGN KEY in fines (loan_id references loans)
ALTER TABLE fines
ADD CONSTRAINT fk_fines_loan
FOREIGN KEY (loan_id) REFERENCES loans (id);

-- FOREIGN KEY in reservations (book_id references books)
ALTER TABLE reservations
ADD CONSTRAINT fk_reservations_book
FOREIGN KEY (book_id) REFERENCES books (id);

-- FOREIGN KEY in reservations (member_id references members)
ALTER TABLE reservations
ADD CONSTRAINT fk_reservations_member
FOREIGN KEY (member_id) REFERENCES members (id);

-- FOREIGN KEY in employees (branch_id references branches)
ALTER TABLE employees
ADD CONSTRAINT fk_employees_branch
FOREIGN KEY (branch_id) REFERENCES branches (id);

-- FOREIGN KEY in members (branch_id references branches)
ALTER TABLE members
ADD CONSTRAINT fk_members_branch
FOREIGN KEY (branch_id) REFERENCES branches (id);

-- FOREIGN KEY in staff (branch_id references branches)
ALTER TABLE staff
ADD CONSTRAINT fk_staff_branch
FOREIGN KEY (branch_id) REFERENCES branches (id);

-- FOREIGN KEY in customers (branch_id references branches)
ALTER TABLE customers
ADD CONSTRAINT fk_customers_branch
FOREIGN KEY (branch_id) REFERENCES branches (id);

