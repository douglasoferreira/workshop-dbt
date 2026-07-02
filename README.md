# workshop-dbt

# ambiente postgres
sudo docker run --name owspostgres -e POSTGRES_PASSWORD=$PASS -p 5432:5432 -d postgresp

# ambiente python
pip install psycopg2-binary sqlalchemy pandas