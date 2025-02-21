insert into regiao values ('1', 'Alentejo', 776339);
insert into regiao values ('2', 'Centro', 2348453);
insert into regiao values ('3', 'Norte', 3818722);
insert into regiao values ('4', 'Lisboa', 2808414);
insert into regiao values ('5', 'Algarve', 395208);

insert into concelho values ('001', '4', 'Lisboa', 507220);
insert into concelho values ('019', '2', 'Coimbra', 133724);
insert into concelho values ('027', '3', 'Viana do Castelo', 84636);
insert into concelho values ('031', '4', 'Torres Vedras', 78220);
insert into concelho values ('035', '5', 'Loule', 68873);
insert into concelho values ('084', '1', 'Beja', 33550);
insert into concelho values ('119', '3', 'Arouca', 20861);
insert into concelho values ('136', '2', 'Lousa', 17128);

--Lisboa
insert into instituicao values ('Hospital da Luz', 'Hospital', '4', '001');
insert into instituicao values ('Farmacia Iberia', 'Farmacia', '4', '001');
insert into instituicao values ('Farmacia Cais de Sodre', 'Farmacia', '4', '001');
insert into instituicao values ('Farmacia Barreto Lda', 'Farmacia', '4', '001');
insert into instituicao values ('Centro de Medicina Laboratorial Germano de Sousa', 'Laboratorio', '4', '001');
insert into instituicao values ('Affidea Lisboa', 'Clinica', '4', '001');
--Coimbra
insert into instituicao values ('CHUC', 'Hospital','2', '019');
insert into instituicao values ('Farmacia Coimbra', 'Farmacia','2', '019');
insert into instituicao values ('Farmacia Dos Olivais', 'Farmacia','2', '019');
insert into instituicao values ('Farmacia Estadio', 'Farmacia','2', '019');
insert into instituicao values ('Laboratorio S. Jose - Analises Clinicas', 'Laboratorio','2', '019');
--Viana do Castelo
insert into instituicao values ('Hospital de Santa Luzia', 'Hospital', '3', '027');
insert into instituicao values ('Farmacia S. Vicente', 'Farmacia', '3', '027');
insert into instituicao values ('Farmacia Manso', 'Farmacia', '3', '027');
insert into instituicao values ('Laboratorio de Analises Clinicas Dr. Jose Manso', 'Laboratorio', '3', '027');
--Torres Vedras
insert into instituicao values ('Hospital CUF Torres Vedras', 'Hospital', '4', '031');
insert into instituicao values ('Farmacia Torres Vedras', 'Farmacia', '4', '031');
insert into instituicao values ('Valanalises', 'Laboratorio', '4', '031');
--Loule
insert into instituicao values ('Hospital de Loule', 'Hospital', '5', '035');
insert into instituicao values ('Farmacia Avenida', 'Farmacia', '5', '035');
insert into instituicao values ('Farmacia Pinto', 'Farmacia', '5', '035');
insert into instituicao values ('Laboratorio Chagas, Lda.', 'Laboratorio', '5', '035');
--Beja
insert into instituicao values ('Hospital Jose Joaquim Fernandes', 'Hospital', '1','084');
insert into instituicao values ('Farmacia J. Delgado', 'Farmacia', '1','084');
insert into instituicao values ('Farmacia Central', 'Farmacia', '1','084');
insert into instituicao values ('Clinica Particular de Beja', 'Clinica', '1','084');
insert into instituicao values ('Laclibe - Laboratorio De Analises Clinicas De Beja', 'Laboratorio', '1','084');
--Arouca
insert into instituicao values ('Santa Casa da Misericordia de Arouca', 'Hospital', '3', '119');
insert into instituicao values ('Farmacia Gomes de Pinho', 'Farmacia', '3', '119');
insert into instituicao values ('Farmacia Santo Antonio', 'Farmacia', '3', '119');
insert into instituicao values ('Lab. de Analises Clinicas Vale do Sousa Lda.', 'Laboratorio', '3', '119');
--Lousa
insert into instituicao values ('Centro de Saude da Lousa', 'Hospital', '2', '136');
insert into instituicao values ('Farmacia Serrano', 'Farmacia', '2', '136');
insert into instituicao values ('Arunce - Analises Clinicas, Lda.', 'Clinica', '2', '136');

