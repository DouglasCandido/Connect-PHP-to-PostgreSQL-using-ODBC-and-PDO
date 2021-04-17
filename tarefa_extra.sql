-- Database: BD 1

-- DROP DATABASE "BD 1";

CREATE DATABASE "BD 1"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- SCHEMA: tarefa_extra

-- DROP SCHEMA tarefa_extra ;

CREATE TABLE IF NOT EXISTS tarefa_extra.uf(

    sigla varchar(2) not null,
    nome varchar(25) not null,
    primary key(sigla) 
    
);

-- TABLESPACE pg_default;

ALTER TABLE tarefa_extra.uf OWNER to postgres;

insert into tarefa_extra.uf(sigla, nome) values('AC','Acre');
insert into tarefa_extra.uf(sigla, nome) values('AL','Alagoas');
insert into tarefa_extra.uf(sigla, nome) values('AP','Amapá');
insert into tarefa_extra.uf(sigla, nome) values('AM','Amazonas');
insert into tarefa_extra.uf(sigla, nome) values('BA','Bahia');
insert into tarefa_extra.uf(sigla, nome) values('CE','Ceará');
insert into tarefa_extra.uf(sigla, nome) values('DF','Distrito Federal');
insert into tarefa_extra.uf(sigla, nome) values('ES','Espírito Santo');
insert into tarefa_extra.uf(sigla, nome) values('GO','Goiás');
insert into tarefa_extra.uf(sigla, nome) values('MA','Maranhão');
insert into tarefa_extra.uf(sigla, nome) values('MT','Mato Grosso');
insert into tarefa_extra.uf(sigla, nome) values('MS','Mato Grosso do Sul');
insert into tarefa_extra.uf(sigla, nome) values('MG','Minas Gerais');
insert into tarefa_extra.uf(sigla, nome) values('PA','Pará');
insert into tarefa_extra.uf(sigla, nome) values('PB','Paraíba');
insert into tarefa_extra.uf(sigla, nome) values('PR','Paraná');
insert into tarefa_extra.uf(sigla, nome) values('PE','Pernambuco');
insert into tarefa_extra.uf(sigla, nome) values('PI','Piauí');
insert into tarefa_extra.uf(sigla, nome) values('RJ','Rio de Janeiro');
insert into tarefa_extra.uf(sigla, nome) values('RN','Rio Grande do Norte');
insert into tarefa_extra.uf(sigla, nome) values('RS','Rio Grande do Sul');
insert into tarefa_extra.uf(sigla, nome) values('RO','Rondônia');
insert into tarefa_extra.uf(sigla, nome) values('RR','Roraima');
insert into tarefa_extra.uf(sigla, nome) values('SC','Santa Catarina');
insert into tarefa_extra.uf(sigla, nome) values('SP','São Paulo');
insert into tarefa_extra.uf(sigla, nome) values('SE','Sergipe');
insert into tarefa_extra.uf(sigla, nome) values('TO','Tocantins');
