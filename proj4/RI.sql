-- RESTRICOES DE INTEGRIDADE - extensoes procedimentais

-- RI-100: um médico não pode dar mais de 100 consultas por semana na mesma instituição

create or replace function consultas_medico_proc() returns trigger
as $$
begin
	if exists(

        with count_num_cedulas as(
            select m.num_cedula, count(m.num_cedula)
            from ((medico m inner join consulta c on (m.num_cedula = c.num_cedula)) inner join instituicao i on (i.nome = c.nome_instituicao))
            where c.nome_instituicao = new.nome_instituicao and c.num_cedula = new.num_cedula and extract(week from c.data_consulta) = extract(week from new.data_consulta)
            group by m.num_cedula
        )

        select num_cedula
        from count_num_cedulas
        where count>=100
  )
	then
		raise exception 'O medico ja realizou mais de 100 consultas por semana na mesma instituicao.';
	end if;
	return new;
end;
$$ language plpgsql;

-- o trigger acontece antes de se adicionar a consulta
create trigger max_consultas_medico before insert on consulta
	for each row execute procedure consultas_medico_proc();



-- RI-análise: numa análise, a consulta associada pode estar omissa; não estando, a especialidade da consulta tem de ser igual à do médico.

create or replace function especialidade_proc() returns trigger
as $$
begin
	if exists(

				select *
        from consulta c inner join medico m on (m.num_cedula = c.num_cedula)
        where new.num_cedula = c.num_cedula and new.num_doente = c.num_doente
				and new.data_consulta = c.data_consulta and new.especialidade != m.especialidade
  )
	then
		raise exception 'Especialidade da consulta diferente da especialidade do medico';
	end if;
	return new;
end;
$$ language plpgsql;

create trigger analise_especialidade before insert on analise
	for each row execute procedure especialidade_proc();
