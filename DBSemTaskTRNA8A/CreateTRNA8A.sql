CREATE TABLE Sofor
(
  id INT NOT NULL,
  nev VARCHAR(40) NOT NULL,
  szuletesiIdo DATE NOT NULL,
  nem BOOLEAN NOT NULL,
  email VARCHAR(30) NOT NULL,
  telefon VARCHAR(11) NOT NULL,
  felvetelIdo DATE NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Ugyfel
(
  id INT NOT NULL,
  nev VARCHAR(40) NOT NULL,
  szuletesiIdo DATE NOT NULL,
  email VARCHAR(30) NOT NULL,
  telefon VARCHAR(11) NOT NULL,
  cim VARCHAR(60) NOT NULL,
  regDatum DATE NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Auto
(
  id INT NOT NULL,
  rendszam VARCHAR(6) NOT NULL,
  gyarto VARCHAR(20) NOT NULL,
  model VARCHAR(10) NOT NULL,
  evjarat INT NOT NULL,
  regDatum DATE NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Kupon
(
  id INT NOT NULL,
  elnevezes VARCHAR(20) NOT NULL,
  leiras VARCHAR(500) NOT NULL,
  kedvezmeny INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE fuvar
(
  id INT NOT NULL,
  sofor INT NOT NULL,
  auto INT NOT NULL,
  ugyfel INT NOT NULL,
  honnan VARCHAR(60) NOT NULL,
  hova VARCHAR(60) NOT NULL,
  indulas DATETIME NOT NULL,
  erkezes DATETIME NOT NULL,
  ar INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (sofor) REFERENCES Sofor(id),
  FOREIGN KEY (auto) REFERENCES Auto(id),
  FOREIGN KEY (ugyfel) REFERENCES Ugyfel(id)
);

CREATE TABLE kuponOsztas
(
  ugyfel INT NOT NULL,
  kupon INT NOT NULL,
  datum DATE NOT NULL,
  ervenyesseg DATE NOT NULL,
  fuvar INT,
  FOREIGN KEY (ugyfel) REFERENCES Ugyfel(id),
  FOREIGN KEY (kupon) REFERENCES Kupon(id),
  FOREIGN KEY (fuvar) REFERENCES fuvar(id)
);