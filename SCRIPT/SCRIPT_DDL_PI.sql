USE color4rit;

CREATE TABLE IF NOT EXISTS Jogador (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  login VARCHAR(255),
  senha VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Musica (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  autor VARCHAR(255),
  duracao TIME
);

CREATE TABLE IF NOT EXISTS Mapa (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dificuldade VARCHAR(50),
  fk_musica BIGINT UNSIGNED,
  FOREIGN KEY (fk_musica) REFERENCES Musica(id)
);

CREATE TABLE IF NOT EXISTS Nota (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fk_mapa BIGINT UNSIGNED,
  cor VARCHAR(50),
  tempo TIME,
  FOREIGN KEY (fk_mapa) REFERENCES Mapa(id)
);

CREATE TABLE IF NOT EXISTS Placar (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  pontuacao INT,
  fk_jogador BIGINT UNSIGNED,
  fk_musica BIGINT UNSIGNED,
  FOREIGN KEY (fk_jogador) REFERENCES Jogador(id),
  FOREIGN KEY (fk_musica) REFERENCES Musica(id)
);
