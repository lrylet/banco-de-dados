CREATE TABLE obra
(
    idObra int auto_increment,
    título varchar(100),
    ano date,
    PRIMARY KEY (idObra)
);

INSERT INTO obra VALUES
(DEFAULT, "Monalisa", "1797-01-01"),
(DEFAULT, "Freedom", "2001-01-01"),
(DEFAULT, "A noite estrelada", "1889-01-01"),
(DEFAULT, "David", "1504-01-01"),
(DEFAULT, "Composição número 5", "1948-01-01"),
(DEFAULT, "Pietà", "1499-01-01"),
(DEFAULT, "A traição das imagens", "1929-01-01"),
(DEFAULT, "O Pensador", "1904-01-01"),
(DEFAULT, "Gótico americano", "1930-01-01"),
(DEFAULT, "Formas Únicas de Continuidade no Espaço", "1913-01-01"),
(DEFAULT, "Ponte Sobre Uma Lagoa de Lírios de Água", "1899-01-01"),
(DEFAULT, "Lincoln Memorial", "1922-01-01"),
(DEFAULT, "O beijo", "1908-01-01"),
(DEFAULT, "La Gorda Gertrudis", "1986-01-01"),
(DEFAULT, "Spider", "1996-01-01");

CREATE TABLE autor
(
    idAutor int auto_increment,
    nomeAutor varchar(50),
    País varchar(50),
    PRIMARY KEY (idAutor)
);

INSERT INTO autor VALUES
(DEFAULT, "Leonardo da Vinci", "Americano"),
(DEFAULT, "Zenos Frudakis", "Americano"),
(DEFAULT, "Van Gogh", "Italiano"),
(DEFAULT, "Michelangelo Buonarroti", "Italiano"),
(DEFAULT, "Pollock", "Alemão"),
(DEFAULT, "Michelangelo Buonarroti", "Alemão"),
(DEFAULT, "Magritte", "Paquistão"),
(DEFAULT, "Auguste Rodin", "Paquistão"),
(DEFAULT, "Grant Wood", "Polonês"),
(DEFAULT, "Umberto Boccioni", "Polonês"),
(DEFAULT, "Monet", "Brasileiro"),
(DEFAULT, "Daniel Chester", "Brasileiro"),
(DEFAULT, "Klimt", "Colombiano"),
(DEFAULT, "Fernando Botero", "Colombiano"),
(DEFAULT, "Louise Bourgeois", "Uruguaio");

CREATE TABLE AutorObra
(
    idObra int,
    idAutor int,
    FOREIGN KEY (idObra) REFERENCES obra(idObra),
    FOREIGN KEY (idAutor) REFERENCES autor(idAutor) 

);

INSERT INTO autorObra VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10), 
(11, 11),
(12, 12), 
(13, 13), 
(14, 14), 
(15, 15);

CREATE TABLE pintura
(
    idObra int,
    estilo varchar(50),
    FOREIGN KEY (idObra) REFERENCES obra(idObra)
);

INSERT INTO pintura VALUES
(1, "Renascentista"),
(3, "Romantismo"),
(5, "Modernista"),
(9, "Barroco"),
(11, "Realistico"),
(13, "Rococó");

CREATE TABLE escultura
(
    idObra int,
    matériaPrima varchar(50),
    peso float,
    FOREIGN KEY (idObra) REFERENCES obra(idObra)
);

INSERT INTO escultura VALUES
(2, "Bronze", "3175"),
(4, "Mármore", "5"),
(6, "Mármore", "100"),
(8, "Bronze", "800"),
(10, "Gesso", "10"),
(12, "Bronze", "600"),
(14, "Bronze", "200"),
(15, "Cobre", "100");

CREATE TABLE funcionários
(
    cpf float,
    salário float,    
    nomeFuncionário varchar(50),
    idFuncionário int auto_increment,     
    PRIMARY KEY (idFuncionário)
);

