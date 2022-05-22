DROP TABLE IF EXISTS AUTHOR;
CREATE TABLE AUTHOR
(
    ID   BIGSERIAL PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(255)
);

DROP TABLE IF EXISTS GENRE;
CREATE TABLE GENRE
(
    ID   BIGSERIAL PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(255)
);

DROP TABLE IF EXISTS BOOK;
CREATE TABLE BOOK
(
    ID   BIGSERIAL PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(255)
);

DROP TABLE IF EXISTS COMMENT;
CREATE TABLE COMMENT
(
    ID   BIGSERIAL PRIMARY KEY AUTO_INCREMENT,
    BOOK_ID BIGINT REFERENCES BOOK (ID) ON DELETE CASCADE,
    TEXT TEXT
);

DROP TABLE IF EXISTS BOOK_AUTHOR_LINK;
CREATE TABLE BOOK_AUTHOR_LINK
(
    BOOK_ID    BIGINT REFERENCES BOOK (ID) ON DELETE CASCADE,
    AUTHOR_ID BIGINT REFERENCES AUTHOR (ID),
        PRIMARY KEY (BOOK_ID, AUTHOR_ID)
);

DROP TABLE IF EXISTS BOOK_GENRE_LINK;
CREATE TABLE BOOK_GENRE_LINK
(
    BOOK_ID  BIGINT REFERENCES BOOK (ID) ON DELETE CASCADE,
    GENRE_ID BIGINT REFERENCES GENRE (ID),
        PRIMARY KEY (BOOK_ID, GENRE_ID)
);