CREATE EXTERNAL TABLE default.times(ID STRING, Nome STRING, Abreviacao STRING, Slug STRING) 
PARTITIONED BY(year INT) 
STORED AS PARQUET 
LOCATION '/cartola/clean/times';

CREATE EXTERNAL TABLE jogadores (ID STRING,	Apelido	STRING, ClubeID	STRING, PosicaoID STRING)
PARTITIONED BY(year INT)
STORED AS PARQUET 
LOCATION '/cartola/clean/jogadores';

CREATE EXTERNAL TABLE partidas (game STRING,
round STRING,	`date` STRING,	home_team STRING,	score STRING,	away_team STRING,
arena STRING,	home_score INTEGER,	away_score INTEGER,	total_gols INTEGER, result STRING)
PARTITIONED BY(year INT)
STORED AS PARQUET LOCATION '/cartola/clean/partidas';

CREATE EXTERNAL TABLE scouts (AtletaID STRING,	Rodada STRING,
ClubeID	STRING, Participou STRING,	Posicao	STRING, Jogos STRING, Pontos INTEGER,
PontosMedia STRING,	Preco STRING,	PrecoVariacao STRING,
 CA STRING, DS STRING, FC STRING, FD STRING, FF STRING,
  FS STRING, G STRING, I STRING, PI STRING, A STRING, SG STRING,
   DD STRING, DP STRING, GS STRING, FT STRING, PP STRING, CV STRING, GC STRING)
PARTITIONED BY(year INT)
STORED AS PARQUET LOCATION '/cartola/clean/scouts';