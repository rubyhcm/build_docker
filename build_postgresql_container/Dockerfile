# Use the official PostgreSQL image as the base image
FROM postgres

# Set environment variables for PostgreSQL user, password, and default database
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword

# Expose the default PostgreSQL port
EXPOSE 5432

# Optionally, you can add additional configuration or initialization steps here
# For example, you can copy SQL scripts to initialize the database schema

# CMD instruction to start PostgreSQL when a container is run
CMD ["postgres"]

