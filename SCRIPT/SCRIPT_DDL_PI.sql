USE color4rit;

CREATE TABLE IF NOT EXISTS JOGADOR (
  ID BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NOME VARCHAR(255),
  LOGIN VARCHAR(255),
  SENHA VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS MUSICA (
  ID BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NOME VARCHAR(255),
  AUTOR VARCHAR(255),
  DURACAO INT
);



CREATE TABLE IF NOT EXISTS MAPA (
  ID BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  DIFICULDADE VARCHAR(50),
  FK_MUSICA BIGINT UNSIGNED,
  
  FOREIGN KEY (FK_MUSICA) REFERENCES MUSICA(ID)
);


CREATE TABLE IF NOT EXISTS NOTA (
  ID BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FK_MAPA BIGINT UNSIGNED,
  COR VARCHAR(50),
  TEMPO INT,
  STATUS INT,
  
  FOREIGN KEY (FK_MAPA) REFERENCES MAPA(ID)
);



CREATE TABLE IF NOT EXISTS PLACAR (
  ID BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  PONTUACAO INT,
  FK_JOGADOR BIGINT UNSIGNED,
  FK_MAPA BIGINT UNSIGNED,
  DATA_INI TIMESTAMP,
  
  FOREIGN KEY (FK_JOGADOR) REFERENCES JOGADOR(ID),
  FOREIGN KEY (FK_MAPA) REFERENCES MAPA(ID)
);



