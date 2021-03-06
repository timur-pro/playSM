DROP TABLE IF EXISTS SM_DEVICE CASCADE;
CREATE TABLE SM_DEVICE
(
    ID        SERIAL PRIMARY KEY,
    NAME      VARCHAR              NOT NULL,
    LABEL     VARCHAR              NOT NULL,
    UID       VARCHAR              NOT NULL,
    SYNC_DATE TIMESTAMP            NOT NULL,
    DESCRIBE  VARCHAR              NULL,
    VISIBLE   BOOLEAN DEFAULT TRUE NOT NULL,
    RELIABLE  BOOLEAN DEFAULT TRUE NOT NULL
);

DROP TABLE IF EXISTS SM_FILE_CARD CASCADE;
CREATE TABLE SM_FILE_CARD
(
    ID                   VARCHAR PRIMARY KEY NOT NULL,
    STORE_NAME           VARCHAR             NOT NULL,
    F_PARENT             VARCHAR             NOT NULL,
    F_NAME               VARCHAR             NOT NULL,
    F_EXTENSION          VARCHAR,
    F_CREATION_DATE      TIMESTAMP           NOT NULL,
    F_LAST_MODIFIED_DATE TIMESTAMP           NOT NULL,
    F_SIZE               BIGINT,
    F_MIME_TYPE_JAVA     VARCHAR,
    SHA256               VARCHAR,
    F_NAME_LC            VARCHAR             NOT NULL
);

DROP TABLE IF EXISTS SM_PATH_MOVE CASCADE;
CREATE TABLE SM_PATH_MOVE
(
    ID         SERIAL PRIMARY KEY,
    STORE_NAME VARCHAR NOT NULL,
    PATH_FROM  VARCHAR NOT NULL,
    PATH_TO    VARCHAR NOT NULL
);

DROP TABLE IF EXISTS SM_CATEGORY_FC CASCADE;
CREATE TABLE SM_CATEGORY_FC
(
    ID                VARCHAR,
    F_NAME            VARCHAR,
    CATEGORY_TYPE     VARCHAR,
    SUB_CATEGORY_TYPE VARCHAR,
    DESCRIPTION       VARCHAR,
    PRIMARY KEY (ID, F_NAME)
);
