truncate table address;
INSERT INTO address( ID,PENSIONFUNDID,STREET,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (10,1001,'Pietje puk straat',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO address( ID,PENSIONFUNDID,STREET,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (10,1001,'Pietpuk straat',to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO address( ID,PENSIONFUNDID,STREET,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (11,1001,'Gedeelde straat',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO address( ID,PENSIONFUNDID,STREET,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (17,1001,'Hovenstraat',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO address( ID,PENSIONFUNDID,STREET,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (12,1001,'Straat 12345',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO address( ID,PENSIONFUNDID,STREET,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (18,1001,'De queryAllee',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO address( ID,PENSIONFUNDID,STREET,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (13,1002,'Thalestraat',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO address( ID,PENSIONFUNDID,STREET,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (14,1002,'Ontostraat',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO address( ID,PENSIONFUNDID,STREET,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (15,1002,'LLMStraat',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO address( ID,PENSIONFUNDID,STREET,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (16,1002,'Gedeelde straat 2',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table role;
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (60,1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (61,1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (62,1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (70,1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (71,1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (72,1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (65,1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (75,1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (66,1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (76,1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO role( ID,PENSIONFUNDID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (63,1002,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table person;
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (0,1001,'Kees','m',to_date('2000-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (0,1001,'Kees mees','m',to_date('1990-01-01', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (1,1001,'Jan','m',to_date('1985-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (2,1001,'Marian','f',to_date('2000-01-01', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (3,1001,'Truus','f',to_date('1990-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (3,1001,'Truus','f',to_date('2005-01-01', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (4,1002,'Flip','m',to_date('1995-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (5,1002,'Suzan','f',to_date('1980-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (6,1002,'Klara','f',to_date('2005-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (7,1002,'Klaas','f',to_date('1980-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (7,1002,'Klaas','m',to_date('1980-01-01', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (8,1001,'Bessie','f',to_date('2000-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO person( ID,PENSIONFUNDID,NAME,GENDER,BIRTHDAY,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (9,1002,'Kees','m',to_date('2005-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table relationship;
INSERT INTO relationship( startOfRelation,relationType,endOfRelation,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (to_date('2024-01-01', 'yyyy-mm-dd'),'colleagues',to_date('2024-01-01', 'yyyy-mm-dd'),1001,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),150.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO relationship( startOfRelation,relationType,endOfRelation,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (to_date('2024-03-01', 'yyyy-mm-dd'),'superior ',to_date('2025-01-01', 'yyyy-mm-dd'),1001,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),151.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO relationship( startOfRelation,relationType,endOfRelation,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (to_date('2025-01-01', 'yyyy-mm-dd'),'colleagues',to_date('2029-05-01', 'yyyy-mm-dd'),1002.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),152.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table link_relationship;
INSERT INTO link_relationship( RelationShip_id,PersonFrom_id,PersonTo_id) VALUES (150.0,0.0,8.0);
INSERT INTO link_relationship( RelationShip_id,PersonFrom_id,PersonTo_id) VALUES (151.0,0.0,9.0);
INSERT INTO link_relationship( RelationShip_id,PersonFrom_id,PersonTo_id) VALUES (152.0,8.0,9.0);
truncate table email;
INSERT INTO email( valid,email,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (1.0,'kees.mees@apg.nl',1001.0,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),130.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO email( valid,email,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (1.0,'bessie@apg.nl',1001.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),131.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO email( valid,email,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (1.0,'kees@apg.nl',1002.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),132.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table link_connectedemail;
INSERT INTO link_connectedemail( connectedEmail_id,email_id,Person_id) VALUES (140.0,130.0,0.0);
INSERT INTO link_connectedemail( connectedEmail_id,email_id,Person_id) VALUES (141.0,131.0,8.0);
INSERT INTO link_connectedemail( connectedEmail_id,email_id,Person_id) VALUES (142.0,132.0,9.0);
truncate table connectedemail;
INSERT INTO connectedemail( hasEmailTillDate,hasEmailFromDate,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (to_date('2024-01-01', 'yyyy-mm-dd'),to_date('2027-01-01', 'yyyy-mm-dd'),1001.0,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),140.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO connectedemail( hasEmailTillDate,hasEmailFromDate,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (to_date('2023-01-01', 'yyyy-mm-dd'),to_date('2026-01-01', 'yyyy-mm-dd'),1001.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),141.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO connectedemail( hasEmailTillDate,hasEmailFromDate,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (to_date('2022-01-01', 'yyyy-mm-dd'),to_date('2028-01-01', 'yyyy-mm-dd'),1002.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),142.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table mobilephone;
INSERT INTO mobilephone( id,validNumber,country,phoneNumber,pensionFundId,fromValidityDate,tillValidityDate) VALUES (123.0,1.0,31,6.123456789E9,1001.0,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO mobilephone( id,validNumber,country,phoneNumber,pensionFundId,fromValidityDate,tillValidityDate) VALUES (124.0,1.0,31.0,6.123456788E9,1001.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO mobilephone( id,validNumber,country,phoneNumber,pensionFundId,fromValidityDate,tillValidityDate) VALUES (125.0,1.0,31.0,6.123456787E9,1002.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table link_connectedphone;
INSERT INTO link_connectedphone( connectedPhone_id,MobilePhone_id,Person_id) VALUES (122.0,123.0,0.0)
INSERT INTO link_connectedphone( connectedPhone_id,MobilePhone_id,Person_id) VALUES (121.0,124.0,8.0)
INSERT INTO link_connectedphone( connectedPhone_id,MobilePhone_id,Person_id) VALUES (120.0,125.0,9.0)
truncate table connectedphone;
INSERT INTO connectedphone( id,hasPhoneFromDate,hasPhoneTillDate,pensionFundId,fromValidityDate,tillValidityDate) VALUES (122.0,to_date('2024-01-01', 'yyyy-mm-dd'),to_date('2027-01-01', 'yyyy-mm-dd'),1001.0,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO connectedphone( id,hasPhoneFromDate,hasPhoneTillDate,pensionFundId,fromValidityDate,tillValidityDate) VALUES (121.0,to_date('2023-01-01', 'yyyy-mm-dd'),to_date('2026-01-01', 'yyyy-mm-dd'),1001.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO connectedphone( id,hasPhoneFromDate,hasPhoneTillDate,pensionFundId,fromValidityDate,tillValidityDate) VALUES (120.0,to_date('2022-01-01', 'yyyy-mm-dd'),to_date('2028-01-01', 'yyyy-mm-dd'),1002.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table link_person_role;
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (0,60);
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (1,61);
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (2,62);
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (0,70);
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (1,71);
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (2,72);
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (4,63);
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (3,75);
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (3,65);
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (8,66);
INSERT INTO link_person_role( PERSON_ID,ROLE_ID) VALUES (8,76);
truncate table customer;
INSERT INTO customer( ID,PENSIONFUNDID,CUSTOMERNUMBER,CUSTOMERMEASUREDAT,TOTALSAVINGAMOUNT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (60,1001,'cNr01',to_date('2024-01-01', 'yyyy-mm-dd'),3000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO customer( ID,PENSIONFUNDID,CUSTOMERNUMBER,CUSTOMERMEASUREDAT,TOTALSAVINGAMOUNT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (60,1001,'cNr01',to_date('2024-01-01', 'yyyy-mm-dd'),4000,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO customer( ID,PENSIONFUNDID,CUSTOMERNUMBER,CUSTOMERMEASUREDAT,TOTALSAVINGAMOUNT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (61,1001,'cNr02',to_date('2024-01-01', 'yyyy-mm-dd'),1700,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO customer( ID,PENSIONFUNDID,CUSTOMERNUMBER,CUSTOMERMEASUREDAT,TOTALSAVINGAMOUNT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (62,1001,'cNr03',to_date('2024-01-01', 'yyyy-mm-dd'),2000,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO customer( ID,PENSIONFUNDID,CUSTOMERNUMBER,CUSTOMERMEASUREDAT,TOTALSAVINGAMOUNT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (65,1001,'cNr05',to_date('2024-01-01', 'yyyy-mm-dd'),7000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO customer( ID,PENSIONFUNDID,CUSTOMERNUMBER,CUSTOMERMEASUREDAT,TOTALSAVINGAMOUNT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (66,1001,'cNr06',to_date('2024-01-01', 'yyyy-mm-dd'),4000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO customer( ID,PENSIONFUNDID,CUSTOMERNUMBER,CUSTOMERMEASUREDAT,TOTALSAVINGAMOUNT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (63,1002,'cNr04',to_date('2023-01-01', 'yyyy-mm-dd'),2000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table link_residentialperiod;
INSERT INTO link_residentialperiod( RESIDENTIALPERIOD_ID,ADDRESS_ID,PERSON_ID) VALUES (50,10,0);
INSERT INTO link_residentialperiod( RESIDENTIALPERIOD_ID,ADDRESS_ID,PERSON_ID) VALUES (51,11,1);
INSERT INTO link_residentialperiod( RESIDENTIALPERIOD_ID,ADDRESS_ID,PERSON_ID) VALUES (52,10,2);
INSERT INTO link_residentialperiod( RESIDENTIALPERIOD_ID,ADDRESS_ID,PERSON_ID) VALUES (53,12,3);
INSERT INTO link_residentialperiod( RESIDENTIALPERIOD_ID,ADDRESS_ID,PERSON_ID) VALUES (54,12,3);
INSERT INTO link_residentialperiod( RESIDENTIALPERIOD_ID,ADDRESS_ID,PERSON_ID) VALUES (55,17,3);
INSERT INTO link_residentialperiod( RESIDENTIALPERIOD_ID,ADDRESS_ID,PERSON_ID) VALUES (56,16,5);
INSERT INTO link_residentialperiod( RESIDENTIALPERIOD_ID,ADDRESS_ID,PERSON_ID) VALUES (57,17,8);
INSERT INTO link_residentialperiod( RESIDENTIALPERIOD_ID,ADDRESS_ID,PERSON_ID) VALUES (58,18,8);
INSERT INTO link_residentialperiod( RESIDENTIALPERIOD_ID,ADDRESS_ID,PERSON_ID) VALUES (59,12,6);
truncate table contactperson;
INSERT INTO contactperson( subject,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (1.0,1001.0,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),160.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO contactperson( subject,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (2.0,1001.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),161.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO contactperson( subject,pensionFundId,fromValidityDate,id,tillValidityDate) VALUES (3.0,1002.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),162.0,to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table link_representive;
INSERT INTO link_representive( representive_id,contactPerson_id,Employer_id) VALUES (170.0,160.0,120.0);
INSERT INTO link_representive( representive_id,contactPerson_id,Employer_id) VALUES (171.0,161.0,120.0);
INSERT INTO link_representive( representive_id,contactPerson_id,Employer_id) VALUES (172.0,162.0,121.0);
truncate table representive;
INSERT INTO representive( id,representiveFromDate,representiveTillDate,pensionFundId,fromValidityDate,tillValidityDate) VALUES (170.0,to_date('2024-01-01', 'yyyy-mm-dd'),to_date('2025-01-01', 'yyyy-mm-dd'),1001.0,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO representive( id,representiveFromDate,representiveTillDate,pensionFundId,fromValidityDate,tillValidityDate) VALUES (171.0,to_date('2024-01-01', 'yyyy-mm-dd'),to_date('2027-01-01', 'yyyy-mm-dd'),1001.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO representive( id,representiveFromDate,representiveTillDate,pensionFundId,fromValidityDate,tillValidityDate) VALUES (162.0,to_date('2023-01-01', 'yyyy-mm-dd'),to_date('2028-01-01', 'yyyy-mm-dd'),1002.0,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table residentialperiod;
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (50,1001,to_date('2000-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (50,1001,to_date('1990-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (51,1001,to_date('2005-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (52,1001,to_date('2002-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (53,1001,to_date('2020-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (54,1001,to_date('2020-01-01', 'yyyy-mm-dd'),to_date('2023-12-01', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (55,1001,to_date('2023-12-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (57,1001,to_date('2010-01-01', 'yyyy-mm-dd'),to_date('2021-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (58,1001,to_date('2021-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (56,1002,to_date('2010-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO residentialperiod( ID,PENSIONFUNDID,LIVESATFROM,LIVESATTILL,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (59,1002,to_date('2000-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table savingsaccount;
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (60,1001,1000,'svNr01','p1',to_date('2020-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (60,1001,2000,'svNr01','p2',to_date('2020-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (60,1001,2500,'svNr01','p1',to_date('2020-01-01', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (60,1001,1500,'svNr01','p2',to_date('2020-01-01', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (61,1001,700,'svNr02','p1',to_date('2020-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (61,1001,1000,'svNr02','p2',to_date('2020-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (62,1001,200,'svNr03','p1',to_date('2020-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (62,1001,800,'svNr03','p2',to_date('2020-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (62,1001,500,'svNr03','p1',to_date('2020-01-01', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (62,1001,1500,'svNr03','p2',to_date('2020-01-01', 'yyyy-mm-dd'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (65,1001,2000,'svNr05','p1',to_date('2024-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (65,1001,5000,'svNr05','p2',to_date('2024-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (66,1001,1500,'svNr05','p1',to_date('2024-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (66,1001,2500,'svNr05','p2',to_date('2024-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO savingsaccount( ID,PENSIONFUNDID,AMOUNT,ACCOUNTNUMBER,SAVINGSACCOUNTPRODUCT,MEASUREDAT,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (63,1002,2000,'svNr04','p1',to_date('2023-01-01', 'yyyy-mm-dd'),to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table employee;
INSERT INTO employee( ID,PENSIONFUNDID,EMPLOYEEID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (70,1001,'empId01_fout',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO employee( ID,PENSIONFUNDID,EMPLOYEEID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (70,1001,'empId01',to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO employee( ID,PENSIONFUNDID,EMPLOYEEID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (71,1001,'empId02',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO employee( ID,PENSIONFUNDID,EMPLOYEEID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (72,1001,'empId03',to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO employee( ID,PENSIONFUNDID,EMPLOYEEID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (75,1001,'empId05',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO employee( ID,PENSIONFUNDID,EMPLOYEEID,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (76,1001,'empId06',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table workhistory;
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (100,1001,to_date('2000-01-01', 'yyyy-mm-dd'),to_date('2010-01-01', 'yyyy-mm-dd'),30000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (100,1001,to_date('1990-01-01', 'yyyy-mm-dd'),to_date('2000-01-01', 'yyyy-mm-dd'),40000,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (101,1001,to_date('2010-01-01', 'yyyy-mm-dd'),to_date('2020-01-01', 'yyyy-mm-dd'),40000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (101,1001,to_date('2000-01-01', 'yyyy-mm-dd'),to_date('2020-01-01', 'yyyy-mm-dd'),50000,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (102,1001,to_date('2020-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),50000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (103,1001,to_date('2010-01-01', 'yyyy-mm-dd'),to_date('2021-01-01', 'yyyy-mm-dd'),30000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (104,1001,to_date('2021-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),40000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (105,1001,to_date('2023-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),45000,to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (106,1001,to_date('2020-01-01', 'yyyy-mm-dd'),to_date('2024-01-01', 'yyyy-mm-dd'),30000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (107,1001,to_date('2024-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),100000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (108,1001,to_date('2020-01-01', 'yyyy-mm-dd'),to_date('2024-01-01', 'yyyy-mm-dd'),20000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO workhistory( ID,PENSIONFUNDID,FROMDATE,TILLDATE,INCOME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (109,1001,to_date('2024-01-01', 'yyyy-mm-dd'),to_date('9999-12-31', 'yyyy-mm-dd'),70000,to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
truncate table link_workhistory;
INSERT INTO link_workhistory( WORKHISTORY_ID,EMPLOYEE_ID,EMPLOYER_ID) VALUES (100,70,121);
INSERT INTO link_workhistory( WORKHISTORY_ID,EMPLOYEE_ID,EMPLOYER_ID) VALUES (101,70,121);
INSERT INTO link_workhistory( WORKHISTORY_ID,EMPLOYEE_ID,EMPLOYER_ID) VALUES (102,70,121);
INSERT INTO link_workhistory( WORKHISTORY_ID,EMPLOYEE_ID,EMPLOYER_ID) VALUES (103,71,121);
INSERT INTO link_workhistory( WORKHISTORY_ID,EMPLOYEE_ID,EMPLOYER_ID) VALUES (104,71,121);
INSERT INTO link_workhistory( WORKHISTORY_ID,EMPLOYEE_ID,EMPLOYER_ID) VALUES (105,72,121);
INSERT INTO link_workhistory( WORKHISTORY_ID,EMPLOYEE_ID,EMPLOYER_ID) VALUES (106,75,120);
INSERT INTO link_workhistory( WORKHISTORY_ID,EMPLOYEE_ID,EMPLOYER_ID) VALUES (107,75,120);
INSERT INTO link_workhistory( WORKHISTORY_ID,EMPLOYEE_ID,EMPLOYER_ID) VALUES (108,76,120);
INSERT INTO link_workhistory( WORKHISTORY_ID,EMPLOYEE_ID,EMPLOYER_ID) VALUES (109,76,120);
truncate table employer;
INSERT INTO employer( ID,PENSIONFUNDID,EMPLOYERNAME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (120,1001,'Apg',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO employer( ID,PENSIONFUNDID,EMPLOYERNAME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (120,1001,'Apg Group N.V.',to_date('2024-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO employer( ID,PENSIONFUNDID,EMPLOYERNAME,FROMVALIDITYDATE,TILLVALIDITYDATE) VALUES (121,1001,'Gemeente Heerlen',to_date('1900-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'),to_date('9999-12-31 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
commit;