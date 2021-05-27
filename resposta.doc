
-- Quantos registros há em cada tabela por ano?
select year, count(1) as contagem_jogadores from jogadores group by year;
/*
 	year	contagem_jogadores
1	2014	1033
2	2015	1026
3	2016	1001
4	2017	751
5	2018	426
6	2019	692
7	2020	599
**/

select year, count(1) as contagem_partidas from partidas group by year;


/*
1	2014	380
2	2015	380
3	2016	380
4	2017	380
5	2018	380
6	2019	380
7	2020	390
**/

select year, count(1) as contagem_scouts from scouts group by year;
/*

 	year	contagem_scouts
1	2014	31567
2	2015	30510
3	2016	31168
4	2017	32408
5	2018	30955
6	2019	30581
7	2020	29078
**/

select year, count(1) as contagem_times from times group by year;
1	2014	20
2	2015	20
3	2016	20
4	2017	20
5	2018	20
6	2019	20
7	2020	20

-- Quantas equipes mandantes exclusivas?
with unique_clubes AS (
    select distinct(ClubeId) from scouts
)
select count(ClubeId) from unique_clubes;
-- 53

-- Quantas vezes as equipes mandantes sairam vitoriosas?
with venceu_casa AS (
    SELECT
    CASE when result = home_team THEN 1
    ELSE 0 END as casa_venceu
FROM partidas
)
select sum(casa_venceu) from venceu_casa;
-- 1323

-- Quantas vezes as equipes visitantes sairam vitoriosas?

with venceu_visitante AS (
    SELECT
    CASE when result = away_team THEN 1
    ELSE 0 END as visi_venceu
FROM partidas
)

select sum(visi_venceu) from venceu_visitante;
-- 653

-- Quantas partidas resultaram em empate?
select count(1) from partidas where result = 'empate';
-- 694


-- Quais jogadores detem os melhores scouts gerais?

with top_10 AS (select sum(Pontos) as total_pontos, AtletaID from scouts group by atletaid order by total_pontos desc limit 10)
select top_10.total_pontos, top_10.AtletaID, jogadores.apelido from top_10 inner join jogadores on top_10.atletaid = jogadores.id;
/*
1	{"col1":750.2000041157007,"col2":"90285","col3":"Bruno Henrique"}
2	{"col1":751.9999997988343,"col2":"68911","col3":"Diego Souza"}
3	{"col1":773.6999970972538,"col2":"80853","col3":"Pedro Geromel"}
4	{"col1":797.8999992981553,"col2":"78445","col3":"Renê"}
5	{"col1":821.9000025093555,"col2":"42500","col3":"Fagner"}
6	{"col1":832.0000029802322,"col2":"87863","col3":"Arrascaeta"}
7	{"col1":832.0000029802322,"col2":"87863","col3":"De Arrascaeta"}
8	{"col1":883.5999967306852,"col2":"78850","col3":"Reinaldo"}
9	{"col1":885.800000436604,"col2":"83257","col3":"Gabriel"}
10	{"col1":909.7999959290028,"col2":"62121","col3":"Vanderlei"}
**/

-- Melhores scouts por ano?
with top_10 AS (select sum(Pontos) as total_pontos, AtletaID from scouts where year = 2014 group by atletaid  order by total_pontos desc limit 10)
select AtletaID, total_pontos, apelido from top_10 inner join jogadores on top_10.atletaid = jogadores.id
group by AtletaID, total_pontos, apelido;

/*
--2014
    62136	163.39999929070473	Marcelo Oliveira
	62023	167.30000114440918	D'Alessandro
	38162	167.50000093877316	Fred
	51772	168.79999876767397	Everton Ribeiro
	38055	168.89999943971634	Rogério Ceni
	68833	170.00000140815973	Ricardo Goulart
	50358	175.49999929964542	Marcelo Moreno
	37899	186.59999924898148	Renan
	37770	201.29999887943268	Marcelo Grohe
	50348	203.19999872148037	Conca
**/

with top_10 AS (select sum(Pontos) as total_pontos, AtletaID from scouts where year = 2015 group by atletaid  order by total_pontos desc limit 10)
select AtletaID, total_pontos, apelido from top_10 inner join jogadores on top_10.atletaid = jogadores.id
group by AtletaID, total_pontos, apelido;

