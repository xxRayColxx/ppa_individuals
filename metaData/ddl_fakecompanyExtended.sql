--
-- Author           : R. Collaris
-- Package          : contact
-- Diagram          : contact, is GDM: True
-- Date             : Jul 18, 2024, 3:22:10 PM
-- Version          : 1.0
-- Selected platform: Oracle
--
-- Generated by EaTool, used template: 01_01 no foreign key Create DDL for sats_Links.ftl
--

--
-- Drop statements
--
drop table if exists ROLE CASCADE CONSTRAINTS;
drop table if exists PERSON CASCADE CONSTRAINTS;
drop table if exists SAVINGSACCOUNT CASCADE CONSTRAINTS;
drop table if exists CONNECTEDPHONE CASCADE CONSTRAINTS;
drop table if exists CONTACTPERSON CASCADE CONSTRAINTS;
drop table if exists RESIDENTIALPERIOD CASCADE CONSTRAINTS;
drop table if exists CONNECTEDEMAIL CASCADE CONSTRAINTS;
drop table if exists CUSTOMER CASCADE CONSTRAINTS;
drop table if exists MOBILEPHONE CASCADE CONSTRAINTS;
drop table if exists WORKHISTORY CASCADE CONSTRAINTS;
drop table if exists ADDRESS CASCADE CONSTRAINTS;
drop table if exists EMAIL CASCADE CONSTRAINTS;
drop table if exists EMPLOYEE CASCADE CONSTRAINTS;
drop table if exists EMPLOYER CASCADE CONSTRAINTS;
drop table if exists REPRESENTIVE CASCADE CONSTRAINTS;
drop table if exists RELATIONSHIP CASCADE CONSTRAINTS;
drop table if exists INLAY CASCADE CONSTRAINTS;
drop table if exists link_connectedEmail;
drop table if exists link_Person_Role;
drop table if exists link_representive;
drop table if exists link_ResidentialPeriod;
drop table if exists link_connectedPhone;
drop table if exists link_RelationShip;
drop table if exists link_WorkHistory;

--
-- Create statements
--

create table ROLE (
 Type                            number              
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT ROLE_PK PRIMARY KEY(fromValidityDate, id)
);

create table PERSON (
 name                            varchar2(50)        
,surName                         varchar2(50)        
,gender                          varchar2(255)       
,birthday                        date                
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT PERSON_PK PRIMARY KEY(fromValidityDate, id)
);

create table SAVINGSACCOUNT (
 amount                          number              
,accountNumber                   varchar2(50)        
,savingsAccountProduct           varchar2(2)         
,measuredAt                      date                
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT SAVINGSACCOUNT_PK PRIMARY KEY(savingsAccountProduct, measuredAt, fromValidityDate, id)
);

create table CONNECTEDPHONE (
 hasPhoneFromDate                date                
,hasPhoneTillDate                date                
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT CONNECTEDPHONE_PK PRIMARY KEY(fromValidityDate, id)
);

create table CONTACTPERSON (
 subject                         number              
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT CONTACTPERSON_PK PRIMARY KEY(fromValidityDate, id)
);

create table RESIDENTIALPERIOD (
 livesAtFrom                     date                
,livesAtTill                     date                
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT RESIDENTIALPERIOD_PK PRIMARY KEY(fromValidityDate, id)
);

create table CONNECTEDEMAIL (
 hasEmailTillDate                date                
,hasEmailFromDate                date                
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT CONNECTEDEMAIL_PK PRIMARY KEY(fromValidityDate, id)
);

create table CUSTOMER (
 customerNumber                  varchar2(50)        
,customerMeasuredAt              date                
,totalSavingAmount               number              
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT CUSTOMER_PK PRIMARY KEY(fromValidityDate, id)
);

create table MOBILEPHONE (
 validNumber                     number              
,country                         varchar2            
,phoneNumber                     varchar2            
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT MOBILEPHONE_PK PRIMARY KEY(fromValidityDate, id)
);

create table WORKHISTORY (
 tillDate                        date                
,fromDate                        date                
,kind                            varchar2            
,income                          number              
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT WORKHISTORY_PK PRIMARY KEY(fromValidityDate, id)
);

create table ADDRESS (
 street                          varchar2(50)        
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT ADDRESS_PK PRIMARY KEY(fromValidityDate, id)
);

create table EMAIL (
 valid                           number              
,email                           varchar2            
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT EMAIL_PK PRIMARY KEY(fromValidityDate, id)
);

create table EMPLOYEE (
 employeeId                      varchar2(50)        
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT EMPLOYEE_PK PRIMARY KEY(fromValidityDate, id)
);

create table EMPLOYER (
 employerName                    varchar2(50)        
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT EMPLOYER_PK PRIMARY KEY(fromValidityDate, id)
);

create table REPRESENTIVE (
 representiveFromDate            date                
,representiveTillDate            date                
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT REPRESENTIVE_PK PRIMARY KEY(fromValidityDate, id)
);

create table RELATIONSHIP (
 startOfRelation                 date                
,relationType                    varchar2(255)       
,endOfRelation                   date                
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT RELATIONSHIP_PK PRIMARY KEY(fromValidityDate, id)
);

create table INLAY (
 inlayDate                       date                
,inlayProduct                    varchar2(2)         
,inlayAmount                     number              
,pensionFundId                   number              
,fromValidityDate                timestamp           
,id                              number              
,tillValidityDate                timestamp           
,CONSTRAINT INLAY_PK PRIMARY KEY(inlayDate, inlayProduct, fromValidityDate, id)
);

create table link_connectedEmail (
 connectedEmail_id              number              
,email_id                       number              
,Person_id                      number              
);

create table link_Person_Role (
 Person_id                      number              
,Role_id                        number              
);

create table link_representive (
 representive_id                number              
,contactPerson_id               number              
,Employer_id                    number              
);

create table link_ResidentialPeriod (
 ResidentialPeriod_id           number              
,Address_id                     number              
,Person_id                      number              
);

create table link_connectedPhone (
 connectedPhone_id              number              
,MobilePhone_id                 number              
,Person_id                      number              
);

create table link_RelationShip (
 RelationShip_id                number              
,PersonFrom_id                  number              
,PersonTo_id                    number              
);

create table link_WorkHistory (
 WorkHistory_id                 number              
,Employee_id                    number              
,Employer_id                    number              
);

--
-- Einde template
--