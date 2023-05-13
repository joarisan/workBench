use curso_sql;

 select * from  funcionarios;
 select * from veiculos;
 
 -- INNER JOIN
 
select * from funcionarios inner join veiculos on veiculos.funcionario_id = funcionarios.id;
 
 select * from funcionarios f inner join veiculos v on v.funcionario_id = f.id;
 select f.nome, f.departamento, v.veiculo,v.placa
 from funcionarios f inner join veiculos v on v.funcionario_id = f.id;

 -- left join
 
 select * from funcionarios left join
 veiculos on veiculos.funcionario_id = funcionario_id;
 
 -- rigth join
 
  select * from funcionarios right join
 veiculos on veiculos.funcionario_id = funcionario_id;
 
 insert into veiculos(funcionario_id, veiculo, placa) values
 ( 2, "FORD KA", "AAA-1001");
 
 -- full join
 
 select * from funcionarios left join
 veiculos on veiculos.funcionario_id = funcionario_id;
 union
   select * from funcionarios right join
 veiculos on veiculos.funcionario_id = funcionario_id;
 
 -- cross join
 
 select * from funcionarios
 cross join veiculos where funcionarios.id = veiculos.funcionario_id;
 
 create table cpfs(
 id int auto_increment primary key,
 cpf varchar(14) not null,
 constraint fk_cpf foreign key(id) references funcionarios(id)
 
 );
 
 insert into cpfs(id, cpf) values (1,'111.111.000-22');
 insert into cpfs(id, cpf) values (2,'222.111.000-22');
 insert into cpfs(id, cpf) values (3,'555.111.000-22');
 insert into cpfs(id, cpf) values (5,'020.111.000-22');
 
insert into cpfs(id, cpf) values (6,'001.111.000-22');
 
 select * from cpfs;
 select * from funcionarios inner join cpfs on funcionarios.id = cpfs.id;
 select * from funcionarios inner join cpfs using(id);

create table clientes(
id int auto_increment primary key,
nome varchar(43) NOT NULL,
quem_indicou int,
constraint fk_quem_indicou foreign key (quem_indicou) references clientes(id)
);

insert into clientes(id, nome, quem_indicou) values (1, 'Andre', null);
insert into clientes(id, nome, quem_indicou) values (2, 'Samuel', 1);
insert into clientes(id, nome, quem_indicou) values (3, 'Carlos', 2);
insert into clientes(id, nome, quem_indicou) values (4, 'Rafael', 1);

select * from clientes;

select a.nome as cliente, b.nome as "quem_indicou"
 from clientes A  join clientes B on a.quem_indicou = b.id;
 
 create view funcionarios_a as  select * from funcionarios where salario >= 5000; 
 select * from funcionarios_a;
 select nome, departamento from funcionarios_a;
 drop view funcionarios_a;
 
 