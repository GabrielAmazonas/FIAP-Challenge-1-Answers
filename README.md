### FIAP Challenge 1 - Entregáveis

#### Neste repositório:

Pasta limpeza_dados: Contém os arquivos de exploração e código pyspark para tratamento dos dados.
Pasta slim_bigdata_docker: Ambiente docker compose adaptado a partir do ambiente fornecido pelo professor Fábio Jardim

Arquivo: hive-criacao-tabelas.sql - Conforme solicitado em desafio
Arquivo: resposta.doc , resposta.sql - Conforme perguntas do desafio

Demais entregáveis submetidos diretamente na plataforma da FIAP.



Caso ocorra o seguinte erro: Cannot start service : Ports are not available: listen tcp 0.0.0.0:50070:

Executar o CMD como administrador e executar o comando abaixo.

net stop winnat



Estrutura de pastas:

- slim-bigdata-docker
    - data

Comandos HDFS:
- hadoop fs -ls / (Listar arquivos no hadoop fs)

- hadoop fs -mkdir /cartola (criar diretorio de nome /cartola no hdfs)

- hadoop fs -cat /path/to/teste.csv (Executar o comando -cat em um arquivo de nome teste.csv)

- hadoop fs -ls /cartola (Listar arquivos de dentro da pasta cartola)

- hadoop fs -rm /cartola/teste.csv (Remove o arquivo teste.csv presente na pasta cartola)

- hadoop fs -put /cartola/* /cartola (Copiar os arquivos da pasta /cartola local para o caminho /cartola no hdfs)

Baixando os arquivos para o hadoop cluster:

HDFS comando pra upload de arquivos:
hadoop fs -put /cartola/* /cartola

