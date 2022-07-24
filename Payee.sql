create database gladiator;

-----------------------------------Creation--------------------------------------------------------
use gladiator;
create table payee(
payee_id int primary key,
user_id int,
account_no int,
ifsc varchar(15),
bank_name varchar(50),
payee_name varchar(50),
nickname varchar(10)
)

---------------------------------Insertion---------------------------------------------------------

insert into payee values (101,100001,234567897,'HDFC0002435','HDFC','Jake Jordan','Joe');
insert into payee values (102,100002,900876578,'HDFC0007345','HDFC','Michael Bevan','Mike');
insert into payee values (103,100003,100098887,'HDFC0009083','HDFC','Phoebe Buffay','Pheebs');
insert into payee values (104,100004,100034878,'HDFC0001234','HDFC','John Cena','Jo');
insert into payee values (105,100005,900056731,'HDFC0005544','HDFC','Jessica Harper','Jes');

-------------------------------Essential Queries------------------------------------------------------

select * from payee;
select * from payee where payee_id=101;
select account_no from payee where payee_id=105;
select * from payee where payee_name like 'J%';

----To delete any entry
delete payee where payee_id in ('101','102','103','104','105')