INSERT INTO funcionários VALUES
(56201757, 5230, "Lívia da Rocha", DEFAULT),
(56028158, 4510, "Bryan Fernandes", DEFAULT),
(39903850, 6550, "Heloísa da Rosa", DEFAULT),
(14984295, 4990, "Bruno da Rocha", DEFAULT),
(93709668, 5600, "Fernanda Moraes", DEFAULT),
(47716458, 5000, "Breno Castro", DEFAULT),
(26300113, 7000, "Maria Julia da Mota", DEFAULT),
(23830112, 5500, "Paulo da Luz", DEFAULT),
(60133706, 5300, "Ana Sophia Lopes", DEFAULT),
(88246602, 3000, "Lucas Nunes", DEFAULT),
(17490604, 6100, "Nicole Azevedo", DEFAULT),
(37777441, 7000, "Renan da Cruz", DEFAULT),
(71821252, 8000, "Alana Ramos", DEFAULT),
(98064485, 6000, "Rafael Sales", DEFAULT),
(78020549, 10000, "Evelyn Cardoso", DEFAULT);



CREATE TABLE saguão
(
    idSaguão int auto_increment, 
    idFuncionário int,
    idObra int, 
    andar int, 
    PRIMARY KEY (idSaguão),
    FOREIGN KEY (idFuncionário) REFERENCES funcionários(idFuncionário),
    FOREIGN KEY (idObra) REFERENCES obra(idObra)
);

INSERT INTO saguão VALUES
(DEFAULT, 8, 2, 1),
(DEFAULT, 9, 4, 2),
(DEFAULT, 10, 6, 3),
(DEFAULT, 11, 8, 4),
(DEFAULT, 12, 10, 5),
(DEFAULT, 13, 12, 6);

CREATE TABLE matériaPrima
(
    idMatériaPrima int auto_increment,
    qtdEstoque int,
    nomeMatériaPrima varchar(50), 
    PRIMARY KEY (idMatériaPrima)
);

INSERT INTO matériaPrima VALUES
(DEFAULT, 200, "qualquer coisa A"),
(DEFAULT, 200, "qualquer coisa B"),
(DEFAULT, 200, "qualquer coisa C"),
(DEFAULT, 200, "qualquer coisa D"),
(DEFAULT, 200, "qualquer coisa E"),
(DEFAULT, 200, "qualquer coisa F"),
(DEFAULT, 200, "qualquer coisa G"),
(DEFAULT, 200, "qualquer coisa H"),
(DEFAULT, 200, "qualquer coisa I"),
(DEFAULT, 200, "qualquer coisa J"),
(DEFAULT, 200, "qualquer coisa K"),
(DEFAULT, 200, "qualquer coisa L"),
(DEFAULT, 200, "qualquer coisa M"),
(DEFAULT, 500, "qualquer coisa N"),
(DEFAULT, 500, "qualquer coisa O");

CREATE TABLE restauradores 
( 
    idFuncionário int,
    idMatériaPrima int,
    idObra int, 
    Especialidade varchar(50),
    FOREIGN KEY (idFuncionário) REFERENCES funcionários(idFuncionário),
    FOREIGN KEY (idMatériaPrima) REFERENCES matériaPrima(idMatériaPrima),
    FOREIGN KEY (idObra) REFERENCES obra(idObra)
);

INSERT INTO restauradores VALUES

(1, 1, 1, "livros raros"),
(2, 2, 2, "livros raros"),
(3, 3, 3, "egipcio"),
(4, 4, 4, "grego"),
(5, 5, 5, "romana"),
(6, 6, 6, "greco-romana"),
(7, 7, 7, "estatua"),
(1, 8, 8, "livros raros"),
(2, 9, 9, "estatua"),
(3, 10, 10, "livros raros"),
(4, 11, 11, "livros raros"),
(5, 12, 12, "pintura"),
(6, 13, 13, "estatua"),
(7, 14, 14, "estatua"),
(1, 15, 15, "livros raros");

CREATE TABLE guardas 
( 
    idFuncionário int,
    idSaguão int, 
    horaEntrada time,
    horaSaída time,
    FOREIGN KEY (idFuncionário) REFERENCES funcionários(idFuncionário),
    FOREIGN KEY (idSaguão) REFERENCES saguão(idSaguão)
);

INSERT INTO guardas VALUES
(8, 1, "08:00:00", "18:00:00"),
(9, 2, "08:00:00", "18:00:00"),
(10, 3, "08:00:00", "18:00:00"),
(11, 4, "08:00:00", "18:00:00"),
(12, 5, "08:00:00", "18:00:00"),
(13, 6, "08:00:00", "18:00:00");