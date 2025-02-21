--novo
--1) Qual o concelho onde se fez o maior volume de vendas hoje?


select c.num_concelho, c.nome as nome_concelho, c.num_regiao, c.num_habitantes
from (concelho c inner join instituicao i on (c.num_concelho = i.num_concelho and c.num_regiao = i.num_regiao)) inner join venda_farmacia v on (v.inst=i.nome)
where v.data_registo = CURRENT_DATE
group by c.num_concelho, c.nome, c.num_regiao, c.num_habitantes
having count(c.num_concelho) >= ALL
    (select count(c2.num_concelho)
    from (concelho c2 inner join instituicao i2 on (c2.num_concelho = i2.num_concelho and c2.num_regiao = i2.num_regiao)) inner join venda_farmacia v2 on (v2.inst=i2.nome)
		where v2.data_registo = CURRENT_DATE
		group by c2.num_concelho, c2.nome
);



--2) Qual o medico que mais prescreveu no 1o semestre de 2019 em cada região?


with count_pres as(
    select i.num_regiao, m.num_cedula, m.nome, count(distinct(p.num_cedula))
		from ((prescricao p inner join medico m on (p.num_cedula = m.num_cedula)) inner join consulta c on ( p.num_cedula=c.num_cedula and p.num_doente=c.num_doente and p.data_consulta=c.data_consulta)) inner join instituicao i on c.nome_instituicao=i.nome
		where p.data_consulta >= '01-01-2019' and p.data_consulta <= '30-06-2019'
    group by i.num_regiao, m.num_cedula, m.nome),
max_count as (
    select max(count), num_regiao
    from count_pres
		group by num_regiao
)
select count_pres.num_regiao as regiao, count_pres.nome as nome_medico, count_pres.num_cedula as cedula_medico
from count_pres, max_count
where max_count.max = count_pres.count and max_count.num_regiao=count_pres.num_regiao
order by count_pres.num_regiao;



--3) Quais sao os medicos que ja prescreveram aspirina em receitas aviadas em todas as farmacias do concelho de Arouca este ano?


with count_pres_in_concelho as (
  select distinct p.num_cedula, count(distinct (v.inst))
  from ((venda_farmacia v inner join instituicao i on (v.inst = i.nome)) inner join concelho c on (i.num_concelho = c.num_concelho)) inner join prescricao_venda p on (p.num_venda=v.num_venda)
  where c.nome = 'Arouca' and v.substancia = 'Aspirina' and v.data_registo >= '01-01-2020'
  group by p.num_cedula
),
count_pharmacies_in_concelho as (
  select count(distinct(v.inst))
  from (venda_farmacia v inner join instituicao i on (v.inst = i.nome)) inner join concelho c on (i.num_concelho = c.num_concelho)
  where c.nome = 'Arouca'
)
select count_pres_in_concelho.num_cedula
from count_pharmacies_in_concelho, count_pres_in_concelho
where count_pres_in_concelho.count = count_pharmacies_in_concelho.count;



--4) Quais são os doentes que já fizeram análises mas ainda não aviaram prescrições este mês?


with count_pres_current_month as(
  select pres.num_doente, count(v.data_registo)
  from venda_farmacia v inner join prescricao_venda pres on (v.num_venda = pres.num_venda)
  where extract(month from v.data_registo) = extract(month from CURRENT_DATE) and extract(year from v.data_registo) = extract(year from CURRENT_DATE)
  group by pres.num_doente
),
count_analise_current_month as(
  select a.num_doente, count(a.num_doente)
  from analise a
  where extract(month from a.data_registo) = extract(month from CURRENT_DATE) and extract(year from a.data_registo) = extract(year from CURRENT_DATE)
  group by a.num_doente
)
select num_doente
from count_analise_current_month
where count>0
except (
        select num_doente
        from count_pres_current_month
        where count>0
    );
