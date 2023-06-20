create table if not exists worker (
	id_chief serial primary key,
	name_worker varchar(60) not null,
	name_department varchar(40),
	chief integer references worker(id_chief)
);