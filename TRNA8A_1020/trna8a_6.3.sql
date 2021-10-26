CREATE TABLE tanfolyam (
    tkod INT,
    ar INT,
    tipus VARCHAR(30),
    megnevezes VARCHAR(100),
    PRIMARY KEY (tkod)
);

CREATE TABLE resztvevo (
    tajszam VARCHAR(9),
    nev VARCHAR(30),
    lakcim VARCHAR(100),
    PRIMARY KEY (tajszam)
);

CREATE TABLE befizetes (
    tanfolyamID INT,
    resztvevoID VARCHAR(9),
    osszeg INT NOT NULL,
    FOREIGN KEY (tanfolyamID) REFERENCES tanfolyam(tkod),
    FOREIGN KEY (resztvevoID) REFERENCES resztvevo(tajszam)
);