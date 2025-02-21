#!/usr/bin/python3

from wsgiref.handlers import CGIHandler
from flask import Flask
from flask import render_template, request

## Libs postgres
import psycopg2
import psycopg2.extras

app = Flask(__name__)

## SGBD configs
DB_HOST="db.tecnico.ulisboa.pt"
DB_USER="ist190415"
DB_DATABASE=DB_USER
DB_PASSWORD="zgtq2820"
DB_CONNECTION_STRING = "host=%s dbname=%s user=%s password=%s" % (DB_HOST, DB_DATABASE, DB_USER, DB_PASSWORD)


## Runs the function once the root page is requested.
## The request comes with the folder structure setting ~/web as the root
@app.route('/')
def list_main():
  dbConn=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    return render_template("index.html", params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    dbConn.close()

@app.route('/medicos')
def list_medicos():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "select * from medico;"
    cursor.execute(query)
    return render_template("medicos.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    cursor.close()
    dbConn.close()

@app.route('/editar_medico')
def edit_medico():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "select * from medico where num_cedula=%s;"
    data=(request.args.get("num_cedula"),)
    cursor.execute(query,data)
    return render_template("edit_medico.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/update_medico', methods=["POST"])
def update_medico():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "update medico set num_cedula=%s, nome=%s, especialidade=%s where num_cedula =%s; select * from medico;"
    data=(request.form["e_cedula"], request.form["e_nome"], request.form["e_especialidade"], request.args.get("num_cedula"))
    cursor.execute(query,data)
    return render_template("medicos.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/insert_medico', methods=["POST"])
def insert_medico():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "insert into medico values (%s,%s,%s); select * from medico;"
    data=(request.form["new_cedula"],request.form["new_nome"],request.form["new_esp"])
    cursor.execute(query,data)
    return render_template("medicos.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/delete_medico', methods=["POST"])
def delete_medico():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "delete from consulta where num_cedula=%s" #fk_consulta_medico
    data=(request.form["del_cedula"],)
    cursor.execute(query,data)
    query = "delete from medico where num_cedula=%s;"
    data=(request.form["del_cedula"],)
    cursor.execute(query,data)
    query = "select * from medico;"
    cursor.execute(query)
    return render_template("medicos.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/instituicoes')
def list_instituicoes():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "select * from instituicao;"
    cursor.execute(query)
    return render_template("instituicoes.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    cursor.close()
    dbConn.close()

@app.route('/editar_instituicao')
def edit_instituicao():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "select * from instituicao where nome=%s;"
    data=(request.args.get("nome"),)
    cursor.execute(query,data)
    return render_template("edit_instituicao.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()


@app.route('/update_instituicao', methods=["POST"])
def update_instituicao():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "update instituicao set nome=%s, tipo=%s, num_regiao=%s, num_concelho=%s where nome=%s; select * from instituicao;"
    data=(request.form["e_nome"], request.form["e_tipo"], request.form["e_regiao"], request.form["e_concelho"], request.args.get("nome"))
    cursor.execute(query,data)
    return render_template("instituicoes.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/insert_instituicao', methods=["POST"])
def insert_instituicao():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "insert into instituicao values (%s,%s,%s,%s); select * from instituicao;"
    data=(request.form["new_nome"],request.form["new_tipo"],request.form["new_regiao"],request.form["new_concelho"])
    cursor.execute(query,data)
    return render_template("instituicoes.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/delete_instituicao', methods=["POST"])
def delete_instituicao():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "delete from instituicao where nome=%s; select * from instituicao;"
    data=(request.form["del_nome"],)
    cursor.execute(query,data)
    return render_template("instituicoes.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/analises')
def list_analises():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "select * from analise;"
    cursor.execute(query)
    return render_template("analises.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    cursor.close()
    dbConn.close()

@app.route('/editar_analise')
def edit_analise():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "select * from analise where num_analise=%s;"
    data=(request.args.get("num_analise"),)
    cursor.execute(query,data)
    return render_template("edit_analise.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/update_analise', methods=["POST"])
def update_analise():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "update analise set num_analise=%s, especialidade=%s, num_cedula=%s, num_doente=%s, data_consulta=%s, data_registo=%s, nome=%s, quant=%s, inst=%s where num_analise=%s; select * from analise;"
    data=(request.form["e_analise"],request.form["e_esp"],request.form["e_cedula"],request.form["e_doente"],request.form["e_data_c"],request.form["e_data_r"],request.form["e_nome"],request.form["e_quant"],request.form["e_inst"], request.args.get("num_analise"))
    cursor.execute(query,data)
    return render_template("analises.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/insert_analise', methods=["POST"])
def insert_analise():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "insert into analise values (%s,%s,%s,%s,%s,%s,%s,%s,%s); select * from analise;"
    data=(request.form["new_analise"],request.form["new_esp"],request.form["new_cedula"],request.form["new_doente"],request.form["new_data_c"],request.form["new_data_r"],request.form["new_nome"],request.form["new_quant"],request.form["new_inst"])
    cursor.execute(query,data)
    return render_template("analises.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/delete_analise', methods=["POST"])
def delete_analise():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "delete from analise where num_analise=%s; select * from analise;"
    data=(request.form["del_analise"],)
    cursor.execute(query,data)
    return render_template("analises.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()


@app.route('/prescricoes')
def list_prescricoes():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "select * from prescricao;"
    cursor.execute(query)
    return render_template("prescricoes.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    cursor.close()
    dbConn.close()

@app.route('/editar_prescricao')
def edit_prescricao():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "select * from prescricao where num_cedula=%s and num_doente=%s and data_consulta=%s and substancia=%s;"
    data=(request.args.get("num_cedula"), request.args.get("num_doente"), request.args.get("data_consulta"), request.args.get("substancia"))
    cursor.execute(query,data)
    return render_template("edit_prescricao.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/update_prescricao', methods=["POST"])
def update_prescricao():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "update prescricao set num_cedula=%s, num_doente=%s, data_consulta=%s, substancia=%s, quant=%s where num_cedula=%s and num_doente=%s and data_consulta=%s and substancia=%s; select * from prescricao;"
    data=(request.form["e_cedula"],request.form["e_doente"],request.form["e_data_c"],request.form["e_subs"],request.form["e_quant"], request.args.get("num_cedula"), request.args.get("num_doente"), request.args.get("data_consulta"), request.args.get("substancia"))
    cursor.execute(query,data)
    return render_template("prescricoes.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/insert_prescricao', methods=["POST"])
def insert_prescricao():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "insert into prescricao values (%s,%s,%s,%s,%s); select * from prescricao;"
    data=(request.form["new_cedula"],request.form["new_doente"],request.form["new_data_c"],request.form["new_subs"],request.form["new_quant"])
    cursor.execute(query,data)
    return render_template("prescricoes.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()


@app.route('/delete_prescricao', methods=["POST"])
def delete_prescricao():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "delete from prescricao where num_cedula=%s and num_doente=%s and data_consulta=%s and substancia=%s; select * from prescricao;"
    data=(request.form["del_cedula"], request.form["del_doente"], request.form["del_data_c"], request.form["del_subs"])
    cursor.execute(query,data)
    return render_template("prescricoes.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/venda_prescricao')
def lista_vendas():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "select * from prescricao;"
    cursor.execute(query)
    return render_template("venda_prescricao.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/venda_farmacia')
def list_vendas_farmacia():
  try:
    data=(request.args.get("n_cedula"),request.args.get("n_doente"),request.args.get("data_c"),request.args.get("subs"),request.args.get("quant"))
    return render_template("vendas.html", data=data, params=request.args)
  except Exception as e:
    return str(e)


@app.route('/update_venda', methods=["POST"])
def update_venda():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "insert into venda_farmacia values (%s,%s,%s,%s,%s,%s); insert into prescricao_venda values (%s,%s,%s,%s,%s); select * from prescricao;"
    data=(request.form["venda"], request.form["data_registo"], request.form["subs_v"], request.form["quant_v"], request.form["preco"], request.form["inst"], request.args.get("n_cedula"), request.args.get("n_doente"), request.args.get("data_c"), request.args.get("subs"), request.form["venda"])
    cursor.execute(query,data)
    return render_template("venda_prescricao.html", cursor=cursor, params=request.args)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/subs_prescritas', methods=["POST"])
def list_subs_prescritas():
  dbConn=None
  cursor=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    query = "select p.substancia, c.data_consulta, m.nome, m.num_cedula from (prescricao p inner join medico m on (p.num_cedula = m.num_cedula)) inner join consulta c on (p.num_cedula=c.num_cedula and p.num_doente=c.num_doente and p.data_consulta=c.data_consulta) where m.num_cedula=%s and extract(month from c.data_consulta)=%s and extract(year from c.data_consulta)=%s;"
    data=(request.form["num_cedula"], request.form["mes"], request.form["ano"])
    cursor.execute(query,data)
    return render_template("subs.html", cursor=cursor, data=data)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor.close()
    dbConn.close()

@app.route('/glicemia', methods=["POST"])
def list_glicemia():
  dbConn=None
  cursor_max=None
  cursor_min=None
  try:
    dbConn = psycopg2.connect(DB_CONNECTION_STRING)
    cursor_max = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    cursor_min = dbConn.cursor(cursor_factory = psycopg2.extras.DictCursor)
    data=('Glicemia',)
    query = '''with subs_quant as (
      select distinct i.num_concelho, a.num_doente, a.quant
      from analise a inner join instituicao i on (a.inst=i.nome)
      where a.nome = %s
    )
    select s1.*
    from subs_quant s1
        left join subs_quant s2
            on s1.num_concelho = s2.num_concelho
            and s1.quant > s2.quant
    where s2.quant is null;'''
    cursor_min.execute(query,data)
    query = '''with subs_quant as (
      select distinct i.num_concelho, a.num_doente, a.quant
      from analise a inner join instituicao i on (a.inst=i.nome)
      where a.nome = %s
    )
    select s1.*
    from subs_quant s1
        left join subs_quant s2
            on s1.num_concelho = s2.num_concelho
            and s1.quant < s2.quant
    where s2.quant is null;'''
    cursor_max.execute(query,data)
    return render_template("glicemia.html", cursor_max=cursor_max, cursor_min=cursor_min)
  except Exception as e:
    return str(e)
  finally:
    dbConn.commit()
    cursor_max.close()
    cursor_min.close()
    dbConn.close()

CGIHandler().run(app)
