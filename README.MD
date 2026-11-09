# 💈 Salon Appointment Scheduler

A command-line application developed using **Bash** and **PostgreSQL** as part of the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/). This project focuses on building a customer appointment system, managing salon services, and automating database operations through shell scripting.

## Project Overview

The Salon Appointment Scheduler allows users to view available salon services, register new customers, recognize returning customers, and schedule appointments.

The project demonstrates how to integrate Bash scripts with PostgreSQL, manage customer records, validate user input, and store appointment information using relational database concepts.

## Technologies Used

- **Bash** – Command-line scripting and application logic.
- **PostgreSQL** – Relational database management system.
- **SQL** – Database creation, manipulation, and querying.
- **psql** – Connecting Bash scripts to PostgreSQL.
- **Git & GitHub** – Version control and project storage.

## 🗄️ Database Structure

The database consists of three main tables:

### 1. Services

| Column | Description |
|---|---|
| `service_id` | Primary key with auto-incrementing ID |
| `name` | Name of the salon service |

### 2. Customers

| Column | Description |
|---|---|
| `customer_id` | Primary key with auto-incrementing ID |
| `name` | Customer's name |
| `phone` | Unique customer phone number |

### 3. Appointments

| Column | Description |
|---|---|
| `appointment_id` | Primary key with auto-incrementing ID |
| `customer_id` | Foreign key referencing customers |
| `service_id` | Foreign key referencing services |
| `time` | Requested appointment time |

### Database Relationships

The `appointments` table uses two foreign keys to reference the `customers` and `services` tables.

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

## What I Learned

### SQL and PostgreSQL

- Creating databases and relational tables.
- Using PRIMARY KEY and FOREIGN KEY constraints.
- Applying UNIQUE and NOT NULL constraints.
- Using SERIAL for auto-incrementing IDs.
- Inserting records using INSERT INTO.
- Retrieving records using SELECT.
- Maintaining relationships between customers, services, and appointments.

### Bash Scripting

- Creating and executing Bash scripts.
- Connecting Bash scripts to PostgreSQL using psql.
- Using variables to store SQL query results.
- Reading user input using read.
- Applying conditional statements using if and else.
- Using while loops for input validation.
- Automating database operations through shell scripting.

### Database Operations

- Checking whether a customer already exists.
- Registering new customers using unique phone numbers.
- Retrieving existing customer information.
- Inserting appointment records.
- Linking appointments to the correct customer and service.

### Debugging and Problem Solving

- Troubleshooting SQL queries and Bash syntax.
- Validating user selections.
- Handling new and returning customer records.
- Verifying database records and relationships.
- Improving script logic through testing.

## Project Files

| File | Description |
|---|---|
| `salon.sh` | Bash script that handles service selection, customer registration, and appointment scheduling. |
| `salon.sql` | Database backup containing SQL commands to rebuild the database. |

## How to Run

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

7. Make the Bash script executable:

```bash
chmod +x salon.sh
```

8. Run the application:

```bash
./salon.sh
```

### 💾 Database Backup

To export the database:

```bash
pg_dump -cC --inserts -U freecodecamp salon > salon.sql
```

To restore the database:

```bash
psql -U postgres < salon.sql
```

## Project Goal

The goal of this project was to strengthen my understanding of relational databases while learning how to integrate Bash scripting with PostgreSQL.

Completing this project helped me develop practical skills in database management, SQL querying, shell scripting, input validation, and automating database operations.

## 👨‍💻 Author

**Raven Jay**

IT Graduate | Software Developer | Aspiring Cybersecurity Professional

Passionate about technology, database management, and software development, with a strong focus on continuously building skills toward a secure career in cybersecurity.

---