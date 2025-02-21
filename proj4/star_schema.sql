drop table if exists f_presc_venda cascade;
drop table if exists f_analise cascade;
drop table if exists d_tempo cascade;
drop table if exists d_instituicao cascade;

create table d_tempo(
  id_tempo serial not null, 
	dia int not null check (dia < 32 and dia > 0),
  dia_da_semana int not null check (dia_da_semana<=6 and dia_da_semana>=0),
  semana int not null,
	mes int not null check (mes < 13 and mes > 0),
  trimestre int not null check (trimestre < 5 and trimestre > 0),
	ano int not null,
	constraint pk_d_tempo primary key (id_tempo)
);

create table d_instituicao(
  id_inst serial not null,
  nome varchar(60) not null,
  tipo varchar(11) not null check(tipo in ('Farmacia', 'Laboratorio', 'Clinica', 'Hospital')),
  num_regiao varchar(1) not null,
  num_concelho varchar(3) not null,
  constraint pk_d_instituicao primary key(id_inst)
);

create table f_presc_venda(
  id_presc_venda varchar(23) not null unique, --id_presc_venda = num_venda
  id_medico varchar(5) not null, --id_medico = num_cedula
  num_doente varchar(9) not null,
  id_data_registo int not null,
  id_inst int not null,
  substancia varchar(50) not null,
  quant varchar(10) not null,
  constraint pk_f_presc_venda primary key(id_presc_venda),
  constraint fk_presc_venda_tempo foreign key(id_data_registo) references d_tempo(id_tempo) ON DELETE CASCADE,
  constraint fk_presc_venda_tempo_inst foreign key(id_inst) references d_instituicao(id_inst) ON DELETE CASCADE
);

create table f_analise(
  id_analise varchar(7) not null unique, --id_analise = num_analise
  id_medico varchar(5) not null,
  num_doente varchar(9) not null,
  id_data_registo int not null,
  id_inst int not null,
  nome varchar(30) not null,
  quant numeric(4,1) not null,
  constraint pk_f_analise primary key(id_analise),
  constraint fk_analise_tempo foreign key(id_data_registo) references d_tempo(id_tempo) ON DELETE CASCADE,
  constraint fk_analise_inst foreign key(id_inst) references d_instituicao(id_inst) ON DELETE CASCADE
);
