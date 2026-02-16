# Relational Database Design for Environmental Management in Mining

## 📌 Project Overview

This project presents the design and implementation of a **relational database** for managing environmental and social information within a mining operation.

The objective is to structure dispersed monitoring records, incidents, and community commitments into a **normalized relational schema** that enables analytical querying and informed decision-making.

---

## 🎯 Problem Statement

Mining operations generate large volumes of environmental and social data, including monitoring results, regulatory parameters, community commitments, and incident reports.  

Without a structured relational database, this information remains fragmented, limiting traceability, analysis, and strategic management.

This project addresses that issue through the design of a structured **SQL-based solution**.

---

## 🗂 Database Structure

The model consists of six entities:

- **COMUNIDAD**
- **MONITOREO**
- **PARAMETRO**
- **RESULTADO_MONITOREO**
- **COMPROMISO**
- **INCIDENTE**

## 📐 Entity–Relationship Diagram

![ERD Diagram](erd-mining-environmental-db.jpg)

### Key Characteristics

- **Primary and Foreign Keys** ensure referential integrity.
- **1:N relationships** between COMUNIDAD and operational entities.
- **N:N relationship** between MONITOREO and PARAMETRO resolved through RESULTADO_MONITOREO.
- Normalized schema to prevent redundancy.

---

## 🛠 Technologies Used

- **PostgreSQL**
- **DB Fiddle** (SQL execution and validation)
- **DBDesigner** (ERD modeling)

---

## 📄 Project Files

- `ddl.sql` → Table creation and constraints (**Data Definition Language**)
- `dml.sql` → Data insertion scripts (**Data Manipulation Language**)
- `queries.sql` → Analytical SQL queries
- `erd-mining-environmental-db.jpg` → Entity-Relationship Diagram   

---

## 📊 Example Analytical Queries

The project includes SQL queries that allow:

- Identification of communities with the highest number of incidents
- Detection of environmental parameters with regulatory non-compliance
- Evaluation of community commitments and their status

These queries use **JOIN operations**, **GROUP BY**, and **aggregate functions** to support data-driven decisions.

---

## 🚀 How to Run

1. Execute `ddl.sql` in PostgreSQL.
2. Execute `dml.sql` to populate tables.
3. Run the queries in `queries.sql` to generate analytical reports.

---

## 📌 Key Skills Demonstrated

- Relational database design
- Entity–Relationship modeling
- SQL (DDL, DML, SELECT, JOIN, GROUP BY)
- Referential integrity management
- Analytical querying for decision support
