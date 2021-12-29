CREATE TABLE clientes 
(
    idCliente int auto_increment, 
    nomeCliente varchar(80),
    telefone float,
    endereço varchar(80),
    veículosAdquiridos int, 
    PRIMARY KEY (idCliente)
);

INSERT INTO clientes VALUES
(DEFAULT, "Josué", 92998198698, "Rua B. União", 1),
(DEFAULT, "Sarah Duarte", 92800645494, "Rua Serra de Bragança", 1),
(DEFAULT, "Nicolas Costela", 92496712448, "Rua Barão de Vitória", 1),
(DEFAULT, "Vitor Hugo", 92289351453, "Avenida Afonso Pena", 1),
(DEFAULT, "Luana Peixoto", 92713181216, "Praça da República", 1),
(DEFAULT, "Diego Gonçalves", 92616311980, "Rua Frederico Moura", 1),
(DEFAULT, "João Melo", 92636561706, "Rua da Imprensa", 1),
(DEFAULT, "Lorena Moura", 92232650772, "Avenida Esbertalina Barbosa Damiani", 1),
(DEFAULT, "Juliana Silveira", 92595226325, "Avenida Rio Branco", 1),
(DEFAULT, "Thales Costela", 92677832819, "Rua Domingos Olímpio", 1),
(DEFAULT, "Camila Moraes", 92559182824, "Avenida Governador José Malcher", 1),
(DEFAULT, "Gabriel Porto", 92746404979, "Rua Paracatu", 1),
(DEFAULT, "João Gabriel", 92052836028, "Rua Serra de Bragança", 1),
(DEFAULT, "Maria Luiza", 92236254436, "Avenida Esbertalina Barbosa Pamiani", 1),
(DEFAULT, "Milena Farias", 92988807667, "Rua Fruta-Pão", 1);


CREATE TABLE veículos 
(
    idChassi int, 
    idCliente int, 
    dataAquisição date, 
    PRIMARY KEY (idChassi),
    FOREIGN KEY (idCliente) REFERENCES clientes (idCliente)
);

INSERT INTO veículos VALUES 
(123456, 1, "2021-11-12"),
(628797, 2, "2019-01-15"),
(118839, 3, "2019-03-17"),
(549427, 4, "2020-05-24"),
(542205, 5, "2018-07-21"),
(395252, 6, "2017-09-07"),
(692775, 7, "2015-11-03"),
(936153, 8, "2019-02-01"),
(430074, 9, "2016-04-05"),
(886831, 10, "2018-06-15"),
(540421, 11, "2018-08-25"),
(126981, 12, "2010-10-20"),
(847252, 13, "2016-12-18"),
(902332, 14, "2019-01-14"),
(624452, 15, "2018-01-10");

CREATE TABLE peças 
(
   idPeça int auto_increment, 
   tipoPeça varchar(80),
   qtdPeçaUsada int,  
   custoUnitário float, 
   qtdArmazém int,
   PRIMARY KEY (idPeça) 
);

INSERT INTO peças VALUES 

(DEFAULT, "Pistão", 2, 10, 150),
(DEFAULT, "Pneu", 5, 100, 300),
(DEFAULT, "Retrovisor", 1, 50, 200),
(DEFAULT, "Lanterna", 2, 30, 150),
(DEFAULT, "Para-choque", 1, 400, 100),
(DEFAULT, "Para-brisa", 1, 40, 100),
(DEFAULT, "Retrovisor", 1, 200, 100),
(DEFAULT, "Banco", 1, 30, 150),
(DEFAULT, "Vela", 1, 60, 200),
(DEFAULT, "Pastilha de Freio", 2, 60, 200),
(DEFAULT, "Amortecedor", 4, 200, 200),
(DEFAULT, "Embreagem", 1, 400, 60),
(DEFAULT, "Filtro", 1, 25, 150),
(DEFAULT, "Correia", 1, 40, 150),
(DEFAULT, "Rolamento", 1, 60, 150);

CREATE TABLE reparos 
(
    idReparo int auto_increment,
    dataReparo date,
    custoTotal float,
    tempoGasto time,
    PRIMARY KEY (idReparo)
);

INSERT INTO reparos VALUES

