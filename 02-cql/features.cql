CREATE KEYSPACE    IF NOT EXISTS   myflix
        WITH REPLICATION = {
            'class' : 'SimpleStrategy',
            'replication_factor' : 1
            };


use myflix;

CREATE TABLE features (
            code text,
            name text,
            type text,
            release_date timestamp,
            studio text,
            PRIMARY KEY(code)
        );

INSERT INTO features (code, name, type, release_date, studio)
VALUES ('madmen', 'Mad Men', 'TV Show', '2010-01-01', 'AMC');

INSERT INTO features (code, name, type, release_date, studio)
VALUES ('sopr', 'Sopranos', 'TV Show', '2008-06-01', 'HBO');

INSERT INTO features (code, name, type, release_date, studio)
VALUES ('star1', 'Star Wars Episode 1', 'Movie', '2008-12-31', 'Lucas Films');

INSERT INTO features (code, name, type, release_date, studio)
VALUES ('ryan', 'Saving Private Ryan', 'Movie', '2000-02-10', 'Columbia' );

INSERT INTO features (code, name, type, release_date, studio)
VALUES ('loui1', 'Live from Beacon Theater', 'Live Comedy', '2011-02-10', 'Louis CK');

INSERT INTO features (code, name, type, release_date, studio)
VALUES ('simp', 'The Simpsons', 'TV Show', '2000-03-10', 'FOX');
