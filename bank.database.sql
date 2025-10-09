CREATE DATABASE IF NOT EXISTS bank;

use bank;

create table branch(Branch_Name varchar(30),Branch_City varchar(30),Assets INT, PRIMARY KEY(BRANCH_Name));
create table bankaccount(Account_no varchar(30), BRANCH_Name varchar(30), Balance INT, PRIMARY KEY(Account_no));
create table depositer(Customer_Name varchar(30), Account_no varchar(30), PRIMARY  KEY(Customer_Name));
create table bankcustomer(Customer_Name varchar(30), Customer_street varchar(30), city varchar(30));
create table loan(loan_number INT, Branch_Name varchar(30), Account_no varchar(30), PRIMARY KEY(loan_number), foreign key(Branch_Name) references branch(Branch_Name));

insert into branch values('SBI_Chamrajpet', 'Bangalore', 50000), ('SBI_ResidencyRoad','Bangalore', 10000),('SBI_ShivajiRoad', 'Bombay', 20000),('SBI_ParliamentRoad', 'Delhi', 10000), ('SBI_Jantarmantar','Delhi', 20000);
select * from branch;

insert into loan values(1,'SBI_Chamrajpet',1000),(2,'SBI_ResidencyRoad',2000),
(3,'SBI_ShivajiRoad',3000),(4,'SBI_ParliamentRoad',4000),(5,'SBI_Jantarmantar',5000);
select * from loan;

insert into bankaccount values(1,'SBI_Chamrajpet',2000),(2,'SBI_ResidencyRoad',5000),(3,'SBI_ShivajiRoad',6000),(4,'SBI_ParliamentRoad', 9000),(5,'SBI_Jantarmantar', 8000),
(6,'SBI_ShivajiRoad', 4000),(8,'SBI_ResidencyRoad',4000), (9,'SBI_ParliamentRoad',3000),(10,'SBI_ResidencyRoad',5000),(11,'SBI_Jantarmantar',2000);
commit;
select * from bankaccount;

insert into 
