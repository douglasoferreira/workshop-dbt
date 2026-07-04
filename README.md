# workshop-dbt

# ambiente postgres
sudo docker run --name owspostgres -e POSTGRES_PASSWORD=$PASS -p 5432:5432 -d postgresp

# ambiente python
pip install psycopg2-binary sqlalchemy pandas

# ambiente dbt
pip install dbt-postgres
dbt init <nome_projeto>
atualiza arquivo dbt_project.yml
conectar com o banco de dados
    criar arquivo profiles.yml em ~/.dbt/
    testar com dbt debug