insert into medico values ('28989', 'Constanca Casanova', 'Neurologia'); --Hospital da Luz
insert into medico values ('75608', 'Gregorio Miguel', 'Psiquiatria'); --CHUC
insert into medico values ('81419', 'Perpetua Borges', 'Endocrinologia e Nutricao'); --Hospital Jose Joaquim Fernandes
insert into medico values ('20755', 'Gervasio Homem', 'Dermato-Venereologia'); --Hospital de Loule
insert into medico values ('78791', 'Adosindo Lima', 'Imunoalergologia'); --CHUC
insert into medico values ('93799', 'Teresa Meneses', 'Otorrinolaringologia'); --Hospital CUF Torres Vedras
insert into medico values ('24942', 'Ana Guedes', 'Pediatria'); --Centro de Saude da Lousa
insert into medico values ('72609', 'Joao dos Santos', 'Gastrenterologia'); --Hospital CUF Torres Vedras
insert into medico values ('61228', 'Merces Bobone', 'Urologia'); --Hospital Jose Joaquim Fernandes
insert into medico values ('85422', 'Eliseu Rodrigues', 'Medicina Geral e Familiar'); --Santa Casa da Misericordia de Arouca
insert into medico values ('43095', 'Filipe Lancastre', 'Cirurgia Plastica Reconstrutiva e Estetica'); --Hospital da Luz
insert into medico values ('18392', 'Avelar Brotero', 'Ginecologia/Obstetricia'); --Hospital de Loule
insert into medico values ('37141', 'Patricio Patricio', 'Oftalmologia'); --Hospital de Santa Luzia
insert into medico values ('16197', 'Luisa Candeias', 'Ortopedia'); --Santa Casa da Misericordia de Arouca

