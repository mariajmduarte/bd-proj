--Data Analytics

--1)

select a.especialidade, dt.mes, dt.ano, count(a.num_analise) as numero_de_analises
from analise a inner join d_tempo dt on (dt.dia = extract(day from a.data_registo)
and dt.mes = extract(month from a.data_registo) and dt.ano = extract(year from a.data_registo))
where a.nome='Glicemia' and dt.ano>=2017 and dt.ano<=2020
group by cube (a.especialidade, dt.mes, dt.ano);


--2)

with tabela_pres as (
  select fpv.substancia, dt.dia_da_semana, dt.mes, c.nome as nome_c, dt.trimestre, r.nome as nome_r, count(fpv.id_presc_venda) as quantidade_total
  from (((f_presc_venda fpv inner join d_instituicao di on (fpv.id_inst = di.id_inst)) inner join d_tempo dt on (fpv.id_data_registo = id_tempo))
  inner join concelho c on (di.num_regiao = c.num_regiao and di.num_concelho = c.num_concelho)) inner join regiao r on (c.num_regiao = r.num_regiao)
  where dt.trimestre=1 and r.nome = 'Lisboa'
  group by rollup (fpv.substancia, dt.dia_da_semana, dt.mes, nome_c, dt.trimestre, nome_r)
)
select substancia, dia_da_semana, mes, nome_c, trimestre, nome_r,  quantidade_total, avg(quantidade_total) as num_medio_diario
from tabela_pres as t
group by (substancia, (dia_da_semana, mes), nome_c, trimestre, nome_r, quantidade_total);
