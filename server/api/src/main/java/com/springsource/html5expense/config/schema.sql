drop table if exists ELIGIBLE_CHARGE;
drop table if exists EXPENSE;
drop table if exists EXPENSE_REPORT;
create table ELIGIBLE_CHARGE (id serial, amount decimal(19,2), category varchar(255), charge_date timestamp, merchant varchar(255), primary key (id));
create table EXPENSE (id serial, amount decimal(19,2), category varchar(255), chargeId bigint, expense_date timestamp, flag varchar(255), merchant varchar(255), receipt varchar(255), receiptExtension varchar(255), expenseReport_id bigint, primary key (id));
create table EXPENSE_REPORT (id serial, purpose varchar(255), receiptRequiredAmount decimal(19,2), state varchar(255), primary key (id));
alter table EXPENSE add constraint FKDCC054382876AD53 foreign key (expenseReport_id) references EXPENSE_REPORT (id) match full;