insert into consulta values ('75608', '447142023', '11-05-2019', 'CHUC'); --Gregorio Miguel
insert into consulta values ('75608', '200487753', '28-02-2019', 'CHUC'); --Gregorio Miguel
insert into consulta values ('75608', '799423030', '31-01-2019', 'CHUC'); --Gregorio Miguel
insert into consulta values ('75608', '074702281', '14-01-2020', 'CHUC'); --Gregorio Miguel
insert into consulta values ('28989', '498161550', '23-01-2019', 'Hospital da Luz'); --Constanca Casanova
insert into consulta values ('28989', '115137669', '05-04-2019', 'Hospital da Luz'); --Constanca Casanova
insert into consulta values ('28989', '003744469', '18-02-2020', 'Hospital da Luz'); --Constanca Casanova
insert into consulta values ('28989', '572817334', '13-02-2019', 'Hospital da Luz'); --Constanca Casanova
insert into consulta values ('24942', '991915759', '04-12-2018', 'Centro de Saude da Lousa'); --Ana Guedes
insert into consulta values ('24942', '179565826', '19-07-2020', 'Centro de Saude da Lousa'); --Ana Guedes
insert into consulta values ('24942', '893460238', '23-03-2019', 'Centro de Saude da Lousa'); --Ana Guedes
insert into consulta values ('24942', '035624518', '03-11-2020', 'Centro de Saude da Lousa'); --Ana Guedes
insert into consulta values ('37141', '838224849', '15-03-2019', 'Hospital de Santa Luzia'); --Patricio Patricio
insert into consulta values ('37141', '903361963', '01-06-2019', 'Hospital de Santa Luzia'); --Patricio Patricio
insert into consulta values ('37141', '211210144', '19-09-2020', 'Hospital de Santa Luzia'); --Patricio Patricio
insert into consulta values ('37141', '000441544', '22-10-2019', 'Hospital de Santa Luzia'); --Patricio Patricio
insert into consulta values ('85422', '058652114', '06-09-2019', 'Santa Casa da Misericordia de Arouca'); --Eliseu Rodrigues
insert into consulta values ('85422', '058652114', '14-10-2020', 'Santa Casa da Misericordia de Arouca'); --Eliseu Rodrigues
insert into consulta values ('85422', '126160723', '23-12-2019', 'Santa Casa da Misericordia de Arouca'); --Eliseu Rodrigues
insert into consulta values ('85422', '126160723', '15-12-2018', 'Santa Casa da Misericordia de Arouca'); --Eliseu Rodrigues
insert into consulta values ('43095', '214402317', '13-02-2020', 'Hospital da Luz'); --Filipe Lancastre
insert into consulta values ('43095', '355664615', '20-08-2019', 'Hospital da Luz'); --Filipe Lancastre
insert into consulta values ('43095', '000410611', '01-06-2020', 'Hospital da Luz'); --Filipe Lancastre
insert into consulta values ('43095', '107588933', '09-12-2020', 'Hospital da Luz'); --Filipe Lancastre
insert into consulta values ('18392', '038420188', '30-09-2019', 'Hospital de Loule'); --Avelar Brotero
insert into consulta values ('18392', '556355659', '01-03-2019', 'Hospital de Loule'); --Avelar Brotero
insert into consulta values ('18392', '843476810', '22-01-2020', 'Hospital de Loule'); --Avelar Brotero
insert into consulta values ('18392', '054855779', '15-07-2019', 'Hospital de Loule'); --Avelar Brotero
insert into consulta values ('72609', '000752020', '30-08-2019', 'Hospital CUF Torres Vedras'); --Joao dos Santos
insert into consulta values ('72609', '933514983', '07-12-2018', 'Hospital CUF Torres Vedras'); --Joao dos Santos
insert into consulta values ('72609', '041231102', '20-11-2020', 'Hospital CUF Torres Vedras'); --Joao dos Santos
insert into consulta values ('72609', '000752020', '13-09-2020', 'Hospital CUF Torres Vedras'); --Joao dos Santos
insert into consulta values ('16197', '004864626', '26-01-2020', 'Santa Casa da Misericordia de Arouca'); --Luisa Candeias
insert into consulta values ('16197', '080769637', '13-12-2018', 'Santa Casa da Misericordia de Arouca'); --Luisa Candeias
insert into consulta values ('16197', '133430151', '18-05-2019', 'Santa Casa da Misericordia de Arouca'); --Luisa Candeias
insert into consulta values ('16197', '236247758', '25-10-2020', 'Santa Casa da Misericordia de Arouca'); --Luisa Candeias
insert into consulta values ('81419', '600861581', '23-06-2019', 'Hospital Jose Joaquim Fernandes'); --Perpetua Borges
insert into consulta values ('81419', '600861581', '16-11-2020', 'Hospital Jose Joaquim Fernandes'); --Perpetua Borges
insert into consulta values ('81419', '058688435', '12-07-2020', 'Hospital Jose Joaquim Fernandes'); --Perpetua Borges
insert into consulta values ('81419', '600861581', '19-01-2019', 'Hospital Jose Joaquim Fernandes'); --Perpetua Borges
insert into consulta values ('61228', '086498900', '21-04-2019', 'Hospital Jose Joaquim Fernandes'); --Merces Bobone
insert into consulta values ('61228', '711076119', '11-03-2020', 'Hospital Jose Joaquim Fernandes'); --Merces Bobone
insert into consulta values ('61228', '069107115', '15-10-2020', 'Hospital Jose Joaquim Fernandes'); --Merces Bobone
insert into consulta values ('61228', '174522302', '11-07-2020', 'Hospital Jose Joaquim Fernandes'); --Merces Bobone
insert into consulta values ('78791', '192600806', '31-07-2019', 'CHUC'); --Adosindo Lima
insert into consulta values ('78791', '192600806', '24-01-2020', 'CHUC'); --Adosindo Lima
insert into consulta values ('78791', '009706887', '03-04-2019', 'CHUC'); --Adosindo Lima
insert into consulta values ('78791', '000069115', '21-10-2020', 'CHUC'); --Adosindo Lima
insert into consulta values ('20755', '024317072', '25-11-2018', 'Hospital de Loule'); --Gervasio Homem
insert into consulta values ('20755', '565604517', '17-11-2020', 'Hospital de Loule'); --Gervasio Homem
insert into consulta values ('20755', '293849025', '20-05-2019', 'Hospital de Loule'); --Gervasio Homem
insert into consulta values ('20755', '000413798', '07-12-2018', 'Hospital de Loule'); --Gervasio Homem
insert into consulta values ('93799', '000023989', '17-10-2019', 'Hospital CUF Torres Vedras'); --Teresa Meneses
insert into consulta values ('93799', '041231102', '15-11-2020', 'Hospital CUF Torres Vedras'); --Teresa Meneses
insert into consulta values ('93799', '651143589', '31-10-2020', 'Hospital CUF Torres Vedras'); --Teresa Meneses
insert into consulta values ('93799', '011351464', '19-02-2020', 'Hospital CUF Torres Vedras'); --Teresa Meneses

