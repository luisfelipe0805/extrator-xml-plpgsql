/* Tabela de exemplo que vai compor um id unico do tipo serial (Pode ser
utilizado coma chave primeria), campo uuid gerado aleatoriamente, e
um ultimo campo XML.*/


CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE doc_xml (
    id SERIAL PRIMARY KEY,
    uuid UUID DEFAULT uuid_generate_v4(),
    xml_data XML
);
