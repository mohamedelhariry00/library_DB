--

-- Update Member Info
  
CREATE OR REPLACE PROCEDURE update_member_info (
    p_member_id members.id %TYPE,
    p_name IN members.name %TYPE,
    p_contact_number members.phone %TYPE,
    p_email IN members.email %TYPE,
    p_address IN members.address %TYPE,
    p_branch_id IN members.branch_id %TYPE
) AS
BEGIN
    -- Update the member details
    UPDATE members
    SET name = p_name,
        phone = p_contact_number,
        email = p_email,
        address = p_address,
        branch_id = p_branch_id
    WHERE id = p_member_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No member found with the given ID.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Member info updated successfully.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/
