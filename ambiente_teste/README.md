# Ambiente de testes


## Descriação 

Para validar os testes temos os camandos sql para crianção de uma
Tabela chamada doc_xml, que vai conter um campo do tipo XML.

Também vamos ter duas funções complementares, input_doc_xml e a 
gerar_xml_aleatorio.
 
`input_doc_xml` vai inserir o xml informado por parâmentro tabela doc_xml.
`gerar_xml_aleatorio` vai gerar xmls randomicos baseado na quantidade informada pelo parametro.


## Criando ambiente de testes

Sequencia de exmplo para execução de scripts para ambiente local.

```
psql -d teste_xml -f 1_table_doc_xml.sql 
psql -d teste_xml -f 2_input_doc_xml.sql
psql -d teste_xml -f 3_gerar_xml_aleatorio.sql
```
