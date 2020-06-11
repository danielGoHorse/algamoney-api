CREATE TABLE usuario (
	id bigserial NOT NULL, 
	name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	senha VARCHAR(150) NOT NULL,
	CONSTRAINT pk_usuario_id PRIMARY KEY (id)
);
CREATE TABLE permissao (
	id bigserial NOT NULL,
	descricao VARCHAR(50) NOT NULL,
    CONSTRAINT pk_permissao_id PRIMARY KEY (id)
);
CREATE TABLE usuario_permissao (
	id_usuario bigserial NOT NULL,
	id_permissao bigserial NOT NULL,
	PRIMARY KEY (id_usuario, id_permissao),
	FOREIGN KEY (id_usuario) REFERENCES usuario(id),
	FOREIGN KEY (id_permissao) REFERENCES permissao(id)
);

INSERT INTO usuario (id, name, email, senha) values (1, 'Administrador', 'admin@algamoney.com', '$2a$10$TLaM.2uqfwzqvgCqTbhf9ucd4WYYBB2tOLVxIgXkDCcQiGyRc5UoK');
INSERT INTO usuario (id, name, email, senha) values (2, 'Maria Silva', 'maria@algamoney.com', '$2a$10$Zc3w6HyuPOPXamaMhh.PQOXvDnEsadztbfi6/RyZWJDzimE8WQjaq');

INSERT INTO permissao (id, descricao) values (1, 'ROLE_CADASTRAR_CATEGORIA');
INSERT INTO permissao (id, descricao) values (2, 'ROLE_PESQUISAR_CATEGORIA');
INSERT INTO permissao (id, descricao) values (9, 'ROLE_REMOVER_CATEGORIA');

INSERT INTO permissao (id, descricao) values (3, 'ROLE_CADASTRAR_PESSOA');
INSERT INTO permissao (id, descricao) values (4, 'ROLE_REMOVER_PESSOA');
INSERT INTO permissao (id, descricao) values (5, 'ROLE_PESQUISAR_PESSOA');

INSERT INTO permissao (id, descricao) values (6, 'ROLE_CADASTRAR_LANCAMENTO');
INSERT INTO permissao (id, descricao) values (7, 'ROLE_REMOVER_LANCAMENTO');
INSERT INTO permissao (id, descricao) values (8, 'ROLE_PESQUISAR_LANCAMENTO');


-- admin
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 1);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 2);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 3);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 4);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 5);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 6);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 7);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 8);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (1, 9);

-- maria
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (2, 2);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (2, 5);
INSERT INTO usuario_permissao (id_usuario, id_permissao) values (2, 8);