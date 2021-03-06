-- Mar 12, 2008 11:40:54 AM CET
-- [ 1912484 ] Custom replenish doesn't work
INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,SeqNo,Help,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Updated','Y','N','Date this record was updated','N',0,'The Updated field indicates the date that this record was updated.',1.000000000000,'Y',364,54677,'Updated',0,0,7,'N',TO_TIMESTAMP('2008-03-12 11:40:52','YYYY-MM-DD HH24:MI:SS'),'N',16,100,TO_TIMESTAMP('2008-03-12 11:40:52','YYYY-MM-DD HH24:MI:SS'),607,'N','N','N',100,'N','N','D')
;

-- Mar 12, 2008 11:40:54 AM CET
-- [ 1912484 ] Custom replenish doesn't work
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=54677 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Mar 12, 2008 11:41:39 AM CET
-- [ 1912484 ] Custom replenish doesn't work
UPDATE AD_Field SET Name='Updated', Description='Date this record was updated', Help='The Updated field indicates the date that this record was updated.' WHERE AD_Column_ID=54677 AND IsCentrallyMaintained='Y'
;

-- Mar 12, 2008 11:41:44 AM CET
-- [ 1912484 ] Custom replenish doesn't work
ALTER TABLE T_Replenish ADD COLUMN Updated TIMESTAMP
;

-- Mar 12, 2008 11:42:57 AM CET
-- [ 1912484 ] Custom replenish doesn't work
INSERT INTO AD_Column (Name,IsMandatory,IsTranslated,Description,IsIdentifier,SeqNo,Help,AD_Reference_Value_ID,Version,IsActive,AD_Table_ID,AD_Column_ID,ColumnName,AD_Client_ID,AD_Org_ID,FieldLength,IsParent,Created,IsSyncDatabase,AD_Reference_ID,CreatedBy,Updated,AD_Element_ID,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,EntityType) VALUES ('Updated By','Y','N','User who updated this records','N',0,'The Updated By field indicates the user who updated this record.',110,1.000000000000,'Y',364,54678,'UpdatedBy',0,0,22,'N',TO_TIMESTAMP('2008-03-12 11:42:57','YYYY-MM-DD HH24:MI:SS'),'N',18,100,TO_TIMESTAMP('2008-03-12 11:42:57','YYYY-MM-DD HH24:MI:SS'),608,'N','N','N',100,'N','N','D')
;

-- Mar 12, 2008 11:42:57 AM CET
-- [ 1912484 ] Custom replenish doesn't work
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=54678 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Mar 12, 2008 11:43:10 AM CET
-- [ 1912484 ] Custom replenish doesn't work
UPDATE AD_Field SET Name='Updated By', Description='User who updated this records', Help='The Updated By field indicates the user who updated this record.' WHERE AD_Column_ID=54678 AND IsCentrallyMaintained='Y'
;

-- Mar 12, 2008 11:43:13 AM CET
-- [ 1912484 ] Custom replenish doesn't work
ALTER TABLE T_Replenish ADD COLUMN UpdatedBy NUMERIC(10)
;

