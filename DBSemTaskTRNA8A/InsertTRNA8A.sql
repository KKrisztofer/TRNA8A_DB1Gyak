INSERT INTO sofor(id, nev, szuletesiIdo, nem, email, telefon, felvetelIdo) VALUES
(1,'Szabó János','1989-01-11',1,'szabojanos@gmail.com','06437283426','2009-10-01'),
(2,'Mészáros Attila','1995-05-01',1,'meszarosattila@gmail.com','06395473865','2013-12-01'),
(3,'Kovács Mariann','1991-04-22',0,'kovacsmariann@gmail.com','06013628004','2013-12-01'),
(4,'Szekeres Bence','2000-09-29',1,'szekeresbence@gmail.com','06127328937','2014-02-01'),
(5,'Szabó Ákos','1999-07-14',1,'szaboakos@gmail.com','06438399288','2014-02-01');

INSERT INTO ugyfel(id, nev, szuletesiIdo, email, telefon, cim, regDatum) VALUES
(1,'Bíró Mihály','2001-02-11','biromihaly@gmail.com','06543675467','Miskolc','2021-01-01'),
(2,'Sípos Márk','1998-03-15','siposmark@gmail.com','06253464015','Nyékládháza','2021-01-01'),
(3,'Takács Laura','2001-05-22','takacslaura@gmail.com','06253480443','Emőd','2021-01-01'),
(4,'Váradi Csanád','2000-01-01','varadicsanad@gmail.com','06230127268','Miskolc','2021-01-02'),
(5,'Somogyi Vince','1993-11-21','somogyivince@gmail.com','06732563849','Ónod','2021-01-02'),
(6,'Halász Evelin','1999-11-03','halaszevelin@gmail.com','06310510042','Hejőkeresztúr','2021-01-03'),
(7,'Hajdú Bianka','2002-01-12','hajdubianka@gmail.com','06832607153','Nyékládháza','2021-01-04'),
(8,'Soós Richárd','2000-07-18','soosrichard@gmail.com','06937265466','Miskolc','2021-01-04'),
(9,'Takács Enikő','2000-09-12','takacseniko@gmail.com','06382674638','Miskolc','2021-01-05'),
(10,'Surányi Zsombor','1999-02-02','suranyizsombor@gmail.com','06362836574','Miskolc','2021-01-06'),
(11,'Pásztor Szilárd','1985-05-29','pasztoszilard@gmail.com','06238454839','Emőd','2021-01-07'),
(12,'Lukács Eszter','1989-04-27','lukacseszter@gmail.com','06347283605','Miskolc','2021-01-07');

INSERT INTO auto(id, rendszam, gyarto, model, evjarat, regDatum)VALUES
(1,'ABC123','Opel','Corsa',2010,'2017-03-12'),
(2,'QSC564','Volvo','V90',2014,'2018-06-02'),
(3,'RCF766','Audi','R8',2020,'2020-04-25'),
(4,'GKT342','Suzuki','Swift',2008,'2009-010-03'),
(5,'LOK132','Hyundai','I20',2018,'2019-04-25');

INSERT INTO kupon(id, elnevezes, leiras, kedvezmeny) VALUES
(1,'Szülinapi kedvezmény','Ügyfeleinket szülinapja alkalmából meglepjük egy 20%-os kedvezménykuponnal.',20),
(2,'5. utazás','Minden ügyfelünk számára az 5. utazása után kiküldünk egy kupont, amellyel a 6. utazása féláron lesz.',50);

INSERT INTO fuvar(id, sofor, auto, ugyfel, honnan, hova, indulas, erkezes, ar) VALUES
(1,1,3,1,'Miskolc','Nyékládháza','2021-01-01 07:00:00','2021-01-01 07:30:00',3000),
(2,3,2,2,'Miskolc','Emőd','2021-01-01 07:15:00','2021-01-01 07:50:00',3000),
(3,1,3,3,'Nyékládháza','Miskolc','2021-01-01 07:45:00','2021-01-01 08:15:00',3000),
(4,1,3,4,'Miskolc','Nyékládháza','2021-01-02 09:00:00','2021-01-02 09:30:00',3000),
(5,3,2,5,'Miskolc','Emőd','2021-01-02 09:15:00','2021-01-02 09:50:00',3000),
(6,1,3,3,'Nyékládháza','Miskolc','2021-01-02 09:45:00','2021-01-02 09:15:00',3000),
(7,2,4,4,'Nyékládháza','Hejőkeresztúr','2021-01-03 08:45:00','2021-01-03 09:15:00',3000),
(8,2,4,2,'Ónod','Miskolc','2021-01-03 10:30:00','2021-01-03 11:00:00',3000),
(9,4,5,1,'Miskolc','Debrecen','2021-01-03 11:00:00','2021-01-03 13:00:00',8000),
(10,1,3,6,'Miskolc','Mályi','2021-01-03 11:15:00','2021-01-03 11:45:00',3000),
(11,3,2,7,'Miskolc','Nyékládháza','2021-01-04 11:20:00','2021-01-04 11:50:00',3000),
(12,4,5,8,'Nyékládháza','Eger','2021-01-04 13:00:00','2021-01-04 14:30:00',5000),
(13,1,3,8,'Miskolc','Nyékládháza','2021-01-05 07:00:00','2021-01-05 07:30:00',3000),
(14,3,2,9,'Miskolc','Emőd','2021-01-05 07:15:00','2021-01-05 07:50:00',3000),
(15,1,3,3,'Nyékládháza','Miskolc','2021-01-05 07:45:00','2021-01-05 08:15:00',3000),
(16,2,4,10,'Nyékládháza','Hejőkeresztúr','2021-01-06 08:45:00','2021-01-06 09:15:00',3000),
(17,2,4,3,'Ónod','Miskolc','2021-01-07 10:30:00','2021-01-07 11:00:00',3000),
(18,4,5,11,'Miskolc','Debrecen','2021-01-07 11:00:00','2021-01-07 13:00:00',8000),
(19,1,3,12,'Miskolc','Mályi','2021-01-07 11:15:00','2021-01-07 11:45:00',3000),
(20,3,2,3,'Miskolc','Nyékládháza','2021-01-07 11:20:00','2021-01-07 11:50:00',3000),
(21,4,5,7,'Nyékládháza','Eger','2021-01-07 13:00:00','2021-01-07 14:30:00',5000);

INSERT INTO kuponosztas(ugyfel, kupon, datum, ervenyesseg, fuvar) VALUES
(4,1,'2021-01-01','2021-01-15',4),
(3,2,'2021-01-07','2021-01-21',NULL);