(DEFAULT, "2020-01-05", 30, "02:00:00"),
(DEFAULT, "2019-02-06", 510, "01:00:00"),
(DEFAULT, "2018-03-07", 80, "01:00:00"),
(DEFAULT, "2017-04-09", 60, "01:00:00"),
(DEFAULT, "2016-05-09", 1000, "05:00:00"),
(DEFAULT, "2015-06-10", 50, "01:00:00"),
(DEFAULT, "2016-07-11", 210, "01:00:00"),
(DEFAULT, "2017-08-12", 40, "01:00:00"),
(DEFAULT, "2018-09-13", 180, "02:00:00"),
(DEFAULT, "2019-10-14", 180, "01:00:00"),
(DEFAULT, "2020-11-15", 890, "03:00:00"),
(DEFAULT, "2021-12-16", 460, "03:00:00"),
(DEFAULT, "2020-11-17", 55, "01:00:00"),
(DEFAULT, "2019-01-18", 120, "01:00:00"),
(DEFAULT, "2018-06-19", 150, "01:00:00"),
(DEFAULT, "2018-06-20", 120, "01:00:00");

CREATE TABLE funcionários 
(
    idFuncionário int auto_increment, 
    nomeFuncionário varchar(50),
    morada varchar(50),
    PRIMARY KEY (idFuncionário)
);

INSERT INTO funcionários VALUES
(DEFAULT, "Felipe Rocha", "Rua Exemplo A"),
(DEFAULT, "Enzo das Neves", "Rua Exemplo B"),
(DEFAULT, "Antônio Nogueira", "Rua Exemplo CC"),
(DEFAULT, "Guilherme Peixoto", "Rua Exemplo DD"),
(DEFAULT, "Diego Azevedo", "Rua Exemplo EE"),
(DEFAULT, "Lucas Caldeira", "Rua Exemplo FF"),
(DEFAULT, "Henrique Nascimento", "Rua Exemplo GG"),
(DEFAULT, "Raul Gonçalves", "Rua Exemplo HH"),
(DEFAULT, "Erick Sales", "Rua Exemplo II"),
(DEFAULT, "Lucas Pinto", "Rua Exemplo JJ"),
(DEFAULT, "Murilo Novaes", "Rua Exemplo HH"),
(DEFAULT, "Marcos Vinicius", "Rua Exemplo KK"),
(DEFAULT, "Daniel Mendes", "Rua Exemplo LL"),
(DEFAULT, "Thomas Cunha", "Rua Exemplo MM"),
(DEFAULT, "Davi Luiz Novaes", "Rua Exemplo NN");

CREATE TABLE categoria (
    idCategoria int auto_increment,
    tipoCategoria varchar(50), 
    custoHora float,
    PRIMARY KEY (idCategoria)
);

INSERT INTO categoria VALUES 
(DEFAULT, "Aprendiz", 10),
(DEFAULT, "Mecânico", 30),
(DEFAULT, "Especialista", 600);

CREATE TABLE CategoriaFuncionário 
(
    idFuncionário int, 
    idCategoria int, 
    FOREIGN KEY (idCategoria) REFERENCES categoria(idCategoria),
    FOREIGN KEY (idFuncionário) REFERENCES funcionários(idFuncionário)
);

INSERT INTO CategoriaFuncionário VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 2),
(6, 1),
(7, 1),
(8, 2),
(9, 3),
(10, 3),
(11, 2),
(12, 1),
(13, 2),
(14, 2),
(15, 2);

CREATE TABLE FuncionárioReparaVeículo 
(
    idVeículo int, 
    idPeças int, 
    idClientes int, 
    idFuncionário int, 
    idReparo int,
    FOREIGN KEY (idVeículo) REFERENCES veículos(idChassi),
    FOREIGN KEY (idPeças) REFERENCES peças(idPeça),
    FOREIGN KEY (idClientes) REFERENCES clientes(idCliente),
    FOREIGN KEY (idFuncionário) REFERENCES funcionários(idFuncionário),
    FOREIGN KEY (idReparo) REFERENCES reparos(idReparo) 
);

INSERT INTO FuncionárioReparaVeículo VALUES
(123456, 1, 1, 13, 1),
(628797, 2, 2, 1, 2), 
(118839, 3, 3, 14, 3), 
(549427, 4, 4, 5, 4), 
(542205, 5, 5, 4, 5), 
(395252, 6, 6, 12, 6), 
(692775, 7, 7, 6, 7), 
(936153, 8, 8, 7, 8), 
(430074, 9, 9, 10, 9), 
(886831, 10, 10, 3, 10), 
(540421, 11, 11, 9, 11), 
(126981, 12, 12, 2, 12), 
(847252, 13, 13, 8, 13), 
(902332, 14, 14, 9, 14), 
(624452, 15, 15, 10, 15),  
(123456, 10, 12, 11, 16);