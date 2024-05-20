create table contacts (	
	contact_id int NOT NULL primary key,
	first_name varchar(255)	NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL
	);
	
create table category (
	category_id varchar(4) NOT NULL primary key,
	category varchar(255) NOT NULL
	);

create table subcategory (
	subcategory_id varchar(8) NOT NULL primary key,
	subcategory varchar(255) NOT NULL
	);
	
create table campaign (
	cf_id int NOT NULL
)

