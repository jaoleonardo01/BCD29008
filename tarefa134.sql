//"Povoar horario referente a todas as disciplinas que tem um ministradoresdasdisciplinas também associado."

use bcd;

show tables;

desc MinistradoresDasDisciplinas;
desc disciplina;

select * from MinistradoresDasDisciplinas order by disciplina;
select * from professor where idprofessor=7;

select nome from disciplina where iddisciplina=3;
select nome from disciplina where iddisciplina=4;
select nome from disciplina where iddisciplina=5;
select nome from disciplina where iddisciplina=13;
select nome from disciplina where iddisciplina=17;
select nome from disciplina where iddisciplina=18;
select nome from disciplina where iddisciplina=19;
select nome from disciplina where iddisciplina=22;
select nome from disciplina where iddisciplina=25;
select nome from disciplina where iddisciplina=28;
select nome from disciplina where iddisciplina=33;
select nome from disciplina where iddisciplina=35;
select nome from disciplina where iddisciplina=36;
select nome from disciplina where iddisciplina=41;
select nome from disciplina where iddisciplina=42;
select nome from disciplina where iddisciplina=43;
select nome from disciplina where iddisciplina=44;
select nome from disciplina where iddisciplina=48;
select nome from disciplina where iddisciplina=49;
select nome from disciplina where iddisciplina=50;
select nome from disciplina where iddisciplina=55;

use BCD_teste4;
desc horario;

CREATE TABLE if not exists  horario(
	idhorario smallint(5) unsigned primary key auto_increment,
    disciplina smallint(5) unsigned,
    semestre smallint(5) unsigned,
    inicio time,
    termino time,
    turno varchar(16),
    dia smallint(6)
);

select * from horario;

drop table horario;

desc horario;

insert into horario(disciplina, semestre, inicio, termino, turno, dia)
values
    (
        3,
        (select idsemestre from semestre where ano='2016' and metade='2'),
		'13:30',
        '17:30',
        tarde,
        1
    );
