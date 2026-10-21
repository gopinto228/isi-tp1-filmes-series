CREATE TABLE IF NOT EXISTS titulos (
    id            SERIAL PRIMARY KEY,
    tvmaze_id     INTEGER,
    titulo        VARCHAR(255) NOT NULL,
    ano_estreia   INTEGER,
    genero        VARCHAR(100),
    tipo          VARCHAR(50),
    estado        VARCHAR(50),
    rating_tvmaze NUMERIC(3,1),
    rating_imdb   NUMERIC(3,1),
    num_votos     INTEGER,
    classificacao VARCHAR(20),
    data_carga    TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS logs_etl (
    id         SERIAL PRIMARY KEY,
    data_hora  TIMESTAMP DEFAULT NOW(),
    fase       VARCHAR(20),
    mensagem   TEXT,
    n_registos INTEGER
);