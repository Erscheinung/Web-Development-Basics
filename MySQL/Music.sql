CREATE DATABASE Music
   DEFAULT CHARACTER SET utf8;
USE Music;

CREATE TABLE Artist (
  artist_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255)
) ENGINE = InnoDB;
CREATE TABLE Album (
  album_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  artist_id INTEGER,
  INDEX USING BTREE (title),
  CONSTRAINT FOREIGN KEY (artist_id)
    REFERENCES Artist (artist_id)
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Genre (
genre_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255),
INDEX USING BTREE (name)
           ) ENGINE = InnoDB;

CREATE TABLE Track (
track_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, title VARCHAR(255),
len INTEGER,
rating INTEGER,
count INTEGER,
album_id INTEGER,
genre_id INTEGER,
             INDEX USING BTREE (title),
 CONSTRAINT FOREIGN KEY (album_id) REFERENCES Album (album_id) ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT FOREIGN KEY (genre_id) REFERENCES Genre (genre_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

INSERT INTO Artist (name) VALUES ('Modest Mouse');
INSERT INTO Artist (name) VALUES ('The Beatles');
INSERT INTO Artist (name) VALUES ('Led Zepplin');

INSERT INTO Genre (name) VALUES ('Rock');
INSERT INTO Genre (name) VALUES ('Indie-Rock');
INSERT INTO Genre (name) VALUES ('Pop');

INSERT INTO Album (title, artist_id) VALUES ('The Lonesome Crowded West', 1);
INSERT INTO Album (title, artist_id) VALUES ('Good News for People who Love Bad News', 1);
INSERT INTO Album (title, artist_id) VALUES ('Stranger to Ourselves', 1);
INSERT INTO Album (title, artist_id) VALUES ('Please Please Me', 2);
INSERT INTO Album (title, artist_id) VALUES ('Led Zeppelin', 3);

INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Cowboy Dan', 5, 297, 0, 1, 1);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Heart Cooks Brain', 5, 397, 0, 1, 1);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Teeth Like God\'s Shoeshine', 5, 497, 0, 1, 1);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Please Please Me', 5, 597, 0, 4, 3);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Love Me Do', 5, 597, 0, 4, 3);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('P.S. I Love You', 5, 397, 0, 4, 3);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Float On', 5, 297, 0, 2, 2);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('The Good Times Are Killing Me', 5, 297, 0, 2, 2);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Blame it on the Teutons', 5, 297, 0, 2, 2);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Black Cadillacs', 5, 297, 0, 2, 2);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('One Chance', 5, 297, 0, 2, 2);
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Bukowski', 5, 297, 0, 2, 2);       
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Coyotes', 5, 297, 0, 3, 2);       
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Shit in Your Cut', 5, 297, 0, 3, 2);       
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Pups to Dust', 5, 297, 0, 3, 2);       
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Good Times Bad Times', 5, 297, 0, 5, 2);       
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Babe I\'m Gonna Leave You', 5, 297, 0, 5, 2);       
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Your Time Is Gonna Come', 5, 297, 0, 5, 2);       
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('I Can\'t Quit You Baby', 5, 297, 0, 5, 2);       
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('Good Times Bad Times', 5, 297, 0, 5, 2);       
INSERT INTO Track
             (title, rating, len, count, album_id, genre_id)
             VALUES ('You Shook Me', 5, 297, 0, 5, 2);       



