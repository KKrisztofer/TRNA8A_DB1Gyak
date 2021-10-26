CREATE TABLE gyarto (
    adoszam INT PRIMARY KEY,
    nev VARCHAR(30) NOT NULL,
    telephely VARCHAR(100),
    irsz VARCHAR(4),
    varos VARCHAR(40),
    utca VARCHAR(100)
);

CREATE TABLE termek (
    tkod INT PRIMARY KEY,
    nev VARCHAR(50) NOT NULL,
    ear INT CHECK (ear > 0),
    gyarto INT REFERENCES gyarto(nev)
);

CREATE TABLE egysegek (
    aru INT REFERENCES termek(tkod),
    db INT CHECK (db > 0)
);

CREATE TABLE alkatresz (
    akod INT PRIMARY KEY,
    nev VARCHAR(50) NOT NULL
);

CREATE TABLE komponens (
    termek INT REFERENCES termek(tkod),
    alkatresz INT REFERENCES alkatresz(akod)
);