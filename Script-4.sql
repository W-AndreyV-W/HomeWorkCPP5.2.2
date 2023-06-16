create table if not exists worker (
	id_worker serial primary key,
	name_worker varchar(60) not null
);

create table if not exists department (
	id_department serial primary key,
	name_department varchar(40) not null,
	name_chief integer not null references worker(id_worker)
);

create table if not exists list_employees (
	id_employees integer primary key references worker(id_worker),
	department_id integer not null references department(id_department)
);