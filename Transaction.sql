use gladiator;

---------------------------------Creation---------------------------------------------------
create table transaction1(
trans_id int primary key,
user_id int,
to_acc_no int,
to_ifsc varchar(15),
to_name varchar(50),
to_bank varchar(20),
amount numeric(15,2),
trans_date date,
trans_type varchar(20),
remarks varchar(50),
maturity_instr varchar(50),
trans_mode varchar(20),
crdr varchar(10)
)

----------------------------------Insertion-----------------------------------------------------

insert into transaction1 values(90001,100001,234567897,'HDFC0002435','Jake Jordan','HDFC',20000.00,'2022-05-24','fund_transfer','Remark1','maturity_instruction','NEFT','credit');
insert into transaction1 values(90002,100002,900876578,'HDFC0007345','Michael Bevan','HDFC',25550.00,'2022-06-17','fund_transfer','Remark2','maturity_instruction2','RTGS','credit');
insert into transaction1 values(90003,100003,100098887,'HDFC0009083','Self','HDFC',30333.54,'2022-03-28','withdraw','Remark3','maturity_instruction3','bank','credit');
insert into transaction1 values(90004,100004,100034878,'HDFC0001234','John Cena','HDFC',21200.10,'2022-04-19','deposit','Remark4','maturity_instruction4','bank','debit');
insert into transaction1 values(90005,100005,900056731,'HDFC0005544','Self','HDFC',26000.00,'2022-06-11','withdraw','Remark4','maturity_instruction4','atm','credit');


----------------------------------Essential Queries------------------------------------------------

select * from transaction1;
select * from transaction1  where trans_id=4;
select trans_id,user_id,to_acc_no,trans_mode from transaction1  where trans_id=5;
select * from transaction1 where to_name like 'J%';
drop table transaction1;

