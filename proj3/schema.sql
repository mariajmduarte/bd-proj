drop table if exists instituicao cascade;
drop table if exists concelho cascade;
drop table if exists regiao cascade;
drop table if exists medico cascade;
drop table if exists consulta cascade;
drop table if exists prescricao cascade;
drop table if exists analise cascade;
drop table if exists venda_farmacia cascade;
drop table if exists prescricao_venda cascade;

----------------------------------------
-- Table Creation
----------------------------------------

-- Named constraints are global to the database.
-- Therefore the following use the following naming rules:
--   1. pk_table for names of primary key constraints
--   2. fk_table_another for names of foreign key constraints

create table regiao (
  num_regiao varchar(1) not null, --unique, --5 regioes
  nome varchar(8) not null,--Alentejo maior
  num_habitantes integer not null,--3 689 609 habitantes, regiao norte
  constraint pk_regiao primary key(num_regiao));

create table concelho (
  num_concelho varchar(3) not null,-- unique,--308 municipios
  num_regiao varchar(1) not null  ,
  nome varchar(28) not null,-- Figueira de Castelo Rodrigo e Vila Real de Santo António
  num_habitantes integer not null,-- 507 220 Lisboa
  constraint pk_concelho primary key(num_concelho, num_regiao),
  constraint fk_concelho_regiao foreign key(num_regiao) references regiao(num_regiao) on delete cascade on update cascade
  );

create table instituicao (
  nome varchar(60) not null, --unique,--Hospital Santo António dos Capuchos
  -- tipo = {farmacia, laboratorio, clinica, hospital}
  tipo varchar(11) not null check(tipo in ('Farmacia', 'Laboratorio', 'Clinica', 'Hospital')),
  num_regiao varchar(1) not null,
  num_concelho varchar(3) not null,
  constraint pk_instituicao primary key(nome),
  constraint fk_instituicao_concelho foreign key(num_regiao, num_concelho) references concelho(num_regiao, num_concelho) on delete cascade on update cascade
  );

create table medico (
  num_cedula varchar(5) not null, --unique,
  nome varchar(150) not null,-- Manuel Maria Filipe Carlos Amélio Luís Miguel Rafael Gabriel Gonzaga Xavier Francisco de Assis Eugénio de Bragança Orleães Sabóia e Saxe-Coburgo-Gotha
  especialidade varchar(50) not null,--Otorrinolaringologia
  constraint pk_medico primary key(num_cedula));

create table consulta (
  num_cedula varchar(5) not null  ,
  num_doente varchar(9) not null  ,
  -- um médico não pode ver doentes ao fim de semana
  data_consulta date not null check( extract (dow from data_consulta) != 0 or extract (dow from data_consulta) != 6 )  ,
  nome_instituicao varchar(60) not null,
  constraint pk_consulta primary key(num_cedula, num_doente, data_consulta),
  constraint fk_consulta_medico foreign key(num_cedula) references medico(num_cedula) on delete cascade on update cascade,
  constraint fk_consulta_instituicao foreign key(nome_instituicao) references instituicao(nome) on delete cascade on update cascade -- verificar instituicao(nome)
  );

create table prescricao (
  num_cedula varchar(5) not null  ,
  num_doente varchar(9) not null  ,
  data_consulta date not null  ,
  substancia varchar(50) not null  ,
  quant varchar(10) not null,
  constraint pk_prescricao primary key(num_cedula, num_doente, data_consulta, substancia),
  constraint fk_prescricao_consulta foreign key(num_cedula, num_doente, data_consulta) references consulta(num_cedula, num_doente, data_consulta) on delete cascade on update cascade
  );

create table analise (
  num_analise varchar(7) not null,-- unique,-- de acordo com as analises da Maria
  especialidade varchar(50) not null,
  num_cedula varchar(5) not null ,
  num_doente varchar(9) not null,
  data_consulta date not null,
  data_registo date not null,
  nome varchar(30) not null,-- falta de informação
  quant varchar(10) not null,-- maximo possivel aproximandamente 3 tubos
  inst varchar(60) not null,
  constraint pk_analise primary key(num_analise),
  constraint fk_analise_consulta foreign key(num_cedula, num_doente, data_consulta) references consulta(num_cedula, num_doente, data_consulta) on delete cascade on update cascade,
  constraint fk_analise_instituicao foreign key(inst) references instituicao(nome) on delete cascade on update cascade
  );


create table venda_farmacia (
  num_venda varchar(23) not null,-- unique,-- nnnnnnnnnnnnnnnn/nnnnnn
  data_registo date not null,
  substancia varchar(50) not null,
  quant varchar(10) not null,
  preco numeric(4,2) not null,--0000.00€
  inst varchar(60) not null,
  constraint pk_venda_farmacia primary key(num_venda),
  constraint fk_venda_farmacia_instituicao foreign key(inst) references instituicao(nome) on delete cascade on update cascade
  );

create table prescricao_venda (
  num_cedula varchar(5) not null  ,-- unique,
  num_doente varchar(9) not null  ,
  data_consulta date not null  ,
  substancia varchar(50) not null  ,
  num_venda varchar(23) not null  ,
  constraint pk_prescricao_venda primary key(num_cedula, num_doente, data_consulta, substancia, num_venda),
  constraint fk_prescricao_venda_venda_farmacia foreign key(num_venda) references venda_farmacia(num_venda) on delete cascade on update cascade,
  constraint fk_prescricao_venda_prescricao foreign key(num_cedula, num_doente, data_consulta, substancia) references prescricao(num_cedula, num_doente, data_consulta, substancia) on delete cascade on update cascade
  );
