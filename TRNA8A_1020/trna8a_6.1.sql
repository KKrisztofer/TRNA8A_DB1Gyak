CREATE TABLE gyarto (
    adoszam INT PRIMARY KEY,
    nev VARCHAR(30) NOT NULL,
    telephely VARCHAR(100)
);
CREATE TABLE termek (
    tkod INT PRIMARY KEY,
    nev VARCHAR(50) NOT NULL,
    ear INT CHECK (ear > 0),
    gyarto INT REFERENCES gyarto(nev)
);