insert into prescricao values ('75608', '447142023', '11-05-2019', 'Valium', '5mg'); --Gregorio Miguel
insert into prescricao values ('75608', '200487753', '28-02-2019', 'Venlaxin', '75mg'); --Gregorio Miguel
insert into prescricao values ('75608', '799423030', '31-01-2019', 'Xanax', '2mg'); --Gregorio Miguel
insert into prescricao values ('75608', '074702281', '14-01-2020', 'Valium', '2mg'); --Gregorio Miguel
insert into prescricao values ('28989', '498161550', '23-01-2019', 'Requip', '4mg'); --Constanca Casanova
insert into prescricao values ('28989', '115137669', '05-04-2019', 'Valium', '2mg'); --Constanca Casanova
insert into prescricao values ('28989', '572817334', '13-02-2019', 'Xenazine', '25mg'); --Constanca Casanova
insert into prescricao values ('28989', '003744469', '18-02-2020', 'Requip', '2mg');--Constanca Casanova
insert into prescricao values ('78791', '192600806', '31-07-2019', 'Lergonix', '10mg'); --Adosindo Lima ANALISE
insert into prescricao values ('78791', '192600806', '24-01-2020', 'Lergonix', '10mg'); --Adosindo Lima
insert into prescricao values ('78791', '009706887', '03-04-2019', 'Desloratadina', '5mg'); --Adosindo Lima
insert into prescricao values ('78791', '009706887', '03-04-2019', 'Pandermil', '30mg'); --Adosindo Lima
insert into prescricao values ('78791', '000069115', '21-10-2020', 'Epipen', '2mL'); --Adosindo Lima ANALISE
insert into prescricao values ('85422', '058652114', '06-09-2019', 'Aspirina', '100mg'); --Eliseu Rodrigues
insert into prescricao values ('85422', '058652114', '06-09-2019', 'Deflon', '500mg'); --Eliseu Rodrigues
insert into prescricao values ('85422', '058652114', '06-09-2019', 'Scheriproct', '30g'); --Eliseu Rodrigues
insert into prescricao values ('85422', '058652114', '14-10-2020', 'Aspirina', '100mg'); --Eliseu Rodrigues
insert into prescricao values ('85422', '126160723', '23-12-2019', 'Ibuprofeno', '400mg'); --Eliseu Rodrigues
insert into prescricao values ('85422', '126160723', '15-12-2018', 'Aspirina', '500mg'); --Eliseu Rodrigues
insert into prescricao values ('85422', '126160723', '15-12-2018', 'Minigeste', '2mg'); --Eliseu Rodrigues
insert into prescricao values ('72609', '000752020', '30-08-2019', 'Imuran', '50mg'); --Joao dos Santos
insert into prescricao values ('72609', '000752020', '13-09-2020', 'Imuran', '25mg'); --Joao dos Santos
insert into prescricao values ('72609', '041231102', '20-11-2020', 'Imuran', '50mg'); --Joao dos Santos
insert into prescricao values ('72609', '041231102', '20-11-2020', 'MiraLAX', '17g'); --Joao dos Santos
insert into prescricao values ('18392', '038420188', '30-09-2019', 'Diane 35', '2mg'); --Avelar Brotero
insert into prescricao values ('18392', '556355659', '01-03-2019', 'Algimate', '12mg'); --Avelar Brotero ANALISE
insert into prescricao values ('18392', '843476810', '22-01-2020', 'Minigeste', '2mg'); --Avelar Brotero
insert into prescricao values ('24942', '991915759', '04-12-2018', 'Aero-OM', '105mg/ml'); --Ana Guedes
insert into prescricao values ('24942', '893460238', '23-03-2019', 'Brufen', '20mg/ml'); --Ana Guedes
insert into prescricao values ('24942', '179565826', '19-07-2020', 'Aspirina', '100mg'); --Ana Guedes
insert into prescricao values ('24942', '035624518', '03-11-2020', 'Aero-OM', '105mg/ml'); --Ana Guedes
insert into prescricao values ('20755', '024317072', '25-11-2018', 'Minoxidil', '50mg'); --Gervasio Homem
insert into prescricao values ('20755', '565604517', '17-11-2020', 'Peroxiben', '50mg'); --Gervasio Homem
insert into prescricao values ('20755', '293849025', '20-05-2019', 'Ureadin', '410g'); --Gervasio Homem
insert into prescricao values ('20755', '000413798', '07-12-2018', 'Pandermil', '30mg'); --Gervasio Homem
insert into prescricao values ('16197', '004864626', '26-01-2020', 'Aspirina', '100mg'); --Luisa Candeias
insert into prescricao values ('16197', '080769637', '13-12-2018', 'Flagyl', '250mg'); --Luisa Candeias
insert into prescricao values ('16197', '133430151', '18-05-2019', 'Ibuprofeno', '100mg'); --Luisa Candeias
insert into prescricao values ('16197', '236247758', '25-10-2020', 'Aspirina', '400mg'); --Luisa Candeias
insert into prescricao values ('61228', '086498900', '21-04-2019', 'Vesicare', '10mg'); --Merces Bobone
insert into prescricao values ('61228', '069107115', '15-10-2020', 'Lasix', '40mg'); --Merces Bobone ANALISE
insert into prescricao values ('61228', '711076119', '11-03-2020', 'Proscar', '5mg'); --Merces Bobone
insert into prescricao values ('93799', '000023989', '17-10-2019', 'Symbicort', '100mg'); --Teresa Meneses
insert into prescricao values ('93799', '041231102', '15-11-2020', 'Cefalexina', '500 mg'); --Teresa Meneses
insert into prescricao values ('93799', '651143589', '31-10-2020', 'Augmentin', '125mg'); --Teresa Meneses
insert into prescricao values ('93799', '651143589', '31-10-2020', 'Aspirina', '100mg'); --Teresa Meneses
insert into prescricao values ('81419', '058688435', '12-07-2020', 'Insulina', '4U'); --Perpetua Borges
insert into prescricao values ('43095', '214402317', '13-02-2020', 'Ananase', '40mg'); --Filipe Lancastre

