CREATE TABLE estantes 
(
    Estante int auto_increment,
    PRIMARY KEY (Estante) 
);

INSERT INTO estantes VALUE
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT),
(DEFAULT);


CREATE TABLE livros
(
    Livro int auto_increment,
    Título varchar(100),
    Exemplar int,
    Autor varchar(50),
    editora varchar(50),
    Estante int,
    PRIMARY KEY (Livro),
    FOREIGN KEY (Estante) REFERENCES estantes(Estante)
);

INSERT INTO livros VALUE
(DEFAULT, "A Culpa é das Estrelas", 1, "John Green", "Intríseca", 1),
(DEFAULT, "A Culpa é das Estrelas", 2, "John Green", "Intríseca", 1),
(DEFAULT, "A Culpa é das Estrelas", 3, "John Green", "Intríseca", 1),
(DEFAULT, "Interligados: Aden Stone e a batalha contra as sombras", 1, "Gena Showalter", "Universo dos Livros", 3),
(DEFAULT, "Instrumentos Mortais: Cidade de Vidro", 1, "Cassandra Clare", "Galera", 4),
(DEFAULT, "Trono de Vidro", 1, "Sarah J. Maas", "Galera", 6),
(DEFAULT, "Trono de Vidro", 2, "Sarah J. Maas", "Galera", 6),
(DEFAULT, "Trono de Vidro", 3, "Sarah J. Maas", "Galera", 6),
(DEFAULT, "A queda dos cinco", 1, "Pittacus Lore", "Intríseca", 7),
(DEFAULT, "Sua Alteza Real", 1, "Rachel Hawkins", "Alt", 8),
(DEFAULT, "Harry Potter e o Prisioneiro de Azkaban", 1, "J.K. Rowling", "Rocco", 9),
(DEFAULT, "Percy Jackson e a Batalha do Labirinto", 1, "Rick Riordan", "Intríseca", 10),
(DEFAULT, "Percy Jackson e a Batalha do Labirinto", 2, "Rick Riordan", "Intríseca", 10),
(DEFAULT, "Jogos Vorazes: Em Chamas", 1, "Suzanne Collins", "Rocco", 13),
(DEFAULT, "Querido John", 1, "Nicholas Sparks", "Arqueiro", 14);



CREATE TABLE clientes
(
    matrículaCliente int auto_increment,
    nomeCliente varchar(50),
    PRIMARY KEY (matrículaCliente)
);

INSERT INTO clientes VALUES
(DEFAULT, "Aelin"),
(DEFAULT, "Cici"),
(DEFAULT, "Zoe"),
(DEFAULT, "Bebiana"),
(DEFAULT, "Izabella"),
(DEFAULT, "Sarah"),
(DEFAULT, "Alissa"),
(DEFAULT, "Tito"),
(DEFAULT, "Noemi"),
(DEFAULT, "Crystal"),
(DEFAULT, "Petra"),
(DEFAULT, "Dara"),
(DEFAULT, "Deise"),
(DEFAULT, "Adriel"),
(DEFAULT, "Iliana");

CREATE TABLE bibliotecárias 
(
    Matrícula int auto_increment, 
    idEstante int,
    nomeBibliotecária varchar(50), 
    PRIMARY KEY (Matrícula), 
    FOREIGN KEY (idEstante) REFERENCES estantes(Estante)
);

INSERT INTO bibliotecárias VALUES
(Default, 1, "Sandra Blasi"),
(Default, 2, "Paulina Montalcini"),
(Default, 3, "Amalia Sraffa"),
(Default, 4, "Lucrezia Ritacca"),
(Default, 5, "Fiamma Manzoni"),
(Default, 6, "Gabriella Bernardini"),
(Default, 9, "Monica Paganini"),
(Default, 7, "Sophia Altera"),
(Default, 10, "Giulietta Nolcini"),
(Default, 12, "Carla Tedesco"),
(Default, 11, "Eleanora Asmundo"),
(Default, 13, "Amalia Bossi"),
(Default, 8, "Maria Cipolla"),
(Default, 15, "Aria Casalodi"),
(Default, 14, "Rosina Brichese");

CREATE TABLE empréstimos 
(
    idEmpréstimo int auto_increment, 
    idCliente int,
    idLivro int,
    idBibliotecária int, 
    dataDevolução date, 
    valorMultaDiária float, 
    PRIMARY KEY (idEmpréstimo), 
    FOREIGN KEY (idLivro) REFERENCES Livros(livro),
    FOREIGN KEY (idCliente) REFERENCES clientes(matrículaCliente),
    FOREIGN KEY (idBibliotecária) REFERENCES bibliotecárias(Matrícula)
);
INSERT INTO empréstimos VALUES

(Default, 1, 2, 5, "2021-11-20", 2.99),
(Default, 2, 3, 5, "2021-12-19", 2.99),
(Default, 5, 5, 5, "2021-10-24", 2.99),
(Default, 5, 4, 5, "2021-5-20", 2.99),
(Default, 3, 1, 5, "2021-7-20", 2.99),
(Default, 7, 6, 5, "2021-12-25", 2.99),
(Default, 14, 10, 5, "2020-3-23", 2.99),
(Default, 7, 9, 5, "2021-9-10", 2.99),
(Default, 5, 2, 5, "2021-1-25", 2.99),
(Default, 12, 10, 5, "2021-11-28", 2.99),
(Default, 1, 3, 5, "2021-12-4", 2.99),
(Default, 13, 5, 5, "2021-8-19", 2.99),
(Default, 11, 11, 5, "2021-2-20", 2.99),
(Default, 6, 12, 5, "2021-4-17", 2.99),
(Default, 12, 12, 5, "2021-4-22", 2.99),
(Default, 8, 6, 5, "2021-12-25", 2.99);

CREATE TABLE estagiárias
(
    idEstagiária int auto_increment, 
    idBibliotecária int, 
    instituiçãoEnsino varchar(50), 
    nomeEstagiária varchar(50),
    PRIMARY KEY (idEstagiária),
    FOREIGN KEY (idBibliotecária) REFERENCES bibliotecárias(Matrícula)
);

INSERT INTO estagiárias VALUES
(DEFAULT, 1, "Coelinho Sabido", "Natália Teixeira"), 
(DEFAULT, 2, "João Paulo II", "Carolina Porto"), 
(DEFAULT, 3, "Salles Freitas", "Ana Sophia da Mata"), 
(DEFAULT, 4, "Geração 2000", "Carolina Peixoto"), 
(DEFAULT, 5, "Pedro II", "Helena Sales"), 
(DEFAULT, 6, "FAETEC", "Dra. Agatha Ribeiro"), 
(DEFAULT, 7, "CTUR", "Gabriela da Costa"), 
(DEFAULT, 8, "CEFET", "Sra. Beatriz Ferreira"), 
(DEFAULT, 9, "IFRJ", "Helena Farias"), 
(DEFAULT, 10, "SESC-RJ", "Srta. Eloah da Costa"), 
(DEFAULT, 11, "Elite", "Emilly da Mata"), 
(DEFAULT, 12, "CFA", "Helena Lima"), 
(DEFAULT, 13, "Prioridade Hum", "Catarina Cunha"), 
(DEFAULT, 14, "Colégio Curso Atividade", "Camila da Costa"), 
(DEFAULT, 15, "Órion", "Maysa Costa");

