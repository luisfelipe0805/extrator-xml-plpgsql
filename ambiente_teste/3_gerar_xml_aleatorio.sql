-- Função para criar uma quantidade de XML Aleatorios.

CREATE OR REPLACE FUNCTION gerar_xml_aleatorio(num_linhas INTEGER)
RETURNS XML AS $$
DECLARE
    xml_result XML;
    i INTEGER;
BEGIN
    -- Inicia o elemento raiz
    xml_result := '<root>';

    -- Adiciona elementos item com id e valor aleatórios
    FOR i IN 1..num_linhas LOOP
        xml_result := xml_result || 
                      '<item id="' || i || '">' || 
                      floor(random() * 1000) || 
                      '</item>';
    END LOOP;

    -- Fecha o elemento raiz
    xml_result := xml_result || '</root>';

    RETURN xml_result;
END;
$$ LANGUAGE plpgsql;


--SELECT gerar_xml_aleatorio(5);
