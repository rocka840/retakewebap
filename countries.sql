drop database CCR;
create database CCR; -- covid countries and regions of planet FARAWAYSIA

use CCR;

CREATE TABLE Countries (
    CountryId int not null AUTO_INCREMENT,
    CountryName varchar(255) not null,
    PRIMARY KEY(CountryId)
);

INSERT INTO Countries (CountryName) VALUES ("JarJarLand");
INSERT INTO Countries (CountryName) VALUES ("BotLand");
INSERT INTO Countries (CountryName) VALUES ("Narnia");
INSERT INTO Countries (CountryName) VALUES ("Autocratia");


CREATE TABLE Cities (
    RegionId int not null AUTO_INCREMENT,
    CountryFkId int not null,
    RegionName varchar(255) not null,
    CovidCases int DEFAULT 0,
    PRIMARY KEY(RegionId),
    FOREIGN KEY (CountryFkId) REFERENCES Countries(CountryId)
);

INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (1,22, "Jaria");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (1,150, "Jarvenia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (1,1, "Jaromina");
INSERT INTO Cities (CountryFkId,RegionName) VALUES (1, "Jar from above");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (1,102, "Jar from below");

INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (2,0, "Botia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (2,0, "SuperBotia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (2,1, "SlowBotia");
INSERT INTO Cities (CountryFkId,RegionName) VALUES (2, "Happy botland");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (2,2, "Sad botland");

INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (3,1500, "Lionia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (3,2000, "Rabittania");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (3,500, "Arramancia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (3,900, "Dudeia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (3,999, "Treeland");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (3,455, "Diyarnia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (3,5003, "Doglaneia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (3,666, "Catlovina");


INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (4,10, "Burghezia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (4,2020, "Taleyia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (4,777, "Distrofia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (4,904, "EsTedia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (4,5, "Dumlandia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (4,118, "Musclezia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (4,523, "Ninezia");
INSERT INTO Cities (CountryFkId,CovidCases, RegionName) VALUES (4,1666, "Geokinezia");