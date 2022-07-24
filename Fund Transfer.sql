use gladiator;
------------------------------------------------Creation----------------------------------------------
create table fund_transfer( 
ft_id int primary key,
from_user_id int,
to_account_no int ,
to_ifsc varchar(15),
to_bank_name varchar(50),
to_name varchar(50),
amount numeric(15,2),
ft_date date,
trans_type varchar(10)
);


----------------------------------------------Insertion--------------------------------------------------


insert into fund_transfer values (1001,100001,234567897,'HDFC0002435','HDFC','Jake Jordan',20000.00,'2022-05-24','NEFT');
insert into fund_transfer values (1002,100002,900876578,'HDFC0007345','HDFC','Michael Bevan',25550.00,'2022-06-17','RTGS');
insert into fund_transfer values (1003,100003,100098887,'HDFC0009083','HDFC','Phoebe Buffay',30333.54,'2022-03-28','IMPS');
insert into fund_transfer values (1004,100004,100034878,'HDFC0001234','HDFC','John Cena',21200.10,'2022-04-19','NEFT');
insert into fund_transfer values (1005,100005,900056731,'HDFC0005544','HDFC','Jessica Harper',26000.00,'2022-06-11','RTGS');

-----------------------------------------------Essential Queries-----------------------------------------------------
select * from fund_transfer;
select * from fund_transfer where ft_id=1001;
select to_account_no,to_name,ft_date from fund_transfer where ft_id=1004;
select * from fund_transfer where to_name like 'L%';

----To delete any entry
delete fund_transfer where ft_id = 1001;

drop table fund_transfer;