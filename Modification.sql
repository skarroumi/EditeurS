ALTER TABLE Livre
DROP FOREIGN KEY NumEdition;

ALTER TABLE Livre
DROP COLUMN NumEdition;

ALTER TABLE EEdition
ADD ISBN varchar(20) NOT NULL;

ALTER TABLE EEdition
ADD CONSTRAINT fk_livre_isbn FOREIGN KEY(ISBN) REFERENCES Livre(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `eedition`
DROP PRIMARY KEY,
ADD PRIMARY KEY(`NumEdition`,`ISBN`);