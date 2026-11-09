# Salon Appointment Scheduler

A command-line application built with **Bash** and **PostgreSQL** that allows a salon to manage services, register customers, and schedule appointments.

This project was completed as part of the **freeCodeCamp Relational Database Certification**.

## Features

- Display available salon services.
- Validate customer service selections.
- Register new customers using their phone numbers.
- Recognize returning customers using stored phone numbers.
- Schedule appointments for selected services.
- Store customer and appointment information in a PostgreSQL database.

## Technologies Used

- **Bash** – Command-line scripting and application logic.
- **PostgreSQL** – Relational database management.
- **SQL** – Database creation, queries, and data manipulation.
- **psql** – Connecting the Bash script to PostgreSQL.

## Database Structure

The project uses three relational tables:

| Table | Description |
|---|---|
| `services` | Stores the salon's available services. |
| `customers` | Stores customer names and unique phone numbers. |
| `appointments` | Stores appointment times and references the customer and selected service. |

### Relationships

- Each appointment belongs to one customer.
- Each appointment is associated with one salon service.
- Primary keys uniquely identify records.
- Foreign keys maintain relationships between tables.

## Project Structure

```text
salon/
├── salon.sh
├── salon.sql
└── README.md
```

## How to Run

1. Clone or download this repository.
2. Make sure PostgreSQL is installed and running.
3. Create the `salon` database and configure its tables.
4. Make the Bash script executable:

```bash
chmod +x salon.sh
```

5. Run the application:

```bash
./salon.sh
```

## What I Learned

Through this project, I practiced:

- Creating relational databases and tables.
- Working with primary keys and foreign keys.
- Using SQL queries to retrieve and insert records.
- Connecting Bash scripts to PostgreSQL using `psql`.
- Using conditional statements and loops for input validation.
- Handling new and returning customer records.
- Automating database operations through shell scripting.

## Author

**Raven Jay**

IT Graduate | Software Developer | Aspiring Cybersecurity Professional

*Passionate about technology, database management, and software development, with a strong focus on continuously building skills toward a secure career in cybersecurity.*