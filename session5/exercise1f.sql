CREATE TABLE boek (
	isbn VARCHAR(255) NOT NULL,
	titel VARCHAR(255) NOT NULL,
	auteur VARCHAR(255) NOT NULL,
	PRIMARY KEY (isbn)
);

CREATE TABLE exemplaar (
	isbn VARCHAR(255) NOT NULL,
	volgnummer INTEGER NOT NULL,
	gewicht INTEGER NOT NULL,
	FOREIGN KEY (isbn) REFERENCES boek(isbn) ON UPDATE CASCADE,
	PRIMARY KEY (isbn, volgnummer)
);

CREATE OR REPLACE FUNCTION delete_exp() RETURNS trigger AS $$
begin
	DELETE FROM exemplaar WHERE isbn = OLD.isbn;
	RETURN OLD;
end
$$ LANGUAGE plpgsql;

CREATE TRIGGER tdelete BEFORE DELETE on boek	
FOR EACH ROW 
EXECUTE PROCEDURE delete_exp(OLD);