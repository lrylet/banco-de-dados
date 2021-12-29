    CREATE TABLE médicos
    (
        crm int,
        salário float,
        nomeMédico varchar(50),
        especialidade varchar(50),
        dataAdmissão date,
        PRIMARY KEY (crm)
    );

    INSERT INTO médicos VALUES
    (56201757, 5230, "Lívia da Rocha", "Ortopedista", "2016-06-09"),
    (56028158, 4510, "Bryan Fernandes", "Ortopedista", "2013-08-14"),
    (39903850, 6550, "Heloísa da Rosa", "Ortopedista", "2014-10-10"),
    (14984295, 4990, "Bruno da Rocha", "Ortopedista", "2015-12-01"),
    (93709668, 5600, "Fernanda Moraes", "Ortopedista", "2016-01-30"),
    (47716458, 5000, "Breno Castro", "Cardiologista", "2017-02-28"),
    (26300113, 7000, "Maria Julia da Mota", "Neurologista", "2018-03-05"),
    (23830112, 5500, "Paulo da Luz", "Otorrinolaringologista", "2020-04-22"),
    (60133706, 5300, "Ana Sophia Lopes", "Oftamologista", "2019-05-24"),
    (88246602, 3000, "Lucas Nunes", "Dermatologista", "2018-06-16"),
    (17490604, 6100, "Nicole Azevedo", "Uncologista", "2017-07-13"),
    (37777441, 7000, "Renan da Cruz", "Cirugião", "2016-08-11"),
    (71821252, 8000, "Alana Ramos", "Cirurgião", "2015-09-18"),
    (98064485, 6000, "Rafael Sales", "Infectologista", "2014-10-20"),
    (78020549, 10000, "Evelyn Cardoso","Neurologista", "2013-11-25");

    CREATE TABLE pacientes
    (
        
        nomePaciente varchar(50),
        médicoResponsável int,
        rg float,
        cpf float,
        endereço varchar(100),
        dataNascimento date,
        idPaciente int auto_increment,
        PRIMARY KEY (idPaciente),
        FOREIGN KEY (médicoResponsável) REFERENCES médicos(crm)
        
    );

    INSERT INTO pacientes VALUES
    ("Lucas", 56201757, 86812104086, 151842942, "R. B. União", "2005-10-10", DEFAULT),
    ("Márcia", 14984295, 93272974075, 201806393, "Rua Cristiano Olsen", "2006-07-20", DEFAULT),
    ("Lucca Porto", 56028158, 47819476036, 100139255, "Rua Serra de Bragança", "2005-12-06", DEFAULT),
    ("Pietro Gonçalves", 56028158, 23094527000, 318561724, "Rua Barão de Vitória", "1999-01-01", DEFAULT),
    ("Samuel Sales", 39903850, 64347363044, 260306472, "Avenida Afonso Pena", "1997-03-27", DEFAULT),
    ("Isadora Ribeiro", 93709668, 49594503041, 231161177, "Praça da República", "1996-11-10", DEFAULT),
    ("Ana Laura Moraes", 26300113, 65862513035, 470477684, "Rua Frederico Moura", "1994-12-31", DEFAULT),
    ("Maria Cecília Cardoso", 98064485, 22976111022, 238993486, "Rua da Imprensa", "1992-07-21", DEFAULT),
    ("Clara Teixeira", 78020549, 61468949071, 361392771, "Avenida Esbertalina Barbosa Damiani", "2001-04-07", DEFAULT),
    ("Bryan Moura", 23830112, 99146923039, 145480586, "Avenida Rio Branco", "2002-06-18", DEFAULT),
    ("Letícia Gonçalves", 47716458, 47470603085, 481423047, "Rua Domingos Olímpio", "1999-05-18", DEFAULT),
    ("Mariane Caldeira", 60133706, 91720398097, 464857806, "Avenida Governador José Malcher", "2010-09-15", DEFAULT),
    ("Ryan da Rocha", 88246602, 83203604043, 251926953, "Rua Paracatu", "2000-11-03", DEFAULT),
    ("Sofia Sales", 37777441, 21166873064, 377999039, "Rua Serra de Bragança", "1998-11-11", DEFAULT),
    ("João da Silva", 71821252, 11763849023, 479216149, "Avenida Esbertalina Barbosa Damiani", "1980-02-01", DEFAULT);


    CREATE TABLE telefone
    (
        idTelefone int auto_increment,
        idPaciente int,
        telefone varchar (20),
        PRIMARY KEY (idTelefone),
        FOREIGN KEY (idPaciente) REFERENCES pacientes(idPaciente)
    );

    INSERT INTO telefone VALUES
    (DEFAULT, 1, 92998198698),
    (DEFAULT, 1, 92800645494),
    (DEFAULT, 2, 92496712448),
    (DEFAULT, 3, 92289351453),
    (DEFAULT, 4, 92713181216),
    (DEFAULT, 5, 92616311980),
    (DEFAULT, 6, 92636561706),
    (DEFAULT, 7, 92232650772),
    (DEFAULT, 8, 92595226325),
    (DEFAULT, 9, 92927584755),
    (DEFAULT, 10, 92677832819),
    (DEFAULT, 11, 92559182824),
    (DEFAULT, 12, 92746404979),
    (DEFAULT, 13, 92052836028),
    (DEFAULT, 14, 92236254436),
    (DEFAULT, 15, 92988807667);

    CREATE TABLE consulta 
    (
        idConsulta int auto_increment,
        idCRM int,
        idPaciente int,
        horaConsulta datetime,
        numQuarto int,
        numAndar int,
        PRIMARY KEY (idConsulta),
        FOREIGN KEY (idCRM) REFERENCES médicos(CRM),
        FOREIGN KEY (idPaciente) REFERENCES pacientes(idPaciente)
    );


    INSERT INTO consulta VALUES

    (DEFAULT, 14984295, 15, "2016-03-10 10:00:00", 3, 2),
    (DEFAULT, 47716458, 15, "2020-05-22 16:00:00", 4, 4),
    (DEFAULT, 98064485, 15, "2017-10-01 09:00:00", 4, 3),
    (DEFAULT, 17490604, 1, "2021-12-01 10:00:00", 1, 5),
    (DEFAULT, 23830112, 2, "2017-10-01 09:00:00", 2, 2),
    (DEFAULT, 26300113, 3, "2017-10-01 08:00:00", 3, 3),
    (DEFAULT, 37777441, 4, "2017-10-01 08:00:00", 4, 4),
    (DEFAULT, 39903850, 5, "2017-10-01 09:30:00", 4, 3),
    (DEFAULT, 47716458, 6, "2017-10-01 10:30:00", 3, 5),
    (DEFAULT, 56028158, 7, "2017-10-01 11:00:00", 2, 5),
    (DEFAULT, 56201757, 8, "2017-10-01 11:00:00", 1, 3),
    (DEFAULT, 60133706, 9, "2017-10-01 09:00:00", 1, 4),
    (DEFAULT, 71821252, 10, "2017-10-01 10:00:00", 2, 2),
    (DEFAULT, 78020549, 11, "2017-10-01 11:00:00", 3, 3),
    (DEFAULT, 88246602, 12, "2017-10-01 08:00:00", 4, 5),
    (DEFAULT, 88246602, 13, "2017-10-01 08:30:00", 2, 4),
    (DEFAULT, 78020549, 14, "2017-10-01 08:00:00", 3, 3),
    (DEFAULT, 71821252, 12, "2017-10-01 09:30:00", 1, 3);