create database etec_has_ex_1;

use etec_has_ex_1;

create table area
	(
		id_area		int				not null	primary key		identity(1 , 1),
		nm_area		varchar(60)		not null
	);


create table professor
	(
		id_prof		int				not null	primary key		identity(1 , 1),
		nm_prof		varchar(60)		not null,
		end_prof	varchar(255)	not null,
		rg_prof		varchar(20)		not null,
		cpf_prof	varchar(12)		not null,
	);


create table curso
	(
		id_curso	int				not null	primary key		identity(1 , 1),
		nm_curso	varchar(45)		not null,		
		id_area		int				not null,
		constraint Area_id_area		foreign key(id_area) references area (id_area)
	);



create table modulo
	(
		id_mod		int				not null	primary key		identity(1 , 1),
		nm_mod		int				not null,
		id_curso	int				not null,
		constraint Modulo_id_curso	foreign key(id_curso) references curso (id_curso)
	);



create table materia
	(
		id_mat		int				not null	primary key		identity(1 , 1),
		nm_mat		varchar(50)		not null,
		id_prof		int				not null,
		id_mod		int				not null,
		constraint	Professor_id_prof	foreign key(id_prof) references professor (id_prof),
		constraint  Modulo_id_mod		foreign key(id_mod)	 references modulo (id_mod)

	);




create table aluno
	(
		id_aluno		int				not null	primary key		identity(1 , 1),
		nm_aluno		varchar(60)		not null,
		end_aluno		varchar(255)	not null,
		rg_aluno		varchar(20)		not null,
		cpf_aluno		numeric(11)		not null,
		email_aluno		varchar(50),
		nm_mae_aluno	varchar(60),
		nm_pai_aluno	varchar(60),
		id_curso		int				not null,
		constraint Curso_id_curso	foreign key(id_curso) references curso (id_curso)
	);



/* Consulta das tabelas */

sp_help area;
sp_help professor;
sp_help curso;
sp_help modulo;
sp_help materia;
sp_help aluno;

/* consulta das colunas */

select * from area;
select * from professor;
select * from curso;
select * from modulo;
select * from materia;
select * from aluno;
