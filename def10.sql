--delete the record of employee for given EID.

SET SERVEROUTPUT ON;

DECLARE
  v_eid EMPLOYEE.EID%TYPE := &v_eid;
BEGIN
    
    DELETE FROM EMPLOYEE 
    WHERE EID = v_eid;

    
    IF SQL%FOUND THEN
        -- SQL%ROWCOUNT returns the number of rows deleted

        DBMS_OUTPUT.PUT_LINE('Record deleted successfully. Total rows affected: ' || SQL%ROWCOUNT);
    ELSE
        -- If the EID does not exist, SQL%FOUND will be false
        DBMS_OUTPUT.PUT_LINE('Error: No employee found with ID ' || v_eid);
    END IF;

    -- Commit the transaction to save changes
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
        ROLLBACK;
END;
/
