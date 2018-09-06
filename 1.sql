drop table transaction;
drop table vehicle;
drop table route;
drop table user_reg_table;

create table route(
	route_id number(10),
	destination varchar(40) not null,
	cityname varchar(30) not null,
	primary key(route_id)
	);
create table vehicle(
	plate_no number(10),
	name varchar(20) not null,
	ACnonAC varchar(9) ,
	seat varchar(4),
	cost_per_day number(10),
	book_end date,
	type varchar(5),
	route_id number(10),
	primary key(plate_no),
	foreign key(route_id) references route(route_id) on delete cascade 
);
create table user_reg_table(
	user_name varchar(20),
	email varchar(30) not null,
	phn_num varchar(30),
	password varchar(30) not null,
	primary key(user_name)
);
create table transaction(
	transaction_id number(5) not null ,
	user_name varchar(20),
	
	book_start date,
	book_end date,
	plate_no number(10),
	primary key (transaction_id),
	foreign key(plate_no) references vehicle(plate_no) on delete cascade ,
	foreign key(user_name) references user_reg_table(user_name) on delete cascade 
);