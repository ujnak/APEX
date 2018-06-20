
DECLARE
  ACL_PATH  VARCHAR2(4000);
  ACL_ID    RAW(16);
BEGIN
  -- Look for the ACL currently assigned to '*' and give APEX_040200
  -- the "connect" privilege if APEX_040200 does not have the privilege yet.

  SELECT ACL INTO ACL_PATH FROM DBA_NETWORK_ACLS
   WHERE HOST = '*' AND LOWER_PORT IS NULL AND UPPER_PORT IS NULL;

  -- Before checking the privilege, ensure that the ACL is valid
  -- (for example, does not contain stale references to dropped users).
  -- If it does, the following exception will be raised:
  --
  -- ORA-44416: Invalid ACL: Unresolved principal 'APEX_040200'
  -- ORA-06512: at "XDB.DBMS_XDBZ", line ...
  --
  SELECT SYS_OP_R2O(extractValue(P.RES, '/Resource/XMLRef')) INTO ACL_ID
    FROM XDB.XDB$ACL A, PATH_VIEW P
   WHERE extractValue(P.RES, '/Resource/XMLRef') = REF(A) AND
         EQUALS_PATH(P.RES, ACL_PATH) = 1;

  DBMS_XDBZ.ValidateACL(ACL_ID);
   IF DBMS_NETWORK_ACL_ADMIN.CHECK_PRIVILEGE(ACL_PATH, 'APEX_180100', 
     'connect') IS NULL THEN 
      DBMS_NETWORK_ACL_ADMIN.ADD_PRIVILEGE(ACL_PATH, 
     'APEX_180100', TRUE, 'connect'); 
  END IF;

EXCEPTION
  -- When no ACL has been assigned to '*'.
  WHEN NO_DATA_FOUND THEN
  DBMS_NETWORK_ACL_ADMIN.CREATE_ACL('power_users.xml',
    'ACL that lets power users to connect to everywhere',
    'APEX_180100', TRUE, 'connect');
  DBMS_NETWORK_ACL_ADMIN.ASSIGN_ACL('power_users.xml','*');
END;
/
COMMIT;
