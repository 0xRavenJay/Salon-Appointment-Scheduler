# Salon Appointment Scheduler

A command-line application built with **Bash** and **PostgreSQL** as part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/).

The project focuses on creating a salon appointment system that allows users to view available services, register customers, recognize returning customers, and schedule appointments using Bash scripts and SQL commands.

## Project Overview

The `salon` database organizes salon services, customer information, and appointments into three related tables. The application uses Bash to interact with PostgreSQL through the `psql` command-line tool.

It uses primary keys, foreign keys, unique constraints, and SQL queries to maintain data integrity and manage customer appointments.

## Technologies Used

- Bash
- PostgreSQL
- SQL
- psql (PostgreSQL Interactive Terminal)

## Database Structure

The database contains three tables:

| Table | Description |
|---|---|
| `services` | Stores available salon services, such as cut, color, perm, style, and trim. |
| `customers` | Stores customer names and unique phone numbers. |
| `appointments` | Stores appointment times and references the corresponding customer and service. |

## 🔗 Database Relationships

The database uses foreign keys to establish relationships between tables.

```text
customers          services
    |                  |
    |                  |
    v                  v
       appointments
```

- Each appointment belongs to one customer.
- Each appointment is associated with one salon service.
- Each customer can have multiple appointments.
- Each service can be selected for multiple appointments.

## Features

- Display available salon services with numbered options.
- Validate service selections and handle invalid inputs.
- Register new customers using their phone numbers.
- Recognize returning customers through existing records.
- Retrieve customer information from the database.
- Schedule appointments for selected services.
- Store appointment details in PostgreSQL.

## SQL and Bash Concepts Practiced

- Creating databases using `CREATE DATABASE`.
- Connecting to databases using `\c`.
- Creating tables using `CREATE TABLE`.
- Defining primary keys and foreign keys.
- Using auto-incrementing IDs with `SERIAL`.
- Applying `NOT NULL` and `UNIQUE` constraints.
- Inserting records using `INSERT INTO`.
- Retrieving records using `SELECT`.
- Checking existing customer records using SQL queries.
- Connecting Bash scripts to PostgreSQL using `psql`.
- Using Bash variables to store query results.
- Applying conditional statements using `if` and `else`.
- Using loops with `while` for input validation.
- Automating database operations through shell scripting.

## ▶️ How to Run

1. Install PostgreSQL.
2. Open the terminal.
3. Connect to PostgreSQL:

```bash
psql --username=freecodecamp --dbname=postgres
```

4. Create the database:

```sql
CREATE DATABASE salon;
```

5. Connect to the database:

```sql
\c salon
```

6. Execute the SQL commands to create the tables, establish relationships, and insert the available salon services.

7. Navigate to the project directory and make the Bash script executable:

```bash
chmod +x salon.sh
```

8. Run the application:

```bash
./salon.sh
```

## 💾 Database Backup

To export the database:

```bash
pg_dump -cC --inserts -U freecodecamp salon > salon.sql
```

To restore the database:

```bash
psql -U postgres < salon.sql
```

## Learning Objectives

Through this project, I practiced designing relational databases, establishing relationships between tables, managing customer records, and writing SQL queries using PostgreSQL.

I also gained experience integrating Bash scripting with PostgreSQL, handling user input, applying conditional logic, and automating database operations through a command-line application.

## Author

**Raven Jay**

IT Graduate | Software Developer | Aspiring Cybersecurity Professional

*Passionate about technology, database management, and software development, with a strong focus on continuously building skills toward a secure career in cybersecurity.*