/*
-- 2015
1 68920	157.40000015497208	Dudu
2	49675	157.80000212788582	Alexandre Pato
3	73649	162.10000051558018	Lucas Pratto
4	37644	164.899998806417	Rodrigo
5	45125	165.98000007867813	Tite
6	86759	167.50000026077032	Luan
7	42234	169.89999902248383	Cássio
8	38315	171.0999991297722	Jadson
9	69051	189.90000009536743	Danilo Fernandes
10	68872	201.1000002026558	Marcelo Lomba
**/

with top_10 AS (select sum(Pontos) as total_pontos, AtletaID from scouts where year = 2016 group by atletaid  order by total_pontos desc limit 10)
select AtletaID, total_pontos, apelido from top_10 inner join jogadores on top_10.atletaid = jogadores.id
group by AtletaID, total_pontos, apelido;

/* 

1   71892	157.90000170469284	Wellington Silva
2	50284	164.19999879598618	Wilson
3	87999	164.30000135302544	Gustavo Scarpa
4	68911	166.99999843537807	Diego Souza
5	86485	169.40000139176846	Keno
6	87552	171.79999966174364	Vitor Bueno
7	88065	176.7000002115965	Jorge
8	87863	183.7000005096197	Arrascaeta
9	62121	189.2999992966652	Vanderlei
10	68952	210.9999979287386	Marinho

**/

with top_10 AS (select sum(Pontos) as total_pontos, AtletaID from scouts where year = 2017 group by atletaid  order by total_pontos desc limit 10)
select AtletaID, total_pontos, apelido from top_10 inner join jogadores on top_10.atletaid = jogadores.id
group by AtletaID, total_pontos, apelido;

/*

1  90285	164.90000140666962	Bruno Henrique
2	80337	167.50000178813934	Arthur Caíke
3	78584	167.79999947547913	Douglas Friedrich
4	68690	172.79999847710133	André
5	78850	179.2000000923872	Reinaldo
6	73281	182.50000101327896	Renê Júnior
7	61149	196.2999990284443	Lucca
8	50284	203.2999986410141	Wilson
9	82455	221.00000083446503	Zé Rafael
10	62121	280.199999332428	Vanderlei

**/

with top_10 AS (select sum(Pontos) as total_pontos, AtletaID from scouts where year = 2018 group by atletaid  order by total_pontos desc limit 10)
select AtletaID, total_pontos, apelido from top_10 inner join jogadores on top_10.atletaid = jogadores.id
group by AtletaID, total_pontos, apelido;
/*
1 83257	194.7999991029501	Gabriel
2	68920	195.8999973833561	Dudu
3	84709	196.70000164210796	Nico López
4	86757	197.40000104904175	Everton
5	79113	197.50000017881393	Víctor Cuesta
6	83433	199.6999999731779	Patrick
7	94930	208.70000271499157	Lucas Paquetá
8	82455	212.6999982893467	Zé Rafael
9	82455	212.6999982893467	Zé Rafael 
10	80196	219.5000021457672	Yago Pikachu
11	78445	233.59999972581863	Renê
**/

with top_10 AS (select sum(Pontos) as total_pontos, AtletaID from scouts where year = 2019 group by atletaid  order by total_pontos desc limit 10)
select AtletaID, total_pontos, apelido from top_10 inner join jogadores on top_10.atletaid = jogadores.id
group by AtletaID, total_pontos, apelido;

/*

1	78850	192.4999990016222	Reinaldo
2	61188	193.2000009715557	Gilberto
3	88065	197.0000005364418	Jorge
4	70360	200.40000031888485	Eduardo Sasha
5	86757	209.8999993354082	Everton
6	81677	214.100000962615	Carlos Sánchez
7	87863	229.10000379383564	Arrascaeta
8	82453	233.60000109672546	Tadeu
9	90285	244.9000020995736	Bruno Henrique
10	83257	269.3000007867813	Gabriel

**/

with top_10 AS (select sum(Pontos) as total_pontos, AtletaID from scouts where year = 2020 group by atletaid  order by total_pontos desc limit 10)
select AtletaID, total_pontos, apelido from top_10 inner join jogadores on top_10.atletaid = jogadores.id
group by AtletaID, total_pontos, apelido;

/*
83433	165.89999929070473	Patrick
2	91201	166.00000175088644	Pepê
3	80287	171.60000005364418	Luciano
4	87228	172.50000143051147	Guilherme Arana
5	90933	172.8000009059906	Jean
6	86485	187.20000046491623	Keno
7	71162	193.50000098347664	Vinícius
8	71844	195.80000007152557	Thiago Galhardo
9	92630	230.0000014156103	Claudinho
10	68952	254.7000002861023	Marinho
**/

