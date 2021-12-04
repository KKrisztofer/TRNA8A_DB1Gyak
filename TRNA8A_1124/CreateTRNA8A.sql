CREATE TABLE Oktato
(
  neptunkod VARCHAR(6) NOT NULL,
  nev VARCHAR(30) NOT NULL,
  tanszek VARCHAR(40) NOT NULL,
  PRIMARY KEY (neptunkod)
);

CREATE TABLE Targy
(
  kod VARCHAR(15) NOT NULL,
  megnevezes VARCHAR(40) NOT NULL,
  kredit INT NOT NULL,
  oktato VARCHAR(6) NOT NULL,
  PRIMARY KEY (kod),
  FOREIGN KEY (oktato) REFERENCES Oktato(neptunkod)
);

CREATE TABLE Hallgato
(
  neptunkod VARCHAR(6) NOT NULL,
  nev VARCHAR(30) NOT NULL,
  tankor VARCHAR(10) NOT NULL,
  szuld DATE NOT NULL,
  eletkor INT NOT NULL,
  irszam VARCHAR(4) NOT NULL,
  varos VARCHAR(30) NOT NULL,
  utca VARCHAR(40) NOT NULL,
  hsz VARCHAR(5) NOT NULL,
  PRIMARY KEY (neptunkod)
);

CREATE TABLE hallgat
(
  felev INT NOT NULL,
  vizsgajegy INT NOT NULL,
  targy VARCHAR(15) NOT NULL,
  hallgato VARCHAR(6) NOT NULL,
  FOREIGN KEY (targy) REFERENCES Targy(kod),
  FOREIGN KEY (hallgato) REFERENCES Hallgato(neptunkod)
);