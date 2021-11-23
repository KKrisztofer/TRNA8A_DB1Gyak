CREATE TABLE Gyarto (
    adoszam INT PRIMARY KEY,
    nev VARCHAR(30) NOT NULL,
    telephely VARCHAR(100),
    irsz VARCHAR(4),
    varos VARCHAR(40),
    utca VARCHAR(100)
);

CREATE TABLE Termek (
    tkod INT PRIMARY KEY,
    nev VARCHAR(50) NOT NULL,
    ear INT CHECK (ear > 0),
    gyarto INT REFERENCES Gyarto(nev)
);

CREATE TABLE Egysegek (
    aru INT REFERENCES Termek(tkod),
    db INT CHECK (db > 0)
);

CREATE TABLE Alkatresz (
    akod INT PRIMARY KEY,
    nev VARCHAR(50) NOT NULL
);

CREATE TABLE Komponens (
    termek INT REFERENCES Termek(tkod),
    alkatresz INT REFERENCES Alkatresz(akod)
);

Bővítse az alkatrész táblát egy ój ár mezővel.
ALTER TABLE Alkatresz ADD ar INT;

Mely gyártónak nincs terméke?
SELECT nev FROM `Gyarto` WHERE adoszam NOT IN (SELECT adoszam FROM Gyarto INNER JOIN Termek ON Gyarto.adoszam = Termek.gyarto);

Növelje meg az X kódú alkatrészt tartalmazó termékek árát 10%-kal (?)
UPDATE Termek SET Termek.ear=Termek.ear*1.1 LEFT JOIN Komponens ON Termek.tkod = Komponens.termek WHERE Komponens.alkatresz = 1;

Mely termékhez áll rendelkezésre a legtöbbb egység?
SELECT nev FROM Termek WHERE tkod = (SELECT MAX(Egysegek.db) FROM Termek INNER JOIN Egysegek ON Termek.tkod = Egysegek.aru);