insert into analise values ('7569313', 'Urologia', '61228', '069107115', '15-10-2020', '09-11-2020', 'Creatinina', 102, 'Clinica Particular de Beja'); --ainda n levantou prescricao
insert into analise values ('7569314', 'Urologia', '61228', '069107115', '15-10-2020', '09-11-2020', 'Ureia', 45, 'Clinica Particular de Beja'); --ainda n levantou prescricao
insert into analise values ('5421315', 'Urologia', '61228', '174522302', '11-07-2020', '13-07-2020', 'Urina - Urobilogénio', 0.7, 'Laclibe - Laboratorio De Analises Clinicas De Beja');
insert into analise values ('0910851', 'Imunoalergologia', '78791', '192600806','31-07-2019', '04-09-2019', 'TSH', 2.1, 'Laboratorio S. Jose - Analises Clinicas');
insert into analise values ('3009135', 'Imunoalergologia', '78791', '000069115', '21-10-2020', '01-11-2020', 'RAST', 318, 'CHUC'); --ainda n levantou prescricao
insert into analise values ('4800973', 'Ginecologia/Obstetricia', '18392', '556355659', '01-03-2019', '02-03-2019', 'VIH', 142, 'Hospital de Loule');
insert into analise values ('3675547', 'Ginecologia/Obstetricia', '18392', '054855779', '15-07-2019', '15-07-2019', 'Gravidez - beta hCG', 305, 'Hospital de Loule');
insert into analise values ('3974111', 'Ginecologia/Obstetricia', '18392', '038420188', '30-09-2019', '02-10-2019', 'Colesterol', 220,'Laboratorio Chagas, Lda.');
insert into analise values ('3974112', 'Ginecologia/Obstetricia', '18392', '038420188', '30-09-2019', '02-10-2019', 'Glicemia', 6.9,'Laboratorio Chagas, Lda.');
insert into analise values ('3974113', 'Ginecologia/Obstetricia', '18392', '038420188', '30-09-2019', '02-10-2019', 'Eletrolitos - Sodio', 140,'Laboratorio Chagas, Lda.');
insert into analise values ('6051597', 'Endocrinologia e Nutricao', '81419', '600861581', '16-11-2020', '17-11-2020', 'Glicemia', 5.2, 'Clinica Particular de Beja');
insert into analise values ('8693168', 'Endocrinologia e Nutricao', '81419', '600861581', '23-06-2019', '25-06-2019', 'Glicemia', 3.9, 'Clinica Particular de Beja');
insert into analise values ('6299428', 'Endocrinologia e Nutricao', '81419', '600861581', '19-01-2019', '19-01-2019', 'Glicemia', 2.1, 'Clinica Particular de Beja');
insert into analise values ('6491350', 'Gastrenterologia', '72609', '041231102', '20-11-2020', '20-11-2020', 'VGM', 71, 'Valanalises'); --levanta as a prescricao no mesmo dia q faz as analises
insert into analise values ('9980222', 'Gastrenterologia', '72609', '933514983', '07-12-2018', '25-12-2018', 'Exame Parasitologico de Fezes', 25, 'Hospital CUF Torres Vedras');
insert into analise values ('2461817', 'Medicina Geral e Familiar', '85422', '126160723', '23-12-2019', '07-01-2020','Colesterol', 110, 'Lab. de Analises Clinicas Vale do Sousa Lda.');--levantou prescricao
insert into analise values ('7148382', 'Otorrinolaringologia', '93799', '651143589', '31-10-2020', '02-11-2020', 'Hemocultura', 0.2, 'Valanalises'); --levantou prescricao
insert into analise values ('9228625', 'Pediatria', '24942', '035624518', '03-11-2020', '04-11-2020', 'Teste do Pezinho - Tiroxina', 0.8, 'Centro de Saude da Lousa'); --ainda n levantou prescricao
insert into analise values ('1487899', 'Pediatria', '24942','991915759', '04-12-2018', '04-12-2018', 'Glicemia', 2.2, 'Centro de Saude da Lousa');
insert into analise values ('6693749', 'Pediatria', '24942', '179565826', '19-07-2020', '19-07-2020', 'Glicemia', 5.3, 'Arunce - Analises Clinicas, Lda.');
insert into analise values ('8003829', 'Oftalnologia', '37141', '211210144', '19-09-2020', '23-09-2020', 'Glicemia', 16.7, 'Laboratorio de Analises Clinicas Dr. Jose Manso'); --retinopatia diabetica
insert into analise values ('0321955', 'Oftalnologia', '37141', '000441544', '22-10-2019', '31-10-2020', 'Glicemia', 11.5, 'Laboratorio de Analises Clinicas Dr. Jose Manso'); --retinopatia diabetica