-- Qual é o time Time ideal: (Formação 4 3 3)
/*
Goleiro 
Id      Apelido
62121	 Vanderlei
Laterais 
Id      Apelido
38229	Fábio Santos
60969	Patric
Meio Campo
Id      Apelido
78605	Gabriel
62023	D'Alessandro
80583	Lucas Lima
Zagueiros
Id      Apelido
50317	David Braz
63172	Paulão
Atacantes
Id      Apelido
38162	Fred
84848	Erik
75295	Paolo Guerrero

Técnico:
Id      Apelido
62136	Marcelo Oliveira
**/

-- Goleiro
SELECT sum(Pontos) as total_pontos,
CASE
    WHEN posicao == 'gol' THEN 1
    WHEN posicao == 'lat' THEN 2
    WHEN posicao == 'zag' THEN 3
    WHEN posicao == 'mei' THEN 4
    WHEN posicao == 'ata' THEN 5
    WHEN posicao == 'tec' THEN 6
    ELSE posicao
END AS posicao, 
atletaid,
apelido
FROM scouts 
inner join jogadores on jogadores.id = scouts.atletaid 
WHERE posicao == 1
group by atletaid, posicao, apelido
order by total_pontos desc
LIMIT 1;
-- 1042.2999975383282	1	62121	Vanderlei

-- Laterais
 
SELECT sum(Pontos) as total_pontos,
CASE
    WHEN posicao == 'gol' THEN 1
    WHEN posicao == 'lat' THEN 2
    WHEN posicao == 'zag' THEN 3
    WHEN posicao == 'mei' THEN 4
    WHEN posicao == 'ata' THEN 5
    WHEN posicao == 'tec' THEN 6
    ELSE posicao
END AS posicao, 
atletaid,
apelido
FROM scouts 
inner join jogadores on jogadores.id = scouts.atletaid 
WHERE posicao == 2
group by atletaid, posicao, apelido
order by total_pontos desc
LIMIT 2;
/* 
 	total_pontos	posicao	atletaid	apelido
1	1086.3999939188361	2	38229	Fábio Santos
2	1047.2000027745962	2	60969	Patric

**/

-- Zagueiros
SELECT sum(Pontos) as total_pontos,
CASE
    WHEN posicao == 'gol' THEN 1
    WHEN posicao == 'lat' THEN 2
    WHEN posicao == 'zag' THEN 3
    WHEN posicao == 'mei' THEN 4
    WHEN posicao == 'ata' THEN 5
    WHEN posicao == 'tec' THEN 6
    ELSE posicao
END AS posicao, 
atletaid,
apelido
FROM scouts 
inner join jogadores on jogadores.id = scouts.atletaid 
WHERE posicao == 3
group by atletaid, posicao, apelido
order by total_pontos desc
LIMIT 2;


/*
1 753.200002618134	3	50317	David Braz
2	690.8999889642	3	63172	Paulão
**/

-- Meio campos 

SELECT sum(Pontos) as total_pontos,
CASE
    WHEN posicao == 'gol' THEN 1
    WHEN posicao == 'lat' THEN 2
    WHEN posicao == 'zag' THEN 3
    WHEN posicao == 'mei' THEN 4
    WHEN posicao == 'ata' THEN 5
    WHEN posicao == 'tec' THEN 6
    ELSE posicao
END AS posicao, 
atletaid,
apelido
FROM scouts 
inner join jogadores on jogadores.id = scouts.atletaid 
WHERE posicao == 4
group by atletaid, posicao, apelido
order by total_pontos desc
LIMIT 3;

/*
1 918.4000058099627	4	78605	Gabriel
2	836.5000057220459	4	62023	D'Alessandro
3	768.599998883903	4	80583	Lucas Lima
**/

-- Atacantes
SELECT sum(Pontos) as total_pontos,
CASE
    WHEN posicao == 'gol' THEN 1
    WHEN posicao == 'lat' THEN 2
    WHEN posicao == 'zag' THEN 3
    WHEN posicao == 'mei' THEN 4
    WHEN posicao == 'ata' THEN 5
    WHEN posicao == 'tec' THEN 6
    ELSE posicao
END AS posicao, 
atletaid,
apelido
FROM scouts 
inner join jogadores on jogadores.id = scouts.atletaid 
WHERE posicao == 5
group by atletaid, posicao, apelido
order by total_pontos desc
LIMIT 3;
/*
1005.0000056326389	5	38162	Fred
2	836.3999935090542	5	84848	Erik
3	774.000008225441	5	75295	Paolo Guerrero
**/