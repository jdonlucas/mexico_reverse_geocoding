Create a .env file with the following:

    # DB
    # Parameters used by db container
    POSTGRES_DB=<db_name>
    POSTGRES_USER=<db_user>
    POSTGRES_PASSWORD=<db_password>

    # GRAPHQL
    # Parameters used by graphql container
    DATABASE_URL="postgres://<db_user>:<db_password>@reverse_geocoding_db:5432/<db_name>"