insert into venda_farmacia values('0705810889059245/518223', '06-09-2019', 'Aspirina', '100mg', 4.99,'Farmacia Gomes de Pinho'); --Arouca, Eliseu Rodrigues
insert into venda_farmacia values('3984793475695528/518223', '06-09-2019', 'Scheriproct', '30g', 10.99,'Farmacia Gomes de Pinho'); --Arouca, Eliseu Rodrigues
insert into venda_farmacia values('3244054110062473/518223', '06-09-2019', 'Deflon', '500mg', 19.76,'Farmacia Gomes de Pinho'); --Arouca, Eliseu Rodrigues
insert into venda_farmacia values('8793443315319186/778377', '17-01-2020', 'Ibuprofeno', '400mg', 4.19, 'Farmacia Santo Antonio'); --Arouca, Eliseu Rodrigues
insert into venda_farmacia values('3167797105509966/603689', '16-12-2018', 'Aspirina', '500mg', 9.99, 'Farmacia Santo Antonio'); --Arouca, Eliseu Rodrigues
insert into venda_farmacia values('1986717113315083/171791', '11-05-2019', 'Valium', '5mg', 15.75, 'Farmacia Coimbra'); --Coimbra, Gregorio Miguel
insert into venda_farmacia values('0380396590517269/921144', '03-03-2019', 'Venlaxin', '75mg', 22.09, 'Farmacia Estadio'); --Coimbra, Gregorio Miguel
insert into venda_farmacia values('5169946902004627/760382', '05-02-2019', 'Xanax', '2mg', 14.99, 'Farmacia Estadio'); --Coimbra, Gregorio Miguel
insert into venda_farmacia values('3519281183696528/923643', '15-01-2020', 'Valium', '2mg', 10.95, 'Farmacia Dos Olivais'); --Coimbra, Gregorio Miguel
insert into venda_farmacia values('0006869895640039/524935', '26-01-3019', 'Requip', '4mg', 25.89, 'Farmacia Cais de Sodre'); --Lisboa, Constanca Casanova
insert into venda_farmacia values('0000001141965642/425373', '05-04-2019', 'Valium', '2mg', 10.95, 'Farmacia Barreto Lda'); --Lisboa, Constanca Casanova
insert into venda_farmacia values('8236199889562213/923731', '28-02-2019', 'Xenazine', '25mg', 17.99, 'Farmacia Iberia'); --Lisboa, Constanca Casanova
insert into venda_farmacia values('2876926000929683/236731', '18-02-2020', 'Requip', '2mg', 18.99, 'Farmacia Iberia'); --Lisboa, Constanca Casanova
insert into venda_farmacia values('3811710318376157/688672', '18-03-2019','Algimate', '12mg', 12.75, 'Farmacia Avenida'); --Loule, Avelar Brotero
insert into venda_farmacia values('7998615906312164/206028', '30-01-2020', 'Aspirina', '100mg', 4.99,'Farmacia Santo Antonio'); --Arouca, Luisa Candeias
insert into venda_farmacia values('0648401466561989/313386', '15-12-2018', 'Flagyl', '250mg', 18.46,'Farmacia Santo Antonio'); --Arouca, Luisa Candeias
insert into venda_farmacia values('0094067486619720/204200', '18-05-2019', 'Ibuprofeno', '100mg', 3.55,'Farmacia Santo Antonio'); --Arouca, Luisa Candeias
insert into venda_farmacia values('0699249961778372/500491', '28-10-2020', 'Aspirina', '400mg', 7.99,'Farmacia Gomes de Pinho'); --Arouca, Luisa Candeias
insert into venda_farmacia values('4729170225340743/800503', '15-07-2020', 'Insulina', '4U', 2.35, 'Farmacia Central'); --Beja, Perpetua Borges
insert into venda_farmacia values('1321537032808971/001307', '31-08-2019', 'Imuran', '50mg', 33.02, 'Farmacia Torres Vedras'); --Torres Vedras, Joao dos Santos
insert into venda_farmacia values('9928499853565729/079490', '01-10-2020', 'Imuran', '25mg', 26.45, 'Farmacia Torres Vedras'); --Torres Vedras, Joao dos Santos
insert into venda_farmacia values('4131869380539662/582557', '20-11-2020', 'Imuran', '50mg', 33.02, 'Farmacia Torres Vedras'); --Torres Vedras, Joao dos Santos
insert into venda_farmacia values('7606557908737321/582557', '20-11-2020', 'MiraLAX', '17g', 18.80, 'Farmacia Torres Vedras'); --Torres Vedras, Joao dos Santos
insert into venda_farmacia values('0007844398649458/300051', '04-12-2018', 'Aero-OM', '105mg/ml', 11.50, 'Farmacia Serrano'); --Lousa, Ana Guedes
insert into venda_farmacia values('2074770755084420/295527', '27-03-2019', 'Brufen', '20mg/ml', 4.99, 'Farmacia Serrano'); --Lousa, Ana Guedes
insert into venda_farmacia values('0561029080124087/876973', '02-08-2020', 'Aspirina', '100mg', 4.99, 'Farmacia Serrano'); --Lousa, Ana Guedes
insert into venda_farmacia values('6909479761753110/877585', '23-04-2019', 'Vesicare', '10mg', 11.25, 'Farmacia J. Delgado'); --Beja, Merces Bobone
insert into venda_farmacia values('0000590827166694/906467', '18-03-2020', 'Proscar', '5mg', 21.97, 'Farmacia Central'); --Beja, Merces Bobone
insert into venda_farmacia values('7453524576362870/608322', '26-11-2018', 'Minoxidil', '50mg', 10.40, 'Farmacia Pinto'); --Loule, Gervasio Homem
insert into venda_farmacia values('0000000020636255/039924', '20-11-2020', 'Peroxiben', '50mg', 18.76, 'Farmacia Avenida'); --Loule, Gervasio Homem
insert into venda_farmacia values('1256038469339836/492445', '29-05-2019', 'Ureadin', '410g', 23.55, 'Farmacia Pinto'); --Loule, Gervasio Homem
insert into venda_farmacia values('0034122940739753/965165', '13-12-2018', 'Pandermil', '30mg', 6.41,'Farmacia Avenida'); --Loule, Gervasio Homem
insert into venda_farmacia values('0000000000000717/316140', '18-10-2019', 'Symbicort', '100mg', 13.99, 'Farmacia Torres Vedras'); --Torres Vedras, Teresa Meneses
insert into venda_farmacia values('6930928949669646/116548', '15-11-2020', 'Cefalexina', '500 mg', 30.05, 'Farmacia Torres Vedras'); --Torres Vedras, Teresa Meneses
insert into venda_farmacia values('1506731020888707/458824', '03-11-2020', 'Augmentin', '125mg', 12.99, 'Farmacia Torres Vedras'); --Torres Vedras, Teresa Meneses
insert into venda_farmacia values('0000000914152330/458824', '03-11-2020', 'Aspirina', '100mg', 4.99 , 'Farmacia Torres Vedras'); --Torres Vedras, Teresa Meneses
insert into venda_farmacia values('7515338107610968/645950', '22-08-2019', 'Lergonix', '10mg', 4.33, 'Farmacia Estadio'); --Coimbra, Adosindo Lima
insert into venda_farmacia values('2049391045052265/959645', '25-01-2020', 'Lergonix', '10mg', 4.33, 'Farmacia Estadio'); --Coimbra, Adosindo Lima
insert into venda_farmacia values('8064175542584416/430489', '03-04-2019', 'Desloratadina', '5mg', 5.55, 'Farmacia Dos Olivais'); --Coimbra, Adosindo Lima
insert into venda_farmacia values('4218714697297808/430489', '03-04-2019', 'Pandermil', '5mg', 7.09, 'Farmacia Dos Olivais'); --Coimbra, Adosindo Lima
insert into venda_farmacia values('8331994791057230/535139','13-02-2020', 'Ananase', '40mg', 10.50, 'Farmacia Barreto Lda'); --Lisboa, Filipe Lancastre

