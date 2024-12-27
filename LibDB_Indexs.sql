

CREATE INDEX idx_customers_branch ON customers (branch_id);
CREATE INDEX idx_fines_loan ON fines (loan_id);
CREATE INDEX idx_reservations_book_member ON reservations (book_id, member_id);
CREATE INDEX idx_employees_branch ON employees (branch_id);
