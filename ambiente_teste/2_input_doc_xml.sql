-- Função que recebe um xml e insere na tabela doc_xml

CREATE OR REPLACE FUNCTION input_doc_xml(xml_input XML)
RETURNS VOID AS $$
BEGIN
    INSERT INTO doc_xml (xml_data)
    VALUES (xml_input);
END;
$$ LANGUAGE plpgsql;