insert into prescricao_venda values ('85422', '058652114', '06-09-2019', 'Aspirina', '0705810889059245/518223');--Eliseu Rodrigues
insert into prescricao_venda values ('85422', '058652114', '06-09-2019', 'Deflon', '3244054110062473/518223');--Eliseu Rodrigues
insert into prescricao_venda values ('85422', '058652114', '06-09-2019', 'Scheriproct', '3984793475695528/518223');--Eliseu Rodrigues
insert into prescricao_venda values ('85422', '126160723', '23-12-2019', 'Ibuprofeno', '8793443315319186/778377');--Eliseu Rodrigues
insert into prescricao_venda values ('85422', '126160723', '15-12-2018', 'Aspirina', '3167797105509966/603689');--Eliseu Rodrigues
insert into prescricao_venda values ('75608', '447142023', '11-05-2019', 'Valium', '1986717113315083/171791'); --Gregorio Miguel
insert into prescricao_venda values ('75608', '200487753', '28-02-2019', 'Venlaxin', '0380396590517269/921144'); --Gregorio Miguel
insert into prescricao_venda values ('75608', '799423030', '31-01-2019', 'Xanax', '5169946902004627/760382'); --Gregorio Miguel
insert into prescricao_venda values ('75608', '074702281', '14-01-2020', 'Valium', '3519281183696528/923643'); --Gregorio Miguel
insert into prescricao_venda values ('28989', '498161550', '23-01-2019', 'Requip', '0006869895640039/524935'); --Constanca Casanova
insert into prescricao_venda values ('28989', '115137669', '05-04-2019', 'Valium', '0000001141965642/425373'); --Constanca Casanova
insert into prescricao_venda values ('28989', '572817334', '13-02-2019', 'Xenazine', '8236199889562213/923731'); --Constanca Casanova
insert into prescricao_venda values ('28989', '003744469', '18-02-2020', 'Requip', '2876926000929683/236731');--Constanca Casanova
insert into prescricao_venda values ('18392', '556355659', '01-03-2019', 'Algimate', '3811710318376157/688672'); --Avelar Brotero
insert into prescricao_venda values ('16197', '004864626', '26-01-2020', 'Aspirina', '7998615906312164/206028'); --Luisa Candeias
insert into prescricao_venda values ('16197', '080769637', '13-12-2018', 'Flagyl', '0648401466561989/313386'); --Luisa Candeias
insert into prescricao_venda values ('16197', '133430151', '18-05-2019', 'Ibuprofeno', '0094067486619720/204200'); --Luisa Candeias
insert into prescricao_venda values ('16197', '236247758', '25-10-2020', 'Aspirina', '0699249961778372/500491'); --Luisa Candeias
insert into prescricao_venda values ('81419', '058688435', '12-07-2020', 'Insulina', '4729170225340743/800503'); --Perpetua Borges
insert into prescricao_venda values ('72609', '000752020', '30-08-2019', 'Imuran', '1321537032808971/001307'); --Joao dos Santos
insert into prescricao_venda values ('72609', '000752020', '13-09-2020', 'Imuran', '9928499853565729/079490'); --Joao dos Santos
insert into prescricao_venda values ('72609', '041231102', '20-11-2020', 'Imuran', '4131869380539662/582557'); --Joao dos Santos
insert into prescricao_venda values ('72609', '041231102', '20-11-2020', 'MiraLAX', '7606557908737321/582557'); --Joao dos Santos
insert into prescricao_venda values ('24942', '991915759', '04-12-2018', 'Aero-OM','0007844398649458/300051'); --Ana Guedes
insert into prescricao_venda values ('24942', '893460238', '23-03-2019', 'Brufen', '2074770755084420/295527'); --Ana Guedes
insert into prescricao_venda values ('24942', '179565826', '19-07-2020', 'Aspirina', '0561029080124087/876973'); --Ana Guedes
insert into prescricao_venda values ('61228', '086498900', '21-04-2019', 'Vesicare', '6909479761753110/877585'); --Merces Bobone
insert into prescricao_venda values ('61228', '711076119', '11-03-2020', 'Proscar', '0000590827166694/906467'); --Merces Bobone
insert into prescricao_venda values ('20755', '024317072', '25-11-2018', 'Minoxidil', '7453524576362870/608322'); --Gervasio Homem
insert into prescricao_venda values ('20755', '565604517', '17-11-2020', 'Peroxiben', '0000000020636255/039924'); --Gervasio Homem
insert into prescricao_venda values ('20755', '293849025', '20-05-2019', 'Ureadin', '1256038469339836/492445'); --Gervasio Homem
insert into prescricao_venda values ('20755', '000413798', '07-12-2018', 'Pandermil', '0034122940739753/965165'); --Gervasio Homem
insert into prescricao_venda values ('93799', '000023989', '17-10-2019', 'Symbicort', '0000000000000717/316140'); --Teresa Meneses
insert into prescricao_venda values ('93799', '041231102', '15-11-2020', 'Cefalexina', '6930928949669646/116548'); --Teresa Meneses
insert into prescricao_venda values ('93799', '651143589', '31-10-2020', 'Augmentin', '1506731020888707/458824'); --Teresa Meneses
insert into prescricao_venda values ('93799', '651143589', '31-10-2020', 'Aspirina', '0000000914152330/458824'); --Teresa Meneses
insert into prescricao_venda values ('78791', '192600806', '31-07-2019', 'Lergonix', '7515338107610968/645950'); --Adosindo Lima ANALISE
insert into prescricao_venda values ('78791', '192600806', '24-01-2020', 'Lergonix', '2049391045052265/959645'); --Adosindo Lima
insert into prescricao_venda values ('78791', '009706887', '03-04-2019', 'Desloratadina', '8064175542584416/430489'); --Adosindo Lima
insert into prescricao_venda values ('78791', '009706887', '03-04-2019', 'Pandermil', '4218714697297808/430489'); --Adosindo Lima
insert into prescricao_venda values ('43095', '214402317', '13-02-2020', 'Ananase', '8331994791057230/535139'); --Filipe Lancastre
