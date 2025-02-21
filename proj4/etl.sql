
insert into d_instituicao(nome, tipo, num_regiao, num_concelho)
	select nome, tipo, num_regiao, num_concelho from instituicao;


-- id_tempo, dia, dia_da_semana, semana, mes, trimestre, ano
insert into d_tempo(dia, dia_da_semana, semana, mes, trimestre, ano)

  select distinct extract (day from data_registo) as dia, extract (dow from data_registo) as dia_da_semana, extract (week from data_registo) as semana, 
    extract (month from data_registo) as mes, extract (quarter from data_registo) as trimestre, extract (year from data_registo) as ano from analise
    where not exists (
      select dia, mes, ano
      from d_tempo
      where dia=extract (day from data_registo) and mes=extract (month from data_registo) and ano=extract (year from data_registo) 
    );


 insert into d_tempo(dia, dia_da_semana, semana, mes, trimestre, ano)

   select distinct extract (day from data_registo) as dia, extract (dow from data_registo) as dia_da_semana, extract (week from data_registo) as semana, 
     extract (month from data_registo) as mes, extract (quarter from data_registo) as trimestre, extract (year from data_registo) as ano from
     ( venda_farmacia vf inner join prescricao_venda pv on (vf.num_venda = pv.num_venda) )
     where not exists (
      select dia, mes, ano
      from d_tempo
      where dia=extract (day from data_registo) and mes=extract (month from data_registo) and ano=extract (year from data_registo) 
    );


-- id_presc_venda, id_medico, num_doente, id_data_registo, id_inst, substancia, quant
insert into f_presc_venda(id_presc_venda, id_medico, num_doente, id_data_registo, id_inst, substancia, quant)

  select pv.num_venda, pv.num_cedula, pv.num_doente, dt.id_tempo, di.id_inst, pv.substancia, vf.quant from (( venda_farmacia vf inner join prescricao_venda pv on (vf.num_venda = pv.num_venda) )
    inner join d_tempo dt on (dt.dia = extract(day from vf.data_registo) and dt.mes = extract(month from vf.data_registo) and dt.ano = extract(year from vf.data_registo))
    inner join d_instituicao di on (di.nome = vf.inst));


-- id_analise, id_medico, num_doente, id_data_registo, id_inst, nome, quant)
insert into f_analise(id_analise, id_medico, num_doente, id_data_registo, id_inst, nome, quant)

  select a.num_analise, a.num_cedula, a.num_doente, dt.id_tempo, di.id_inst, a.nome, a.quant from 
    (analise a inner join d_instituicao di on (a.inst = di.nome)
    inner join d_tempo dt on (dt.dia = extract(day from a.data_registo) and dt.mes = extract(month from a.data_registo) 
    and dt.ano = extract(year from a.data_registo)));


