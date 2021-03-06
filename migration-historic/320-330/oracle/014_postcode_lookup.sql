---
-- Feature 1741222 - Add Post code lookup infrastructure
-- http://sourceforge.net/tracker/index.php?func=detail&aid=1741222&group_id=176962&atid=879335
--

--- Modify C_COUNTRY Table
ALTER TABLE C_COUNTRY ADD 
   IsPostcodeLookup CHAR(1)  DEFAULT 'N' NOT NULL;
ALTER TABLE C_COUNTRY ADD 
   LookupClassname VARCHAR(255)  DEFAULT NULL  NULL;
ALTER TABLE C_COUNTRY ADD 
   LookupClientID VARCHAR(50)  DEFAULT NULL  NULL;
ALTER TABLE C_COUNTRY ADD 
   LookupPassword VARCHAR(50)  DEFAULT NULL  NULL;
ALTER TABLE C_COUNTRY ADD 
   LookupUrl VARCHAR(100) DEFAULT NULL  NULL;

-- Add Postcode Constraint
ALTER TABLE C_COUNTRY ADD CHECK (IsPostcodeLookup IN ('Y','N'));

-- Insert Element Definitions

INSERT INTO ad_element
	(AD_ELEMENT_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, COLUMNNAME, ENTITYTYPE, NAME, PRINTNAME, DESCRIPTION, HELP, PO_NAME, PO_PRINTNAME, PO_DESCRIPTION, PO_HELP)
	VALUES (51000, 0, 0, 'Y', TO_DATE('2007-06-19 22:43:07','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2007-06-19 23:09:22','YYYY-MM-DD HH24:MI:SS'), 100, 'IsPostcodeLookup', 'D', 'IsPostcodeLookup', 'IsPostcodeLookup', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ad_element
	(AD_ELEMENT_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, COLUMNNAME, ENTITYTYPE, NAME, PRINTNAME, DESCRIPTION, HELP, PO_NAME, PO_PRINTNAME, PO_DESCRIPTION, PO_HELP)
	VALUES (51001, 0, 0, 'Y', TO_DATE('2007-06-19 22:43:07','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2007-06-19 23:09:54','YYYY-MM-DD HH24:MI:SS'), 100, 'LookupClassName', 'D', 'LookupClassName', 'LookupClassName', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ad_element
	(AD_ELEMENT_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, COLUMNNAME, ENTITYTYPE, NAME, PRINTNAME, DESCRIPTION, HELP, PO_NAME, PO_PRINTNAME, PO_DESCRIPTION, PO_HELP)
	VALUES (51002, 0, 0, 'Y', TO_DATE('2007-06-19 22:43:07','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2007-06-19 23:10:06','YYYY-MM-DD HH24:MI:SS'), 100, 'LookupClientID', 'D', 'LookupClientID', 'LookupClientID', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ad_element
	(AD_ELEMENT_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, COLUMNNAME, ENTITYTYPE, NAME, PRINTNAME, DESCRIPTION, HELP, PO_NAME, PO_PRINTNAME, PO_DESCRIPTION, PO_HELP)
	VALUES (51003, 0, 0, 'Y', TO_DATE('2007-06-19 22:43:07','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2007-06-19 23:10:19','YYYY-MM-DD HH24:MI:SS'), 100, 'LookupUrl', 'D', 'LookupUrl', 'LookupUrl', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ad_element
	(AD_ELEMENT_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, COLUMNNAME, ENTITYTYPE, NAME, PRINTNAME, DESCRIPTION, HELP, PO_NAME, PO_PRINTNAME, PO_DESCRIPTION, PO_HELP)
	VALUES (51004, 0, 0, 'Y', TO_DATE('2007-06-22 02:03:37','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2007-06-22 02:04:31','YYYY-MM-DD HH24:MI:SS'), 100, 'LookupPassword', 'D', 'LookupPassword', 'LookupPassword', NULL, NULL, NULL, NULL, NULL, NULL);

-- Insert Column Definitions
INSERT INTO ad_column
	(AD_COLUMN_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, UPDATED, CREATEDBY, UPDATEDBY, NAME, DESCRIPTION, HELP, VERSION, ENTITYTYPE, COLUMNNAME, AD_TABLE_ID, AD_REFERENCE_ID, AD_REFERENCE_VALUE_ID, AD_VAL_RULE_ID, FIELDLENGTH, DEFAULTVALUE, ISKEY, ISPARENT, ISMANDATORY, ISUPDATEABLE, READONLYLOGIC, ISIDENTIFIER, SEQNO, ISTRANSLATED, ISENCRYPTED, CALLOUT, VFORMAT, VALUEMIN, VALUEMAX, ISSELECTIONCOLUMN, AD_ELEMENT_ID, AD_PROCESS_ID, ISSYNCDATABASE, ISALWAYSUPDATEABLE, COLUMNSQL, MANDATORYLOGIC)
	VALUES (51000, 0, 0, 'Y', TO_DATE('2007-06-19 22:43:07','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2007-06-19 23:14:47','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'IsPostcodeLookup', NULL, NULL, 0, 'D', 'IsPostcodeLookup', 170, 20, NULL, NULL, 1, 'N', 'N', 'N', 'N', 'Y', NULL, 'N', NULL, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 51000, NULL, 'N', 'N', NULL, NULL);
INSERT INTO ad_column
	(AD_COLUMN_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, UPDATED, CREATEDBY, UPDATEDBY, NAME, DESCRIPTION, HELP, VERSION, ENTITYTYPE, COLUMNNAME, AD_TABLE_ID, AD_REFERENCE_ID, AD_REFERENCE_VALUE_ID, AD_VAL_RULE_ID, FIELDLENGTH, DEFAULTVALUE, ISKEY, ISPARENT, ISMANDATORY, ISUPDATEABLE, READONLYLOGIC, ISIDENTIFIER, SEQNO, ISTRANSLATED, ISENCRYPTED, CALLOUT, VFORMAT, VALUEMIN, VALUEMAX, ISSELECTIONCOLUMN, AD_ELEMENT_ID, AD_PROCESS_ID, ISSYNCDATABASE, ISALWAYSUPDATEABLE, COLUMNSQL, MANDATORYLOGIC)
	VALUES (51001, 0, 0, 'Y', TO_DATE('2007-06-19 22:43:07','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2007-06-19 23:04:48','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'LookupClassName', NULL, NULL, 0, 'D', 'LookupClassName', 170, 10, NULL, NULL, 255, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', NULL, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 51001, NULL, 'N', 'N', NULL, NULL);
INSERT INTO ad_column
	(AD_COLUMN_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, UPDATED, CREATEDBY, UPDATEDBY, NAME, DESCRIPTION, HELP, VERSION, ENTITYTYPE, COLUMNNAME, AD_TABLE_ID, AD_REFERENCE_ID, AD_REFERENCE_VALUE_ID, AD_VAL_RULE_ID, FIELDLENGTH, DEFAULTVALUE, ISKEY, ISPARENT, ISMANDATORY, ISUPDATEABLE, READONLYLOGIC, ISIDENTIFIER, SEQNO, ISTRANSLATED, ISENCRYPTED, CALLOUT, VFORMAT, VALUEMIN, VALUEMAX, ISSELECTIONCOLUMN, AD_ELEMENT_ID, AD_PROCESS_ID, ISSYNCDATABASE, ISALWAYSUPDATEABLE, COLUMNSQL, MANDATORYLOGIC)
	VALUES (51002, 0, 0, 'Y', TO_DATE('2007-06-19 22:43:07','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2007-06-19 23:04:48','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'LookupClientID', NULL, NULL, 0, 'D', 'LookupClientID', 170, 10, NULL, NULL, 50, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', NULL, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 51002, NULL, 'N', 'N', NULL, NULL);
INSERT INTO ad_column
	(AD_COLUMN_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, UPDATED, CREATEDBY, UPDATEDBY, NAME, DESCRIPTION, HELP, VERSION, ENTITYTYPE, COLUMNNAME, AD_TABLE_ID, AD_REFERENCE_ID, AD_REFERENCE_VALUE_ID, AD_VAL_RULE_ID, FIELDLENGTH, DEFAULTVALUE, ISKEY, ISPARENT, ISMANDATORY, ISUPDATEABLE, READONLYLOGIC, ISIDENTIFIER, SEQNO, ISTRANSLATED, ISENCRYPTED, CALLOUT, VFORMAT, VALUEMIN, VALUEMAX, ISSELECTIONCOLUMN, AD_ELEMENT_ID, AD_PROCESS_ID, ISSYNCDATABASE, ISALWAYSUPDATEABLE, COLUMNSQL, MANDATORYLOGIC)
	VALUES (51003, 0, 0, 'Y', TO_DATE('2007-06-19 22:43:07','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2007-06-19 23:04:48','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'LookupUrl', NULL, NULL, 0, 'D', 'LookupUrl', 170, 10, NULL, NULL, 100, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', NULL, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 51003, NULL, 'N', 'N', NULL, NULL);
INSERT INTO ad_column
	(AD_COLUMN_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, UPDATED, CREATEDBY, UPDATEDBY, NAME, DESCRIPTION, HELP, VERSION, ENTITYTYPE, COLUMNNAME, AD_TABLE_ID, AD_REFERENCE_ID, AD_REFERENCE_VALUE_ID, AD_VAL_RULE_ID, FIELDLENGTH, DEFAULTVALUE, ISKEY, ISPARENT, ISMANDATORY, ISUPDATEABLE, READONLYLOGIC, ISIDENTIFIER, SEQNO, ISTRANSLATED, ISENCRYPTED, CALLOUT, VFORMAT, VALUEMIN, VALUEMAX, ISSELECTIONCOLUMN, AD_ELEMENT_ID, AD_PROCESS_ID, ISSYNCDATABASE, ISALWAYSUPDATEABLE, COLUMNSQL, MANDATORYLOGIC)
	VALUES (51004, 0, 0, 'Y', TO_DATE('2007-06-22 02:03:37','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2007-06-22 02:05:17','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'LookupPassword', NULL, NULL, 0, 'D', 'LookupPassword', 170, 10, NULL, NULL, 50, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', NULL, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 51004, NULL, 'N', 'N', NULL, NULL);

-- Insert Field Definitions
INSERT INTO ad_field
	(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
	VALUES (51000, 0, 0, 'Y', TO_DATE('2007-06-19 23:17:05','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2007-06-19 23:17:05','YYYY-MM-DD HH24:MI:SS'), 100, 'IsPostcodeLookup', NULL, NULL, 'Y', 135, 51000, NULL, 'Y', NULL, 1, 'N', 220, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO ad_field
	(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
	VALUES (51001, 0, 0, 'Y', TO_DATE('2007-06-19 23:17:06','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2007-06-20 09:10:31','YYYY-MM-DD HH24:MI:SS'), 100, 'LookupClassName', NULL, NULL, 'Y', 135, 51001, NULL, 'Y', '@IsPostcodeLookup@ = ''Y''', 255, 'N', 260, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO ad_field
	(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
	VALUES (51002, 0, 0, 'Y', TO_DATE('2007-06-19 23:17:06','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2007-06-20 09:10:17','YYYY-MM-DD HH24:MI:SS'), 100, 'LookupClientID', NULL, NULL, 'Y', 135, 51002, NULL, 'Y', '@IsPostcodeLookup@ = ''Y''', 50, 'N', 240, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO ad_field
	(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
	VALUES (51003, 0, 0, 'Y', TO_DATE('2007-06-19 23:17:06','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2007-06-20 09:10:12','YYYY-MM-DD HH24:MI:SS'), 100, 'LookupUrl', NULL, NULL, 'Y', 135, 51003, NULL, 'Y', '@IsPostcodeLookup@ = ''Y''', 100, 'N', 230, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);
INSERT INTO ad_field
	(AD_FIELD_ID, AD_CLIENT_ID, AD_ORG_ID, ISACTIVE, CREATED, CREATEDBY, UPDATED, UPDATEDBY, NAME, DESCRIPTION, HELP, ISCENTRALLYMAINTAINED, AD_TAB_ID, AD_COLUMN_ID, AD_FIELDGROUP_ID, ISDISPLAYED, DISPLAYLOGIC, DISPLAYLENGTH, ISREADONLY, SEQNO, SORTNO, ISSAMELINE, ISHEADING, ISFIELDONLY, ISENCRYPTED, ENTITYTYPE, OBSCURETYPE, AD_REFERENCE_ID, ISMANDATORY)
	VALUES (51004, 0, 0, 'Y', TO_DATE('2007-06-19 23:17:06','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2007-06-22 02:07:11','YYYY-MM-DD HH24:MI:SS'), 100, 'LookupPassword', NULL, NULL, 'Y', 135, 51004, NULL, 'Y', '@IsPostcodeLookup@ = ''Y''', 50, 'N', 250, NULL, 'N', 'N', 'N', 'N', 'D', NULL, NULL, NULL);

-- Update Sequences
UPDATE ad_sequence
   SET currentnextsys = (SELECT MAX (ad_element_id) + 1
                           FROM ad_element
                          WHERE ad_element_id < 1000000)
 WHERE NAME = 'AD_Element';

UPDATE ad_sequence
   SET currentnextsys = (SELECT MAX (ad_column_id) + 1
                           FROM ad_column
                          WHERE ad_column_id < 1000000)
 WHERE NAME = 'AD_Column';

UPDATE ad_sequence
   SET currentnextsys = (SELECT MAX (ad_field_id) + 1
                           FROM ad_field
                          WHERE ad_field_id < 1000000)
 WHERE NAME = 'AD_Field';
 
COMMIT;